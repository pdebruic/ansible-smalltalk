ansible-smalltalk
=================

ansible scripts to install Smalltalk servers - works with Squeak, Pharo, Gemstone.  

## To use
1. Install ansible on whichever machine you clone this repo to
2. Set an encypted password for the deploy user in vars/main.yml.  There is a shell script in the top most directory that will create one for you
3. Upload your public ssh key using the scripts in the top directory. In that script you need to set the ip and fqdn for the server
4. Copy the public ssh key for the 'deploy' user into the roles/initial-setup/files/ directory.
5. Create an ansible_hosts file that defines a [squeak], [pharo], or [gemstone] group.

### Caveats

1. Only tested on Ubuntu 12.04.  
2. Uses nginx infront of the Smalltalk images as a proxy and static file server
3. The defaults load Seaside 3.0.8
4. I haven't tried installing all of them on one server but I reckon that you'd only have to change the ports the servers run on and install them sequentially

