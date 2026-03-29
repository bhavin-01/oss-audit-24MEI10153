#!/bin/bash

# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does freedom mean to you: " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Open Source Manifesto" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I use the open-source tool $TOOL every day." >> $OUTPUT
echo "To me, freedom means $FREEDOM." >> $OUTPUT
echo "If given the opportunity, I would build $BUILD and share it freely with the world." >> $OUTPUT
echo "Open source allows knowledge and innovation to be shared by everyone." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT
