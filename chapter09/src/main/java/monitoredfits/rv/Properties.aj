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
    if (!Verification.triggered5bb9e363) { Verification.currentLTL5bb9e363 = Verification.currentLTL5bb9e363.derivative(new Event("before","UserInfo.openSession")); Verification.triggered5bb9e363 = true;}
  }

after (): call(* BackEnd.initialise(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!Verification.triggered5bb9e363) { Verification.currentLTL5bb9e363 = Verification.currentLTL5bb9e363.derivative(new Event("after","BackEnd.initialise")); Verification.triggered5bb9e363 = true;}
  }

before (): call(* *.*(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (Verification.initialised) { if (!Verification.triggered5bb9e363) {Verification.currentLTL5bb9e363 = Verification.currentLTL5bb9e363.derivative(new Event("before", "#")); Verification.triggered5bb9e363 = true; } if (Verification.currentLTL5bb9e363.cannotMatch()) { Assertion.alert("Violation detected on property { GOOD (not [before UserInfo.openSession] until [after BackEnd.initialise])}"); } Verification.triggered5bb9e363 = false; }
  }

after (): call(* *.*(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (Verification.initialised) { if (!Verification.triggered5bb9e363) {Verification.currentLTL5bb9e363 = Verification.currentLTL5bb9e363.derivative(new Event("after", "#")); Verification.triggered5bb9e363 = true; } if (Verification.currentLTL5bb9e363.cannotMatch()) { Assertion.alert("Violation detected on property { GOOD (not [before UserInfo.openSession] until [after BackEnd.initialise])}"); } Verification.triggered5bb9e363 = false; }
  }

}