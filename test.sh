#!/bin/bash

set -e

echo "Running site tests ..."

if [ ! -f index.html ]; then
    echo "FAIL: index.html file is missing"
    exit 1
fi

echo "PASS: index.html file exists"

if ! grep -q "<title>" index.html; then
    echo "FAIL: <title> tag is missing in index.html"
    exit 1
fi

echo "PASS: <title> tag found in index.html file"

if [ ! -f style.css ]; then
    echo "FAIL: style.css file is missing"
    exit 1
fi

echo "PASS: style.css file exists"

echo "All test cases are PASSED"