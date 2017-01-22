install_soft:
	yum install -y epel-release
	yum install -y tmux htop vim tree net-tools wget git ansible
	sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
	reboot

install_dotfiles:
	ansible-playbook dotfiles.yml -i local -vv

install_motd:
	ansible-playbook motd.yml -i local -vv

