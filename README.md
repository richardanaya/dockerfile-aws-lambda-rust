# dockerfile-aws-lambda-rust

This is a dockerfile for building rust lambdas. It's highly recommended you define a folder for cacheing your build dependencies.

```console
docker run -v $(abspath <some folder for caching>):/home/.cargo -e CARGO_HOME='/home/.cargo' -v `pwd`:/code -w /code richardanaya/aws-lambda-rust:1.28.0 cargo
```
