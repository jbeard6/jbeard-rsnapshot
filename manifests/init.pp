# == Class: rsnapshot
#
# rsnapshot is a filesystem snapshot utility for making backups of local and remote systems.
#
# Using rsync and hard links, it is possible to keep multiple, full backups instantly available.
# The disk space required is just a little more than the space of one full backup, plus incrementals.
# Files can be restored by the users who own them, without the root user getting involved.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { rsnapshot:
#    ensure       => installed,
#    conf_dir     => '/etc/rsnapshot',
#    snapshot_dir => '/srv/snapshots',
#    log_dir      => '/var/log/rsnapshot',
#  }
#
# === Authors
#
# Joseph Beard <joseph@josephbeard.net>
#
# === Copyright
#
# Copyright 2014 Joseph Beard
#
class rsnapshot (
    $ensure       = installed,
    $conf_dir     = $rsnapshot::params::conf_dir,
    $log_dir      = $rsnapshot::params::log_dir,
    $snapshot_dir = $rsnapshot::params::snapshot_dir,) inherits rsnapshot::params {
    include stdlib

    anchor { 'rsnapshot::begin': }

    class { 'rsnapshot::packages': ensure => $ensure, } ->
    class { 'rsnapshot::config': ensure => $ensure, }

    anchor { 'rsnapshot::end': }

}