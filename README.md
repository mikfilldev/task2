# VERSION CONTROL SYSTEM. GIT

This repository serves as an example of a typical workflow using Git and GitHub. Follow the steps below to understand the process:

## 1) Create Repository
- Create a new repository on GitHub.

## 2) Use bash.sh Script
- Create a bash script named `bash.sh` with the provided example script:
  ```bash
  #!/bin/bash
  COUNTER=0
  while [ $COUNTER -lt 10 ]
  do
    echo The counter is $COUNTER
    let COUNTER=$COUNTER+1
  done
  ```

## 3) Create a New Branch
- Create a new branch named feature-branch:
  ```bash
  git checkout -b feature-branch
  ```

## 4) Make Changes and Record Them
- Make changes to the bash.sh script as desired.
- Record the changes in the repository:
  ```bash
  git add bash.sh
  git commit -m "Update bash.sh script"
  git push origin feature-branch
  ```
## 5) Merge with Main Branch
- Merge the changes from feature-branch into the main branch:
```bash
git checkout main
git merge feature-branch
git push origin main
```

## 6) Create a Develop Branch
- Create a new branch named develop from main:
```bash
git checkout -b develop main
git push origin develop
```

## 7) Create a New Branch from Develop
- Create a new branch named new-feature from develop:
```bash
git checkout -b new-feature develop
git push origin new-feature
```

## 8) Add Collaborator
- Add collaborator to your repository on GitHub.

## 9) Make a Pull Request
- Make a Pull Request from new-feature to develop with one reviewer assigned.
- Add one of your classmates as a reviewer.

## 10) Add Repository Link to Assignment
- Add the link to your repository in the assignment submission.
  
<p align="center">Happy coding, and may the Git be with you! 😄✨</p>
