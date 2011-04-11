maintainer        "Till Klampaeckel"
maintainer_email  "till@php.net"
license           "PHP License"
description       "Munin setup and configuration"
version           "0.1"
recipe            "munin::server", "Install munin"
recipe            "munin::configure", "Configure nodes, etc."
recipe            "munin::apache2", "Apache2 related configuration setup to display munin stats"
supports 'ubuntu'
