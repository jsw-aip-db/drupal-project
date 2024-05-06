#!/bin/bash

ddev config global --instrumentation-opt-in=false
mkcert -install
composer install --ignore-platform-reqs