package monitoredfits.fits;

import org.junit.Test;

public class ViolatingTest extends BaseTest {
    @Test
    public void testP1OnlyUsersInArgentinaCanBeGold() {
        frontend.ADMIN_initialise();
        uid = frontend.ADMIN_createUser("Fred", "France");
        frontend.ADMIN_enableUser(uid);
        frontend.ADMIN_makeGoldUser(uid);
    }

    @Test
    public void testP2TransactionSystemMustBeInitializedBeforeAnyUserLogsIn() {
        uid = frontend.ADMIN_createUser("Fred", "France");
        frontend.ADMIN_enableUser(uid);
        frontend.USER_login(uid);
    }

    @Test
    public void testP3NoAccountMayEndUpWithNegativeBalanceAfterAccess() {
        frontend.ADMIN_initialise();
        uid = frontend.ADMIN_createUser("Fred", "France");
        frontend.ADMIN_enableUser(uid);
        sid = frontend.USER_login(uid);
        account_number = frontend.USER_requestAccount(uid, sid);
        frontend.ADMIN_approveOpenAccount(uid, account_number);
        frontend.USER_depositFromExternal(uid, sid, account_number, 500.00);
        frontend.USER_payToExternal(uid, sid, account_number, 495.00);
    }

    @Test
    public void testP4ApprovedAccountsCannotHaveSameNumberAsExistingAccount() {
        frontend.ADMIN_initialise();
        for (Integer i = 0; i < 15; i++) {
            uid = frontend.ADMIN_createUser("Fred(" + i + ")", "France");
            frontend.ADMIN_enableUser(uid);
            for (Integer j = 0; j < 11; j++) {
                sid = frontend.USER_login(uid);
                account_number = frontend.USER_requestAccount(uid, sid);
                frontend.ADMIN_approveOpenAccount(uid, account_number);
                frontend.USER_logout(uid, sid);
            }
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
        frontend.USER_freezeUser(uid, sid);
        frontend.USER_unfreezeUser(uid, sid);
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

        for (Integer i = 0; i < 2; i++) {
            sid = frontend.USER_login(uid);
            frontend.USER_depositFromExternal(uid, sid, account_number, 1000.00);
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
        for (Integer i = 0; i < 11; i++) {
            account_number = frontend.USER_requestAccount(uid, sid);
            if (i % 2 == 0)
                frontend.ADMIN_approveOpenAccount(uid, account_number);
        }
        frontend.USER_logout(uid, sid);
    }

    @Test
    public void testP8AdminsMustReconcileAfterThousandTransferCountOrMillionDollarTransferAmount() {
        frontend.ADMIN_initialise();
        for (Integer i = 0; i < 50; i++) {// note that one million is exceeded
            uid = frontend.ADMIN_createUser("Fred(" + i + ")", "France");
            frontend.ADMIN_enableUser(uid);
            sid = frontend.USER_login(uid);
            account_number = frontend.USER_requestAccount(uid, sid);
            frontend.ADMIN_approveOpenAccount(uid, account_number);
            frontend.USER_depositFromExternal(uid, sid, account_number, 25000.00);
            frontend.USER_payToExternal(uid, sid, account_number, 20000.00);
            frontend.USER_logout(uid, sid);
        }
    }

    @Test
    public void testP9UsersMayNotHaveMoreThanThreeActiveSessionsAtOnce() {
        frontend.ADMIN_initialise();
        for (Integer i = 0; i < 4; i++) {
            uid = frontend.ADMIN_createUser("Fred(" + i + ")", "France");
            frontend.ADMIN_enableUser(uid);
            for (Integer j = 0; j <= i; j++) {
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
            frontend.USER_logout(uid, sid);
            // note activity after logout
            if (i == 3)
                frontend.USER_payToExternal(uid, sid, account_number, 100.00);
        }
    }

    @Test
    public void testP11SessionsShouldNotStartWithin10SecondsOfSystemInitialization() {
        frontend.ADMIN_initialise();
        uid = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid);
        System.out.println("Time is fast-forwarded by 00h00m03s");
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
        // - account requested
        account_number = frontend.USER_requestAccount(uid, sid);
        // - account approved
        frontend.ADMIN_approveOpenAccount(uid, account_number);
        // - money loaded in account
        frontend.USER_depositFromExternal(uid, sid, account_number, 1000.00);
        // - blacklist user
        frontend.ADMIN_blacklistUser(uid);
        // - whitelist user
        System.out.println("Time is fast-forwarded by 00h00m03s");
        frontend.ADMIN_whitelistUser(uid);
        // - pay external party more than $100
        System.out.println("Time is fast-forwarded by 10h30m00s");
        frontend.USER_payToExternal(uid, sid, account_number, 120.00);
    }

    @Test
    public void testP13UsersMayNotRequestMoreThanThreeAccountsWithin24Hours() {
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
        frontend.ADMIN_initialise();
        System.out.println("Time is fast-forwarded by 00h07m00s");
    }

    @Test
    public void testP15NewAccountsMustBeApprovedOrRejectedByAnAdminWithin24HoursOfCreation() {
        frontend.ADMIN_initialise();
        // - create the user
        uid = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid);
        // - user logs in
        sid = frontend.USER_login(uid);
        // - account requested
        System.out.println("Time is fast-forwarded by 00h03m00s");
        account_number = frontend.USER_requestAccount(uid, sid);
        // - user logs out
        System.out.println("Time is fast-forwarded by 00h01m00s");
        frontend.USER_logout(uid, sid);
        // - do nothing
        System.out.println("Time is fast-forwarded by 99h00m00s");
    }

    @Test
    public void testP16ASessionIsAlwaysClosedWithin15MinutesOfUserInactivity() {
        frontend.ADMIN_initialise();
        // - create the user
        uid = frontend.ADMIN_createUser("Roger", "Romania");
        frontend.ADMIN_enableUser(uid);
        // - user logs in
        sid = frontend.USER_login(uid);
        // - account requested
        System.out.println("Time is fast-forwarded by 00h03m00s");
        account_number = frontend.USER_requestAccount(uid, sid);
        // - account approved
        System.out.println("Time is fast-forwarded by 00h10m00s");
        frontend.ADMIN_approveOpenAccount(uid, account_number);
        // - no more activity
        System.out.println("Time is fast-forwarded by 00h08m00s");
    }
}
