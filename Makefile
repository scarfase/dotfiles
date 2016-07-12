install_soft:
	yum install  epel-release
	yum install  tmux htop vim tree net-tools wget git ansible
	sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
	reboot

install_dotfiles:
	ansible-playbook dotfiles.yml -i local -vv
