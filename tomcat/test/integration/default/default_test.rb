# Chef InSpec test for recipe tomcat::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

# Test installation of Java
describe package('java-1.7.0-openjdk-devel') do 
  it { should be_installed}
end

# Test creation of tomcat group
describe group('tomcat') do
  it { should exist }
end

# Test setup of tomcat user
describe user('tomcat') do
  it { should exist }
end

# Test creation of required directories and ownership update
describe directory('/opt/tomcat') do
  it { should exist }
  its ('group') { should eq 'tomcat' }
end

# Test permission level of /opt/tomcat/conf
describe directory('/opt/tomcat/conf') do
  its ('mode') { should eq 0750 }
end