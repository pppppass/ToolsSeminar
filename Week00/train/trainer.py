#! /usr/bin/env python

import utils

class Trainer:
    def __init__(self, config, loss_func, train_func):
        self.x, self.y, self.a, self.b, self.a_true, self.b_true, self.eta = config
        self.loss_func = loss_func
        self.train_func = train_func
        self.loss = float("inf")
    
    def one_iteration(self):
        self.loss = self.loss_func(self.x, self.y, self.a, self.b)
        print("loss: {:.5f}".format(self.loss))
        self.a, self.b = self.train_func(self.x, self.y, self.a, self.b, self.eta)
    
    def go(self, n=1000):
        for i in range(n):
            self.one_iteration()
    
    def result(self):
        print("loss: {:.5f}".format(self.loss))
        print("Res: a = {0:.5f}, b = {1:.5f}".format(self.a, self.b))
        print("GT:  a = {0:.5f}, b = {1:.5f}".format(self.a_true, self.b_true))

trainer = Trainer(utils.generate_config(), utils.loss_func, utils.train_func)

trainer.go()

trainer.result()
