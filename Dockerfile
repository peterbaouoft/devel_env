FROM registry.fedoraproject.org/fedora:latest

RUN dnf install -y dnf-plugins-core git tmux ostree vim rsync gcc-c++ redhat-rpm-config && \
dnf builddep -y rpm-ostree ostree

RUN git clone https://github.com/projectatomic/rpm-ostree.git
&& git clone https://github.com/ostreedev/ostree.git

CMD ["/usr/bin/tmux"]
