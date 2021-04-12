Getting Started
===============

## Installation

### Linux

#### Install from binary

  ```Shell
  # install from pip
  pip install lpot

  # install from conda
  conda install lpot -c conda-forge -c intel 
  ```

#### Install from source

  ```Shell
  git clone https://github.com/intel/lpot.git
  cd lpot
  python setup.py install
  ```

### Windows

#### Install from binary

  ```Shell
  # install from pip
  pip install lpot

  # install from conda
  conda install lpot -c conda-forge -c intel 
  ```

#### Install from source

**Prerequisites**

The following prerequisites and requirements must be satisfied in order to install successfully：

- Python version: 3.6 or 3.7 or 3.8

- Download and install anaconda: [anaconda](https://anaconda.org/)

- Create a virtual environment named lpot in anaconda:
    ```shell
    # Here we install python 3.7 for instance. You can also choose python 3.6 & 3.8.
    conda create -n lpot python=3.7
    conda activate lpot
    ```

**Installation Procedure**

```shell
git clone https://github.com/intel/lpot.git
cd lpot
pip install -r requirements.txt
python setup.py install
```


## Tutorials and Examples

Read the following material to learn how to use LPOT.

### Tutorial

The [Tutorial](../docs/tutorial.md) provides comprehensive instructions on how to utilize Intel® Low Precision Optimization Tool's features with examples.

### Examples

[Examples](examples/readme.rst) are provided to demonstrate the usage of Intel® Low Precision Optimization Tool in different frameworks: TensorFlow, PyTorch, MXNet, and ONNX Runtime. Hello World examples are also available.


## System Requirements

Intel® Low Precision Optimization Tool supports systems based on [Intel 64 architecture or compatible processors](https://en.wikipedia.org/wiki/X86-64), specially optimized for the following CPUs:

* Intel Xeon Scalable processor (formerly Skylake, Cascade Lake, and Cooper Lake)
* future Intel Xeon Scalable processor (code name Sapphire Rapids)

Intel® Low Precision Optimization Tool requires installing the pertinent Intel-optimized framework version for TensorFlow, PyTorch, and MXNet.

### Validated Hardware/Software Environment

<table class="docutils">
<thead>
  <tr>
    <th class="tg-bobw">Platform</th>
    <th class="tg-bobw">OS</th>
    <th class="tg-bobw">Python</th>
    <th class="tg-bobw">Framework</th>
    <th class="tg-bobw">Version</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-nrix" rowspan="10">Cascade Lake<br><br>Cooper Lake<br><br>Skylake</td>
    <td class="tg-nrix" rowspan="10">CentOS 7.8<br><br>Ubuntu 18.04</td>
    <td class="tg-nrix" rowspan="10">3.6<br><br>3.7</td>
    <td class="tg-cly1" rowspan="6">TensorFlow</td>
    <td class="tg-7zrl">2.2.0</td>
  </tr>
  <tr>
    <td class="tg-7zrl">1.15.0 UP1</td>
  </tr>
  <tr>
    <td class="tg-7zrl">1.15.0 UP2</td>
  </tr>
  <tr>
    <td class="tg-7zrl">2.3.0</td>
  </tr>
  <tr>
    <td class="tg-7zrl">2.1.0</td>
  </tr>
  <tr>
    <td class="tg-7zrl">1.15.2</td>
  </tr>
  <tr>
    <td class="tg-7zrl">PyTorch</td>
    <td class="tg-7zrl">1.5.0+cpu</td>
  </tr>
  <tr>
    <td class="tg-cly1" rowspan="2">MXNet</td>
    <td class="tg-7zrl">1.7.0</td>
  </tr>
  <tr>
    <td class="tg-7zrl">1.6.0</td>
  </tr>
  <tr>
    <td class="tg-7zrl">ONNX Runtime</td>
    <td class="tg-7zrl">1.6.0</td>
  </tr>
</tbody>
</table>

## Model Zoo

Intel® Low Precision Optimization Tool provides numerous examples to show promising accuracy loss with the best performance gain.

<table class="docutils">
<thead>
  <tr>
    <th rowspan="2">Framework</th>
    <th rowspan="2">version</th>
    <th rowspan="2">Model</th>
    <th rowspan="2">dataset</th>
    <th colspan="3">Accuracy</th>
    <th>Performance speed up</th>
  </tr>
  <tr>
    <td>INT8 Tuning Accuracy</td>
    <td>FP32 Accuracy Baseline</td>
    <td>Acc Ratio[(INT8-FP32)/FP32]</td>
    <td>Realtime Latency Ratio[FP32/INT8]</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>resnet50v1.0</td>
    <td>ImageNet</td>
    <td>73.80%</td>
    <td>74.30%</td>
    <td>-0.67%</td>
    <td>4.15x<sup>*</sup></td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>resnet50v1.5</td>
    <td>ImageNet</td>
    <td>76.80%</td>
    <td>76.50%</td>
    <td>0.39%</td>
    <td>3.80x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>Resnet101</td>
    <td>ImageNet</td>
    <td>77.20%</td>
    <td>76.40%</td>
    <td>1.05%</td>
    <td>2.72x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>inception_v1</td>
    <td>ImageNet</td>
    <td>70.10%</td>
    <td>69.70%</td>
    <td>0.57%</td>
    <td>2.55x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>inception_v2</td>
    <td>ImageNet</td>
    <td>74.00%</td>
    <td>74.00%</td>
    <td>0.00%</td>
    <td>2.56x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>inception_v3</td>
    <td>ImageNet</td>
    <td>77.20%</td>
    <td>76.70%</td>
    <td>0.65%</td>
    <td>3.17x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>inception_v4</td>
    <td>ImageNet</td>
    <td>80.00%</td>
    <td>80.30%</td>
    <td>-0.37%</td>
    <td>2.57x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>inception_resnet_v2</td>
    <td>ImageNet</td>
    <td>80.20%</td>
    <td>80.40%</td>
    <td>-0.25%</td>
    <td>2.24x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>Mobilenetv1</td>
    <td>ImageNet</td>
    <td>71.10%</td>
    <td>71.00%</td>
    <td>0.14%</td>
    <td>2.93x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>mobilenetv2</td>
    <td>ImageNet</td>
    <td>70.80%</td>
    <td>71.80%</td>
    <td>-1.39%</td>
    <td>1.43x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>ssd_resnet50_v1</td>
    <td>Coco</td>
    <td>38.00%</td>
    <td>38.00%</td>
    <td>0.00%</td>
    <td>3.06x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>mask_rcnn_inception_v2</td>
    <td>Coco</td>
    <td>28.90%</td>
    <td>29.10%</td>
    <td>-0.69%</td>
    <td>3.93x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>wide_deep_large_ds</td>
    <td>criteo-kaggle</td>
    <td>77.60%</td>
    <td>77.70%</td>
    <td>-0.08%</td>
    <td>1.39x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>vgg16</td>
    <td>ImageNet</td>
    <td>72.10%</td>
    <td>70.90%</td>
    <td>1.69%</td>
    <td>3.70x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>vgg19</td>
    <td>ImageNet</td>
    <td>72.30%</td>
    <td>71.00%</td>
    <td>1.83%</td>
    <td>3.74x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>resnetv2_50</td>
    <td>ImageNet</td>
    <td>70.20%</td>
    <td>69.60%</td>
    <td>0.86%</td>
    <td>1.72x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>resnetv2_101</td>
    <td>ImageNet</td>
    <td>72.50%</td>
    <td>71.90%</td>
    <td>0.83%</td>
    <td>1.79x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>resnetv2_152</td>
    <td>ImageNet</td>
    <td>72.70%</td>
    <td>72.40%</td>
    <td>0.41%</td>
    <td>1.79x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>densenet121</td>
    <td>ImageNet</td>
    <td>72.60%</td>
    <td>72.90%</td>
    <td>-0.41%</td>
    <td>1.81x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>densenet161</td>
    <td>ImageNet</td>
    <td>76.10%</td>
    <td>76.30%</td>
    <td>-0.26%</td>
    <td>1.44x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>2.2.0</td>
    <td>densenet169</td>
    <td>ImageNet</td>
    <td>74.40%</td>
    <td>74.60%</td>
    <td>-0.27%</td>
    <td>1.23x</td>
  </tr>
</tbody>
</table>

`NOTE` \>4 perf is because FP32 baseline is not well-optimized at TF2.2. With TF2.3, the speed up becomes 2.8x.

<table class="docutils">
<thead>
  <tr>
    <th rowspan="2">Framework</th>
    <th rowspan="2">version</th>
    <th rowspan="2">model</th>
    <th rowspan="2">dataset</th>
    <th colspan="3">Accuracy</th>
    <th>Performance speed up</th>
  </tr>
  <tr>
    <td>INT8 Tuning Accuracy</td>
    <td>FP32 Accuracy Baseline</td>
    <td>Acc Ratio[(INT8-FP32)/FP32]</td>
    <td>Realtime Latency Ratio[FP32/INT8]</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>resnet_v1_50_slim</td>
    <td>ImageNet</td>
    <td>76.30%</td>
    <td>75.20%</td>
    <td>1.46%</td>
    <td>2.94x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>resnet_v1_101_slim</td>
    <td>ImageNet</td>
    <td>77.30%</td>
    <td>76.40%</td>
    <td>1.18%</td>
    <td>3.30x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>resnet_v1_152_slim</td>
    <td>ImageNet</td>
    <td>77.40%</td>
    <td>76.80%</td>
    <td>0.78%</td>
    <td>3.59x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>inception_v1_slim</td>
    <td>ImageNet</td>
    <td>69.50%</td>
    <td>69.80%</td>
    <td>-0.43%</td>
    <td>1.20x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>inception_v2_slim</td>
    <td>ImageNet</td>
    <td>73.60%</td>
    <td>74.00%</td>
    <td>-0.54%</td>
    <td>1.14x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>inception_v3_slim</td>
    <td>ImageNet</td>
    <td>77.80%</td>
    <td>78.00%</td>
    <td>-0.26%</td>
    <td>1.52x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>inception_v4_slim</td>
    <td>ImageNet</td>
    <td>80.40%</td>
    <td>80.20%</td>
    <td>0.25%</td>
    <td>1.52x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>vgg16_slim</td>
    <td>ImageNet</td>
    <td>72.10%</td>
    <td>70.90%</td>
    <td>1.69%</td>
    <td>3.61x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>vgg19_slim</td>
    <td>ImageNet</td>
    <td>72.40%</td>
    <td>71.00%</td>
    <td>1.97%</td>
    <td>3.62x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>resnetv2_50_slim</td>
    <td>ImageNet</td>
    <td>70.20%</td>
    <td>69.70%</td>
    <td>0.72%</td>
    <td>1.45x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>resnetv2_101_slim</td>
    <td>ImageNet</td>
    <td>72.50%</td>
    <td>71.90%</td>
    <td>0.83%</td>
    <td>1.59x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>resnetv2_152_slim</td>
    <td>ImageNet</td>
    <td>72.90%</td>
    <td>72.40%</td>
    <td>0.69%</td>
    <td>1.62x</td>
  </tr>
  <tr>
    <td>tensorflow</td>
    <td>1.15UP2</td>
    <td>bert</td>
    <td>SQUAD</td>
    <td>92.10%</td>
    <td>93.00%</td>
    <td>-0.98%</td>
    <td>1.28x</td>
  </tr>
</tbody>
</table>


<table class="docutils">
<thead>
  <tr>
    <th rowspan="2">Framework</th>
    <th rowspan="2">version</th>
    <th rowspan="2">model</th>
    <th rowspan="2">dataset</th>
    <th colspan="3">Accuracy</th>
    <th>Performance speed up</th>
  </tr>
  <tr>
    <td>INT8 Tuning Accuracy</td>
    <td>FP32 Accuracy Baseline</td>
    <td>Acc Ratio[(INT8-FP32)/FP32]</td>
    <td>Realtime Latency Ratio[FP32/INT8]</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>resnext101_32x8d</td>
    <td>ImageNet</td>
    <td>79.12%</td>
    <td>79.31%</td>
    <td>-0.24%</td>
    <td>2.57x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_base_mrpc</td>
    <td>MRPC</td>
    <td>88.90%</td>
    <td>88.73%</td>
    <td>0.19%</td>
    <td>2.08x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_base_cola</td>
    <td>COLA</td>
    <td>59.06%</td>
    <td>58.84%</td>
    <td>0.37%</td>
    <td>2.18x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_base_sts-b</td>
    <td>STS-B</td>
    <td>88.40%</td>
    <td>89.27%</td>
    <td>-0.97%</td>
    <td>2.28x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_base_sst-2</td>
    <td>SST-2</td>
    <td>91.51%</td>
    <td>91.86%</td>
    <td>-0.37%</td>
    <td>2.29x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_base_rte</td>
    <td>RTE</td>
    <td>69.31%</td>
    <td>69.68%</td>
    <td>-0.52%</td>
    <td>2.15x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_large_mrpc</td>
    <td>MRPC</td>
    <td>87.45%</td>
    <td>88.33%</td>
    <td>-0.99%</td>
    <td>2.73x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_large_squad</td>
    <td>SQUAD</td>
    <td>92.85%</td>
    <td>93.05%</td>
    <td>-0.21%</td>
    <td>2.01x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_large_qnli</td>
    <td>QNLI</td>
    <td>91.20%</td>
    <td>91.82%</td>
    <td>-0.68%</td>
    <td>2.67x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_large_rte</td>
    <td>RTE</td>
    <td>71.84%</td>
    <td>72.56%</td>
    <td>-0.99%</td>
    <td>1.37x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>bert_large_cola</td>
    <td>COLA</td>
    <td>62.74%</td>
    <td>62.57%</td>
    <td>0.27%</td>
    <td>2.69x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>dlrm</td>
    <td>CriteoTerabyte</td>
    <td>80.27%</td>
    <td>80.27%</td>
    <td>0.00%</td>
    <td>1.06x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>resnet18_qat</td>
    <td>ImageNet</td>
    <td>69.76%</td>
    <td>69.76%</td>
    <td>0.01%</td>
    <td>1.75x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>resnet50_qat</td>
    <td>ImageNet</td>
    <td>76.37%</td>
    <td>76.13%</td>
    <td>0.32%</td>
    <td>2.65x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>inception_v3</td>
    <td>ImageNet</td>
    <td>69.42%</td>
    <td>69.54%</td>
    <td>-0.17%</td>
    <td>1.82x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>peleenet</td>
    <td>ImageNet</td>
    <td>71.59%</td>
    <td>72.08%</td>
    <td>-0.68%</td>
    <td>1.26x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>yolo_v3</td>
    <td>Coco</td>
    <td>24.42%</td>
    <td>24.54%</td>
    <td>-0.51%</td>
    <td>1.63x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>se_resnext50_32x4d</td>
    <td>ImageNet</td>
    <td>79.04%</td>
    <td>79.08%</td>
    <td>-0.05%</td>
    <td>1.71x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.5.0+cpu</td>
    <td>mobilenet_v2</td>
    <td>ImageNet</td>
    <td>70.63%</td>
    <td>71.86%</td>
    <td>-1.70%</td>
    <td>1.60x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>1.6.0+cpu</td>
    <td>blendcnn</td>
    <td>MRPC</td>
    <td>68.40%</td>
    <td>68.40%</td>
    <td>0.00%</td>
    <td>1.49x</td>
  </tr>
  <tr>
    <td>pytorch</td>
    <td>ipex</td>
    <td>resnet50_ipex</td>
    <td>ImageNet</td>
    <td>75.59%</td>
    <td>76.13%</td>
    <td>-0.71%</td>
    <td>1.66x</td>
  </tr>
</tbody>
</table>


<table class="docutils">
<thead>
  <tr>
    <th rowspan="2">Framework</th>
    <th rowspan="2">version</th>
    <th rowspan="2">model</th>
    <th rowspan="2">dataset</th>
    <th colspan="3">Accuracy</th>
    <th>Performance speed up</th>
  </tr>
  <tr>
    <td>INT8 Tuning Accuracy</td>
    <td>FP32 Accuracy Baseline</td>
    <td>Acc Ratio[(INT8-FP32)/FP32]</td>
    <td>Realtime Latency Ratio[FP32/INT8]</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td>mxnet</td>
    <td>1.7.0</td>
    <td>mobilenet1.0</td>
    <td>ImageNet</td>
    <td>71.72%</td>
    <td>72.22%</td>
    <td>-0.70%</td>
    <td>2.59x</td>
  </tr>
  <tr>
    <td>mxnet</td>
    <td>1.7.0</td>
    <td>mobilenetv2_1.0</td>
    <td>ImageNet</td>
    <td>70.77%</td>
    <td>70.87%</td>
    <td>-0.14%</td>
    <td>2.77x</td>
  </tr>
  <tr>
    <td>mxnet</td>
    <td>1.7.0</td>
    <td>resnet18_v1</td>
    <td>ImageNet</td>
    <td>69.99%</td>
    <td>70.14%</td>
    <td>-0.21%</td>
    <td>3.12x</td>
  </tr>
  <tr>
    <td>mxnet</td>
    <td>1.7.0</td>
    <td>squeezenet1.0</td>
    <td>ImageNet</td>
    <td>56.89%</td>
    <td>56.96%</td>
    <td>-0.13%</td>
    <td>2.55x</td>
  </tr>
  <tr>
    <td>mxnet</td>
    <td>1.7.0</td>
    <td>ssd-resnet50_v1</td>
    <td>VOC</td>
    <td>80.21%</td>
    <td>80.23%</td>
    <td>-0.03%</td>
    <td>4.44x</td>
  </tr>
  <tr>
    <td>mxnet</td>
    <td>1.7.0</td>
    <td>ssd-mobilenet1.0</td>
    <td>VOC</td>
    <td>74.94%</td>
    <td>75.54%</td>
    <td>-0.79%</td>
    <td>3.75x</td>
  </tr>
  <tr>
    <td>mxnet</td>
    <td>1.7.0</td>
    <td>resnet152_v1</td>
    <td>ImageNet</td>
    <td>78.32%</td>
    <td>78.54%</td>
    <td>-0.28%</td>
    <td>3.27x</td>
  </tr>
</tbody>
</table>


<table class="docutils">
<thead>
  <tr>
    <th rowspan="2">Framework</th>
    <th rowspan="2">version</th>
    <th rowspan="2">model</th>
    <th rowspan="2">dataset</th>
    <th colspan="3">Accuracy</th>
    <th>Performance speed up</th>
  </tr>
  <tr>
    <td>INT8 Tuning Accuracy</td>
    <td>FP32 Accuracy Baseline</td>
    <td>Acc Ratio[(INT8-FP32)/FP32]</td>
    <td>Realtime Latency Ratio[FP32/INT8]</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td>onnxrt</td>
    <td>1.6.0</td>
    <td>resnet50_v1_5</td>
    <td>ImageNet</td>
    <td>73.70%</td>
    <td>74.00%</td>
    <td>-0.41%</td>
    <td>0.82x*</td>
  </tr>
  <tr>
    <td>onnxrt</td>
    <td>1.6.0</td>
    <td>bert_base_MRPC</td>
    <td>MRPC</td>
    <td>85.29%</td>
    <td>86.03%</td>
    <td>-0.86%</td>
    <td>1.75x</td>
  </tr>
</tbody>
</table>

`NOTE` \<1 perf is due to quantized kernel issue in ONNX Runtime v1.6.0. Further optimization is WIP.

## Known Issues

The MSE tuning strategy does not work with the PyTorch adaptor layer. This strategy requires a comparison between the FP32 and INT8 tensors to decide which op impacts the final quantization accuracy. The PyTorch adaptor layer does not implement this inspect tensor interface. Therefore, do not choose the MSE tuning strategy for PyTorch models.

## Support

Submit your questions, feature requests, and bug reports to the
[GitHub issues](https://github.com/intel/lpot/issues) page. You may also reach out to lpot.maintainers@intel.com.

## Contribution

We welcome community contributions to Intel® Low Precision Optimization
Tool. If you have an idea on how to improve the library, refer to the following:

* For changes impacting the public API, submit an [RFC pull request](CONTRIBUTING.md#RFC_pull_requests).
* Ensure that the changes are consistent with the [code contribution guidelines](CONTRIBUTING.md#code_contribution_guidelines) and [coding style](CONTRIBUTING.md#coding_style).
* Ensure that you can run all the examples with your patch.
* Submit a [pull request](https://github.com/intel/lpot/pulls).

For additional details, see [contribution guidelines](CONTRIBUTING.md).

This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](CODE_OF_CONDUCT.md) code of conduct.

## License

Intel® Low Precision Optimization Tool is licensed under [Apache License Version 2.0](http://www.apache.org/licenses/LICENSE-2.0). This software includes components that have separate copyright notices and licensing terms. Your use of the source code for these components is subject to the terms and conditions of the following licenses.

Apache License Version 2.0:
* [Intel TensorFlow Quantization Tool](https://github.com/IntelAI/tools)

MIT License:
* [bayesian-optimization](https://github.com/fmfn/BayesianOptimization)

See the accompanying [LICENSE](LICENSE) file for full license text and copyright notices.

--------

View [Legal Information](legal_information.md).

## Citation

If you use Intel® Low Precision Optimization Tool in your research or you wish to refer to the tuning results published in the [Model Zoo](#model-zoo), use the following BibTeX entry.

```
@misc{Intel® Low Precision Optimization Tool,
  author =       {Feng Tian, Chuanqi Wang, Guoming Zhang, Penghui Cheng, Pengxin Yuan, Haihao Shen, and Jiong Gong},
  title =        {Intel® Low Precision Optimization Tool},
  howpublished = {\url{https://github.com/intel/lpot}},
  year =         {2020}
}
```