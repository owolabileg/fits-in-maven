
package monitoredfits.rv;

import codegen.re.structure.*;

public class Verification {

    public static Boolean initialised = false;
    static public RegExp currentRegExp535e394e;
    static public Boolean triggered535e394e;


    static public RegExp currentRegExp4479ef22;
    static public Boolean triggered4479ef22;


    static public RegExp currentRegExp2a6a178c;
    static public Boolean triggered2a6a178c;


    static public RegExp currentRegExp41d1dc80;
    static public Boolean triggered41d1dc80;


    static public RegExp currentRegExp636719bd;
    static public Boolean triggered636719bd;

    static public void setupVerification() {

        currentRegExp535e394e = new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before", "BackEnd.initialise"))), new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before", "BackEnd.initialise")), new Repetition(new MatchEventComplement(new Event("before", "BackEnd.shutdown")))), new MatchEvent(new Event("before", "BackEnd.shutdown"))))), new Repetition(new MatchEventComplement(new Event("before", "BackEnd.initialise")))), new MatchEvent(new Event("before", "UserInfo.openSession")));
        triggered535e394e = false;


        currentRegExp4479ef22 = new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before", "UserInfo.makeDisabled"))), new MatchEvent(new Event("before", "UserInfo.makeDisabled"))), new Repetition(new MatchEventComplement(new Event("before", "UserInfo.withdrawFrom")))), new MatchEvent(new Event("before", "UserInfo.makeEnabled"))));
        triggered4479ef22 = false;


        currentRegExp2a6a178c = new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new Any()), new MatchEvent(new Event("before", "makeDisabled"))), new Repetition(new MatchEventComplement(new Event("before", "makeEnabled")))), new MatchEvent(new Event("before", "withdrawFrom")));
        triggered2a6a178c = false;


        currentRegExp41d1dc80 = new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before", "UserSession.openSession"))), new Repetition(new SequentialComposition(new SequentialComposition(new MatchEvent(new Event("before", "UserSession.openSession")), new Repetition(new MatchEventComplement(new Event("before", "UserSession.closeSession")))), new MatchEvent(new Event("before", "UserSession.closeSession"))))), new Repetition(new MatchEventComplement(new Event("before", "UserSession.openSession")))), new MatchEvent(new Event("before", "UserSession.log")));
        triggered41d1dc80 = false;


        currentRegExp636719bd = new Repetition(new SequentialComposition(new SequentialComposition(new SequentialComposition(new Repetition(new MatchEventComplement(new Event("before", "UserSession.log"))), new MatchEvent(new Event("before", "UserSession.openSession"))), new Repetition(new MatchEventComplement(new Event("before", "UserSession.closeSession")))), new MatchEvent(new Event("before", "UserSession.closeSession"))));
        triggered636719bd = false;


        Properties.setupVerification();
        initialised = true;
    }
}



