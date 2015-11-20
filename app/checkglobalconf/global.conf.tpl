#!!!!!!NO REMOVE COMMENTS LINES!!!!!!
#!!!!!!comments lines have a special patron that web application have to process 

#::INI Global information
#Document Root for Web Aplication  directory
$basedir="/usr/local/zenloadbalancer/www";
#configuration directory.In this section all config files are saved.
$configdir="/usr/local/zenloadbalancer/config";
#Log directory
$logdir="/usr/local/zenloadbalancer/logs/";
#log filename for this Graphic user interface.Some action with this GUI will be saved here.
$logfile="/usr/local/zenloadbalancer/logs/zenloadbalancer.log";
#.<b>Time out execution ZEN GUI CGIs.</b> <font size=1>When timeout is exceded the cgi execution is killed automatically.</font>
$timeouterrors="60";
#File configuration Zen Cluster
$filecluster="/usr/local/zenloadbalancer/config/cluster.conf";
#File configuration GUI
$confhttp="/usr/local/zenloadbalancer/app/mini_httpd/mini_httpd.conf";
#.<b>ntp server</b>
$ntp="pool.ntp.org";
#Do backup to
$backupfor="$configdir $confhttp /etc/iproute2/rt_tables";
#Save backups on
$backupdir="/usr/local/zenloadbalancer/backups/";
#rt tables file
$rttables = "/etc/iproute2/rt_tables";
#this file
$globalcfg = "/usr/local/zenloadbalancer/config/global.conf";
#version ZEN
$version="3.7";#update
#Cipher PCI
$cipher_pci="DEFAULT";#update
#BUY SSL Certificates
$buy_ssl="http://ecommerce.sofintel.net/ssl/ssl-certificate.aspx?ci=8347&prog_id=503889";
#URL of dinamic content in global view
$url="https://www.sofintel.net/json/eeinfo.php";

#dns file server?
$filedns="/etc/resolv.conf";
#apt file
$fileapt="/etc/apt/sources.list";
#Where is tar binary?
$tar="/bin/tar";
#where is ifconfig binary?
$ifconfig_bin="/sbin/ifconfig";
#Where is ip bynary?
$ip_bin="/sbin/ip";
#Where is pen (tcp) load balancer?
$pen_bin="/usr/local/zenloadbalancer/app/pen/bin/pen";
#Where is pen control load balancer?
$pen_ctl="/usr/local/zenloadbalancer/app/pen/bin/penctl";
#Where is fdisk binary?
$fdisk_bin="/sbin/fdisk";
#Where is df binary?
$df_bin="/bin/df";
#Where is ssh-keygen binary?
$sshkeygen="/usr/bin/ssh-keygen";
#Where is ssh client?
$ssh="/usr/bin/ssh";
#Where is scp binary?
$scp="/usr/bin/scp";
#Where is rsync binary?
$rsync="/usr/bin/rsync";
#Where is ucarp binary?
$ucarp="/usr/local/zenloadbalancer/app/ucarp/sbin/ucarp";
#Where is pidof binary?
$pidof="/bin/pidof";
#Where is ps binary?
$ps="/bin/ps";
#Where is tail binary?
$tail="/usr/bin/tail";
#Where is zcat binary?
$zcat="/bin/zcat";
#Where is ntpserver?
$datentp="/usr/sbin/ntpdate";
#Where is arping?
$arping_bin="/usr/bin/arping";
#Where is ping?
$ping_bin="/bin/ping";
#Where is openssl?
$openssl="/usr/bin/openssl";
#Where is unzip?
$unzip="/usr/bin/unzip";
#Where is mv?
$mv="/bin/mv";
#Where is ls?
$ls="/bin/ls";
#Where is cp?
$cp="/bin/cp";
#Where is iptables?
$iptables="/sbin/iptables";
#Where is modprobe?
$modprobe="/sbin/modprobe";
#Where is lsmod?
$lsmod="/sbin/lsmod";
#Where is netstat-nat?
$netstatNat="/usr/bin/netstat-nat";
#Where is gdnsd?
$gdnsd="/usr/local/zenloadbalancer/app/gdnsd/sbin/gdnsd";
#Where is l4sd?
$l4sd="/usr/local/zenloadbalancer/app/l4s/bin/l4sd";
#Where is conntrack?
$conntrack="/usr/sbin/conntrack";
#Where is insserv?
$insserv="/sbin/insserv";

#where is pound binary?
$pound="/usr/local/zenloadbalancer/app/pound/sbin/pound";
#where is pound ctl?
$poundctl="/usr/local/zenloadbalancer/app/pound/sbin/poundctl";
#pound file configuration template?
$poundtpl="/usr/local/zenloadbalancer/app/pound/etc/poundtpl.cfg";
#piddir
$piddir="/var/run/";

## Network global configuration options ##
$rttables = "/etc/iproute2/rt_tables";
$fwmarksconf = "$configdir/fwmarks.conf";
#System Default Gateway
$defaultgw="";
#Interface Default Gateway
$defaultgwif="";
#Number of gratuitous pings
$pingc="1";

#Directory where is check script. In this directory you can save your own check scripts. 
$libexec_dir="/usr/local/zenloadbalancer/app/libexec";
#FarmGuardian binary, create advanced check for backend servers
$farmguardian="/usr/local/zenloadbalancer/app/farmguardian/bin/farmguardian";
#Directory where FarmGuardian save the configuration files
$farmguardian_dir="/usr/local/zenloadbalancer/app/farmguardian/etc";
#Directory where FarmGuadian save the logs
$farmguardian_logs="/usr/local/zenloadbalancer/logs";

#Where is ZenRRD Directory?. There is a perl script that create rrd database and images from Monitoring section
$rrdap_dir="/usr/local/zenloadbalancer/app/zenrrd/";
#Relative path in Web Root directory ($basedir) where is graphs from ZenRRD *no modify
$img_dir="/img/graphs/";
#Relative path where is rrd databases from ZenRRD * no modify
$rrd_dir="rrd/";
#File log name  for ZenRRD. A lot of disk space is needed. If it is blank no loggin
$log_rrd="";

#Service for configure Zen directory replication
$zenino="/usr/local/zenloadbalancer/app/zeninotify/zeninotify.pl"; 
#Zen Inotify pid file 
$zeninopid="/var/run/zeninotify.pid";
#Zen inotify log file
$zeninolog="/usr/local/zenloadbalancer/logs/zeninotify.log";
#.<b>Rsync replication parameters</b>
$zenrsync="-auzv --delete";

#Services for configure start latency service
$zenlatup="/usr/local/zenloadbalancer/app/zenlatency/zenlatency-start.pl";
#Services for configure stop latency service
$zenlatdown="/usr/local/zenloadbalancer/app/zenlatency/zenlatency-stop.pl";
#Zen latency log file
$zenlatlog="/usr/local/zenloadbalancer/logs/zenlatency.log";

#Zen backup
$zenbackup="/usr/local/zenloadbalancer/app/zenbackup/zenbackup.pl";

#SNMP service
$snmpdconfig_file="/etc/snmp/snmpd.conf";
#::END Global Section

#!!!!NOT REMOVE NEXT LINE!!!!!!
1
