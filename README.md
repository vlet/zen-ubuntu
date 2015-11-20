# Zenloadbalancer 3.7 for Ubuntu 14.04

[Zen Load Balancer](http://www.zenloadbalancer.com/) is an Open
Source Load Balancer Project that provides a full set of tools to run and
manage a complete load balancer solution which includes: farm and server
definition, networking, clustering, monitoring, secure certificates management,
logs, configuration backups, uplink load balancing support, and much more.

Community edition is
[availiable](http://sourceforge.net/projects/zenloadbalancer/files/Distro/) as
a iso with preinstalled Debian 6 x86_32, that is not suitable for installation
as separate package for any other debian-based distros and platforms.

This github repo is a hack around original zenloadbalancer-3.7 debian package
with this changes:

* Removed all bundled binary components: pound, mini-httpd, pen, ucarp, and etc
 (they are required as dependencies of package)

* Installation adapted for Ubuntu 14.04 (x86\_64)

## Build binary and source packages

    $ git clone https://github.com/vlet/zen-ubuntu zenloadbalancer-3.7

    $ tar cf --exclude='*/debian*' zenloadbalancer_3.7.orig.tar zenloadbalancer-3.7

    $ gzip zenloadbalancer_3.7.orig.tar

    $ cd zenloadbalancer-3.7

    $ dpkg-buildpackage

Package will be available in the top dir: `zenloadbalancer_3.7-1ubuntu11_all.deb`

## Installation

Before instaling zenloadbalancer you will need to build those perl packages
(not available in official ubuntu repos):

* libdata-validate-ip-perl
* libfile-grep-perl
* libgd-3dbargrapher-perl
* liblinux-inotify2-perl
* libnet-ssh-expect-perl

But this is not a problem to build it yourself, for example:


    $ dh-make-perl make --build --cpan file-grep
    ...
    dpkg-deb: building package `libfile-grep-perl' in `../libfile-grep-perl_0.02-1_all.deb'.
    ...

    $ sudo dpkg -i libfile-grep-perl_0.02-1_all.deb

After installing all required modules, install zenloadbalancer package:

    $ sudo dpkg -i zenloadbalancer_3.7-1ubuntu11_all.deb

## Disclaimer

zenloadbalancer removes all configuration from `/etc/network/interfaces` and
start managing instarfaces by itself. So you are required to have a direct
concole access to server (via kvm or ilo) if something going wrong.

DON'T install it on production server or your workstation , test package on a
separate (virtual) instance.

It's real horrible inside ;-)
