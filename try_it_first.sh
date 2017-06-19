#!/bin/bash
# This script run Emacs using my .emacs config file (-l) instead of
# the config file of your ~/ home directory, your personal configuration.
# Thus you can try this configuration without affect your current settings.

emacs -q -l .emacs
