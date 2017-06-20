#!/bin/bash
set -e

exec "xpra start :100 --start-child='emacs $1' --daemon=off --bind-tcp=0.0.0.0:10010"
