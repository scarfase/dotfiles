Install required software, configure vim and install plugins for vim, configure bash promt with git - OS Centos 7

Install soft
Clone this repo and make
<pre>make install_soft </pre>

This install epel repo and required software, selinux set disabled and reboot pc.

After reboot 

<pre>make install_vim</pre>
This configure vim with plugins for vim, configure bash promt with git. And autoinstall vim plugins.

If need motd, make this
<pre>make install_motd</pre>
