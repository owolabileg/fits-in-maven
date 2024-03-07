# Instructions for Running the code in this chapter

These instructions were tested on a computer with an Intel processor, running Java version 1.8.0_202

If you want to test with the pre-generated Verification.java and Properties.aj file that you see in this repo:

1. `cd ../` (go to the root `fits-in-maven` directory)
2. `mvn install -DskipTests` (Chapter 07 will fail. But, as long as the `generator` module installs successfully, you should be fine)
3. `cd chapter08-parameterized` (back to `fits-in-maven/chapter08-parameterized`)
4. `mvn aspectj:compile` (compile the `Properties.aj` file and all *.java source files)
6. `mvn aspectj:test-compile` (compile the test files)
7. `mvn surefire:test` (Violating tests should reveal several violations and the run will be slower than those in other chapters)

If you want to re-generate and run your own Verification.java and Properties.aj from src/main/resources/properties.re:

1. `cd ../` (go to the root `fits-in-maven` directory)
2. `mvn install -DskipTests` (Chapter 07 will fail. But, as long as the `generator` module installs successfully, you should be fine)
3. `cd chapter08-parameterized` (back to `fits-in-maven/chapter08-parameterized`)
4. `mvn test-compile` (generate the `src/main/java/monitoredfits/rv/Properties.aj` file, but compilation will fail due to precedence issues: "can't determine precedence between two or more pieces of advice that apply to the same join point")
5. re-order all the `before` pointcuts in `src/main/java/monitoredfits/rv/Properties.aj` so that they come before all the `after` pointcuts
6. `mvn aspectj:compile` (compile the `Properties.aj` file and all *.java source files)
7. `mvn aspectj:test-compile` (compile the test files)
8. `mvn surefire:test` (Violating tests should reveal several violations and the run will be slower than those in other chapters)
