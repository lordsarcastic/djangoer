# Making PRs
Making PRs are supposed to be easy, albeit, we'll be following these rules:

## How to begin
We'll be having two master branches in total: `dev` and `master`, where `dev` is where you clone and make PRs against, and `master` is the production branch which is continually deployed to the live url.

- First, checkout to the `dev` branch
- Create your own branch for your task with `git checkout -b <first_name>/<issue-id>`, where <issue-id> refers to the ID given
to the task being worked on. For example, a branch could be `ayodeji/GET-14`.
- Complete your task with appropriate commit messages as indicated in the *Commits* sub-section above.
- Push and make a PR against the `dev` branch. The title of your PR should be in the format: ```<issue-id> | <Title_of_issue_from_task>```
- When PR is merged, delete that branch.
- For each task, ensure to checkout to the `dev` branch first.

Note: You are responsible for keeping your branches up to date with the master branch. Merge conflicts won't be resolved for you
