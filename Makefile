install_soft:
	yum install -y epel-release
	yum install -y tmux htop vim tree net-tools wget git ansible ntpdate lshw iftop bash-completion smartmontools pv
	systemctl enable ntpdate
	sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
	reboot

install_vim:
	ansible-playbook dotfiles.yml -i local -vv

install_motd:
	ansible-playbook motd.yml -i local -vv

install_docker_bash:
	cat > /etc/bash_completion.d/kubectl << __EOF__
	source <(kubectl completion bash)
	__EOF__
