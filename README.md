# The docker image of EdPDB
We recommend all the users run EdPDB in a container, as it requires a bundle of libraries which are not available in recent updates of most Linux distributions.

## How to use this image
Make sure an EdPDB working directory is accessible for volume binding. Replace the \<username\> with your username, or specify an available path.
```
# mkdir /home/<username>/edpdb_wd
```
Create a docker container over this EdPDB docker image. Set ```-v``` flag to bind the working directory on your host, where input and output files are stored.
```
# docker pull gaoyw/edpdb:v13a
# docker run -it -v /home/<username>/edpdb_wd:/edpdb_wd gaoyw/edpdb:v13a
```
You can list your containers by ```docker ps -a``` and get your container id.
```
# docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED
e4b2479be15f        gaoyw/edpdb:v13a    "sh ./entrypoint.sh"     2 days ago
```
Once EdPDB container is created, it can be started using
```
# docker start -i e4b2479be15f
```
```CONTAINER ID``` is a unique string that is automatically generated by each ```docker run``` command on your computer. Please replace and specify your ```CONTAINER ID``` when starting the EdPDB container.
```
EDPDB environment ready.
edpdb_wd $edpdb
 %EdPDB-F- file open failure

 %EdPDB-I- version: v13a
 %EdPDB-I- usage:   edpdb pdb_file 
           [-c chainnames] [2nd_pdb_file [-c chainnames]]  [-i edp_file]
```
## Running this image using ```podman```
Running containers in docker require root privileges. For RHEL and CentOS users, we recommend you run this docker image using podman.
```
$ podman pull docker.io/gaoyw/edpdb:v13a
$ podman run -it -v /home/<username>/edpdb_wd:/edpdb_wd docker.io/gaoyw/edpdb:v13a
```
Containers can also be monitored and started using ```podman ps -a``` and ```podman start```. Please replace and specify your ```CONTAINER ID``` when starting the EdPDB container.
```
$ podman ps -a
CONTAINER ID  IMAGE                       COMMAND  CREATED
7fa1dad7c167  docker.io/gaoyw/edpdb:v13a           14 hours ago

$ podman start -a 7fa1dad7c167
```
## EdPDB Documentation
The documentation of EdPDB can be found in [this page](http://175.24.30.189:8080/edpdb/).

## Reporting bugs
For any bugs or issues please contact:
- [X. Cai Zhang](http://english.ibp.cas.cn/faculty/index_18316.html?json=http://www.ibp.cas.cn/sourcedb_ibp_cas/cn/ibpexport/EN_xsszmZ/202005/t20200519_5582960.json), Ph.D.: zhangc@ibp.ac.cn
- Yiwei Gao (Ph.D. Student): gaoyw@ibp.ac.cn

Creating issues in this repository are also welcome.
  
## Authors
EdPDB was originally developed by X. Cai Zhang and Brian W. Matthews.

This docker image is maintained by Yiwei Gao.

## Reference
Zhang, X-J., and Brian W. Matthews. "EDPDB: a multifunctional tool for protein structure analysis." Journal of applied crystallography 28.5 (1995): 624-630.
