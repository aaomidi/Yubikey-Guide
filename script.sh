#!/bin/bash
cd $TRAVIS_BUILD_DIR/
gpg2 --import pub_key.asc
gpg2 --list-keys |sed -n -E 's/^pub.*\/([0-9A-F]{8}).*$/\1/p' | xargs gpg2 --export-ssh-key > openssh
cat openssh | nc termbin.com 9999 > url
cat $TRAVIS_BUILD_DIR/url