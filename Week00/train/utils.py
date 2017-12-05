import numpy

def generate_config(n=1000, a_true=4., b_true=5., a_0 = 0., b_0 = 0.):
    x = numpy.linspace(0., 10., n)
    a_true = numpy.float64(a_true)
    b_true = numpy.float64(b_true)
    y = a_true + b_true * x + numpy.random.randn(n)
    
    a_0 = numpy.float64(a_0)
    b_0 = numpy.float64(b_0)
    
    A = numpy.vstack((x, numpy.ones(n)))
    rec_eta = 1. / numpy.linalg.norm(A.dot(A.transpose()))
    
    return [x, y, a_0, b_0, a_true, b_true, rec_eta]

def loss_func(x, y, a_t, b_t):
    error = a_t + b_t * x - y
    return 1. / 2. * numpy.sum(error**2)

def train_func(x, y, a_t, b_t, eta):
    n = x.shape[0]
    grad_a = numpy.ones(n).dot(a_t + b_t * x - y)
    grad_b = x.dot(a_t + b_t * x- y)
    
    a_tp1 = a_t - eta * grad_a
    b_tp1 = b_t - eta * grad_b
    
    return [a_tp1, b_tp1]
