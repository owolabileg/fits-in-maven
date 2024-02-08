
package monitoredfits.rv;

import java.util.HashMap;

import monitoredfits.assertion.Assertion;
import monitoredfits.fits.BackEnd;
import monitoredfits.fits.BankAccount;
import monitoredfits.fits.FrontEnd;
import monitoredfits.fits.UserInfo;
import monitoredfits.fits.UserSession;




public aspect Properties {
static void setupVerification() {
initialisegreylisted();initialisecountTransfers();
}

static HashMap<UserInfo, Boolean> greylisted = new HashMap<UserInfo, Boolean>();
static void initialisegreylisted(){greylisted= new HashMap<UserInfo, Boolean>(); }


static HashMap<UserInfo, Integer> countTransfers = new HashMap<UserInfo, Integer>();
static void initialisecountTransfers(){countTransfers= new HashMap<UserInfo, Integer>(); }



before (UserInfo u): call(* UserInfo.makeGreylisted(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
greylisted.put(u,true);countTransfers.put(u,0);}


before (UserInfo u): call(* UserInfo.depositTo(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
if (greylisted.computeIfAbsent(u, (k) -> false))countTransfers.put(u,countTransfers.computeIfAbsent(u, (k) -> 0) + 1);}


before (UserInfo u): call(* UserInfo.makeWhitelisted(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (( greylisted.computeIfAbsent(u, (k) -> false) && countTransfers.computeIfAbsent(u, (k) -> 0) < 3 )) {
Assertion.alert("P6 violated");}
  }


before (UserInfo u): call(* UserInfo.makeWhitelisted(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
greylisted.put(u,false);}


}