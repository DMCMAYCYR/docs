git submodule init
git submodule update --remote
git submodule foreach git checkout main
git submodule foreach git pull origin main
yarn install
yarn make-docs
yarn generate-snippets
yarn generate-github-examples
yarn prettier