## Making Pushes 
Every Push made to any branch will trigger a github workflow to run all the tests in the codebase. 
Failure of the workflow shows the checks failed and hence the branch can't be merged untill the checks passed.

## What to do if workflow fails?
- Check the workflow run in actions tab to know where the error is.
- Work on the error locally and rerun the tests 
- Repush to the branch to ensure all checks passed 
