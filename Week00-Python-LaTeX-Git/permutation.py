#! /usr/bin/env python

def perm(lst):
    l = len(lst)
    if l == 1:
        yield lst
    else:
        for i in range(l):
            rem_lst = lst[0:i] + lst[i+1:l]
            for rem in perm(rem_lst):
                yield [lst[i]] + rem

for p in perm(list(range(1, 5))):
    print(" ".join(str(i) for i in p))
