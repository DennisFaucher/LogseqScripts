#!/bin/bash
#set -x
echo "Have you reindexed logseq first?"
read ans
echo "Getting Logseq Tasks and Sorting..."
echo "=============" > ~/Downloads/logseq_tasks_wwt.txt
echo "ADP To DO" >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
#lq q task -g Logseq -C|grep -e "ADPToDo"  | sort >> ~/Downloads/logseq_tasks_wwt.txt
lq q task -g ResilioLogseq -C|grep -e "ADPToDo"  | sort >> ~/Downloads/logseq_tasks_wwt.txt
echo " " >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
echo "Cencora To DO" >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
#lq q task -g Logseq -C|grep  -e "CencoraToDo" | sort >> ~/Downloads/logseq_tasks_wwt.txt
lq q task -g ResilioLogseq -C|grep  -e "CencoraToDo" | sort >> ~/Downloads/logseq_tasks_wwt.txt
echo " " >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
echo "RTX To DO" >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
#lq q task -g Logseq -C|grep -e  "RTXToDo" | sort >> ~/Downloads/logseq_tasks_wwt.txt
lq q task -g ResilioLogseq -C|grep -e  "RTXToDo" | sort >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
echo "WWT To DO" >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
#lq q task -g Logseq -C|grep  "WWTToDo" | sort >> ~/Downloads/logseq_tasks_wwt.txt
lq q task -g ResilioLogseq -C|grep  "WWTToDo" | sort >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
#lq q task -g Logseq -C|grep -e "ADPToDo" -e "CencoraToDo" -e "RTXToDo" -e "WWTToDo" | sort > ~/Downloads/logseq_tasks_wwt.txt
echo "Opening file in TextEdit..."
open -a TextEdit ~/Downloads/logseq_tasks_wwt.txt
