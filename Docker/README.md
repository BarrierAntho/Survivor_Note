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

> cgroups (abbreviated from control groups) is a Linux kernel feature that limits, accounts for, and isolates the resource usage (CPU, memory, disk I/O, network, etc.) of a collection of processes.<br>

## Comparison Containers vs VirtualMachine
[Go to content](#content)

Containers and virtual machines have similar resource isolation and allocation benefits, but function differently because containers virtualize the operating system instead of hardware. Containers are more portable and efficient.<br>

### Containers
[Go to content](#content)

Containers are an abstraction at the app layer that packages code and dependencies together. Multiple containers can run on the same machine and share the OS kernel with other containers, each running as isolated processes in user space. Containers take up less space than VMs (container images are typically tens of MBs in size), can handle more applications and require fewer VMs and Operating systems.<br>

<img src="resources/images/Docker_Comparison_Containers-VM_001.png" title="Docker - Comparison Containers vs VM 001" width="400" height="400" />

### VirtualMachine
[Go to content](#content)

Virtual machines (VMs) are an abstraction of physical hardware turning one server into many servers. The hypervisor allows multiple VMs to run on a single machine. Each VM includes a full copy of an operating system, the application, necessary binaries and libraries – taking up tens of GBs. VMs can also be slow to boot.<br>

<img src="resources/images/Docker_Comparison_Containers-VM_002.png" title="Docker - Comparison Containers vs VM 002" width="400" height="400" />

## Installation On Debian
[Go to content](#content)


## Commands


## Sources :link:
[Go to content](#content)

### Docker
- https://www.docker.com/resources/what-container/

### Miscellaneous
- https://en.wikipedia.org/wiki/Cgroups

