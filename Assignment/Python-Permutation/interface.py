#! /usr/bin/env python3

from permutation import permutation

for p in permutation(list(range(1, 5))):
    print(" ".join(str(i) for i in p))
