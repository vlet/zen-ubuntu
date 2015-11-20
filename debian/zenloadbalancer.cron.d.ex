#
# Regular cron jobs for the zenloadbalancer package
#
0 4	* * *	root	[ -x /usr/bin/zenloadbalancer_maintenance ] && /usr/bin/zenloadbalancer_maintenance
