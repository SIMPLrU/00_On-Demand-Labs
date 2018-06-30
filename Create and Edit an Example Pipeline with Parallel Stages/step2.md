Task: Add artifact and test result publishing to a Pipeline

Edit your pipeline from simple-pipeline
	Add a step to save the artifacts to the "Fluffy Build" stage
		i. Archive the artifacts: target/*.jar

	Add a step to publish test results to the "Fluffy Test" stage
		i. Publish JUnit test result report: target/**/TEST*.xml

Save the pipeline. In the Save dialog, provide the description "Publish artifacts and test results" and save to the default branch
(simple-pipeline branch).
