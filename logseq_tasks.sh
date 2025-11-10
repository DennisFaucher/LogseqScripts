#!/bin/bash
#echo "Have you reindexed logseq first?"
#read ans
#echo "Getting Logseq Tasks and Sorting..."
#lq q task -g Logseq -C|grep -e "InsideToDo" -e "OutsideTodo" -e "ResearchToDo"|sort > ~/Downloads/logseq_tasks.txt
#echo "Opening file in TextEdit..."
#open -a TextEdit ~/Downloads/logseq_tasks.txt

echo "Have you reindexed logseq first?"
read ans
echo "Getting Logseq Tasks and Sorting..."
echo "=============" > ~/Downloads/logseq_tasks.txt
echo "Inside To DO" >> ~/Downloads/logseq_tasks.txt
echo "=============" >> ~/Downloads/logseq_tasks.txt
lq q task -g ResilioLogseq -C|grep -e "InsideToDo"  | sort >> ~/Downloads/logseq_tasks.txt
echo " " >> ~/Downloads/logseq_tasks.txt
echo "=============" >> ~/Downloads/logseq_tasks.txt
echo "Outside To DO" >> ~/Downloads/logseq_tasks.txt
echo "=============" >> ~/Downloads/logseq_tasks.txt
lq q task -g ResilioLogseq -C|grep  -e "OutsideTodo" | sort >> ~/Downloads/logseq_tasks.txt
echo " " >> ~/Downloads/logseq_tasks.txt
echo "=============" >> ~/Downloads/logseq_tasks.txt
echo "Research To DO" >> ~/Downloads/logseq_tasks.txt
echo "=============" >> ~/Downloads/logseq_tasks.txt
lq q task -g ResilioLogseq -C|grep -e  "ResearchToDo" | sort >> ~/Downloads/logseq_tasks.txt
#lq q task -g Logseq -C|grep -e "ADPToDo" -e "CencoraToDo" -e "RTXToDo" -e "WWTToDo" | sort > ~/Downloads/logseq_tasks.txt
echo "Opening file in TextEdit..."
open -a TextEdit ~/Downloads/logseq_tasks.txt
