Developer Guides
################

Read the following material as you learn how to use LPOT.

Deep Dive
=========

* `Quantization <Quantization.md>`__ is the processes that enable inference and training by performing computations at low precision data type, such as fixed point integers. LPOT supports Post-Training Quantization (`PTQ <PTQ.md>`__) and Quantization-Aware Training (`QAT <Qat.md>`__). Note that `Dynamic Quantization <dynamic_quantization.md>`__ currently has limited support.
* `Pruning <pruning.md>`__ provides a common method for introducing sparsity in weights and activations.
* `Benchmarking <benchmark.md>`__ introduces how to utilize the benchmark interface of LPOT.
* `Mixed precision <mixed_precision.md>`__ introduces how to enable mixed precision, including BFP16 and int8 and FP32, on Intel platforms during tuning.
* `Transform <transform.md>`__ introduces how to utilize LPOT buildin data processing and how to develop a custom data processing method. 
* `Dataset <dataset.md>`__ introduces how to utilize LPOT buildin dataset and how to develop a custom dataset.
* `Metric <metrics.md>`__ introduces how to utilize LPOT buildin metrics and how to develop a custom metric.
* `TensorBoard <tensorboard.md>`__ provides tensor histogram and execution graph for tuning debugging purpose. LPOT supports a variety of `TensorFlow models <tensorflow_model_support.md>`__.
* `PyTorch Deploy <pytorch_model_saving.md>`__ introduces how LPOT saves and loads quantized PyTorch model.

.. toctree::
    :maxdepth: 1
    :hidden:

    Quantization.md
    PTQ.md
    QAT.md
    dynamic_quantization.md
    pruning.md
    benchmark.md
    mixed_precision.md
    transform.md
    dataset.md
    dataloader_metric.md
    metrics.md
    tensorboard.md
    tensorflow_model_support.md
    pytorch_model_saving.md  
    
Advanced Topics
===============

* `Adaptor <adaptor.md>`__ is the interface between LPOT and framework. The method to develop adaptor extension is introduced with ONNX Runtime as example. 
* `Tuning strategies <tuning_strategies.md>`__ can automatically optimized low-precision recipes for deep learning models to achieve optimal product objectives like inference performance and memory usage with expected accuracy criteria. The method to develop a new strategy is introduced.


.. toctree::
    :maxdepth: 1
    :hidden:

    adaptor.md
    tuning_strategies.md
