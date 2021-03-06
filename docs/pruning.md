Pruning
=======

## Introduction

Sparsity is a measure of how many percents of elements in a tensor are [exact zeros][^1]. A tensor is considered sparse if most of its elements are zero. Only non-zero elements will be stored and computed so the inference process could be accelerated due to TOPS (teraoperations/second) and memory saved (acceleration needs sparse compute kernels which are a work in process).

The <a href="https://en.wikipedia.org/wiki/Lp_space#When_p_=_0"><img src="http://latex.codecogs.com/svg.latex?\l_{1}&space;" title="http://latex.codecogs.com/svg.latex?\l_{1} " />-"norm" function</a> measures how many zero-elements are in a tensor <em>x</em>:
<img src="http://latex.codecogs.com/svg.latex?\left|\left|&space;x\right|&space;\right|_{0}\doteq&space;\left|x_{1}&space;\right|^{0}&plus;&space;\left|x_{2}&space;\right|^{0}&plus;...&plus;\left|x_{n}&space;\right|^{0}&space;" title="http://latex.codecogs.com/svg.latex?\left|\left| x\right| \right|_{0}\doteq \left|x_{1} \right|^{0}+ \left|x_{2} \right|^{0}+...+\left|x_{n} \right|^{0} " />
In other words, an element contributes either a value of 1 or 0 to \(l_0\).  Anything but an exact zero contributes a value of 1 - which is good. Sometimes it helps to think about density, the number of non-zero elements (NNZ) and sparsity's complement:
\[
density = 1 - sparsity
\]
A common method for introducing sparsity in weights and activations is called **pruning**. Pruning is the application of a binary criteria to decide which weights to prune: weights which match the pruning criteria are assigned a value of zero. Pruned elements are "trimmed" from the model: we replace their values with zero and also make sure they don't take part in the back-propagation process.</p>


## Design

The pruning process is similar to quantization-aware training (QAT). Intel® Low Precision Optimization Tool will do related model transformation during training and retrain the model to meet the accuracy goal.

We implemented two kinds of object: Pruner and PrunePolicy. First, we define a sparsity goal (model-wise or op-wise, depending on whether there are ops not suitable for pruning) and the way to reach the sparsity goal (usually we increase the sparsity target linearly as the epoches). The pruner is in singleton mode, and will update the sparsity goal and schedule all PrunePolicy during different phases of training.

PrunePolicy carries different pruning algos. For example, MagnitudePrunePolicy sets thresholds of absolute value so that elements whose absolute value lower than the threshold will be zeroed. The zeroing process happens at the beginning and end of each minibatch iteration.

## Usage

Pruning configs need to be added into yaml as a pruning field. Global parameters contain **start_epoch** (on which epoch pruning begins), **end_epoch** (on which epoch pruning ends), **init_sparsity** (initial sparsity goal default 0), **target_sparsity** (target sparsity goal) and **frequency** (of updating sparsity). At least one pruner instance needs to be defined under specific algos (currently only magnitude supported). You can override all global params in a specific pruner using field names and specify which weight of model to be pruned. If no weight is specified, all weights of the model will be pruned.

```yaml
pruning:
  magnitude:
      prune1:
        # weights: ['layer1.0.conv1.weight',  'layer1.0.conv2.weight']
        # target_sparsity: 0.3
        # start_epoch: 1
  start_epoch: 0
  end_epoch: 4
  frequency: 1
  init_sparsity: 0.05
  target_sparsity: 0.25
```

## Examples

Users must pass a modified training function to Intel® Low Precision Optimization Tool. Take a typical PyTorch training function as example:

```python
def p_func(model):
    # from lpot.pruning import Pruner
    # prune = Pruner(*args, **kwargs)
    for epoch in range(epochs)
        # pruner.on_epoch_begin(epoch=epoch)
        for x, label in dataloader:
            # pruner.on_batch_begin()  
            y = model(x)
            loss = criterion(y, label)
            loss = pruner.on_minibatch_end(model, loss)
            optimizer.zero_grad()            
            loss.backward()           
            optimizer.step()
            # pruner.on_batch_end()
        # pruner.on_epoch_end(epoch=epoch)
        evaluate(model)
```
Note the commented lines are how the pruner does model transformation. Then users can use LPOT like the following:

```python
from lpot import Pruning, common
prune = Pruning(args.config)
prune.model = common.Model(model)
prune.eval_dataloader = val_loader
prune.q_func = p_func
q_model = prune()
```

[^1]: https://nervanasystems.github.io/distiller/pruning.html 