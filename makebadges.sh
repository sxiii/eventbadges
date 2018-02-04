#!/bin/bash
# This script adds name(s) of participants to your badges.
# It requires imagemagick to be installed.
# HOW-TO:
# 1) Prepare the TEXT file with name "good.csv" which consist of the following:
# DenFFFFFIvanovFFFFF@fakesnowden
# JohnFFFFFConnorFFFFF@johnconnor
# So, use name, then 5 letter F as separator, then surname and 5 "F"s, then telegram username or other info.
# NameFFFFFSurnameFFFFF@telegramusername
# For each text row in file, separate badge will be created.
# 2) Prepare the image without name on it.
# 3) Edit this config (below) to fit your image. You will have to do multiple try-outs to understand if you match the size and place well.
# Samples of badges are included in this repo.
# 4) Run ./makebadges.sh each time and view the results!
# 5) Make an issue on github if you have any problems, comments, or commit if you like to improve it. Thanks.
# # # # # # # # #
# Created by Security XIII in Feb 2018
# # # # # # # # #

x=40;                   # X location of the name (horizontal)
y=200;                  # Y location of the name (vertical)
sourcefile='b.png';     # The source layout (model) of badge (without names on it)
gravity=center;         # This makes everything centered
stroke=black;           # Black stroke
filename='good.csv';    # The file with names

# Working part; be careful

while read p; do

name=$(echo $p | sed 's/FFFFF/\\n/g')

  echo $p.png
  convert $sourcefile -gravity $gravity -stroke black -strokewidth 4 -annotate 0 $name -pointsize $y -density $x -stroke $stroke -strokewidth 1 -fill white -annotate 0 $name -pointsize $y -density $x result_$name.png

done < $filename
