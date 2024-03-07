package monitoredfits.fits;

import monitoredfits.rv.Verification;
import org.junit.Before;

public class BaseTest {
    static TransactionSystem transactionsystem = new TransactionSystem();

    FrontEnd frontend = transactionsystem.getFrontEnd();

    String account_number, account_number1, account_number2, account_number_receiver;
    Integer uid, uid_receiver;
    Integer sid, sid1, sid2, sid_receiver;

    @Before
    public void reset() {
        transactionsystem.setup();
        Verification.setupVerification();
    }
}
