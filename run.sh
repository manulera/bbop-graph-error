GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Delete old modules and packages if they exist
rm -rf node_modules/*
rm -rf package-lock.json

echo -e "${GREEN}Running npm version${NC}"

cp package_npm.json package.json
npm install
node main.js

rm -rf node_modules/*
rm -rf package-lock.json

echo -e "${GREEN}Running berkeleybop version${NC}"

cp package_berkeleybop.json package.json
npm install
node main.js

rm -rf node_modules/*
rm -rf package-lock.json

echo -e "${GREEN}Running manulera version${NC}"

cp package_manulera.json package.json
npm install
node main.js

rm -rf node_modules/*
rm -rf package-lock.json

