Releases
========

THIS PAGE IS INCOMPLETE.

## Current Release

Release info goes here. Where can it be downloaded.

## Known Issues

The MSE tuning strategy does not work with the PyTorch adaptor layer. This strategy requires a comparison between the FP32 and INT8 tensors to decide which op impacts the final quantization accuracy. The PyTorch adaptor layer does not implement this inspect tensor interface. Therefore, do not choose the MSE tuning strategy for PyTorch models.

## Incompatible Changes

[LPOT v1.2](https://github.com/intel/lpot/tree/v1.2) introduces incompatible changes in user facing APIs. Please refer to [incompatible changes](./docs/incompatible_changes.md) to know which incompatible changes are made in v1.2.

[LPOT v1.2.1](https://github.com/intel/lpot/tree/v1.2.1) solves this backward compatible issues introduced in v1.2 by moving new user facing APIs to lpot.experimental package and keep old one as is. Please refer to [introduction](./docs/introduction.md) to know the details of user-facing APIs.


