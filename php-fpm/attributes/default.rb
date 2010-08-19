default["php-fpm"] = {}
default["php-fpm"][:version] = '5.3.3'
default["php-fpm"][:checksum] = "5adf1a537895c2ec933fddd48e78d8a2"
default["php-fpm"][:logfile] = "/var/log/php/error.log"
default["php-fpm"][:slowlog] = "/var/log/php/slow.log"
default["php-fpm"][:fpmlog] = "/var/log/php/fpm.log"
default["php-fpm"][:displayerrors] = false
default["php-fpm"][:logerrors] = true
default["php-fpm"][:maxexecutiontime] = 60
default["php-fpm"][:memorylimit] = "512M"
default["php-fpm"][:user] = "www-data"
default["php-fpm"][:group] = "www-data"
default["php-fpm"][:tmpdir] = "/tmp/php"