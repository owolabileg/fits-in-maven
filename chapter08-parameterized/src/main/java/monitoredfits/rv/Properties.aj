package monitoredfits.rv;

import re.structure.*;
import java.util.HashMap;

import monitoredfits.fits.*;

import monitoredfits.assertion.Assertion;

public aspect Properties{static void setupVerification(){initialisetriggered66d3c617();initialisecurrentRegExp66d3c617();initialisetriggeredd716361();initialisecurrentRegExpd716361();initialisetriggered4d7e1886();initialisecurrentRegExp4d7e1886();initialisetriggered5451c3a8();initialisecurrentRegExp5451c3a8();}

static HashMap<UserInfo,Boolean>triggered66d3c617=new HashMap<UserInfo,Boolean>();static void initialisetriggered66d3c617(){triggered66d3c617=new HashMap<UserInfo,Boolean>();}

static HashMap<UserInfo,RegExp>currentRegExp66d3c617=new HashMap<UserInfo,RegExp>();static void initialisecurrentRegExp66d3c617(){currentRegExp66d3c617=new HashMap<UserInfo,RegExp>();}

static HashMap<UserInfo,Boolean>triggeredd716361=new HashMap<UserInfo,Boolean>();static void initialisetriggeredd716361(){triggeredd716361=new HashMap<UserInfo,Boolean>();}

static HashMap<UserInfo,RegExp>currentRegExpd716361=new HashMap<UserInfo,RegExp>();static void initialisecurrentRegExpd716361(){currentRegExpd716361=new HashMap<UserInfo,RegExp>();}

static HashMap<UserSession,Boolean>triggered4d7e1886=new HashMap<UserSession,Boolean>();static void initialisetriggered4d7e1886(){triggered4d7e1886=new HashMap<UserSession,Boolean>();}

static HashMap<UserSession,RegExp>currentRegExp4d7e1886=new HashMap<UserSession,RegExp>();static void initialisecurrentRegExp4d7e1886(){currentRegExp4d7e1886=new HashMap<UserSession,RegExp>();}

static HashMap<UserSession,Boolean>triggered5451c3a8=new HashMap<UserSession,Boolean>();static void initialisetriggered5451c3a8(){triggered5451c3a8=new HashMap<UserSession,Boolean>();}

static HashMap<UserSession,RegExp>currentRegExp5451c3a8=new HashMap<UserSession,RegExp>();static void initialisecurrentRegExp5451c3a8(){currentRegExp5451c3a8=new HashMap<UserSession,RegExp>();}

before(UserInfo u):call(*UserInfo.makeEnabled(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp66d3c617.put(u,currentRegExp66d3c617.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("before","UserInfo.makeEnabled")));triggered66d3c617.put(u,true);}

before(UserInfo u):call(*UserInfo.makeDisabled(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp66d3c617.put(u,currentRegExp66d3c617.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("before","UserInfo.makeDisabled")));triggered66d3c617.put(u,true);}

before(UserInfo u):call(*UserInfo.withdrawFrom(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp66d3c617.put(u,currentRegExp66d3c617.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("before","UserInfo.withdrawFrom")));triggered66d3c617.put(u,true);}

before(UserInfo u):call(*UserInfo.makeDisabled(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp66d3c617.put(u,currentRegExp66d3c617.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("before","UserInfo.makeDisabled")));triggered66d3c617.put(u,true);}

before(UserInfo u):call(*UserInfo.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(!triggered66d3c617.computeIfAbsent(u,(k)->false)){currentRegExp66d3c617.put(u,currentRegExp66d3c617.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("before","#")));triggered66d3c617.put(u,true);}}

before(UserInfo u):call(*UserInfo.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(currentRegExp66d3c617.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).cannotMatch()){Assertion.alert("Violation detected on foreach target (UserInfo u) property { GOOD (((((!(before UserInfo.makeDisabled))* ; before UserInfo.makeDisabled) ; (!(before UserInfo.withdrawFrom))*) ; before UserInfo.makeEnabled))*}");}triggered66d3c617.put(u,false);}

before(UserInfo u):call(*makeDisabled(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExpd716361.put(u,currentRegExpd716361.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("before","makeDisabled")));triggeredd716361.put(u,true);}

before(UserInfo u):call(*makeEnabled(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExpd716361.put(u,currentRegExpd716361.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("before","makeEnabled")));triggeredd716361.put(u,true);}

before(UserInfo u):call(*withdrawFrom(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExpd716361.put(u,currentRegExpd716361.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("before","withdrawFrom")));triggeredd716361.put(u,true);}

before(UserInfo u):call(*UserInfo.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(!triggeredd716361.computeIfAbsent(u,(k)->false)){currentRegExpd716361.put(u,currentRegExpd716361.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("before","#")));triggeredd716361.put(u,true);}}

