
package monitoredfits.rv;

import codegen.ltl.structure.*;

public class Verification {

public static Boolean initialised = false;
static public LTL currentLTL5bb9e363;
static public Boolean triggered5bb9e363;

static public void setupVerification() {

currentLTL5bb9e363 = new Until(new Not(new MatchEvent(new Event("before","UserInfo.openSession"))),new MatchEvent(new Event("after","BackEnd.initialise")));
triggered5bb9e363 = false;



Properties.setupVerification();
initialised = true;} }



