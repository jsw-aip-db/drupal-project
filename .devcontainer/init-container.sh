#!/bin/bash

ddev config global --instrumentation-opt-in=false
[ $CODESPACES ] || mkcert -install
composer install --ignore-platform-reqs

[ $CODESPACES ] || echo "Add \`rootCA.pem\` to your host's trust store or replace it with your own!"
echo "Use \`ddev start\` to run the Drupal site."