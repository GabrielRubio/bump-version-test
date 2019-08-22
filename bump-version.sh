# mudar version de um projeto
#!/bin/bash

read -p "Enter New Version: " version
echo "Welcome $version!"

# git checkout develop
# git pull origin develop
# git checkout -b release-$version
# yarn version --new-version $version
# git checkout master
# git merge --no-ff release-$version
# git checkout develop
# git merge --no-ff release-$version
# git push origin develop
# git push origin master
# git push --tags