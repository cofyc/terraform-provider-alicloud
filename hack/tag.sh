#!/bin/bash

v=$(git describe --tags)
v=$(echo $v | sed 's/-/+/')
v=$(echo $v | sed 's/-g/./')
echo $v
