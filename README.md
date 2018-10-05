# dockerfile-aws-lambda-rust

This is a dockerfile for building rust lambdas. It's highly recommended you define a folder for cacheing your build dependencies.

```console
docker run -v <cache folder>:/home/.cargo -e CARGO_HOME='/home/.cargo' -v `pwd`:/code -w /code richardanaya/aws-lambda-rust:1.28.0 cargo
```

it might be simpler just to alias this command:

```console
alias cargo-linux='docker run -v ~/.cargo:/home/.cargo -e CARGO_HOME='/home/.cargo' -v $(pwd):/code -w /code richardanaya/aws-lambda-rust:1.29.0 cargo'
```

# deploy

```console
docker build .
docker tag <image id> richardanaya/aws-lambda-rust:1.<version>.0
docker push richardanaya/aws-lambda-rust:1.<version>.0
```
