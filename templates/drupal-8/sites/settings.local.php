<?php

/**
 * @file
 * Local environment settings override.
 */

$databases['default']['default'] = array(
  'database' => 'sandbox',
  'username' => 'root',
  'password' => 'root',
  'prefix' => '',
  'host' => 'db',
  'port' => '3306',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql',
);

$settings['hash_salt'] = 'd969246731846291b32cd819bf0e7ff6';

$settings['file_public_path'] = 'sites/default/files';
$settings['file_private_path'] = 'sites/default/files/private';

$config_directories += [
  CONFIG_SYNC_DIRECTORY => sprintf('%s/config', $settings['file_public_path']),
];

$settings['trusted_host_patterns'] = [
  '\.docksal$',
];
