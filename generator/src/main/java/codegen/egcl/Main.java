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
            EGCLScript script = new EGCLScript(args[2]);
            try {
                File file_java = new File(args[1] + "/Verification.java");

                BufferedWriter output = new BufferedWriter(new FileWriter(file_java));
                output.write(script.getVerificationCode());
                output.close();

                File file_aj = new File(args[1] + "/Properties.aj");
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
