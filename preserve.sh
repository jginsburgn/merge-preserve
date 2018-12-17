#!/usr/bin/env bash

# Git Merge Driver
# To be called by git in the following fashion: preserve.sh %O %A %B %L %P

# Arguments are as follows.
# %O is the location of the file's common ancestor version.
# %A is the location of current version of the file. And the file that must be rewritten with the merge results, either conflicted or clean.
# %B is the location of the other branch's version of the file.
# %L is the conflict marker size. Usually 7.
# %P is the path of the file that will contain the merge result.

# Script that exits with 0 will convey that merge went cleanly.

echo "Preserving: $5."