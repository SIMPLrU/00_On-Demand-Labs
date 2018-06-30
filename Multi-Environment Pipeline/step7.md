Task: Add a checkpoint from which a Pipeline can be restarted

Edit your pipeline from multi-env-pipeline

	Add a checkpoint step in the confirmation stage before the input step.

		Capture the execution state so that it can be restarted later: "Ready to Deploy"


Save the pipeline. In the Save dialog, provide the description "Add checkpoint before deploy" and save to the default branch
(multi-env-pipeline branch).

Try restarting the pipeline from the checkpoint
	
	Verify the checkpoint is reached.

	Cancel the deploy.
	
	Switch to the Classic Web UI.

	Go to the "Checkpoints" for the latest pipeline run. In "Ready to Deploy", click the "Restart from this checkpoint" instructions

	Switch back to Blue Ocean and approve the run to complete