# GPLVMplusData

[![Build Status](https://github.com/ngiann/GPLVMplusData.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/ngiann/GPLVMplusData.jl/actions/workflows/CI.yml?query=branch%3Amain)

Provides `loadducks` function that loads dataset of 72 images depicting a rubber duck photographs from 72 angles.

Example:
```
using PyPlot # must be independently installed, other packages can be used instead
X = GPLVMplusData.loadducks();
pcolor(rot180(reshape(X[:,1],128,128)))
```

Load subsampled images:
```
using PyPlot # must be independently installed, other packages can be used instead
X = GPLVMplusData.loadducks(;every=2); # subsamble images to 64×64.
pcolor(rot180(reshape(X[:,1],64,64)))

X = GPLVMplusData.loadducks(;every=3); # subsamble images to 43×43.
pcolor(rot180(reshape(X[:,1],43,43)))
```
