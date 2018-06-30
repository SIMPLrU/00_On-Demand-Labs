Task: Stash and unstash files from one stage to the next

Edit your pipeline from multi-env-pipeline
	Update the Pipeline’s agent to "none"

	Update each stage agent to use node label "java8"
	
	Add stash step to the end of the "Fluffy Build" stage
		Stash some files to be used later in the build
		
		Name: "Java 8"
		Includes: target/**

Add an unstash step to the start of each of the test and deploy stages

		Restore files previously stashed: "Java 8"
		
		Save the pipeline. In the Save dialog, provide the description "Run stages on Java 8" and save to the default branch (multienv-pipeline
branch).
		
		View the pipeline logs to verify that various stages ran on Java 8