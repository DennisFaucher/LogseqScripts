#!/bin/bash
echo "Searching for: " $1
echo "========================="
echo "Pages Search..."
echo "========================="
grep -i "$1" /Users/faucherd/Documents/Personal/Logseq/pages/*
echo " "
echo "========================="
echo "Journals Search..."
echo "========================="
grep -i "$1" /Users/faucherd/Documents/Personal/Logseq/journals/*
