import numpy


def generate_config(n=1000, a_true=4., b_true=5., a_0=0., b_0=0., seed=0):
    numpy.random.seed(seed)

    x = numpy.linspace(0., 10., n)
    y = a_true + b_true * x + numpy.random.randn(n)

    A = numpy.vstack((x, numpy.ones(n)))
    rec_eta = 1. / numpy.linalg.norm(A.dot(A.transpose()))

    return [x, y, a_0, b_0, a_true, b_true, rec_eta]
