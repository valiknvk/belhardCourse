#!/bin/bash
function md5Mod()
{
    filename1="dir1_checksum.txt"
    filename2="dir2_checksum.txt"
    find $1 -type f -exec md5sum '{}' + >$filename1
    find $2 -type f -exec md5sum '{}' + >$filename2
    #find $2 -type f -exec md5sum '{}' + | grep -vf $filename
    #diff -q $filename1 $filename2
    diff $filename1 $filename2
    if diff -q $filename1 $filename2 &>/dev/null; then 
        echo "Directories are equal!"
    fi
    rm $filename1 && rm $filename2
}


read -p "Enter path to a first dir: " dir1
read -p "Enter path to a second dir : " dir2

while getopts h:m: flag
do
    case "${flag}" in
        m) mod=${OPTARG};;
    esac
done
echo $mod

if [ -z $1 ]; then 
    echo "You can use a md5 mod with flag equals to'-m md5'" 
    echo "method diff !!"
    diff -q -r $dir1 $dir2
    if diff -q -r $dir1 $dir2 &>/dev/null; then 
        echo "Directories are equal!"
    fi  
else
    echo "method md5 !!"
    md5Mod $dir1 $dir2
fi
