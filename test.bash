#!/bin/bash

out=$(seq 10 | ./plus)

[ $out = 55.0 ]