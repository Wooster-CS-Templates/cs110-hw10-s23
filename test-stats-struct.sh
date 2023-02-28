#! /bin/bash

if ! [[ -x stats-struct ]]; then
    echo "program stats-struct executable does not exist"
    exit 1
fi

tester/run-tests.sh -d tests-stats-struct
