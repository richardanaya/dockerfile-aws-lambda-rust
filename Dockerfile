FROM lambci/lambda:build-go1.x
RUN yum install -y sudo
RUN curl -s https://static.rust-lang.org/rustup.sh | sh -s --
