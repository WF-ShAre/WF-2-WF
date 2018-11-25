wf=$1
#!/bin/bash

#install wget
Wget=$(which wget)
#echo "${Dock}"
if [[ -z ${Wget} ]]; then
   echo "wget installation"
   sudo apt-get install -y wget
fi

#Docker & Cloudify installation
if [[ ! -f  tools-install.sh ]]; then
  wget https://github.com/WorkflowCenter-Repositories/ToolsInstallationScripts/raw/master/tools-install.sh
  chmod u+x tools-install.sh
fi

. ./tools-install.sh

sudo service docker start

echo "deploy the workflow"

   if [[ -d ~/WF-2 ]]; then
      echo "previous workflow execution exists and will be deleted"
      rm -rf ~/WF-2
   fi
  cfy local init --install-plugins -p WF-2.yaml --input input.yaml
  cfy local execute -w install


