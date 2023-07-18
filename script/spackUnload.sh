for pkg in $(spack find --loaded ); do
    echo $pkg
    spack unload $pkg
done