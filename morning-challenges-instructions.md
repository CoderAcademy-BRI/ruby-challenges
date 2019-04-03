## Instructions

### Setup repo (only done once)
1. Fork and clone
2. Create a link to this repo: <br/>
   `git remote add upstream https://github.com/CoderAcademy-BRI/ruby-challenges`

### Pull down morning challenge (daily)
For each challenge (in your repo working directory):
1. Make sure you on your master branch:<br/>
   `git checkout master`
2. Checkout the branch (in your fork)<br/>
`git checkout -b <challenge_branch>`
3. Pull down the challenge: <br/>
`git pull --no-edit upstream <challenge_branch>`
* This will cause a merge conflict after the first challenge. Fix it, then:<br/>
    `git add .`<br/>
    `git commit -m "resolved conflict"`
4. Checkout master branch and merge challenge branch:<br/>
`git checkout master`<br/> 
`git merge <challenge_branch>`
5. Complete the challenge
6. Add and commit your changes<br/>
`git add` <br/>
`git commit -m "<insert commit message>"`  
7. Push to master in your fork:<br/>
`git push origin master`