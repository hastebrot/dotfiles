#!/bin/bash
cd "$(dirname "$0")"
stow -t ~/ -v $@

