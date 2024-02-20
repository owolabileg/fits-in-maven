package monitoredfits.rv;

import monitoredfits.fits.BackEnd;
import monitoredfits.fits.UserInfo;

public aspect Properties {

	before (): execution(* BackEnd.initialise()) {
		// Verification.fitsInitialisation();
        int x = 3;
        int y = x * 4;
	}

	before (): call(* UserInfo+.openSession*()) {
		Verification.fitsOpenSession();

	}

}
