#!/bin/bash

echo "<h3>Program Output</h3>"

cd /home/codio/workspace/challenges/boolean_input

javac Challenge.java
if [ $? -ne 0 ]; then exit 1; fi

# 1
OUTPUT1=("$(java Challenge true true)")
if [ $? -ne 0 ]; then exit 1; fi
echo "$OUTPUT1"

if [[ $OUTPUT1 != *"shiver"* ]] || [[ $OUTPUT1 != *"get some cover"* ]]; then 
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the correct value"
  exit 1
fi

# 2
OUTPUT2=("$(java Challenge false false)")

if [ ${#OUTPUT2[@]} != 1 ]; then
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the expected number of values"
  exit 1
fi

if [[ $OUTPUT2 == *"go to the beach"* ]] && [[ $OUTPUT2 == *"go to the beach"* ]]; then 
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Well done you passed the challenge!"
  exit 0
fi

echo "<br/><hr/><h3>Challenge Feedback</h3>"
echo "Your code is not outputing the correct value"
exit 1