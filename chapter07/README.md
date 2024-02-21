# Instructions for Running the code in this chapter

These instructions were tested on a computer with an Intel processor, running Java version 1.8.0_202

1. `cd ../` (go to the root `fits-in-maven` directory)
2. `mvn install -DskipTests` (Chapter 07 will fail. But, as long as the `generator` module installs successfully, you should be fine)
3. `cd chapter07` (back to `fits-in-maven/chapter07`)
4. `mvn aspectj:compile` (generate and compile th `Properties.aj` file)
5. `mvn test` (Violating tests should reveal a violation of Specifications 2 and 8)