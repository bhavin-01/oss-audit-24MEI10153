#!/bin/bash

# -----------------------------------------------------
# Script 5: Open Source Manifesto Generator
# Author: Bhavin
# Purpose:
#   Interactively collects user responses and generates
#   a personalized open-source philosophy statement.
#   Demonstrates user input and file output.
# -----------------------------------------------------

echo "Welcome to the Open Source Manifesto Generator"
echo "Please answer the following questions."
echo ""

read -p "1. Name an open-source tool you frequently use: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name something you would build and share freely: " PROJECT

DATE=$(date '+%d %B %Y')
OUTPUT_FILE="manifesto_$(whoami).txt"

# Create manifesto text
echo "--------------------------------------" > $OUTPUT_FILE
echo "Open Source Manifesto" >> $OUTPUT_FILE
echo "Author: $(whoami)" >> $OUTPUT_FILE
echo "Date: $DATE" >> $OUTPUT_FILE
echo "--------------------------------------" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE
echo "I believe in the power of open source." >> $OUTPUT_FILE
echo "Every day I rely on tools like $TOOL." >> $OUTPUT_FILE
echo "To me, freedom represents $FREEDOM." >> $OUTPUT_FILE
echo "One day I would like to create $PROJECT and share it openly." >> $OUTPUT_FILE
echo "Open collaboration allows innovation to grow beyond individuals." >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo ""
echo "Manifesto generated successfully."
echo "Saved as: $OUTPUT_FILE"
echo ""
cat $OUTPUT_FILE
