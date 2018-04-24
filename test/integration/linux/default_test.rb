# # encoding: utf-8

# Inspec test for recipe public-common-cookbook-pam_fx::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

control "pam_fx - #{os.name} #{os.release} - 01" do
  title 'Ensure PAM file are correct'
  describe file('/etc/pam.d/pam-test') do
    it { should exist }
    its('group')   { should eq 'root' }
    its('owner')   { should eq 'root' }
    its('type')    { should eq :file }
    its('mode')    { should cmp '0644' }
    its('content') { should match(/^auth[[:space:]]*subtask[[:space:]]*password-auth[[:space:]]*$/) }
    its('content') { should match(/^session[[:space:]]*required[[:space:]]*pam_selinux.so[[:space:]]*open env_params$/) }
  end
end
