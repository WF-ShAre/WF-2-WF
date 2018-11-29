# WF-2-WF
![myimage-alt-tag](https://github.com/WF-ShAre/NJ-WF/raw/master/NJ.jpg)


  WF-Title: Neighbour Joining
  version: 1.0
  Description: The workflow performs some tasks extracted from NJ workflow

###WF-Tasks:

  No-of-tasks: 9
  Tasks: {importFile: 2, filejoin: 1, filterDuplicate: 1, zipfile: 1, col-invert: 1, exportFile: 1, csvExport: 1}
  Dependency-Libs: {java1.7: all} 

###Blueprint:

  blueprint-name: WF-2.yaml
  Docker-images: dtdwd/nj 
  sizes: 563 MB (Virtual size 1.421 GB)
  OS-types: ubuntu14.4
  tools: 

###Input:

  input-file(s): {'file1', 'file2'}
  description: Two files for the two importfile tasks
  types: 

###Outputs:

  output-folder: '~/blueprint-name'
  
###Execution-Environment:

  Cloudify-version: 3.2
  Docker-version: 1.8+
  OS-type: ubuntu14.04
  Disk-space: 10 GB
  RAM: 3 GB

#Deployment Instruction
This repository includes all files and scripts to deploy Nieghbour Joining workflow on Multiple Docker containers as follow:

1- Clone the repository to your machine with --recursive option, open a terminal window and change to workflow repository.  
2- To execute the workflow with multi containers and the attached input sample, in the terminal run:   
   . ./WF-2-deploy.sh 1    
3- If you have own input files, copy your files to WF-2/Input-sample folder, open Input.yaml file and change input files name, then
   run:  
   . ./WF-2-deploy.sh 1  
   
After successfully running the workflow, five output files can be found in ~/WF-2 folder
