#!/bin/bash
set -e
echo 'entra esta mierda'
if select="$(echo 'SELECT 1' | psql -h localhost -U postgres hcheck -qAtX)" && [ "$select" = '1' ]; then
    exit 0
fi
exit 1
