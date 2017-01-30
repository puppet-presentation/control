node 'puppetmaster.jvv.local'{
class{'r10k':
  remote => "git@github.com:puppet-presentation/control.git",
}}

node 'webserver01'{
  include role::webserver
}
node 'webserver02'{
  include role::webserver
}
node 'webserver04'{
  include role::webserver
  }
node 'webserver03'{
  include role::webserver
  notify{'Test succesful?':}
}
node default{
notify{"Sorry, no role found for host:${::trusted['hostname']} in environment ${::environment}":}
}
