#!/bin/bash

ddev config global --instrumentation-opt-in=false
[ $CODESPACES ] || mkcert -install
composer install --ignore-platform-reqs

echo "Use \`ddev start\` to run the Drupal site."