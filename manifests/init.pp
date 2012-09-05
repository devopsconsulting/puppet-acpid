# make sure the acpid package installed and that the service is started
class acpid {
    package { "acpid":
        ensure => latest,
        notify => Service["acpid"]
    }

    service { "acpid":
        ensure => running,
        enable => true, 
        hasrestart => true,
        require => Package["acpid"]
    }
}
