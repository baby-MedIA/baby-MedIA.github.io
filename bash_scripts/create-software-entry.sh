#!/bin/bash

echo -e ""
echo -e "Example run: ./create-software-entry.sh \"[TITLE]\" \"[DESC]\" \"[AUTHOR]\" \"[YEAR]\" \"[IMAGEFILE]\" \"[GITHUBLINK]\""
echo -e ""
echo -e "             \"[TITLE]\", e.g.      \"Autism prediction on the ABIDE dataset\""
echo -e "             \"[DESC]\", e.g.       \"Comparison and interpretation of machine learning classifiers...\""
echo -e "             \"[AUTHOR]\", e.g.     \"Yilan Dong\""
echo -e "             \"[YEAR]\", e.g.       \"2024\""
echo -e "             \"[IMAGEFILE]\", e.g.  \"yilan-abide.png\""
echo -e "             \"[GITHUBLINK]\", e.g. \"https://github.com/baby-MedIA/Machine-learning-with-ABIDE\""
echo -e ""

if [ "$#" -ne 6 ]; then
  echo -e "[ERROR] The script expects 6 input parameters."
  echo -e ""

else

  title=$1
  description=$2
  author=$3
  year=$4
  imagename=$5
  githublink=$6

  echo -e ""
  echo -e "<div class=\"w3-col m4\">"
  echo -e "  <div class=\"w3-container\">"
  echo -e "    <!-- title -->"
  echo -e "    <h3 class=\"w3-opacity\">${title}</h3>"
  echo -e "    <!-- description -->"
  echo -e "    <h4>${description}</h4>"
  echo -e "    <!-- author, year -->"
  echo -e "    <h4>${author}, ${year}</h4><br>"
  echo -e "    <!-- image and alt -->"
  echo -e "    <img src=\"imgs/software/${imagename}\" style=\"width:100%\" onclick=\"onClick(this)\" class=\"w3-hover-opacity\" alt=\"${title}\">"
  echo -e "    <br><br>"
  echo -e "    <!-- link -->"
  echo -e "    <a href=\"${githublink}\" class=\"w3-button w3-black\"><i class=\"fa fa-github\"> </i>Github</a>"
  echo -e "  </div>"
  echo -e "</div>"
  echo -e ""

fi