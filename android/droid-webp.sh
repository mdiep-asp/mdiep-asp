#!/bin/sh

function generateWebp() {
    cwebp -resize $1 0 $2 -o $3
}

# read -p "Enter a directory: " BASEPATH
BASEPATH="/Users/mdiep/Desktop/GitHub/Aspiration/MobileAndroid/App/native-application/src/main/res"

SUBFOLD_XXXHDPI=${BASEPATH%%/}/drawable-xxxhdpi/$3
xxxhdpi=$1
generateWebp $xxxhdpi $2 $SUBFOLD_XXXHDPI

SUBFOLD_XXHDPI=${BASEPATH%%/}/drawable-xxhdpi/$3
let xxhdpi=$xxxhdpi*3/4
generateWebp $xxhdpi $2 $SUBFOLD_XXHDPI

SUBFOLD_XHDPI=${BASEPATH%%/}/drawable-xhdpi/$3
let xhdpi=$xxxhdpi/2
generateWebp $xhdpi $2 $SUBFOLD_XHDPI

SUBFOLD_HDPI=${BASEPATH%%/}/drawable-hdpi/$3
let hdpi=$xxxhdpi*3/8
generateWebp $hdpi $2 $SUBFOLD_HDPI

SUBFOLD_MDPI=${BASEPATH%%/}/drawable-mdpi/$3
let mdpi=$xxxhdpi/4
generateWebp $mdpi $2 $SUBFOLD_MDPI