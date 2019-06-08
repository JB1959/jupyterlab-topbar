#!/usr/bin/env bash

set -e

yarn -v
python -m pip --version

jupyter lab --version 2>/dev/null

yarn install
yarn run build

jupyter labextension link ./packages/jupyterlab-topbar --no-build
jupyter labextension install ./packages/jupyterlab-logout \
                             ./packages/jupyterlab-topbar-extension \
                             ./packages/jupyterlab-topbar-text \
                             ./packages/jupyterlab-system-monitor \
                             ./packages/jupyterlab-theme-toggle
