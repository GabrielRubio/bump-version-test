# mudar version de um projeto
#!/bin/bash
echo "|"
echo "Change to develop Branch!"
git checkout develop -q

echo "|"
echo "Update develop Branch!"
git pull origin develop

echo "|"
echo "App Current Version: "
cat package.json | grep \"version\"

echo "|"
read -p "Enter New Version: " version
echo "Version $version"

echo "|"
echo "Create new release branch!"
git checkout -b release-$version


echo "|"
echo "Bump Version with yarn!"
yarn version --new-version $version


echo "|"
echo "Mergin with master!"
git checkout master
git merge --no-ff release-$version

echo "|"
echo "Mergin with develop!"
git checkout develop
git merge --no-ff release-$version

echo "|"
echo "Removign release branch!"
git branch -d release-$version

echo "|"
echo "Pushing to origin!"
# git push origin develop
# git push origin master
# git push --tags