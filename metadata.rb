name 'STAR'
maintainer 'Eagle Genomics Ltd'
maintainer_email 'chef@eaglegenomics.com'
license 'Apache-2.0'
description 'Installs/Configures STAR'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version '>= 14.10'
supports 'ubuntu', '= 18.04'
source_url 'https://github.com/EagleGenomics-cookbooks/STAR'
issues_url 'https://github.com/EagleGenomics-cookbooks/STAR/issues'
version '0.0.2'

depends 'magic_shell', '= 1.0.1'
depends 'tar'
