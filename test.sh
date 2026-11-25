#!/bin/sh
out=$(sh dist/app.sh)
if [ "$out" = "Hello from Jenkins" ]; then
echo "PASS"
else
echo "FAIL"
exit 1
fi
