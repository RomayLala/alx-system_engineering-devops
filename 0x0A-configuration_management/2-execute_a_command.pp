# This Puppet manifest kills a process named 'killmenow' using the pkill command.

exec { 'kill_process_killmenow':
  command => '/usr/bin/pkill killmenow',
  path    => ['/bin', '/usr/bin'],
  onlyif  => '/usr/bin/pgrep killmenow',
}
