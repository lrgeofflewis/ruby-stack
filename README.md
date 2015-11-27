# This environment is just to test a working stack of ruby for acceptance tests

provision.sh - uses RVM to install ruby

provisonwithyum.sh - is the older code that uses yum to install ruby

once the environment is built it is set up with
'''
ruby 2.2.3
bundler
phantomJS 1.9.8
'''
to enter the VM
'''
vagrant ssh
'''
navigate to /vagrant/acceptance-tests
run command 'bundle install' which installs all the gem files

To run tests type command 'cucumber'

to get list of gems run command 'gem list'
for version of ruby run command 'ruby -v'
for rvm installs run command 'rvm list'
