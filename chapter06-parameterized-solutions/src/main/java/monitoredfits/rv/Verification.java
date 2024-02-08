
package monitoredfits.rv;

import java.util.HashMap;

import monitoredfits.assertion.Assertion;
import monitoredfits.fits.BackEnd;
import monitoredfits.fits.BankAccount;
import monitoredfits.fits.UserInfo;

public class Verification {
static public boolean fitsHasBeenInitialised = false;
static public HashMap<UserInfo,HashMap<Integer, Integer>> accountRequestCount = new HashMap<>();
static public Integer fitsExternalMoneyTransferCount = 0;
static public Double fitsExternalMoneyTransferAmount = 0.0;

// Property 4 verification
// A bank account approved by the administrator may not have the same account
// number as any other bank account already existing in the system

public static void fitsAdminApprovingAccount(String new_account_number, BackEnd fits) {
for (UserInfo user : fits.getUsers()) {
for (BankAccount account : user.getAccounts()) {
if (account.isOpen()) {
Assertion.check(!account.getAccountNumber().equals(new_account_number), "P4 violated");
}
}
}
}

}

