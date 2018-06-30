Task: Wait for user input before deploying

Edit your pipeline from multi-env-pipeline

	Remove the "Fluffy Deploy" stage.

	Add a Stage named "Confirm Deploy". Use agent "none" and ask the user to confirming that it is okay to deploy.

	Add "Fluffy Deploy" stage after the confirmation stage. It should have the same steps as the previous "Fluffy Deploy" you deleted.

Save the pipeline. In the Save dialog, provide the description "Confirm deploy to staging" and save to the default branch
(multi-env-pipeline branch).

Verify the pipeline waits for input as expected. Try confirming or canceling.