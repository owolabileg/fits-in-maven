# Instructions for Running the code in this chapter

These instructions were tested on a computer with an Intel processor, running Java version 1.8.0_202

1. `cd ../` (go to the root `fits-in-maven` directory)
2. `mvn install -DskipTests` (Chapter 07 will fail. But, as long as the `generator` module installs successfully, you should be fine)
3. `cd chapter09` (back to `fits-in-maven/chapter09`)
4. `mvn test-compile` (generate the `Properties.aj` and `Verification.java` files)
5. `mvn aspectj:compile` (weave the aspects into the source code)
6. `mvn test` (Violating tests should reveal several violations and the run will be much slower than those in other chapters)
