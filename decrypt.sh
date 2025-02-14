#!/bin/bash
# This is a script that will solve the password challenge of hackthissite,org basic level 6
# The password is dynamically generated so replace the value of 'MyString' below
MyString='3:;ih>6:'
i=0
base=0
echo "Converting to ascii value"
while (( i++ < ${#MyString} ))
do
char=$(expr substr "$MyString" $i 1)
for j in `printf "%d" \'$char` ; do
j=$((j+base))
printf \\$(printf '%03o' $j)
base=$((base-1))
done;
done;
