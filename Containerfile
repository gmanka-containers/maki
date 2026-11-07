FROM quay.io/fedora/fedora-toolbox:45

RUN --mount=type=cache,target=/var/cache \
  dnf -y install ripgrep
RUN curl -L \
  https://github.com/tontinton/maki/releases/download/v0.7.1/maki-v0.7.1-$(uname -m)-unknown-linux-musl.tar.gz | \
  tar -C /usr/bin -xzf -

ENTRYPOINT ["/usr/bin/maki"]
