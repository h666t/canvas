#!/usr/bin/env bash
parcel build index.html --public-url ./ &&
cd dist &&
git init &&
git add . &&
git commit -m 'deploy' &&
git remote add origin git@gitee.com:huang-haotian/canvas.git &&
git push -u -f origin master &&
cd -
