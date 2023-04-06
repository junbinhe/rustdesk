#!/usr/bin/env bash
cargo ndk --platform 23 --target armv7-linux-androideabi build --release --features flutter
