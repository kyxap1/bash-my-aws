#!/usr/bin/env bash

for f in ~/.bash-my-aws/lib/*-functions
do
  source $f
done
source ~/.bash-my-aws/bash_completion.sh
