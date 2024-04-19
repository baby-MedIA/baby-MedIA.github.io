#!/bin/bash

echo -e ""
echo -e "Example run: ./create-publication-entry.sh \"[TITLE]\" \"[AUTHOR]\" \"[YEAR]\" \"[IMAGEFILE]\" \"[DOILINK]\" \"[JOURNAL]\""
echo -e ""
echo -e "             \"[TITLE]\", e.g.     \"Effect of schizophrenia common variants...\""
echo -e "             \"[AUTHOR]\", e.g.    \"Hai Le\""
echo -e "             \"[YEAR]\", e.g.      \"2023\""
echo -e "             \"[IMAGEFILE]\", e.g. \"hai-schizophrenia.png\""
echo -e "             \"[DOILINK]\", e.g.   \"https://www.nature.com/articles/s41398-023-02413-6\""
echo -e "             \"[JOURNAL]\", e.g.   \"Translational Psychiatry\""
echo -e ""

if [ "$#" -ne 6 ]; then
  echo -e "[ERROR] The script expects 6 input parameters."
  echo -e ""

else

  title=$1
  firstauthor=$2
  year=$3
  imagename=$4
  doilink=$5
  journalname=$6

  echo -e ""

  echo -e "    <div class=\"w3-col m4\">"
  echo -e "      <div class=\"w3-container\">"
  echo -e "        <h3 class=\"w3-opacity\">${title}</h3>"
  echo -e "        <h4>${firstauthor} et al., ${year}</h4><br>"
  echo -e "        <img src=\"imgs/publications/${imagename}\" style=\"width:100%\" onclick=\"onClick(this)\" class=\"w3-hover-opacity\" alt=\"${title}\">"
  echo -e "        <br><br>"
  echo -e "        <a href=\"${doilink}\" class=\"w3-button w3-black w3-left\"><i class=\"fa fa-link\"> </i>${journalname}</a>"
  echo -e "      </div>"
  echo -e "    </div>"

  echo -e ""

fi
