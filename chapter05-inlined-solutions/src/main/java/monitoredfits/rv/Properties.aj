package rv;

import monitoredfits.assertion.Assertion;
import monitoredfits.fits.FrontEnd;
import monitoredfits.fits.UserInfo;
import monitoredfits.fits.UserSession;

public aspect Properties {

	
	//Property 5
	// This adds a Boolean attribute to class UserInfo 
	private Boolean UserInfo.isEnabled = false; 
	
	before (UserInfo u): call(* UserInfo.makeDisabled(..)) && target(u) { 
		u.isEnabled = false; 
	} 
	
	before (FrontEnd fe, Integer uid): call(* FrontEnd.ADMIN_enableUser(..)) && target(fe) && args(uid) { 
		fe.getBackEnd().getUserInfo(uid).isEnabled = true; } 
	
	before (UserInfo u): call(* UserInfo.withdrawFrom(..)) && target(u) { 
		Assertion.check(u.isEnabled, "P5 violated"); }

    // Property 6
    private Boolean UserInfo.isGreylisted = false;
    private Integer UserInfo.transferCountSinceGreylisted = 0;

    before (UserInfo u): call(* UserInfo.makeGreylisted(..)) &&  target(u) {
    	u.isGreylisted = true;
    	u.transferCountSinceGreylisted = 0;
    }
    before (UserInfo u): call(* UserInfo.makeBlacklisted(..)) &&  target(u) {
    	u.isGreylisted = false;
    	u.transferCountSinceGreylisted = 0;
    }
    before (UserInfo u): call(* UserInfo.makeWhitelisted(..)) &&  target(u) {
    	if (u.isGreylisted)
    		Assertion.check(u.transferCountSinceGreylisted >= 3, "P6 violated");

    	u.isGreylisted = false;
    	u.transferCountSinceGreylisted = 0;
    }
    before (UserInfo u): call(* UserInfo.depositTo(..)) &&  target(u)
    {
    	if (u.isGreylisted)
    		u.transferCountSinceGreylisted ++;
    }


    // Property 9
    public int UserInfo.activeSessions = 0;

    before (UserInfo u): call(* UserInfo.openSession(..)) && target(u) {
    	u.activeSessions++;
    	Assertion.check(u.activeSessions <= 3, "P9 violated");
    }

    before (UserInfo u): call(* UserInfo.closeSession(..)) && target(u) {
    	u.activeSessions--;
    }

    // Property 10
    public boolean UserSession.loggedIn = false;

    before (UserSession s): call(* UserSession.openSession(..)) && target(s) {
    	s.loggedIn = true;
    }
    before (UserSession s): call(* UserSession.closeSession(..)) && target(s) {
    	s.loggedIn = false;
    }
    before (UserSession s): call(* UserSession.log(..)) && target(s) {
    	Assertion.check(s.loggedIn, "P10 violated");
    }
}
