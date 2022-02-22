# Chef InSpec test for recipe tomcat::default

# The Chef InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

# Test installation of Java
describe package('java-1.7.0-openjdk-devel') do 
  it { should be_installed}
end