class rsnapshot::packages (
    $ensure,
    $package_name = $rsnapshot::params::package_name,
) inherits rsnapshot::params {

    package { $package_name:
        ensure => $ensure,
    }

}
