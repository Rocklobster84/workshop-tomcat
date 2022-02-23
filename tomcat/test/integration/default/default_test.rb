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

# Test creation of required directories
describe directory('/opt/tomcat') do
  it { should exist }
end