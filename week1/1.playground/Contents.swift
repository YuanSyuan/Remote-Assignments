//Part 1: Git & GitHub
//2.
//a. git status:
// Meaning: This command shows the status of changes in the working directory and the staging area. It indicates which changes are staged, unstaged, or untracked. It doesn't directly indicate if changes have been committed or not.
//Use Case: Use it to get a summary of all the changes that have happened in your repository since the last commit that aren't yet staged for the next commit.

//b. git diff:
//Meaning: This command shows the differences between the working directory and the staging area. By default, git diff shows unstaged changes. To see staged changes (differences between the staging area and the last commit), use git diff --staged.
//Use Case: Use it to review changes before staging them, or to review staged changes before committing.

//c. git add:
//Meaning: This command adds changes in the working directory to the staging area. It prepares files for a commit, but the repository isn't changed until you run git commit.
//Use Case: Use it to select specific changes you want to include in your next commit.

//d. git reset:
//Meaning: Depending on the options used, git reset can either unstage changes (git reset), or it can move the current branch back to a previous commit (git reset --hard <commit>), which does indeed remove commits from the current branch's history.
//Use Case: Use it to undo staged changes, or to revert the repository to a previous state.

//e. git commit:
//Meaning: This command takes the staged changes and records them in the repository's history. It's often used with -m to describe what changes the commit makes.
//Use Case: Use it to save your changes to the local repository.

//g. git branch
//Meaning: This command is used to list, create, or delete branches.
//Use Case: It's used to check available branches, to create new branches (git branch <branch_name>), or to delete branches (git branch -d <branch_name>).

//h. git merge
//Meaning: This command merges one branch into another. It's usually used to merge changes from a feature or development branch into the main branch.
//Use Case: Use it to integrate changes from one branch into another, like merging a feature branch into the main or master branch after development and testing are complete.

//i. git push [ repo_name ] [ branch_name ]
//Meaning: This command uploads a local branch to a remote repository.You tell it where to send (remote name) and what to send (branch name).
//Use Case: Share your changes with others by sending your branch to a place like GitHub.

//j. git remote:
//Meaning: This command manages connections to other copies of your project on the internet.
//Use Case: Set up a link to share your project on websites like GitHub, or change those links.

//k. fork
//Meaning: It is creating a copy of someone else's repo.
//Use Case: Use it to start working on your own version of a project,or make changes.

//l. (Advanced) git rebase
//Meaning: This command is used to move or combine a sequence of commits to a new base commit. It's an alternative to merging and can create a cleaner project history.
//Use Case: Use it to integrate changes from one branch into another. It's often used to keep a feature branch up-to-date with the main branch.

//m. (Advanced) git cherry-pick
//Meaning: This command allows you to pick and apply specific commits from one branch onto another.
//Use Case: It can be used when one wants to include specific commits from one branch into the current branch without merging all the changes from that branch.

//n. (Advanced) git reflog
//Meaning: This command shows a list of all the recent actions in your project, even ones that are no longer visible.
//Use Case: It is used to recover from complex situations, like undoing a hard reset accidentally.

//o. (Advanced) git tag
//Meaning: This command marks important points in your project history, like versions or releases.
//Use Case: Label release points in your project like version 1.0 or 2.0.

//3. Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
/*
 1. Create a new repo on Git, name it and also add description
 2. Choose visibility
 3. Open terminal, and navigate to the file using "cd"
 4. Use "git init" to initialize local directory
 5. "git add" all the files to staged area
 6. commit all files using "git commit -m", and write commit messages
 7. Link local repo with github using "git remote add origin git-URL"
 8. Use git push -u origin master and enter required token
 */
