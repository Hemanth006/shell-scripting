#!/usr/bin/bash

## Declare a function

sample() {
  echo Hello , I am a Sample function
  echo Value of a = ${a}
  b=200
  echo First Argument in Function = $1
  local c=10 # scope of this variable is inside function
}

## Main Program

## Call the function
a=100
sample ABC
echo Value of b = ${b}
echo First Argument in Main Program = $1
echo value of c =${c}

