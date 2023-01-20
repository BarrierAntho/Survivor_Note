# Docker

## Content
- [Historic :clock7:](#historic-clock7)
- [General](#general)
- [Comparison Containers vs VirtualMachine](#comparison-containers-vs-virtualmachine)
- [Sources :link:](#sources-link)

## Historic :clock7:
[Go to content](#content)
|Date _YYYY-MM-DD_|Description|
|:-|:-|
|2023-01-20|Init|

## General
[Go to content](#content)

Docker container image is a lightweight, standalone, executable package of software that includes everything needed to run an application: code, runtime, system tools, system libraries and settings.<br>
Container images become containers at runtime and in the case of Docker containers – images become containers when they run on Docker Engine. Available for both Linux and Windows-based applications, containerized software will always run the same, regardless of the infrastructure. Containers isolate software from its environment and ensure that it works uniformly despite differences for instance between development and staging.<br>
Docker containers that run on Docker Engine:
- ***Standard***: Docker created the industry standard for containers, so they could be portable anywhere.
- ***Lightweight***: Containers share the machine’s OS system kernel and therefore do not require an OS per application, driving higher server efficiencies and reducing server and licensing costs.
- ***Secure***: Applications are safer in containers and Docker provides the strongest default isolation capabilities in the industry.

<img src="resources/images/Docker_General.png" title="Docker - General Concept" width="400" height="400" />

It leveraged existing computing concepts around containers and specifically in the Linux world, primitives known as cgroups and namespaces. Docker’s technology is unique because it focuses on the requirements of developers and systems operators to separate application dependencies from infrastructure.<br>

> cgroups (abbreviated from control groups) is a Linux kernel feature that limits, accounts for, and isolates the resource usage (CPU, memory, disk I/O, network, etc.) of a collection of processes.
> Namespaces are a feature of the Linux kernel that partitions kernel resources such that one set of processes sees one set of resources while another set of processes sees a different set of resources. The feature works by having the same namespace for a set of resources and processes, but those namespaces refer to distinct resources. Resources may exist in multiple spaces. Examples of such resources are process IDs, host-names, user IDs, file names, and some names associated with network access, and Inter-process communication.<br>

## Comparison Containers vs VirtualMachine
[Go to content](#content)

Containers and virtual machines have similar resource isolation and allocation benefits, but function differently because containers virtualize the operating system instead of hardware. Containers are more portable and efficient.<br>

### Containers
Containers are an abstraction at the app layer that packages code and dependencies together. Multiple containers can run on the same machine and share the OS kernel with other containers, each running as isolated processes in user space. Containers take up less space than VMs (container images are typically tens of MBs in size), can handle more applications and require fewer VMs and Operating systems.<br>

<img src="resources/images/Docker_Comparison_Containers-VM_001.png" title="Docker - Comparison Containers vs VM 001" width="400" height="400" />

### VirtualMachine
Virtual machines (VMs) are an abstraction of physical hardware turning one server into many servers. The hypervisor allows multiple VMs to run on a single machine. Each VM includes a full copy of an operating system, the application, necessary binaries and libraries – taking up tens of GBs. VMs can also be slow to boot.<br>

<img src="resources/images/Docker_Comparison_Containers-VM_002.png" title="Docker - Comparison Containers vs VM 002" width="400" height="400" />

## Installation On Debian
[Go to content](#content)

### Uninstall Docker Engine
Older versions of Docker went by the names of docker, docker.io, or docker-engine. Uninstall any such older versions before attempting to install a new version.
```
sudo apt-get remove docker docker-engine docker.io containerd runc
```

Uninstall the Docker Engine, CLI, containerd, and Docker Compose packages.
```
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-ce-rootless-extras
```
Images, containers, volumes, or custom configuration files on your host aren’t automatically removed. To delete all images, containers, and volumes.
```
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
```
Update the apt package index
```
sudo apt-get update
```
To install the latest version, run
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```
Verify that the Docker Engine installation is successful by running the hello-world image
```
sudo docker run hello-world
```

## Cheat Section
Create and start a container
```
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
```
***Options :wrench:***
|Name/Shorthand|Description|
|-|-|
|--detach, -d|Run container in background and print container ID|
|--name|Assign a name to the container|
|--publish , -p|Publish a container's port(s) to the host|
|--volume , -v|Bind mount a volume|

Create an inactive container
```
docker create [OPTIONS] IMAGE [COMMAND] [ARG...]
```

Stop the container
```
docker stop [OPTIONS] CONTAINER [CONTAINER...]
```

Kill the container
```
docker kill [OPTIONS] CONTAINER [CONTAINER...]
```

List all containers
```
docker ps [OPTIONS]
```
***Options :wrench:***
|Name/Shorthand|Description|
|-|-|
|--all, -a|Show all containers (default shows just running)|

Destroy a container
```
docker rm [OPTIONS] CONTAINER [CONTAINER...]
```
> :pushpin: Container must be stopped before to be destroyed

Connect to an active container
```
docker exec [OPTIONS] CONTAINER COMMAND [ARG...]
```
***Options :wrench:***
|Name/Shorthand|Description|
|-|-|
|--tty, -t|Allocate a pseudo-TTY|
|--interactive, -i|Keep STDIN open even if not attached|

Create a volume
```
docker run [OPTIONS] -v <Container's directory> IMAGE 
```

Bind-mounting volume
```
docker run [OPTIONS] -v <Host directory>/<Container's directory> IMAGE 
```

Inspect an active container
```
docker inspect [OPTIONS] NAME|ID [NAME|ID...]
```

List all images
```
docker images [OPTIONS] [REPOSITORY[:TAG]]
```
|Name/Shorthand|Description|
|-|-|
|--all, -a|Show all containers (default shows just running)|

Destroy images
```
docker rmi [OPTIONS] IMAGE [IMAGE...]
```

## Lexic
|Name|Description|
|-|-|
|CaaS|Container as a Service|
|IaaS|Infrastructure as a Service|
|UUID|Universally unique identifier|

## Sources :link:
[Go to content](#content)

### Docker
- https://www.docker.com/resources/what-container/
- https://docs.docker.com/engine/install/debian/
- https://docs.docker.com/engine/reference/commandline/create/
- https://docs.docker.com/engine/reference/commandline/exec/
- https://docs.docker.com/engine/reference/commandline/images/
- https://docs.docker.com/engine/reference/commandline/inspect/
- https://docs.docker.com/engine/reference/commandline/kill/
- https://docs.docker.com/engine/reference/commandline/ps/
- https://docs.docker.com/engine/reference/commandline/rm/
- https://docs.docker.com/engine/reference/commandline/rmi/
- https://docs.docker.com/engine/reference/commandline/run/
- https://docs.docker.com/engine/reference/commandline/stop/

### Miscellaneous
- https://en.wikipedia.org/wiki/Cgroups
- https://en.wikipedia.org/wiki/Linux\_namespaces
- https://en.wikipedia.org/wiki/Daemon\_\(computing\)
- https://fr.wikipedia.org/wiki/Universally\_unique\_identifier
