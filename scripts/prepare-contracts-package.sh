#!/usr/bin/env bash

# cd to the root of the repo
cd ..

#cp README.md contracts/
# mkdir contracts/build contracts/build/contracts
# cp -r build/contracts/*.json contracts/build/contracts
cp -r contracts/contracts/* contracts
mkdir builds/
cp -r contracts/artifacts/contracts/** builds
rm -rf contracts/contracts