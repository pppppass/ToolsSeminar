import random


def generate_dataset(mu, sigma, num, seed=0):
    random.seed(seed)

    k = len(num)

    lst = []
    for i in range(k):
        lst += [[random.gauss(mu[i][j], sigma[i][j]) for j in range(2)] for r in range(num[i])]
    
    return lst
