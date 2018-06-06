FROM registry.fedoraproject.org:latest

RUN dnf install -y dnf-plugins-core git tmux ostree vim rsync gcc-c++ redhat-rpm-config && \
dnf builddep -y rpm-ostree ostree

CMD ["/usr/bin/tmux"]
