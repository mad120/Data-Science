#!/bin/bash

###############################
#   Q1: To count total line   #
###############################
#wc -l $1 | awk '{ print $1 }' #Alternative Approach
< $1 wc -l



###############################
#  Q2:First Line of the File  #
###############################
read -r firstline<$1
echo $firstline



##############################################################
#   Q3:The number of lines in the last 10,000 rows of the    #
#   file that contain the string “potus” (case-insensitive)  # 
##############################################################
tail -n 10000 $1 | grep -i "potus" | wc -l



####################################################
#    Q4:rows 100 to 200, how many of them          #
#    contains  the word “fake” CASE SENSITIVE      #         
####################################################
sed -n '100,200p' $1 |grep "fake" | wc -l
