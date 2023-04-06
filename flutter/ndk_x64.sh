#!/usr/bin/env bash
cargo ndk --platform 23 --target x86_64-linux-android build --release --features flutter
