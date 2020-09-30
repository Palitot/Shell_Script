#!/bin/bash

linha=$(cat $1 | wc -l)

((${linha} >= 5)) && echo "GOOD" && exit 0
((${linha} >= 5)) || echo "SO BAD" && exit 0