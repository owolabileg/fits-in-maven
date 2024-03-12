package monitoredfits.fits;

import org.junit.Test;

public class NonViolatingTest extends BaseTest {
    @Test
    public void testOnlyUsersInArgentinaCanBeGold() {
        frontend.ADMIN_initialise();
        uid = frontend.ADMIN_createUser("Fred", "France");
        frontend.ADMIN_enableUser(uid);
        frontend.ADMIN_makeSilverUser(uid);
        uid = frontend.ADMIN_createUser("Marge", "Argentina");
        frontend.ADMIN_enableUser(uid);
        frontend.ADMIN_makeGoldUser(uid);
    }

    @Test
    public void transactionSystemMustBeInitializedBeforeAnyUserLogsIn() {
        frontend.ADMIN_initialise();
        uid = frontend.ADMIN_createUser("Fred", "France");
        frontend.ADMIN_enableUser(uid);
        sid = frontend.USER_login(uid);
        frontend.USER_logout(uid, sid);
    }

    @Test
    public void testNoAccountMayEndUpWithNegativeBalanceAfterAccess() {
        frontend.ADMIN_initialise();
        uid = frontend.ADMIN_createUser("Fred", "France");
        frontend.ADMIN_enableUser(uid);
        sid = frontend.USER_login(uid);
        account_number = frontend.USER_requestAccount(uid, sid);
        frontend.ADMIN_approveOpenAccount(uid, account_number);
        frontend.USER_depositFromExternal(uid, sid, account_number, 500.00);
        frontend.USER_payToExternal(uid, sid, account_number, 100.00);
        frontend.USER_payToExternal(uid, sid, account_number, 100.00);
    }

    @Test
    public void testP4ApprovedAccountsCannotHaveSameNumberAsExistingAccount() {
        frontend.ADMIN_initialise();
        for (Integer i = 0; i < 10; i++) {
            uid = frontend.ADMIN_createUser("Fred(" + i + ")", "France");
            frontend.ADMIN_enableUser(uid);
            sid = frontend.USER_login(uid);
            for (Integer j = 0; j < 10; j++) {
                account_number = frontend.USER_requestAccount(uid, sid);
                frontend.ADMIN_approveOpenAccount(uid, account_number);
            }
            frontend.USER_logout(uid, sid);
        }
    }

    @Test
    public void testP5DisabledUsersMayNotWithdrawUntilAdminEnablesAgain() {
        frontend.ADMIN_initialise();
        uid = frontend.ADMIN_createUser("Fred", "France");
        frontend.ADMIN_enableUser(uid);
        sid = frontend.USER_login(uid);
        account_number = frontend.USER_requestAccount(uid, sid);
        frontend.ADMIN_approveOpenAccount(uid, account_number);
        frontend.USER_depositFromExternal(uid, sid, account_number, 500.00);
        frontend.USER_payToExternal(uid, sid, account_number, 1000.00);
        frontend.ADMIN_disableUser(uid);
        frontend.ADMIN_enableUser(uid);
        frontend.USER_payToExternal(uid, sid, account_number, 200.00);
    }

    @Test
    public void testP6GreyListedUsersMustPerformAtLeastThreeExternalTransfersBeforeBeingWhitelisted() {
        frontend.ADMIN_initialise();
        uid_receiver = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid_receiver);
        sid_receiver = frontend.USER_login(uid_receiver);
        account_number_receiver = frontend.USER_requestAccount(uid_receiver, sid_receiver);
        frontend.ADMIN_approveOpenAccount(uid_receiver, account_number_receiver);
        frontend.USER_logout(uid_receiver, sid_receiver);

        uid = frontend.ADMIN_createUser("Sandy", "Senegal");
        frontend.ADMIN_enableUser(uid);
        sid = frontend.USER_login(uid);
        account_number = frontend.USER_requestAccount(uid, sid);
        frontend.ADMIN_approveOpenAccount(uid, account_number);
        frontend.USER_logout(uid, sid);

        frontend.ADMIN_greylistUser(uid);
        // more than three external transfers before whitelisting
        for (Integer i = 0; i < 2; i++) {
            sid = frontend.USER_login(uid);
            frontend.USER_depositFromExternal(uid, sid, account_number, 1000.00);
            frontend.USER_depositFromExternal(uid, sid, account_number, 100.00);
            frontend.USER_logout(uid, sid);
        }

