Task: Build and run tests in parallel on two different agent
environments

Edit your pipeline from multi-env-pipeline
	Change "Fluffy Build" to a parallel stage with stages named "Build Java 7" and "Build Java 8" inside
	
	Have the "Build Java 7" and "Build Java 8" stages build on the "java7" and "java8" nodes and each stash their target folder using a name matching the Java version.
	
	The "Build Java 7" stage should also archive artifacts, the "Build Java 8" stage should not.

	Create copies of the exising "Fluffy Test" stages so there are eight stages running in parallel. Make set of four test on Java 7 and the other set test on Java 8. Change their names, agent label, and unstash values as needed.

	Change "Fluffy Deploy" to use the Java 7 node and unstash.

Save the pipeline. In the Save dialog, provide the description "Build and test Java 7 and 8 in parallel" and save to the default
branch (multi-env-pipeline branch).

View the pipeline logs to verify that various stages ran on the appropriate Java version