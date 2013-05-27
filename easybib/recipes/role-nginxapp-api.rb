# API

include_recipe "easybib::setup"
include_recipe "loggly::setup"
include_recipe "nginx-app::server"
include_recipe "php-fpm"
include_recipe "php-phar"
include_recipe "php-fpm::pear"
include_recipe "php-suhosin"
include_recipe "unfuddle-ssl-fix::install"
include_recipe "composer::configure"
include_recipe "deploy::easybib"
include_recipe "nginx-app::api"
include_recipe "silverline"