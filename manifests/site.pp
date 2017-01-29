node 'puppetmaster.jvv.local'{
class{'r10k':
  remote => "git@github.com:puppet-presentation/control.git",
}}

node 'webserver01'{
  include roles::webserver
}
node default{
notify{"Sorry, no role found for host:${::trusted['hostname']} in environment ${::environment}":}
}
