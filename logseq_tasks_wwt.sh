#!/bin/bash
#set -x
echo "Have you reindexed logseq first?"
read ans
echo "Getting Logseq Tasks and Sorting..."
echo "=============" > ~/Downloads/logseq_tasks_wwt.txt
echo "ADP To DO" >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
lq q task -g ResilioLogseq -C|grep -e "ADPToDo"  | sort | sed 's/- TODO #ADPToDo //g' >> ~/Downloads/logseq_tasks_wwt.txt
echo " " >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
echo "Cencora To DO" >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
lq q task -g ResilioLogseq -C|grep  -e "CencoraToDo" | sort | sed 's/- TODO #CencoraToDo //g' >> ~/Downloads/logseq_tasks_wwt.txt
echo " " >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
echo "RTX To DO" >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
lq q task -g ResilioLogseq -C|grep -e  "RTXToDo" | sort | sed 's/- TODO #RTXToDo //g' >> ~/Downloads/logseq_tasks_wwt.txt
echo " " >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
echo "WWT To DO" >> ~/Downloads/logseq_tasks_wwt.txt
echo "=============" >> ~/Downloads/logseq_tasks_wwt.txt
lq q task -g ResilioLogseq -C|grep  "WWTToDo" | sort | sed 's/- TODO #WWTToDo //g' >> ~/Downloads/logseq_tasks_wwt.txt
echo "Opening file in TextEdit..."
open -a TextEdit ~/Downloads/logseq_tasks_wwt.txt
