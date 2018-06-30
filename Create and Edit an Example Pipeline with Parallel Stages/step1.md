Create and run a Pipeline in a feature branch

Edit your pipeline from master
- Delete all the steps from all three stages (stages will show errors)

- Add a step to the "Fluffy Build" stage:
	i. Shell Script: ./jenkins/build.sh

- Add a step to the "Fluffy Test" stage:
	i. Shell Script: ./jenkins/test-all.sh

Add a step to the "Fluffy Deploy" stage:
	i. Shell Script: ./jenkins/deploy.sh staging


Save the pipeline. In the Save dialog, provide the description "Create Simple Pipeline" and save to a new branch named simple-pipeline.