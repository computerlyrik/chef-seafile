name             'seafile'
maintainer       'Christian Fischer, computerlyrik'
maintainer_email 'chef-cookbooks@computerlyrik.de'
license          'Apache 2.0'
description      'Installs/Configures seafile'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'ark'
depends 'apt'

depends 'sqlite'
depends 'mysql'

supports 'ubuntu'
