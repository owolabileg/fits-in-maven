package monitoredfits.rv;

import codegen.re.structure.*;
import java.util.HashMap;

import monitoredfits.fits.*;

import monitoredfits.assertion.Assertion;







public aspect Properties {
static void setupVerification() {
}

after (): call(* *.*(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (Verification.initialised) { if (!Verification.triggered535e394e) {Verification.currentRegExp535e394e = Verification.currentRegExp535e394e.derivative(new Event("after", "#")); Verification.triggered535e394e = true; } if (Verification.currentRegExp535e394e.hasEmpty()) { Assertion.alert("Violation detected on  property { BAD ((((!(before BackEnd.initialise))* ; (((before BackEnd.initialise ; (!(before BackEnd.shutdown))*) ; before BackEnd.shutdown))*) ; (!(before BackEnd.initialise))*) ; before UserInfo.openSession)}"); } Verification.triggered535e394e = false; if (!Verification.triggered4479ef22) {Verification.currentRegExp4479ef22 = Verification.currentRegExp4479ef22.derivative(new Event("after", "#")); Verification.triggered4479ef22 = true; } if (Verification.currentRegExp4479ef22.cannotMatch()) { Assertion.alert("Violation detected on  property { GOOD (((((!(before UserInfo.makeDisabled))* ; before UserInfo.makeDisabled) ; (!(before UserInfo.withdrawFrom))*) ; before UserInfo.makeEnabled))*}"); } Verification.triggered4479ef22 = false; if (!Verification.triggered2a6a178c) {Verification.currentRegExp2a6a178c = Verification.currentRegExp2a6a178c.derivative(new Event("after", "#")); Verification.triggered2a6a178c = true; } if (Verification.currentRegExp2a6a178c.hasEmpty()) { Assertion.alert("Violation detected on  property { BAD ((((?)* ; before makeDisabled) ; (!(before makeEnabled))*) ; before withdrawFrom)}"); } Verification.triggered2a6a178c = false; if (!Verification.triggered41d1dc80) {Verification.currentRegExp41d1dc80 = Verification.currentRegExp41d1dc80.derivative(new Event("after", "#")); Verification.triggered41d1dc80 = true; } if (Verification.currentRegExp41d1dc80.hasEmpty()) { Assertion.alert("Violation detected on  property { BAD ((((!(before UserSession.openSession))* ; (((before UserSession.openSession ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*) ; (!(before UserSession.openSession))*) ; before UserSession.log)}"); } Verification.triggered41d1dc80 = false; if (!Verification.triggered636719bd) {Verification.currentRegExp636719bd = Verification.currentRegExp636719bd.derivative(new Event("after", "#")); Verification.triggered636719bd = true; } if (Verification.currentRegExp636719bd.cannotMatch()) { Assertion.alert("Violation detected on  property { GOOD (((((!(before UserSession.log))* ; before UserSession.openSession) ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*}"); } Verification.triggered636719bd = false; }
  }

before (): call(* BackEnd.shutdown(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp535e394e = Verification.currentRegExp535e394e.derivative(new Event("before","BackEnd.shutdown")); Verification.triggered535e394e = true;}
  }

before (): call(* UserInfo.openSession(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp535e394e = Verification.currentRegExp535e394e.derivative(new Event("before","UserInfo.openSession")); Verification.triggered535e394e = true;}
  }

before (): call(* BackEnd.initialise(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp535e394e = Verification.currentRegExp535e394e.derivative(new Event("before","BackEnd.initialise")); Verification.triggered535e394e = true;}
  }

before (): call(* UserInfo.makeEnabled(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp4479ef22 = Verification.currentRegExp4479ef22.derivative(new Event("before","UserInfo.makeEnabled")); Verification.triggered4479ef22 = true;}
  }

before (): call(* UserInfo.makeDisabled(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp4479ef22 = Verification.currentRegExp4479ef22.derivative(new Event("before","UserInfo.makeDisabled")); Verification.triggered4479ef22 = true;}
  }

before (): call(* UserInfo.withdrawFrom(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp4479ef22 = Verification.currentRegExp4479ef22.derivative(new Event("before","UserInfo.withdrawFrom")); Verification.triggered4479ef22 = true;}
  }

before (): call(* withdrawFrom(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp2a6a178c = Verification.currentRegExp2a6a178c.derivative(new Event("before","withdrawFrom")); Verification.triggered2a6a178c = true;}
  }

before (): call(* makeDisabled(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp2a6a178c = Verification.currentRegExp2a6a178c.derivative(new Event("before","makeDisabled")); Verification.triggered2a6a178c = true;}
  }

before (): call(* makeEnabled(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp2a6a178c = Verification.currentRegExp2a6a178c.derivative(new Event("before","makeEnabled")); Verification.triggered2a6a178c = true;}
  }

before (): call(* UserSession.openSession(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp41d1dc80 = Verification.currentRegExp41d1dc80.derivative(new Event("before","UserSession.openSession")); Verification.triggered41d1dc80 = true;}
  }

before (): call(* UserSession.log(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp41d1dc80 = Verification.currentRegExp41d1dc80.derivative(new Event("before","UserSession.log")); Verification.triggered41d1dc80 = true;}
  }

before (): call(* UserSession.closeSession(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp41d1dc80 = Verification.currentRegExp41d1dc80.derivative(new Event("before","UserSession.closeSession")); Verification.triggered41d1dc80 = true;}
  }

before (): call(* UserSession.openSession(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp636719bd = Verification.currentRegExp636719bd.derivative(new Event("before","UserSession.openSession")); Verification.triggered636719bd = true;}
  }

before (): call(* UserSession.log(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp636719bd = Verification.currentRegExp636719bd.derivative(new Event("before","UserSession.log")); Verification.triggered636719bd = true;}
  }

before (): call(* UserSession.closeSession(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (true) { Verification.currentRegExp636719bd = Verification.currentRegExp636719bd.derivative(new Event("before","UserSession.closeSession")); Verification.triggered636719bd = true;}
  }

before (): call(* *.*(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (Verification.initialised) { if (!Verification.triggered535e394e) {Verification.currentRegExp535e394e = Verification.currentRegExp535e394e.derivative(new Event("before", "#")); Verification.triggered535e394e = true; } if (Verification.currentRegExp535e394e.hasEmpty()) { Assertion.alert("Violation detected on  property { BAD ((((!(before BackEnd.initialise))* ; (((before BackEnd.initialise ; (!(before BackEnd.shutdown))*) ; before BackEnd.shutdown))*) ; (!(before BackEnd.initialise))*) ; before UserInfo.openSession)}"); } Verification.triggered535e394e = false; if (!Verification.triggered4479ef22) {Verification.currentRegExp4479ef22 = Verification.currentRegExp4479ef22.derivative(new Event("before", "#")); Verification.triggered4479ef22 = true; } if (Verification.currentRegExp4479ef22.cannotMatch()) { Assertion.alert("Violation detected on  property { GOOD (((((!(before UserInfo.makeDisabled))* ; before UserInfo.makeDisabled) ; (!(before UserInfo.withdrawFrom))*) ; before UserInfo.makeEnabled))*}"); } Verification.triggered4479ef22 = false; if (!Verification.triggered2a6a178c) {Verification.currentRegExp2a6a178c = Verification.currentRegExp2a6a178c.derivative(new Event("before", "#")); Verification.triggered2a6a178c = true; } if (Verification.currentRegExp2a6a178c.hasEmpty()) { Assertion.alert("Violation detected on  property { BAD ((((?)* ; before makeDisabled) ; (!(before makeEnabled))*) ; before withdrawFrom)}"); } Verification.triggered2a6a178c = false; if (!Verification.triggered41d1dc80) {Verification.currentRegExp41d1dc80 = Verification.currentRegExp41d1dc80.derivative(new Event("before", "#")); Verification.triggered41d1dc80 = true; } if (Verification.currentRegExp41d1dc80.hasEmpty()) { Assertion.alert("Violation detected on  property { BAD ((((!(before UserSession.openSession))* ; (((before UserSession.openSession ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*) ; (!(before UserSession.openSession))*) ; before UserSession.log)}"); } Verification.triggered41d1dc80 = false; if (!Verification.triggered636719bd) {Verification.currentRegExp636719bd = Verification.currentRegExp636719bd.derivative(new Event("before", "#")); Verification.triggered636719bd = true; } if (Verification.currentRegExp636719bd.cannotMatch()) { Assertion.alert("Violation detected on  property { GOOD (((((!(before UserSession.log))* ; before UserSession.openSession) ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*}"); } Verification.triggered636719bd = false; }
  }

}