#
# cookbook::pam_fx
# resource::pam_fx
#
# author::fxinnovation
# description::Add PAM configuration
#

# Defining resource name
resource_name :pam_fx

# Declaring provider
provides :pam_fx, os: 'linux'

# Defining properties
property :lines, Array, required: true

default_action :create

action :create do
  template "/etc/pam.d/#{new_resource.name}" do
    source 'etc/pam.d/pam-file.erb'
    mode   '0644'
    owner  'root'
    group  'root'
    variables(
      lines: new_resource.lines
    )
  end
end
