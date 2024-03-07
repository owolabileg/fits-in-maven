
package monitoredfits.rv;

import codegen.ltl.structure.*;

public class Verification {

public static Boolean initialised = false;
static public LTL currentLTL59632d91;
static public Boolean triggered59632d91;

static public void setupVerification() {

currentLTL59632d91 = new Until(new Not(new MatchEvent(new Event("before","UserInfo.openSession"))),new MatchEvent(new Event("after","BackEnd.initialise")));
triggered59632d91 = false;



Properties.setupVerification();
initialised = true;} }



