#!/bin/sh
set -e
cabal build
cabal run example-reflex-dom-widgets
