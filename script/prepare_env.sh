#!/usr/bin/env bash

curl https://sh.rustup.rs -sSf | sh -s -- --default-toolchain nightly -y
rustup target add wasm32-unknown-unknown --toolchain nightly
cargo install wasm-bindgen-cli

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

yarn