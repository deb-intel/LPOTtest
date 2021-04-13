Documentation
#############

Read the following material as you learn how to use LPOT.

Getting Started
===============

* `Introduction <introduction.md>`__ explains Intel® Low Precision Optimization Tool's API.
* `Transform <docs/transform.md>`__ introduces how to utilize LPOT's built-in data processing and how to develop a custom data processing method. 
* `Dataset <docs/dataset.md>`__ introduces how to utilize LPOT's built-in dataset and how to develop a custom dataset.
* `Metric <docs/metric.md>`__ introduces how to utilize LPOT's built-in metrics and how to develop a custom metric.
* `Tutorial <docs/tutorial.md>`__ provides comprehensive instructions on how to utilize LPOT's features with examples. 
* `Examples <examples/readme.md>`__ are provided to demonstrate the usage of LPOT in different frameworks: TensorFlow, PyTorch, MXNet, and ONNX Runtime.
* `UX <docs/ux.md>`__ is a web-based system used to simplify LPOT usage.
* `Intel oneAPI AI Analytics Toolkit Get Started Guide <https://software.intel.com/content/www/us/en/develop/documentation/get-started-with-ai-linux/top.html>`__ explains the AI Kit components, installation and configuration guides, and instructions for building and running sample apps.
* `AI and Analytics Samples <https://github.com/oneapi-src/oneAPI-samples/tree/master/AI-and-Analytics>`__ includes code samples for Intel oneAPI libraries.

.. toctree::
    :maxdepth: 1
    :hidden:

    introduction.md
    transform.md
    dataset.md
    metrics.md
    tutorial.md
    examples.md
    ux.md


Deep Dive
=========

* `Quantization <Quantization.md>`__ are processes that enable inference and training by performing computations at low-precision data types, such as fixed-point integers. LPOT supports Post-Training Quantization (`PTQ <PTQ.md>`__) and Quantization-Aware Training (`QAT <Qat.md>`__). Note that `Dynamic Quantization <dynamic_quantization.md>`__ currently has limited support.
* `Pruning <pruning.md>`__ provides a common method for introducing sparsity in weights and activations.
* `Benchmarking <benchmark.md>`__ introduces how to utilize the benchmark interface of LPOT.
* `Mixed precision <mixed_precision.md>`__ introduces how to enable mixed precision, including BFP16 and int8 and FP32, on Intel platforms during tuning.
* `TensorBoard <tensorboard.md>`__ provides tensor histograms and execution graphs for tuning debugging purposes. 


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
    tensorboard.md
  
    
Advanced Topics
===============

* `Adaptor <adaptor.md>`__ is the interface between LPOT and framework. The method to develop adaptor extension is introduced with ONNX Runtime as example. 
* `Tuning strategies <tuning_strategies.md>`__ can automatically optimized low-precision recipes for deep learning models to achieve optimal product objectives like inference performance and memory usage with expected accuracy criteria. The method to develop a new strategy is introduced.


.. toctree::
    :maxdepth: 1
    :hidden:

    adaptor.md
    tuning_strategies.md