before(UserInfo u):call(*UserInfo.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(currentRegExpd716361.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).hasEmpty()){Assertion.alert("Violation detected on foreach target (UserInfo u) property { BAD ((((?)* ; before makeDisabled) ; (!(before makeEnabled))*) ; before withdrawFrom)}");}triggeredd716361.put(u,false);}

before(UserSession u):call(*UserSession.openSession(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp4d7e1886.put(u,currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","UserSession.openSession")));triggered4d7e1886.put(u,true);}

before(UserSession u):call(*UserSession.openSession(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp4d7e1886.put(u,currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","UserSession.openSession")));triggered4d7e1886.put(u,true);}

before(UserSession u):call(*UserSession.log(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp4d7e1886.put(u,currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","UserSession.log")));triggered4d7e1886.put(u,true);}

before(UserSession u):call(*UserSession.closeSession(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp4d7e1886.put(u,currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","UserSession.closeSession")));triggered4d7e1886.put(u,true);}

before(UserSession u):call(*UserSession.openSession(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp4d7e1886.put(u,currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","UserSession.openSession")));triggered4d7e1886.put(u,true);}

before(UserSession u):call(*UserSession.closeSession(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp4d7e1886.put(u,currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","UserSession.closeSession")));triggered4d7e1886.put(u,true);}

before(UserSession u):call(*UserSession.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(!triggered4d7e1886.computeIfAbsent(u,(k)->false)){currentRegExp4d7e1886.put(u,currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("before","#")));triggered4d7e1886.put(u,true);}}

before(UserSession u):call(*UserSession.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).hasEmpty()){Assertion.alert("Violation detected on foreach target (UserSession u) property { BAD ((((!(before UserSession.openSession))* ; (((before UserSession.openSession ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*) ; (!(before UserSession.openSession))*) ; before UserSession.log)}");}triggered4d7e1886.put(u,false);}

before(UserSession u):call(*UserSession.closeSession(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp5451c3a8.put(u,currentRegExp5451c3a8.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("before","UserSession.closeSession")));triggered5451c3a8.put(u,true);}

before(UserSession u):call(*UserSession.closeSession(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp5451c3a8.put(u,currentRegExp5451c3a8.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("before","UserSession.closeSession")));triggered5451c3a8.put(u,true);}

before(UserSession u):call(*UserSession.log(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp5451c3a8.put(u,currentRegExp5451c3a8.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("before","UserSession.log")));triggered5451c3a8.put(u,true);}

before(UserSession u):call(*UserSession.openSession(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){currentRegExp5451c3a8.put(u,currentRegExp5451c3a8.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("before","UserSession.openSession")));triggered5451c3a8.put(u,true);}

before(UserSession u):call(*UserSession.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(!triggered5451c3a8.computeIfAbsent(u,(k)->false)){currentRegExp5451c3a8.put(u,currentRegExp5451c3a8.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("before","#")));triggered5451c3a8.put(u,true);}}

before(UserSession u):call(*UserSession.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(currentRegExp5451c3a8.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).cannotMatch()){Assertion.alert("Violation detected on foreach target (UserSession u) property { GOOD (((((!(before UserSession.log))* ; before UserSession.openSession) ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*}");}triggered5451c3a8.put(u,false);}

before():call(*BackEnd.initialise(..))&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(true){Verification.currentRegExp60e53b93=Verification.currentRegExp60e53b93.derivative(new Event("before","BackEnd.initialise"));Verification.triggered60e53b93=true;}}

before():call(*UserInfo.openSession(..))&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(true){Verification.currentRegExp60e53b93=Verification.currentRegExp60e53b93.derivative(new Event("before","UserInfo.openSession"));Verification.triggered60e53b93=true;}}

before():call(*UserInfo.openSession(..))&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(true){Verification.currentRegExp5e2de80c=Verification.currentRegExp5e2de80c.derivative(new Event("before","UserInfo.openSession"));Verification.triggered5e2de80c=true;}}

before():call(*BackEnd.initialise(..))&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(true){Verification.currentRegExp5e2de80c=Verification.currentRegExp5e2de80c.derivative(new Event("before","BackEnd.initialise"));Verification.triggered5e2de80c=true;}}

before():call(**.*(..))&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(Verification.initialised){if(!Verification.triggered60e53b93){Verification.currentRegExp60e53b93=Verification.currentRegExp60e53b93.derivative(new Event("before","#"));Verification.triggered60e53b93=true;}if(Verification.currentRegExp60e53b93.cannotMatch()){Assertion.alert("Violation detected on  property { GOOD (((!(before UserInfo.openSession))* ; before BackEnd.initialise) ; (?)*)}");}Verification.triggered60e53b93=false;if(!Verification.triggered5e2de80c){Verification.currentRegExp5e2de80c=Verification.currentRegExp5e2de80c.derivative(new Event("before","#"));Verification.triggered5e2de80c=true;}if(Verification.currentRegExp5e2de80c.hasEmpty()){Assertion.alert("Violation detected on  property { BAD ((!(before BackEnd.initialise))* ; before UserInfo.openSession)}");}Verification.triggered5e2de80c=false;}}

after(UserInfo u):call(*UserInfo.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(!triggered66d3c617.computeIfAbsent(u,(k)->false)){currentRegExp66d3c617.put(u,currentRegExp66d3c617.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).derivative(new Event("after","#")));triggered66d3c617.put(u,true);}}

after(UserInfo u):call(*UserInfo.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(currentRegExp66d3c617.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserInfo.makeDisabled"))),new MatchEvent(new Event("before","UserInfo.makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","UserInfo.withdrawFrom")))),new MatchEvent(new Event("before","UserInfo.makeEnabled"))))).cannotMatch()){Assertion.alert("Violation detected on foreach target (UserInfo u) property { GOOD (((((!(before UserInfo.makeDisabled))* ; before UserInfo.makeDisabled) ; (!(before UserInfo.withdrawFrom))*) ; before UserInfo.makeEnabled))*}");}triggered66d3c617.put(u,false);}

after(UserInfo u):call(*UserInfo.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(!triggeredd716361.computeIfAbsent(u,(k)->false)){currentRegExpd716361.put(u,currentRegExpd716361.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).derivative(new Event("after","#")));triggeredd716361.put(u,true);}}

after(UserInfo u):call(*UserInfo.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(currentRegExpd716361.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()),new MatchEvent(new Event("before","makeDisabled"))),new Repetition(new MatchEventComplement(new Event("before","makeEnabled")))),new MatchEvent(new Event("before","withdrawFrom")))).hasEmpty()){Assertion.alert("Violation detected on foreach target (UserInfo u) property { BAD ((((?)* ; before makeDisabled) ; (!(before makeEnabled))*) ; before withdrawFrom)}");}triggeredd716361.put(u,false);}

after(UserSession u):call(*UserSession.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(!triggered4d7e1886.computeIfAbsent(u,(k)->false)){currentRegExp4d7e1886.put(u,currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).derivative(new Event("after","#")));triggered4d7e1886.put(u,true);}}

after(UserSession u):call(*UserSession.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(currentRegExp4d7e1886.computeIfAbsent(u,(k)->new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession"))),new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before","UserSession.openSession")),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))),new Repetition(new MatchEventComplement(new Event("before","UserSession.openSession")))),new MatchEvent(new Event("before","UserSession.log")))).hasEmpty()){Assertion.alert("Violation detected on foreach target (UserSession u) property { BAD ((((!(before UserSession.openSession))* ; (((before UserSession.openSession ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*) ; (!(before UserSession.openSession))*) ; before UserSession.log)}");}triggered4d7e1886.put(u,false);}

