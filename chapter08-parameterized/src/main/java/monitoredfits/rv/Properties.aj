package monitoredfits.rv;

import codegen.re.parameterized.structure.*;
import java.util.HashMap;

import monitoredfits.fits.*;

import monitoredfits.assertion.Assertion;







public aspect Properties {
static void setupVerification() {
initialisetriggered5f25db95();initialisecurrentRegExp5f25db95();
initialisetriggered34b06ded();initialisecurrentRegExp34b06ded();
initialisetriggered2628fce4();initialisecurrentRegExp2628fce4();
initialisetriggered46d5ffef();initialisecurrentRegExp46d5ffef();
}

static HashMap<UserInfo, Boolean> triggered5f25db95 = new HashMap<UserInfo, Boolean>();
static void initialisetriggered5f25db95(){triggered5f25db95= new HashMap<UserInfo, Boolean>(); }


static HashMap<UserInfo, RegExp> currentRegExp5f25db95 = new HashMap<UserInfo, RegExp>();
static void initialisecurrentRegExp5f25db95(){currentRegExp5f25db95= new HashMap<UserInfo, RegExp>(); }



static HashMap<UserInfo, Boolean> triggered34b06ded = new HashMap<UserInfo, Boolean>();
static void initialisetriggered34b06ded(){triggered34b06ded= new HashMap<UserInfo, Boolean>(); }


static HashMap<UserInfo, RegExp> currentRegExp34b06ded = new HashMap<UserInfo, RegExp>();
static void initialisecurrentRegExp34b06ded(){currentRegExp34b06ded= new HashMap<UserInfo, RegExp>(); }



static HashMap<UserSession, Boolean> triggered2628fce4 = new HashMap<UserSession, Boolean>();
static void initialisetriggered2628fce4(){triggered2628fce4= new HashMap<UserSession, Boolean>(); }


static HashMap<UserSession, RegExp> currentRegExp2628fce4 = new HashMap<UserSession, RegExp>();
static void initialisecurrentRegExp2628fce4(){currentRegExp2628fce4= new HashMap<UserSession, RegExp>(); }



static HashMap<UserSession, Boolean> triggered46d5ffef = new HashMap<UserSession, Boolean>();
static void initialisetriggered46d5ffef(){triggered46d5ffef= new HashMap<UserSession, Boolean>(); }


static HashMap<UserSession, RegExp> currentRegExp46d5ffef = new HashMap<UserSession, RegExp>();
static void initialisecurrentRegExp46d5ffef(){currentRegExp46d5ffef= new HashMap<UserSession, RegExp>(); }



before (UserInfo u): call(* UserInfo.makeEnabled(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp5f25db95.put(u,currentRegExp5f25db95.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("before","UserInfo.makeEnabled")));triggered5f25db95.put(u,true);}


before (UserInfo u): call(* UserInfo.makeDisabled(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp5f25db95.put(u,currentRegExp5f25db95.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("before","UserInfo.makeDisabled")));triggered5f25db95.put(u,true);}


before (UserInfo u): call(* UserInfo.withdrawFrom(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp5f25db95.put(u,currentRegExp5f25db95.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("before","UserInfo.withdrawFrom")));triggered5f25db95.put(u,true);}


before (UserInfo u): call(* UserInfo.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!triggered5f25db95.computeIfAbsent(u, (k) -> false)) {
currentRegExp5f25db95.put(u,currentRegExp5f25db95.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("before", "#")));triggered5f25db95.put(u,true);}
  }



before (UserInfo u): call(* UserInfo.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
if (currentRegExp5f25db95.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).cannotMatch()) { Assertion.alert("Violation detected on foreach target (UserInfo u) property { GOOD (((((!(before UserInfo.makeDisabled))* ; before UserInfo.makeDisabled) ; (!(before UserInfo.withdrawFrom))*) ; before UserInfo.makeEnabled))*}"); }triggered5f25db95.put(u,false);}



before (UserInfo u): call(* withdrawFrom(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp34b06ded.put(u,currentRegExp34b06ded.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("before","withdrawFrom")));triggered34b06ded.put(u,true);}


before (UserInfo u): call(* makeDisabled(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp34b06ded.put(u,currentRegExp34b06ded.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("before","makeDisabled")));triggered34b06ded.put(u,true);}


before (UserInfo u): call(* makeEnabled(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp34b06ded.put(u,currentRegExp34b06ded.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("before","makeEnabled")));triggered34b06ded.put(u,true);}


before (UserInfo u): call(* UserInfo.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!triggered34b06ded.computeIfAbsent(u, (k) -> false)) {
currentRegExp34b06ded.put(u,currentRegExp34b06ded.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("before", "#")));triggered34b06ded.put(u,true);}
  }

before (UserInfo u): call(* UserInfo.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
if (currentRegExp34b06ded.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).hasEmpty()) { Assertion.alert("Violation detected on foreach target (UserInfo u) property { BAD ((((?)* ; before makeDisabled) ; (!(before makeEnabled))*) ; before withdrawFrom)}"); }triggered34b06ded.put(u,false);}

