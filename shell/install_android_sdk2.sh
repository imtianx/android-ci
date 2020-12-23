#!/usr/bin/env sh

# https://developer.android.com/studio/
SDK_TOOLS_VERSION=6858069

COMPILE_SDK_VERSION=30
BUILD_TOOLS_VERSION=30.0.1

ANDROID_HOME=/home/android/sdk
SDK_NAME=commandlinetools-linux-${SDK_TOOLS_VERSION}_latest.zip
TOOL_DIR=${ANDROID_HOME}/cmdline-tools/latest/

# download sdk tools
if [ ! -f ${SDK_NAME} ]; then
  wget http://dl.google.com/android/repository/${SDK_NAME};
fi
rm -rf ${ANDROID_HOME}
mkdir -p ${ANDROID_HOME}
mkdir -p ${TOOL_DIR}
#unzip -qd ${ANDROID_HOME} ${SDK_NAME}
unzip ${SDK_NAME}
rm -rf ${SDK_NAME}

mv cmdline-tools/* ${TOOL_DIR}
cd ${TOOL_DIR}

# update and install android platform ,tools
(yes | ./bin/sdkmanager --no_https --update)
(yes | ./bin/sdkmanager --no_https --update) && \
(yes | ./bin/sdkmanager --no_https "build-tools;${BUILD_TOOLS_VERSION}") && \
(yes | ./bin/sdkmanager --no_https "platform-tools") && \
(yes | ./bin/sdkmanager --no_https "platforms;android-${COMPILE_SDK_VERSION}")
