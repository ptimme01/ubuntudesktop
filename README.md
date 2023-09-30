Summary
------------
1) Configure Ubuntu desktop environments
 


Configuration
--------------
1) Ubuntu 22.04.3 in the base minimum level


Instructions
------------
1) In firefox goto "https://github.com/ptimme01/ubuntudesktop"
2) Download init.sh file and chmod +x and run with a user that has sudo privs
3) OTP: BaldAdnd
4) After login with user of choice, set vs code and clone repo into Documents/scm
5) Run playbook build_ansible_control_node
6) Run playbook configure_<user> 
Improvements
----------------

# TODO openvpn connection file
# TODO add the 7zip package into the ansible repo


# test if you can get sensors to run automatically
Issues
-------
1) flatpak icons sometimes don't show up unless reboot after install
2) dropbox had a different version for ubuntu aboce 22.04 (add once you move on from 22.04)


License
-------
All rights are reserved