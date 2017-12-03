#!/bin/bash

# Close on error.
set -e

# Generate a configuration from all the files in conf.d.
cat conf.d/* > ./conf.ovpn
