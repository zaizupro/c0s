#!/bin/sh

TMP="./tmp"
TOPIMG=${TMP}/"top_text.png"
BOTIMG=${TMP}/"bott_text.png"
OUTIMG=${TMP}/"out.png"
BGIMG=${TMP}/"bg.png"

mkdir -pv ${TMP}


./make_text.sh 80 100 "DIVE INTO" ${TOPIMG}
./make_text.sh 80 480 "lol kek" ${BOTIMG}


composite -gravity center ${TOPIMG} ${BOTIMG} ${OUTIMG}
composite -gravity center ${OUTIMG} ${BGIMG} ${OUTIMG}
