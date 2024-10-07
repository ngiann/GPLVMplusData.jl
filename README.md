<h1 align="center">GPLVMplusData.jl</h1>

Provides `loadducks` function that loads dataset of 72 images depicting a rubber duck photographs from 72 angles.
The data have been taken from the original repository found [here](https://www.cs.columbia.edu/CAVE/software/softlib/coil-20.php).
If you use the dataset for your academic work, please cite the following paper as requested by the original authors of the images:

"Columbia Object Image Library (COIL-20),"
S. A. Nene, S. K. Nayar and H. Murase,
Technical Report CUCS-005-96, February 1996.

Apart from cloning, an easy way of using the package is the following:

1 - Add the registry [AINJuliaRegistry](https://github.com/HITS-AIN/AINJuliaRegistry)

2 - Switch into "package mode" with `]` and add the package with
```
add GPLVMplusData
```

# Example

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

X = GPLVMplusData.loadducks(;every = 4); # subsamble images to 32×32.
pcolor(rot180(reshape(X[:,1],32,32)))
```
