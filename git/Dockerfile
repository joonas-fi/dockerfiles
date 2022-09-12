FROM alpine:latest

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/git"]

# openssh-keygen needed to verify Git (SSH) signatures
#
# safe.directory because Git complains if Git UID is different than repo UID. if we blindly run container
# as same UID than repo UID then some code (ssh-keygen?) complains that the container doesn't have that
# user defined. so we'd have to beforehand have knowledge of all UIDs this container will be run as.. 🤦
RUN apk add --no-cache git openssh-keygen \
	&& mkdir /etc/git \
	&& git config --system gpg.ssh.allowedSignersFile /etc/git/allowed_signers \
	&& git config --system --add safe.directory /workspace
