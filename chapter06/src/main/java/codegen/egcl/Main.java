package codegen.egcl;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;

public class Main {
	public static void main(String[] args) {
		System.out.println(Arrays.asList(args));
		try {
			String path = args[0];
			EGCLScript script = new EGCLScript(Main.class.getResource("/properties.egcl").getFile().toString());
			try {
				File file_java = new File(args[1] + "/generated-sources/java/Verification.java");
				;

				BufferedWriter output = new BufferedWriter(new FileWriter(file_java));
				output.write(script.getVerificationCode());
				output.close();

				File file_aj = new File(args[1] + "/generated-sources/java/Properties.aj");
				output = new BufferedWriter(new FileWriter(file_aj));
				output.write(script.toAspectJ());
				output.close();

			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (Exception msg) {
			System.out.println("Error: " + msg);
		}
	}

}
