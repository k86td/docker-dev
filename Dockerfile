FROM alpine:3

# install basic utilities
RUN apk update \
  && apk add bash git curl httpie python3 wget tar neovim make build-base go

# install LazyVim configuration, eventually could be a personnal Git repo
RUN git clone https://github.com/LazyVim/starter ~/.config/nvim

CMD sleep infinity
