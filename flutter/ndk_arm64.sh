#!/usr/bin/env bash
cargo ndk --platform 23 --target aarch64-linux-android build --release --features flutter