after(UserSession u):call(*UserSession.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(!triggered5451c3a8.computeIfAbsent(u,(k)->false)){currentRegExp5451c3a8.put(u,currentRegExp5451c3a8.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).derivative(new Event("after","#")));triggered5451c3a8.put(u,true);}}

after(UserSession u):call(*UserSession.*(..))&&target(u)&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(currentRegExp5451c3a8.computeIfAbsent(u,(k)->new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before","UserSession.log"))),new MatchEvent(new Event("before","UserSession.openSession"))),new Repetition(new MatchEventComplement(new Event("before","UserSession.closeSession")))),new MatchEvent(new Event("before","UserSession.closeSession"))))).cannotMatch()){Assertion.alert("Violation detected on foreach target (UserSession u) property { GOOD (((((!(before UserSession.log))* ; before UserSession.openSession) ; (!(before UserSession.closeSession))*) ; before UserSession.closeSession))*}");}triggered5451c3a8.put(u,false);}

after():call(**.*(..))&&!(adviceexecution())&&!cflow(adviceexecution())&&!cflowbelow(adviceexecution()){if(Verification.initialised){if(!Verification.triggered60e53b93){Verification.currentRegExp60e53b93=Verification.currentRegExp60e53b93.derivative(new Event("after","#"));Verification.triggered60e53b93=true;}if(Verification.currentRegExp60e53b93.cannotMatch()){Assertion.alert("Violation detected on  property { GOOD (((!(before UserInfo.openSession))* ; before BackEnd.initialise) ; (?)*)}");}Verification.triggered60e53b93=false;if(!Verification.triggered5e2de80c){Verification.currentRegExp5e2de80c=Verification.currentRegExp5e2de80c.derivative(new Event("after","#"));Verification.triggered5e2de80c=true;}if(Verification.currentRegExp5e2de80c.hasEmpty()){Assertion.alert("Violation detected on  property { BAD ((!(before BackEnd.initialise))* ; before UserInfo.openSession)}");}Verification.triggered5e2de80c=false;}}

}