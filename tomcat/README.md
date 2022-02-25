# tomcat

This Cookbook was created using the Chef Generate command and configured to run on a Centos 7 VirtualBox/Vagrant VM. 

The default.rb recipe is used to run the individual recipes. These recipes are:
  
  1. install_java.rb - Installs OpenJDK 7 JDK using yum package resource.

  2. create_tomcat_user.rb - Creates the tomcat user, puts it in the tomcat group, specifies user home directory and shell

  3. get_binary.rb - Gets the tarball from apache, extracts it to /opt/apache, creates a sym link from default extraction location to desired location of /opt/tomcat. Updates owner permission to 'tomcat' recursively on all files in /opt/tomcat, updates persmissions on /opt/tomcat/conf to allow for read and execute.

  4. create_unit_file.rb - Creates the systemd unit file from the provided tomcat.service file. Sets permissions and ownership and loads the file.

  Tests have been written to verify the processes outlined above and can be found at the default location /test/integration/default/default_test.rb and can be verified with 'kitchen verify'.

  5. start_svc.rb - Starts the tomcat service and instructs it to start back up on system reboot. 

