## k8s节点相关

### Capacity和Allocatable区别
https://zhuanlan.zhihu.com/p/38359775
Capacity: 资源真实量 比如机器8c 16g 那么就会显示8c 16g
Allocatable: 可以被容器使用的资源量, Allocatable永远小于等于Capacity

Allocatable是通过Node Allocatable Resource实现, 会给 非容器进程 预留资源
k8s daemon: kubelet, dockerd等
system daemon: sshd等

