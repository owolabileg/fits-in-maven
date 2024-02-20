package codegen.automata;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import codegen.egcl.parameterized.EGCLScript;

public class Main {

	public static void main(String[] args) {
		System.out.println(Arrays.asList(args));

		try {
			AutomataScript script = new AutomataScript(args[2]);
			try {
				String filename = "temp.egcl";
				PrintWriter pw = new PrintWriter(filename);
				String toEGCL = script.toEGCL();
				System.out.println("\r\n\r\nGenerated EGCL code: \r\n\r\n" + toEGCL);
				pw.print(toEGCL);
				pw.close();

				EGCLScript eGCLScript = new EGCLScript(filename);

				File file_java = new File(args[1] + "/Verification.java");
				BufferedWriter output = new BufferedWriter(new FileWriter(file_java));
				output.write(eGCLScript.getVerificationCode());
				output.close();

				File file_aj = new File(args[1] + "/Properties.aj");
				output = new BufferedWriter(new FileWriter(file_aj));
				output.write(eGCLScript.toAspectJ());
				output.close();

			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (Exception msg) {
			System.out.println("Error: ");
			msg.printStackTrace();
		}
	}

}
