#!/bin/bash

num=0
for file in $(ls test/*.sol) ; do
    base=$(basename $file .sol)
    # get chars of basename before underscore

    prefix=$(echo $base | cut -d_ -f1)
    # if prefix is a number
    if [[ $prefix =~ ^[0-9]+$ ]] ; then
        # get the number
        new_num=$prefix
    fi

    # compare new_num to num
    if [ $new_num -gt $num ] ; then
        num=$new_num
    fi
done
num=$((num+1))

if [[ $1 ]] ; then
    newTest=$1
else
    # get input for new test
    echo "Enter name of new test: "
    read newTest
fi

# Replace spaces with _
newTest=${newTest// /_}
newfile="test/${num}_${newTest}.t.sol"

cat test/0_Template.t.sol \
  | sed "s/TestX/Test$num/g" \
  | sed "s/test_X/test_$newTest/g" \
  > $newfile

echo
echo New test created: ${newTest}
echo
echo "To run tests:"
echo "forge test --mc Test${num}"

code . ${newfile}
