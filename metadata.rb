name             'pam_fx'
license          'MIT'
maintainer       'FXinnovation'
maintainer_email 'cloudsquad@fxinnovation.com'
description      'Provide ressources to configure PAM'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'
chef_version     '>= 12.14' if respond_to?(:chef_version)
issues_url       'https://bitbucket.org/fxadmin/public-common-cookbook-pam_fx/issues'
source_url       'https://bitbucket.org/fxadmin/public-common-cookbook-pam_fx'
supports         'redhat',  '>= 7.0'
supports         'centos',  '>= 7.0'
supports         'ubuntu',  '>= 16.04'
supports         'debian',  '>= 8.0'
