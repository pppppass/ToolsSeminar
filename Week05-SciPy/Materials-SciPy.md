# Materials - SciPy

## 材料

1. 参考资料：关于 Scipy，StackOverflow 讨论的好像比较少。数值的部分大家可以参考一下《数值分析》、《数值线性代数》、《矩阵计算》。
2. 官方的教程与手册：
    1. [SciPy Tutorial](https://docs.scipy.org/doc/scipy/reference/tutorial/index.html)
    2. [API Reference](http://scipy.github.io/devdocs/)
3. 关于Sparse Matrix： [scipy.sparse学习](http://blog.csdn.net/kancy110/article/details/73930106)

## 任务

因为 SciPy 主要都是包中函数的调用，所以这一讲重点放在介绍框架上，没有留特定的任务。

可以选取一些 SciPy 的函数实现在 Jupyter Notebook 里，有兴趣的同学可以去看看更多函数的具体使用。

关于 FFT，大家可以自己试着实现多项式乘法，以及解一维 Poisson 问题。

关于图像处理，可以参考 [计算概论实验班2017](http://162.105.86.206/) 的图像处理或者类似的 Blog，熟悉 OpenCV 或者对 OpenCV 有兴趣的同学可以试着比较 `scipy.ndimage` 和 `cv2` 的区别。可以简单的实现对图像的 Gauss 模糊。
