FROM rightsoln/centos-buildpack-deps:latest

MAINTAINER RightSolution "admin@rightsoln.com"

ENV RUBY_VERSION 2.2.2
ENV RBENV_GITHUB_URL git://github.com/sstephenson/rbenv.git
ENV RUBY_BUILD_GITHUB_URL git://github.com/sstephenson/ruby-build.git
ENV RBENV_DIR /opt/rbenv
ENV RBENV_SH_DIR /etc/profile.d/rbenv.sh

RUN git clone "$RBENV_GITHUB_URL" "$RBENV_DIR"
RUN mkdir -p "$RBENV_DIR/plugins"; chmod 755 "$RBENV_DIR/plugins"
RUN git clone "$RUBY_BUILD_GITHUB_URL" "$RBENV_DIR/plugins/ruby-build"
ADD rbenv.sh "$RBENV_SH_DIR"
RUN chmod 755 "$RBENV_SH_DIR"
RUN ".$RBENV_DIR/plugins/ruby-build/install.sh"
RUN sh "$RBENV_DIR/plugins/ruby-build/install.sh"
RUN source "$RBENV_SH_DIR"; "$RBENV_DIR/bin/rbenv" install "$RUBY_VERSION"
RUN source "$RBENV_SH_DIR"; "$RBENV_DIR/bin/rbenv" rehash
RUN source "$RBENV_SH_DIR"; "$RBENV_DIR/bin/rbenv" global "$RUBY_VERSION"
RUN source "$RBENV_SH_DIR"; gem install bundler