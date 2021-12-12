#!/bin/bash

echo "Enter your name"

read name



echo -e "$name" >> PID.name

cat PID.name
