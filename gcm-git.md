#!/usr/bin/env bash
# gcm                -> stage everything, commit, push   (original behaviour)
# gcm FILE [FILE...] -> stage ONLY those files, commit, push
#
# Named files are staged with -f, so gitignored artifacts (*.npz, *.npy, *.sh5)
# can be shipped explicitly without relaxing .gitignore.
set -euo pipefail

if [ "$#" -eq 0 ]; then
    git add .
    msg="Auto Commit"
else
    for f in "$@"; do
        if [ ! -e "$f" ]; then
            echo "gcm: no such file: $f" >&2
            exit 1
        fi
    done
    git add -f -- "$@"
    msg="Add $(basename "$1")"
    [ "$#" -gt 1 ] && msg="Add $# files"
fi

# Nothing staged -> stop before making an empty commit.
if git diff --cached --quiet; then
    echo "gcm: nothing staged, nothing to do" >&2
    exit 0
fi

echo "gcm: committing:"
git diff --cached --name-only | sed 's/^/  /'

git commit -m "$msg"
git push
