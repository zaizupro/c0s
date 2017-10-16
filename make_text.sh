#!/bin/sh
convert -size 512x512 \
    xc:transparent  \
    -pointsize 68 \
    -font "NimbusMonoPS-Bold" \
    -fill black \
    -stroke white \
    -strokewidth 2 \
    -draw "text ${1},${2} '${3}'" \
    ${4}
