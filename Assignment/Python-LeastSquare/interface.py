#! /usr/bin/env python3

from dataset import generate_config
from utils import loss_func, train_func
from trainer import Trainer

trainer = Trainer(generate_config(), loss_func, train_func)

trainer.go()

trainer.result()
