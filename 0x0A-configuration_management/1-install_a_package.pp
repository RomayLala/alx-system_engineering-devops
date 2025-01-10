# This Puppet manifest installs Flask version 2.1.0 and Werkzeug version 2.1.1 using pip3.

exec { 'install_flask_and_werkzeug':
  command => '/usr/bin/pip3 install flask==2.1.0 werkzeug==2.1.1',
  path    => ['/bin', '/usr/bin'],
  unless  => '/usr/bin/python3 -m pip show flask | grep -q "Version: 2.1.0" && /usr/bin/python3 -m pip show werkzeug | grep -q "Version: 2.1.1"',
}
