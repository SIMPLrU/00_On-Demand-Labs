Task: Add and use a parameter

Edit your pipeline from finished-pipeline

Open the Blue Ocean Pipeline Code Editor
	Add a parameters directive.
	
	Add a string parameter named "DEPLOY_TO" with the default value of "dev".

	Update the shell script for ./jenkins/deploy.sh, replacing "staging" with the DEPLOY_TO parameter.

	Click "Update" to apply your changes. The parameter will not be visible, but you can see that the shell script is changed when you view the Jenkinsfile.

Save the pipeline. In the Save dialog, provide the description "Add DEPLOY_TO parameter" and save to the default branch `(finished-pipeline branch)`.

Since you are not on the master branch yet, you won’t see what effect the parameter has during the job execution. You’ll review that in the next task.


WARNING
There is a known issue where parameters are not present the first time the pipeline runs after they are
added. Once the pipeline completes, run it again and Blue Ocean will ask you to enter the parameter
before continuing.