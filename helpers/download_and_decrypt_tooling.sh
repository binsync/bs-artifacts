#!/bin/bash

wget -q "https://github.com/binsync/bs-artifacts/releases/download/v0.0.0/tooling-9.0.tar.gz.enc"
openssl enc -d -aes-256-cbc -pbkdf2 -in tooling-9.0.tar.gz.enc -out tooling-9.0.tar.gz -pass pass:$TOOLING_KEY
openssl enc -d -aes-256-cbc -pbkdf2 -in runner.reg.enc -out runner.reg -pass pass:$TOOLING_KEY
rm -r tooling-9.0.tar.gz.enc runner.reg.enc
