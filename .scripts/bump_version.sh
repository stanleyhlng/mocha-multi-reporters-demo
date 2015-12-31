#!/bin/bash

if [ "$TRAVIS_REPO_SLUG" == "stanleyhlng/mocha-multi-reporters-demo" ] && [ "$TRAVIS_NODE_VERSION" == "0.12" ] && [ "$TRAVIS_PULL_REQUEST" == "false" ] && [ "$TRAVIS_BRANCH" == "master" ]; then

  echo -e "Bumping a package version...\n"

  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "travis-ci"

  npm version patch -m "[skip ci] Auto bumping version to %s"

  git remote -v
  git remote remove origin
  git remote add origin https://${GH_TOKEN}@github.com/stanleyhlng/mocha-multi-reporters-demo.git
  git checkout master
  git push origin master && git push --tags origin master

  echo -e "Bumped.\n"

fi
