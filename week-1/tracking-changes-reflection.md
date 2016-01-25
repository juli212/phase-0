How does tracking and adding changes make developers' lives easier?
If a developer makes a mistake or wants to revert to a previous commit, it is easy to do if all of the changes are tracked.

What is a commit?
A snapshot of a finished piece of code. 

What are the best practices for commit messages?
Imperative verb form and short but detailed message.

What does the HEAD^ argument mean?
Go to the previous commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
Untracked: git reset HEAD [file] makes file untracked
Changes to be committed: git add [file] adds file to be committed
Changes not staged for commit:  git checkout -- [file] unstages file.

Write a handy cheatsheet of the commands you need to commit your changes?
git checkout -b [feature branch]
touch [file].md
git status
git add [file].md
git commit -m

What is a pull request and how do you create and merge one?
When you have finished writing code, you give a pull request which asks another person on your team to look over your code and compare it with the master code. To create a pull request, push your feature branch to GitHub, then go into GitHub and click on the request a pull button. To merge a pull, go into GitHub and click on the requested pull. Then compare the feature branch to the master and if the feature branch is perfect, merge them together. Then delete the feature branch.

Why are pull requests preferred when working with teams?
One member of a team will give a pull request so that another member can look over their code before merging it with the master. This way, code has been approved by at least one other member of the team.