before (UserSession u): call(* UserSession.openSession(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp2628fce4.put(u,currentRegExp2628fce4.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","UserSession.openSession")));triggered2628fce4.put(u,true);}


before (UserSession u): call(* UserSession.log(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp2628fce4.put(u,currentRegExp2628fce4.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","UserSession.log")));triggered2628fce4.put(u,true);}


before (UserSession u): call(* UserSession.closeSession(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp2628fce4.put(u,currentRegExp2628fce4.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","UserSession.closeSession")));triggered2628fce4.put(u,true);}


before (UserSession u): call(* UserSession.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!triggered2628fce4.computeIfAbsent(u, (k) -> false)) {
currentRegExp2628fce4.put(u,currentRegExp2628fce4.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before", "#")));triggered2628fce4.put(u,true);}
  }

before (UserSession u): call(* UserSession.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
if (currentRegExp2628fce4.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).hasEmpty()) { Assertion.alert("Violation detected on foreach target (UserSession u) property { BAD ((((!(before UserSession.openSession))* ; (((before UserSession.openSession ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*) ; (!(before UserSession.openSession))*) ; before UserSession.log)}"); }triggered2628fce4.put(u,false);}

before (UserSession u): call(* UserSession.openSession(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp46d5ffef.put(u,currentRegExp46d5ffef.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("before","UserSession.openSession")));triggered46d5ffef.put(u,true);}


before (UserSession u): call(* UserSession.log(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp46d5ffef.put(u,currentRegExp46d5ffef.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("before","UserSession.log")));triggered46d5ffef.put(u,true);}


before (UserSession u): call(* UserSession.closeSession(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
currentRegExp46d5ffef.put(u,currentRegExp46d5ffef.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("before","UserSession.closeSession")));triggered46d5ffef.put(u,true);}


before (UserSession u): call(* UserSession.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!triggered46d5ffef.computeIfAbsent(u, (k) -> false)) {
currentRegExp46d5ffef.put(u,currentRegExp46d5ffef.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("before", "#")));triggered46d5ffef.put(u,true);}
  }

before (UserSession u): call(* UserSession.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
if (currentRegExp46d5ffef.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).cannotMatch()) { Assertion.alert("Violation detected on foreach target (UserSession u) property { GOOD (((((!(before UserSession.log))* ; before UserSession.openSession) ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*}"); }triggered46d5ffef.put(u,false);}

before (): call(* *.*(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (Verification.initialised) {}
  }

after (UserSession u): call(* UserSession.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
if (currentRegExp46d5ffef.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).cannotMatch()) { Assertion.alert("Violation detected on foreach target (UserSession u) property { GOOD (((((!(before UserSession.log))* ; before UserSession.openSession) ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*}"); }triggered46d5ffef.put(u,false);}


after (): call(* *.*(..)) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (Verification.initialised) {}
  }


after (UserInfo u): call(* UserInfo.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
if (currentRegExp5f25db95.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).cannotMatch()) { Assertion.alert("Violation detected on foreach target (UserInfo u) property { GOOD (((((!(before UserInfo.makeDisabled))* ; before UserInfo.makeDisabled) ; (!(before UserInfo.withdrawFrom))*) ; before UserInfo.makeEnabled))*}"); }triggered5f25db95.put(u,false);}


after (UserInfo u): call(* UserInfo.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!triggered34b06ded.computeIfAbsent(u, (k) -> false)) {
currentRegExp34b06ded.put(u,currentRegExp34b06ded.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("after", "#")));triggered34b06ded.put(u,true);}
  }

after (UserInfo u): call(* UserInfo.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
if (currentRegExp34b06ded.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).hasEmpty()) { Assertion.alert("Violation detected on foreach target (UserInfo u) property { BAD ((((?)* ; before makeDisabled) ; (!(before makeEnabled))*) ; before withdrawFrom)}"); }triggered34b06ded.put(u,false);}


after (UserSession u): call(* UserSession.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!triggered2628fce4.computeIfAbsent(u, (k) -> false)) {
currentRegExp2628fce4.put(u,currentRegExp2628fce4.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("after", "#")));triggered2628fce4.put(u,true);}
  }

after (UserSession u): call(* UserSession.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
if (currentRegExp2628fce4.computeIfAbsent(u, (k) -> new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).hasEmpty()) { Assertion.alert("Violation detected on foreach target (UserSession u) property { BAD ((((!(before UserSession.openSession))* ; (((before UserSession.openSession ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*) ; (!(before UserSession.openSession))*) ; before UserSession.log)}"); }triggered2628fce4.put(u,false);}


after (UserSession u): call(* UserSession.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!triggered46d5ffef.computeIfAbsent(u, (k) -> false)) {
currentRegExp46d5ffef.put(u,currentRegExp46d5ffef.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("after", "#")));triggered46d5ffef.put(u,true);}
  }


after (UserInfo u): call(* UserInfo.*(..)) &&
    target(u) &&
   !(adviceexecution())  &&
   !cflow(adviceexecution())  &&
   !cflowbelow(adviceexecution())  {
    if (!triggered5f25db95.computeIfAbsent(u, (k) -> false)) {
currentRegExp5f25db95.put(u,currentRegExp5f25db95.computeIfAbsent(u, (k) -> new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("after", "#")));triggered5f25db95.put(u,true);}
  }

}
