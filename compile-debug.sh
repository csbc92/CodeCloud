#!/bin/bash

echo "Installing node modules"
npm install

echo "Compiling typescript -> javascript"
tsc -p src/client/tsconfig.json
tsc -p src/server/tsconfig.json

echo "Starting node server (debug mode)"
npm run debug