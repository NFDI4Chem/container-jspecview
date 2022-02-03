#!/bin/bash

# Wrapper around Jmol.jar

# Arguments
INPUT="$1"
OUTFILE="$2"

#java -jar  /usr/bin/Jmol.jar  -script "load \"$INPUT\";write difdup \"$OUTPUT\";" -exit
java -Djava.awt.headless=true -jar /usr/bin/JSpecView.jar  -script "load \"$INPUT\";write difdup \"$OUTFILE\";" -nodisplay -exit
