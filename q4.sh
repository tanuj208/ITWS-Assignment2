#!/bin/bash
cat $1 | tr -s '\n' '\n' | nl -w1 -s') '
# merging blank lines with tr command and than numbering using nl. Adding ') ' after each number by -s flag. -w1 for deleting initial spaces.
