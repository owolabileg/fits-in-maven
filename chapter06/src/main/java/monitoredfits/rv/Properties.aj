
package monitoredfits.rv;

import monitoredfits.assertion.Assertion;
import monitoredfits.fits.BackEnd;
import monitoredfits.fits.UserInfo;




public aspect Properties {

after (): call(* BackEnd.initialise(..)) &&
    args() &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) {{ Verification.fitsInitialisation(); }}
  }

before (): call(* UserInfo.openSession(..)) &&
    args() &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!Verification.isInitialised()) {{ Assertion.alert("P2 violated"); }}
  }

}