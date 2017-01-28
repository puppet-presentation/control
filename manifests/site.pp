node 'puppetmaster.jvv.local'{
class{'r10k':
  remote => "git@github.com:puppet-presentation/control.git",
}}
