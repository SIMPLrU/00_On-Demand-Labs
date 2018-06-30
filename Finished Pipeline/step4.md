Task: Add a when directive to skip Deploy stages when not on master branch

Edit your pipeline from finished-pipeline

Open the Blue Ocean Pipeline Code Editor

	Add a when directive with a branch condition in both the "Deploy" stages so that the stages are skipped when the pipeline is run from a branch other than master.
	
	Click "Update" to apply your changes. The changes will not be visible in the Blue Ocean Pipeline Editor, but they are still there.

Save the pipeline. In the Save dialog, provide the description "Skip Deploy when not on master" and save to the default branch (finished-pipeline branch).

Verify that both "Deploy" stages were skipped.