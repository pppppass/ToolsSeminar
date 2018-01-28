class Trainer:
    def __init__(self, config, loss_func, train_func):
        self.x, self.y, self.a, self.b, self.a_true, self.b_true, self.eta = config
        self.loss_func = loss_func
        self.train_func = train_func
        self.loss = float("inf")
        self.iter_ctr = 0

    def one_iteration(self):
        self.loss = self.loss_func(self.x, self.y, self.a, self.b)
        print("#Iteration: {0}, loss: {1:.5f}".format(self.iter_ctr, self.loss))
        self.a, self.b = self.train_func(self.x, self.y, self.a, self.b, self.eta)
        self.iter_ctr += 1

    def go(self, n=1000):
        for i in range(n):
            self.one_iteration()

    def result(self):
        print("Final #iteration: {0}, loss: {1:.5f}".format(self.iter_ctr, self.loss))
        print("Result: a = {0:.5f}, b = {1:.5f}".format(self.a, self.b))
        print("Groundtruth:  a = {0:.5f}, b = {1:.5f}".format(self.a_true, self.b_true))
