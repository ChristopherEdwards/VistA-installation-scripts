#!/usr/bin/env bash

# do this first
/vagrant/Scripts/bootstrapREHLserver.sh
/vagrant/Scripts/installREHLPackages.sh
/vagrant/Scripts/setupREHLTimeZone.sh

# Setup vagrant dir in
su osehra -c 'ln -s /vagrant /home/osehra/VistA-installation-scripts'

# if using GTM
/vagrant/Scripts/installGTM.sh
su osehra -c /vagrant/Scripts/GTM/installVistAinUserAccountForGTM.sh
su osehra -c /vagrant/Scripts/GTM/installBashConfigurationForGTM.sh

# Finish it up
su osehra -c /vagrant/Scripts/installCMakeinUserAccount.sh
su osehra -c /vagrant/Scripts/installVistAFOIARepository.sh
su osehra -c /vagrant/Scripts/installOSEHRATesting.sh
su osehra -c /vagrant/Scripts/installBashConfiguration.sh

# Get a newer python
/vagrant/Scripts/installPython273.sh

# Run the dashboard
#su osehra -c /vagrant/Scripts/runDashboardBuildWithoutMUnit.sh
