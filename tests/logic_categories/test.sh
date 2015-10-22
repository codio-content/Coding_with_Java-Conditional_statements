#!/bin/bash

echo "<h3>Program Output</h3>"

cd /home/codio/workspace/challenges/logic_categories

javac Challenge.java
if [ $? -ne 0 ]; then exit 1; fi

# 1
OUTPUT1=("$(java Challenge 6)")
if [ $? -ne 0 ]; then exit 1; fi
echo "$OUTPUT1"

if [ ${#OUTPUT1[@]} != 1 ]; then
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the expected number of values"
  exit 1
fi

if [ "$OUTPUT1" != "primary school" ]; then 
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the correct value"
  exit 1
fi

# 2
OUTPUT2=("$(java Challenge 12)")

if [ ${#OUTPUT2[@]} != 1 ]; then
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the expected number of values"
  exit 1
fi

if [ "$OUTPUT2" != "secondary school" ]; then 
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the correct value"
  exit 1
fi

# 3
OUTPUT3=("$(java Challenge 19)")

if [ ${#OUTPUT3[@]} != 1 ]; then
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Your code is not outputing the expected number of values"
  exit 1
fi

if [ "$OUTPUT3" == "NA" ]; then 
  echo "<br/><hr/><h3>Challenge Feedback</h3>"
  echo "Well done you passed the challenge!"
  exit 0
fi

echo "<br/><hr/><h3>Challenge Feedback</h3>"
echo "Your code is not outputing the correct value"
exit 1
