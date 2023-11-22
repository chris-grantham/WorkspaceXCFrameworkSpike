#!/bin/zsh

# DATE=`date -Idate`
# `xcodebuild -create-xcframework -archive` 2>&1 > "/tmp/make_xcframework-${DATE}.log"
# cp -r FrameworkA.xcframework ~/Developer/Workspaces/FrameworkTest/ConsumerApp/SDKConsumer/SDKConsumer/Frameworks
# Setting XCODE_DEVELOPER_DIR_PATH to use a full path adn fix warnings.
export XCODE_DEVELOPER_DIR_PATH=`xcode-select -p`

SCHEME="FrameworkB"
SDK="iphoneos"
ARCHIVE_PATH="../../DerivedData/${SCHEME}-${SDK}.xcarchive"

exec > "/tmp/xcarchive_${SCHEME}.log" 2>&1
echo ">>> Creating ${ARCHIVE_PATH}"

exec xcodebuild clean archive \
	-project "../${SCHEME}/${SCHEME}.xcodeproj" \
	-scheme "${SCHEME}" \
    -destination "generic/platform=iOS,name=Any iOS Device" \
	-archivePath "${ARCHIVE_PATH}" \
	-configuration Release \
	-sdk "${SDK}" \
	SKIP_INSTALL=NO \
	BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
	BUILD_DIR="../${SCHEME}/DerivedData/Build"

echo ">>> Done"


