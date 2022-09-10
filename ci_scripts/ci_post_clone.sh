#!/bin/sh

#  ci_post_clone.sh
#  Feeder-iOS
#
#  Created by Joe Diragi on 9/7/22.
#

## Environment variables
# CI_WORKSPACE - The location of the source code

# Get fonts from google <3
nunito_link=https://fonts.google.com/download?family=Nunito


echo "Derived Data: "
echo "$CI_DERIVED_DATA_PATH"

cd $CI_WORKSPACE/Feeder-iOS/Fonts
mkdir out && cd out
curl -X GET $nunito_link --output nunito.zip
unzip nunito.zip
mv static/Nunito-Regular.ttf ../
mv static/Nunito-Black.ttf ../

cd ../ && rm -rf out
