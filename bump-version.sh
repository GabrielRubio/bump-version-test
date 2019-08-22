# mudar version de um projeto
​
git checkout develop
git pull origin develop
git checkout -b release-$1
yarn version --new-version $1
git checkout master
git merge --no-ff release-$1
git checkout develop
git merge --no-ff release-$1
git push origin develop
git push origin master
git push --tags