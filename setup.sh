#!/bin/bash

# This is a simple script that checks for the virtualenv and pip binaries,
# creates a new vitualenv and installs pip-accel and pynt into it. See
# README.md.
#
# Available under the terms of the Beer License.

# Check for virtualenv.
if ! hash virtualenv 2>/dev/null; then
    echo '*** ERROR: virtualenv is not installed'
    exit 1
fi

# Check for pip.
if ! hash pip 2>/dev/null; then
    echo '*** ERROR: pip (and probably python) is not installed'
    exit 1
fi

# Create a new virtualenv in the current directory.
virtualenv .env

# Go into the virtualenv.
source ./.env/bin/activate

# Install minimal requirements.
pip install pip-accel pynt
