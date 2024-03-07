package monitoredfits.rv;

import java.util.HashMap;

import codegen.ltl.structure.*;
import monitoredfits.fits.*;
import monitoredfits.assertion.Assertion;






public aspect Properties {
static void setupVerification() {
}

before (): call(* UserInfo.openSession(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!Verification.triggered59632d91) { Verification.currentLTL59632d91 = Verification.currentLTL59632d91.derivative(new Event("before","UserInfo.openSession")); Verification.triggered59632d91 = true;}
  }

after (): call(* BackEnd.initialise(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!Verification.triggered59632d91) { Verification.currentLTL59632d91 = Verification.currentLTL59632d91.derivative(new Event("after","BackEnd.initialise")); Verification.triggered59632d91 = true;}
  }

before (): call(* *.*(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (Verification.initialised) { if (!Verification.triggered59632d91) {Verification.currentLTL59632d91 = Verification.currentLTL59632d91.derivative(new Event("before", "#")); Verification.triggered59632d91 = true; } if (Verification.currentLTL59632d91.cannotMatch()) { Assertion.alert("Violation detected on property { GOOD (not [before UserInfo.openSession] until [after BackEnd.initialise])}"); } Verification.triggered59632d91 = false; }
  }

after (): call(* *.*(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (Verification.initialised) { if (!Verification.triggered59632d91) {Verification.currentLTL59632d91 = Verification.currentLTL59632d91.derivative(new Event("after", "#")); Verification.triggered59632d91 = true; } if (Verification.currentLTL59632d91.cannotMatch()) { Assertion.alert("Violation detected on property { GOOD (not [before UserInfo.openSession] until [after BackEnd.initialise])}"); } Verification.triggered59632d91 = false; }
  }

}