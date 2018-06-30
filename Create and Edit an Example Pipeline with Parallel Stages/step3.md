Task: Add parallel stages to a Pipeline

Edit your pipeline from simple-pipeline
	Add three parallel stages to "Fluffy Test", for a total of four parallel stages

Name the stages "Backend", "Frontend", "Performance", and "Static".

Make each stage have only one step, respectively:
	i. Shell Script: ./jenkins/test-backend.sh
	ii. Shell Script: ./jenkins/test-frontend.sh
	iii. Shell Script: ./jenkins/test-performance.sh
	iv. Shell Script: ./jenkins/test-static.sh

Add a "Publish JUnit test result report" step to the "Backend" and "Frontend" stages, respectively
	i. Publish JUnit test result report: target/surefire-reports/**/TEST*.xml
	ii. Publish JUnit test result report: target/test-results/**/TEST*.xml

Save the pipeline. In the Save dialog, provide the description "Add parallel test stages" and save to the default branch
(simple-pipeline branch).

When the run completes review the results. Notice that the pipeline completed much more quickly using parallel stages.