#!/bin/bash

# downloads and decrypts files
./download_and_decrypt_tooling && tar -xf tooling-9.0.tar.gz  
# setup for normalized use (see refile)
mv tooling-9.0 ~/idapro-9.0 && \
    mkdir -p ~/.idapro && \
    cp runner.reg ~/.idapro/ida.reg
# install ida python
python -m pip install ~/idapro-9.0/idalib/python \
    && python ~/idapro-9.0/idalib/python/py-activate-idalib.py \
    && echo -e "0\n" | ./idapro-9.0/idapyswitch
