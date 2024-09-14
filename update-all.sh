#!/bin/sh

# Update flake inputs
nix flake update

# Rebuild and switch system configuration
sudo nixos-rebuild switch --flake .#stux-ltp

# Rebuild and switch home configuration
home-manager switch --flake .#stux@stux-ltp