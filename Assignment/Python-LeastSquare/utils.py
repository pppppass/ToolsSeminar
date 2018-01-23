import numpy


def loss_func(x, y, a_t, b_t):
    error = a_t + b_t * x - y
    return 1. / 2. * numpy.sum(error**2)


def train_func(x, y, a_t, b_t, eta):
    n = x.shape[0]
    grad_a = numpy.ones(n).dot(a_t + b_t * x - y)
    grad_b = x.dot(a_t + b_t * x - y)

    a_tp1 = a_t - eta * grad_a
    b_tp1 = b_t - eta * grad_b

    return [a_tp1, b_tp1]
