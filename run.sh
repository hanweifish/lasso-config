#!/bin/bash
./node_modules/.bin/lasso ./my-page.browser.json --inject-into my-page.html --config lasso-config.json
echo
echo "Open './my-page.html' to see the result!"