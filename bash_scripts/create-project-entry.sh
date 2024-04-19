#!/bin/bash

echo -e ""
echo -e "Example run: ./create-project-entry.sh \"[TITLE]\" \"[DESC]\" \"[IMAGEFILE]\""
echo -e ""
echo -e "             \"[TITLE]\", e.g.      \"Exploring Genetic Links: Neuroimaging Insights into Autism and Schizophrenia\""
echo -e "             \"[DESC]\", e.g.       \"This project focuses on exploring connections between neuroimaging indicators...\""
echo -e "             \"[IMAGEFILE]\", e.g.  \"projects-hai-1.png\""
echo -e ""

if [ "$#" -ne 3 ]; then
  echo -e "[ERROR] The script expects 3 input parameters."
  echo -e ""

else

  title=$1
  description=$2
  imagename=$3

  echo -e ""
  echo -e "    <div class=\"w3-col m4\">"
  echo -e "      <div class=\"w3-container\">"
  echo -e "        <!-- title -->"
  echo -e "        <h3 class=\"w3-opacity\">${title}</h3>"
  echo -e "        <!-- description -->"
  echo -e "        <h4>${description}</h4>"
  echo -e "        <!-- image and alt -->"
  echo -e "        <img src=\"imgs/projects/${imagename}\" style=\"width:100%\" onclick=\"onClick(this)\" class=\"w3-hover-opacity\" alt=\"${title}\">"
  echo -e "      </div>"
  echo -e "    </div>"
  echo -e ""

fi
