#!/usr/bin/env bash

MODE=${MODE:=release}
# $ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-strip android/app/src/main/jniLibs/arm64-v8a/*
/opt/android/ndk/22.1.7171670/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin/aarch64-linux-android-strip android/app/src/main/jniLibs/arm64-v8a/*
flutter build apk --target-platform android-arm64,android-arm --${MODE} --obfuscate --split-debug-info ./split-debug-info
flutter build apk --split-per-abi --target-platform android-arm64,android-arm --${MODE} --obfuscate --split-debug-info ./split-debug-info
flutter build appbundle --target-platform  android-arm64,android-arm --${MODE} --obfuscate --split-debug-info ./split-debug-info

# build in linux
# $ANDROID_NDK/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin/aarch64-linux-android-strip android/app/src/main/jniLibs/arm64-v8a/*
