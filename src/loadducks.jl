"""
    function loadducks(;every=1)

    Load 72 images of rubber duck.
    
    These data have been taken from: https://www.cs.columbia.edu/CAVE/software/softlib/coil-20.php
    Should you use these data, please cite the following paper as requested by the original authors of the data:

    Columbia Object Image Library (COIL-20), S. A. Nene, S. K. Nayar and H. Murase, Technical Report CUCS-005-96, February 1996.

    Example: use function loadducks(;every=2) to subsamble images to 64×64.
    Example: use function loadducks(;every=3) to subsamble images to 43×43.
"""
function loadducks(;every=1)

    X = JLD2.load(joinpath(artifact"duckdata", "Ducks_72_128x128.jld2"))["X"]

    Y = reduce(hcat, [vec(reshape(x,128,128)[1:every:end,1:every:end]) for x in eachcol(X)])

    d = sqrt(size(Y,1))
    @printf("These data have been taken from: https://www.cs.columbia.edu/CAVE/software/softlib/coil-20.php\n")
    @printf("Should you use these data, please cite the following paper as requested by the original authors of the data:\n")
    @printf("Columbia Object Image Library (COIL-20), S. A. Nene, S. K. Nayar and H. Murase, Technical Report CUCS-005-96, February 1996.\n")
    @printf("Returning 16384×72 matrix of 72 images of dimensions %d×%d\n", d, d)

    return Y

end