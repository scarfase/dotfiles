Install required software OS Centos 7
<pre>
//Change name and email 
git config --global user.name "name"
git config --global user.email "email"
//ignore ssl
git config --global http.sslVerify false
git clone "this repo"
//install epel repo and required software
//selinux set disabled and reboot pc
make install_soft 
</pre>
After reboot 
<pre>
//set git and vim settings
make install_dotfiles
</pre>