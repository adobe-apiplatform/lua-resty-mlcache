# vim:st=4 sts=4 sw=4 et:

wget -O openresty-$INPUT_VERSION.tar.gz \
    https://openresty.org/download/openresty-$INPUT_VERSION.tar.gz
tar -zxf openresty-$INPUT_VERSION.tar.gz

pushd openresty-$INPUT_VERSION
    ./configure \
        --prefix=$INPUT_PREFIX \
        --without-http_ssl_module \
        -j$INPUT_JOBS

    make -j$INPUT_JOBS
    make install
popd
