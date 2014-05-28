#!/usr/bin/env bash

# {{{ Utilities

<%= import '../../vagrant-shell-scripts/ubuntu.sh' %>

# }}}

# Use Google Public DNS for resolving domain names.
# The default is host-only DNS which may not be installed.
nameservers-local-purge
nameservers-append '8.8.8.8'
nameservers-append '8.8.4.4'

# Use a local Ubuntu mirror, results in faster downloads.
apt-mirror-pick 'ch'
apt-packages-repository ppa:chris-lea/node.js

# Update packages cache.
apt-packages-update

# Install VM packages.
apt-packages-install            \
  software-properties-common    \
  python-software-properties    \
  python                        \
  g++                           \
  make                          \
  nodejs
