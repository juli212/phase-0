How does tracking and adding changes make developers' lives easier?
It allows developers to go back to previous versions of code if they mess something up. Also makes it more difficult for them to delete code without saving it properly first.

What is a commit?
A snapshot of your code that you have made changes to. 

What are the best practices for commit messages?
Use the imperative forms of verbs and keep them detailed but short.

What does the HEAD^ argument mean?
Go back to the previous commit.

What are the 3 stages of a git change and how do you move a file from 
one stage to the other?
Changes not staged for commit. 
Changes staged for commit
File untrackedd

git reset HEAD untracks files.
git checkout -- discards changes. moves file not staged for commit
git add moves code to be committed.

Write a handy cheatsheet of the commands you need to commit your 
changes?
git checkout -b [feature branch]
touch [new file].md
git checkout master
git pull origin master
git status
git add [file]
git commit -m "comments"
git checkout [feature branch]
git merge master

What is a pull request and how do you create and merge one?
A pull request is a way to merge your code to the master branch after it has been pushed to GitHub. Generally, another person who you are working with will take your pull request and look over the code to ensure it is correct before doing the merging. To create a pull request, update your code locally on git, commit it, and push the feature branch to GitHub. Then log onto GitHub and click the create a pull request button after filling out the description. To merge it, click on the files changed tab and review the code before clicking the merge code button and confirming the merge.

Why are pull requests preferred when working with teams?
One person will write the code and the pull request shows the team they have finished. Then another member of the team will look over the code and make sure it is really perfect before they merge it with the master code. 