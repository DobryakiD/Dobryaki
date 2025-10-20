#!/usr/bin/env bash

output=$(hunspell -d en_US,ru_RU -l content/*.txt)

if [[ -n "$output" ]]; then
    echo -e "Incorrect spelling of:\n$output" >&2
    exit 1
fi
