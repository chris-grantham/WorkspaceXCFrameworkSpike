#!/bin/sh

export XCODE_DEVELOPER_DIR_PATH=`xcode-select -p`

SCHEME="FrameworkB"
SDK="iphoneos"
ARCHIVE_PATH="../../DerivedData/${SCHEME}-${SDK}.xcarchive"
OUTPUT_PATH="../../DerivedData/${SCHEME}.xcframework"

exec > "/tmp/xcframework_${SCHEME}.log" 2>&1

echo ">>> Creating ${OUTPUT_PATH}"

exec xcodebuild -create-xcframework \
	-archive "${ARCHIVE_PATH}" \
	-framework "${SCHEME}.framework" \
	-allow-internal-distribution \
	-output "${OUTPUT_PATH}"

echo ">>> Done"