#! /usr/bin/env python3

from dataset import generate_dataset
from k_means import k_means

mu = [[0., 0.], [2., 3.], [-1, 4.], [10., 10.]]
sigma = [[1., 1.], [0.7, 0.9], [0.6, 0.4], [2., 3.]]
num = [50, 150, 100, 200]
k = 4

data = generate_dataset(mu, sigma, num)
rep = 40
cid = [0, 1, 2, 3]

bucket = k_means(k, data, cid, rep)

for i in range(k):
    print("{0}: {1!r}".format(i, bucket[i]))
