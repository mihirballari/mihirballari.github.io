#!/usr/bin/env bash
set -euo pipefail

# Always sync first (prevents non-fast-forward pushes)
git fetch origin
git pull --rebase origin main

# Build site outputs
make html

# Commit + push only if there are changes
git add -A
git commit -m "Publish site" || true
git push
