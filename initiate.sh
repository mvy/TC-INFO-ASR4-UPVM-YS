#!/bin/bash
echo 'Chapter number: '
read n
echo 'Chapter name: '
read m

mkdir CH$n-$m
cd CH$n-$m
mkdir images

sed -e "s/{NUMBER}/$n/" ../Template/Slides.tex > CH$n-Slides.tex
sed -e "s/{NUMBER}/$n/" ../Template/Handout.tex > CH$n-Handout.tex
sed -e "s/{NUMBER}/$n/" ../Template/CMakeLists.txt > CMakeLists.txt
cp ../Template/Content.tex CH$n-Content.tex


