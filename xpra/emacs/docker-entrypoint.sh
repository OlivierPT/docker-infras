#!/bin/bash
set -e

echo $1

exec "xpra start :100 --start-child='emacs $1' --daemon=off --bind-tcp=0.0.0.0:10010"
