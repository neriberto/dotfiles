alias install_dep='apt install jython -y && pip3 install pwn'

alias checksec='checksec --file=$@'

alias folder='mount -t fuse.vmhgfs-fuse .host:/ /mnt/hgfs/'
alias winserver='cd /usr/share/windows-resources && python -m SimpleHTTPServer 8000'

alias pwn_on='echo 0 | sudo tee /proc/sys/kernel/randomize_va_space'
alias pwn_off='echo 2 | sudo tee /proc/sys/kernel/randomize_va_space'

alias metasploit='sudo msfdb init & msfconsole'

alias htb_on='openvpn --config /root/htb/brlaw.ovpn --syslog &'
alias htb_off='pkill openvpn'

alias scan='ports=$(nmap -p- --min-rate=1000 -T4 "$@" | grep ^[0-9] | cut -d '/' -f 1 | tr '\n' ',' | sed s/,$//) && nmap -sC -sV -p$ports "$@"'
alias htb_scan_quick='nmap -v -Pn -n -T5 -oX quick.xml "$@" && xsltproc quick.xml -o quick_report.html'
alias htb_scan_full='nmap -sV -sC -n -Pn -T5 -oX full.xml "$@" && xsltproc full.html -o full_report.html'

alias fullupgrade='apt update && apt full-upgrade --autoremove -y && apt autoclean'

alias burp='/opt/burp/burp.sh &'
