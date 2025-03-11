#!/bin/bash

# Team number 3
# # Team Members portxalx,jayville,rohithxr,sethdud
# #Stride Cohort 6 Bash exercise
# # Dated 3/11/2025
#
clear
echo
echo
echo
 echo "Please input the parent directory "
 read parentdir
echo
 echo "Please type Exit to stop"

 echo


 while  true
 do
        echo
        echo "Please input the child dir "
        read childdir
        if [[ $childdir = "Exit" || $childdir = "exit"  ]];then
                break;
        else 
            if [[ ! -d $parentdir\/$childdir ]];then
                echo
                echo "$parentdir/$childdir doesnot exist, creating now!"
                echo
                mkdir -p $parentdir\/$childdir
                touch $parentdir\/$childdir\/data.txt
                echo "info" > $parentdir\/$childdir\/data.txt
                if [[ $childdir == June ]];then
                        echo  " feed initialized " >> $parentdir\/$childdir\/data.txt
                fi       
            else
                echo "Directory " $parentdir/$childdir " exists" 
                echo "Directory " $parentdir/$childdir " exists"  > output.txt 2>&1
                echo
             fi
       fi
done

echo
echo "Tarring and Zipping the $parentdir directory"
tar czf exer1.tar *
gzip *.tar
#rm -rf Feeds exer1.tar.gz output.txt 
[cloudshell-user@ip-10-132-45-188 ~]$ 