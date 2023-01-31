# Commits
You'll want to chill a bit and do a bit of understanding guidelines on how you'll make commit messages. I've found commit messages to be very helpful as regards large projects or projects with more than one contributor.

### Why this?
The point is to have some sort of consistent commit message to ensure ease of flow across repositories and projects. Also, it helps in your personal project, you having a standard to follow.

### How to begin
The point of the commit message has to do with a prefix. Commit messages should be in the format:
```[Commit type]: [Message]```

Where:
- Commit type: refers to one of a predefined subset of what a commit could mean. The subsets are:
    - Feature: Involves adding a new feature to the product or an implementation of a specified feature.
    - Chore: For changes that do not add new functionality but simply denotes a task performed. Does not have to do with bug fixes. Changes includes: initializing a new project, addition of files, partial changes that do not cause bugs, updates, etc.
    - Bug: For changes fixing a bug, typo or anything that leads to correctness of the system being worked on
    - Buggy: Should be avoided as much as possible but could be needed. It is used when changes have been partially implemented and execution of the current state of the project would lead to evil bugs and sinister errors. An example refers to unclosed tags and a hurried commit since you might not get access to your PC for a while. Projects with this commit type as the latest one should perhaps not be pulled or cloned except such implementation is to be continued by you.

- Message: refers to a message describing the changes made. It is important that each commit should only reflect one feature or implementation change. You should not cram two functionalities into one commit except they depend closely on one another. For example, implmentation of auth and adding views for a user profile are closely related but do not inter-depend on one another and should be separated into different commits. This is just to ensure a dev could work with states that are narrowed down to specific implementations and features.

### Precommits and Linting
Before commiting any changes/files, you must set up pre-commit hooks so that our files would be formatted properly. To set up:
- Visualize the `.git` folder by adding the following lines to your json settings in the `.vscode` folder:
```json
"files.exclude": {
     "**/.git": false
}
```
Or use this method if the step above doesn't work.
* Go to Menu → Code → Preference → Setting and search for `files.exclude`.
* Hover over `files.exclude` property, click on the edit icon and then opt for the copy to settings.
* The above steps will add all the properties, but keep only those which need to be overridden. For this case: it should be, "files.exclude": { "**/.git": false }
* Close the user setting. the .git folder will automatically appear in the respective repository.
- Create a file `pre-commit` in the folder `.git/hooks/`. You should not include any extension in its name.
- Copy the following code to the file `pre-commit`:
```bash
#!/bin/sh
isort .
black .
```
The line applies black formatter to all the needed files.
- Make the script executable by running the following bash command in your terminal:
```bash
chmod +x .git/hooks/pre-commit
```
- After working on any task, run `git commit -m "your message"` to commit your changes and the `pre-commit` hook will run to ensure that the files are properly formatted.
