"""
    function loadducks(;every=1)

    Load 72 images of rubber duck.
    Example: use function loadducks(;every=2) to subsamble images to 64×64.
    Example: use function loadducks(;every=3) to subsamble images to 43×43.
"""
function loadducks(;every=1)

    X = JLD2.load(joinpath(artifact"duckdata", "Ducks_72_128x128.jld2"))["X"]

    Y = reduce(hcat, [vec(reshape(x,128,128)[1:every:end,1:every:end]) for x in eachcol(X)])

    d = sqrt(size(Y,1))

    @printf("Returning 16384×72 matrix of 72 images of dimensions %d×%d\n", d, d)

    return Y

end