        frontend.ADMIN_whitelistUser(uid);
    }

    @Test
    public void testP7UsersMayNotRequestOverTenNewAccountsInOneSession() {
        frontend.ADMIN_initialise();
        uid = frontend.ADMIN_createUser("Fred", "France");
        frontend.ADMIN_enableUser(uid);
        sid = frontend.USER_login(uid);
        for (Integer i = 0; i < 30; i++) {
            account_number = frontend.USER_requestAccount(uid, sid);
            if (i % 2 == 0)
                frontend.ADMIN_approveOpenAccount(uid, account_number);
            if (i % 9 == 5) {// note session being closed and a new one opened
                frontend.USER_logout(uid, sid);
                sid = frontend.USER_login(uid);
            }
        }
        frontend.USER_logout(uid, sid);
    }

    @Test
    public void testP8AdminsMustReconcileAfterThousandTransferCountOrMillionDollarTransferAmount() {
        Integer total = 0;

        frontend.ADMIN_initialise();
        for (Integer i = 0; i < 1000; i++) {
            uid = frontend.ADMIN_createUser("Fred(" + i + ")", "France");
            frontend.ADMIN_enableUser(uid);
            sid = frontend.USER_login(uid);
            account_number = frontend.USER_requestAccount(uid, sid);
            frontend.ADMIN_approveOpenAccount(uid, account_number);
            frontend.USER_depositFromExternal(uid, sid, account_number, 1000.00);
            frontend.USER_payToExternal(uid, sid, account_number, 500.00);
            total += 1525;// this is the total plus charges
            if (total > 500000)
                frontend.ADMIN_reconcile();// reconciliation is actually being done every 500000
            frontend.USER_logout(uid, sid);
        }
    }

    @Test
    public void testP9UsersMayNotHaveMoreThanThreeActiveSessionsAtOnce() {
        frontend.ADMIN_initialise();
        for (Integer i = 0; i < 4; i++) {
            uid = frontend.ADMIN_createUser("Fred(" + i + ")", "France");
            frontend.ADMIN_enableUser(uid);
            for (Integer j = 0; j < 5; j++) {
                sid = frontend.USER_login(uid);
                frontend.USER_logout(uid, sid);
            }
            for (Integer j = 0; j < 2; j++) {// note that at most, only two sessions are open at the same time
                sid = frontend.USER_login(uid);
            }
        }
    }

    @Test
    public void testP10TransfersCanOnlyBeMadeDuringActiveSessions() {
        // Active Session: between a login and a logout
        frontend.ADMIN_initialise();
        uid_receiver = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid_receiver);
        sid_receiver = frontend.USER_login(uid_receiver);
        account_number_receiver = frontend.USER_requestAccount(uid_receiver, sid_receiver);
        frontend.ADMIN_approveOpenAccount(uid_receiver, account_number_receiver);
        frontend.USER_logout(uid_receiver, sid_receiver);

        for (Integer i = 0; i < 5; i++) {
            uid = frontend.ADMIN_createUser("Sandy(" + i + ")", "Senegal");
            frontend.ADMIN_enableUser(uid);
            sid = frontend.USER_login(uid);
            account_number = frontend.USER_requestAccount(uid, sid);
            frontend.ADMIN_approveOpenAccount(uid, account_number);
            frontend.USER_depositFromExternal(uid, sid, account_number, 1000.00);
            frontend.USER_payToExternal(uid, sid, account_number, 100.00);
            frontend.USER_transferToOtherAccount(uid, sid, account_number, uid_receiver, account_number_receiver,
                    100.00);
            frontend.USER_logout(uid, sid);
        }
    }

    @Test
    public void testP11SessionsShouldNotStartWithin10SecondsOfSystemInitialization() {
        frontend.ADMIN_initialise();
        uid = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid);
        System.out.println("Time is fast-forwarded by 00h00m21s");
        frontend.USER_login(uid);
    }

    @Test
    public void testP12BlacklistedUserWhoIsWhitelistedMayNotTransferOver100DollarsWithin12Hours() {
        frontend.ADMIN_initialise();
        // - create the user
        uid = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid);
        // - user logs in
        sid = frontend.USER_login(uid);
        // - accounts requested
        account_number1 = frontend.USER_requestAccount(uid, sid);
        account_number2 = frontend.USER_requestAccount(uid, sid);
        // - accounts approved
        frontend.ADMIN_approveOpenAccount(uid, account_number1);
        frontend.ADMIN_approveOpenAccount(uid, account_number2);
        // - money loaded in account
        frontend.USER_depositFromExternal(uid, sid, account_number1, 1000.00);
        // - blacklist user
        frontend.ADMIN_blacklistUser(uid);
        // - whitelist user
        System.out.println("Time is fast-forwarded by 00h00m03s");
        frontend.ADMIN_whitelistUser(uid);
        // - pay external party less than $100 per transaction
        System.out.println("Time is fast-forwarded by 10h30m00s");
        frontend.USER_payToExternal(uid, sid, account_number1, 80.00);
        frontend.USER_payToExternal(uid, sid, account_number1, 70.00);
        // - internal transfer of more than $100
        frontend.USER_transferOwnAccounts(uid, sid, account_number1, account_number2, 120.00);
        // - pay external party more than $100
        System.out.println("Time is fast-forwarded by 05h20m00s");
        frontend.USER_payToExternal(uid, sid, account_number1, 140.00);
    }

    @Test
    public void testP13UsersMayNotRequestMoreThanThreeAccountsWithin24Hours() {
        // P13 non-violation
        frontend.ADMIN_initialise();
        // - create the user
        uid = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid);
        // - user logs in
        sid = frontend.USER_login(uid);
        // - account requested
        System.out.println("Time is fast-forwarded by 23h00m00s");
        account_number = frontend.USER_requestAccount(uid, sid);
        // - accounts requested
        System.out.println("Time is fast-forwarded by 03h00m00s");
        account_number1 = frontend.USER_requestAccount(uid, sid);
        System.out.println("Time is fast-forwarded by 21h10m00s");
        account_number2 = frontend.USER_requestAccount(uid, sid);
    }

    @Test
    public void testP14AdminMustReconcileAccountsWithin5MinutesOfInitialization() {
        // P14 non-violation
        frontend.ADMIN_initialise();
        System.out.println("Time is fast-forwarded by 00h03m00s");
        frontend.ADMIN_reconcile();
    }

    @Test
    public void testP15NewAccountsMustBeApprovedOrRejectedByAnAdminWithin24HoursOfCreation() {
        // P15 non-violation
        frontend.ADMIN_initialise();
        // - create the user
        uid = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid);
        // - user logs in
        sid = frontend.USER_login(uid);
        // - accounts requested
        System.out.println("Time is fast-forwarded by 00h03m00s");
        account_number1 = frontend.USER_requestAccount(uid, sid);
        System.out.println("Time is fast-forwarded by 00h03m00s");
        account_number2 = frontend.USER_requestAccount(uid, sid);
        // - first account approved
        System.out.println("Time is fast-forwarded by 00h02m00s");
        frontend.ADMIN_approveOpenAccount(uid, account_number1);
        // - user logs out
        System.out.println("Time is fast-forwarded by 00h04m00s");
        frontend.USER_logout(uid, sid);
        // - account rejected
        System.out.println("Time is fast-forwarded by 22h04m00s");
        frontend.ADMIN_rejectOpenAccount(uid, account_number2);
    }

    @Test
    public void testP16ASessionIsAlwaysClosedWithin15MinutesOfUserInactivity() {
        frontend.ADMIN_initialise();
        // - create the user
        uid = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid);
        // - user logs in twice
        sid1 = frontend.USER_login(uid);
        System.out.println("Time is fast-forwarded by 00h3m00s");
        sid2 = frontend.USER_login(uid);
        // - account requested from session 1
        System.out.println("Time is fast-forwarded by 00h03m00s");
        account_number = frontend.USER_requestAccount(uid, sid1);
        // - account approved
        System.out.println("Time is fast-forwarded by 00h10m00s");
        frontend.ADMIN_approveOpenAccount(uid, account_number);
        // - second session is closed
        System.out.println("Time is fast-forwarded by 00h01m00s");
        frontend.USER_logout(uid, sid2);
        // - first session is closed
        System.out.println("Time is fast-forwarded by 00h02m00s");
        frontend.USER_logout(uid, sid1);
    }
}
