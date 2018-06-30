Task: Move some steps to post sections

Edit your pipeline from `finished-pipeline`

Open the Blue Ocean Pipeline Code Editor
	Add a post section to any stage that contains any of the following steps: archiveArtifacts, junit, or stash.

	Move the archiveArtifacts and stash steps into post { success { … } } conditions.

	Move the junit steps into post { always { … } } conditions.

	Click update to apply your changes. The steps will no longer be visible in the Blue Ocean Pipeline Editor, but they are still there.

Save the pipeline. In the Save dialog, provide the description "Move steps to post sections" and save to the default branch `(finished-pipeline branch)`.