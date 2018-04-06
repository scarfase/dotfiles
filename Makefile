install_soft:
	yum install -y epel-release
	yum install -y tmux htop vim tree net-tools wget git ansible ntpdate lshw iftop
	systemctl enable ntpdate
	sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
	ansible-playbook dotfiles.yml -i local -vv
	reboot

install_motd:
	ansible-playbook motd.yml -i local -vv

