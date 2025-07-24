#!/bin/bash
set -e
set -x

# cd to the build script directory
cd $1
cd ../
pwd
export SSL_LD=/Users/vigli/workspace/FFmpegMediaMetadataRetriever/native/src/main/jni/openssl/openssl
pwd
cd /Users/vigli/workspace/FFmpegMediaMetadataRetriever/native/src/main/ffmpeg

# Set the build variables needed by ffmpeg-android-maker.sh
export WORKING_DIR=`pwd`
export PROPS=$WORKING_DIR/../../../../local.properties
export ANDROID_NDK_HOME=`grep ndk.dir $PROPS | cut -d'=' -f2`
export ANDROID_SDK_HOME=`grep sdk.dir $PROPS | cut -d'=' -f2`

#./build-openssl.sh
echo start vigli
pwd
echo end vigli

#./build-ffmpeg.sh

#echo Native build complete, exiting...
exit
