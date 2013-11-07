name             'infra-jumpnode'
maintainer       'AT&T Services, Inc.'
maintainer_email 'jhtran@att.com'
license          'Apache 2.0'
description      'Installs/Configures initial jump node'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

depends 'cobbler'
depends 'firewall'
