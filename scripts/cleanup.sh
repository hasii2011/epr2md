#!/usr/bin/env bash

function changeToProjectRoot {

    export areHere=`basename ${PWD}`
    if [[ ${areHere} = "scripts" ]]; then
        cd ..
    fi
}

changeToProjectRoot

rm -rf dist build
rm -rf ./pyenv-3.9.9/lib/python3.9/site-packages/easy-install.pth
rm -rf ./pyenv-3.9.9/bin/epr2md

find . -type d -name '*'.egg-info -delete
find . -type f -name "*.log"      -delete

rm -rf .eggs
rm -rf epr2md.egg-info

# pip install -e .         to host locally    # in editable mode (aka developer)
# pip uninstall epr2md     to uninstall in developer mode
