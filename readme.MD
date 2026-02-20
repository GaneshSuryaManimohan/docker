## 📌 1️⃣ Docker Version & Info

* **`docker --version`** : Docker version 29.2.1, build a5c7197

* **`docker version`** :
```ini
Client: Docker Engine - Community
 Version:           29.2.1
 API version:       1.53
 Go version:        go1.25.6
 Git commit:        a5c7197
 Built:             Mon Feb  2 17:20:37 2026
 OS/Arch:           linux/amd64
 Context:           default

Server: Docker Engine - Community
 Engine:
  Version:          29.2.1
  API version:      1.53 (minimum version 1.44)
  Go version:       go1.25.6
  Git commit:       6bc6209
  Built:            Mon Feb  2 17:16:49 2026
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          v2.2.1
  GitCommit:        dea7da592f5d1d2b7755e3a161be07f43fad8f75
 runc:
  Version:          1.3.4
  GitCommit:        v1.3.4-0-gd6d73eb8
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
```
* **`docker info`** :
```ini
Client: Docker Engine - Community
 Version:    29.2.1
 Context:    default
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.31.1
    Path:     /usr/libexec/docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v5.0.2
    Path:     /usr/libexec/docker/cli-plugins/docker-compose

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 1
 Server Version: 29.2.1
 Storage Driver: overlayfs
  driver-type: io.containerd.snapshotter.v1
 Logging Driver: json-file
 Cgroup Driver: systemd
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local splunk syslog
 CDI spec directories:
  /etc/cdi
  /var/run/cdi
 Swarm: inactive
 Runtimes: io.containerd.runc.v2 runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: dea7da592f5d1d2b7755e3a161be07f43fad8f75
 runc version: v1.3.4-0-gd6d73eb8
 init version: de40ad0
 Security Options:
  seccomp
   Profile: builtin
  cgroupns
 Kernel Version: 5.14.0-611.20.1.el9_7.x86_64
 Operating System: Red Hat Enterprise Linux 9.7 (Plow)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 717MiB
 Name: ip-172-31-29-47.ec2.internal
 ID: c2685a76-6884-4aa6-a7ab-308e02176bb8
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Experimental: false
 Insecure Registries:
  ::1/128
  127.0.0.0/8
 Live Restore Enabled: false
 Firewall Backend: iptables

```
---

## 📌 2️⃣ Working with Images

* **`docker images`**       : List images
```ini    
IMAGE          ID               DISK USAGE   CONTENT SIZE   EXTRA
nginx:latest   341bf0f3ce6c        237MB         65.8MB
```

* **`docker pull nginx`**   : Pull images from Docker Hub
```ini
Using default tag: latest
latest: Pulling from library/nginx
bae5a1799a80: Pull complete
0c8d55a45c0d: Pull complete
7b6cb8ccac7b: Pull complete
46bf3a120c8e: Pull complete
4f4efe02d542: Pull complete
f73400a233fd: Pull complete
47cd406a84ef: Pull complete
2e02dba24409: Download complete
a5d78d617315: Download complete
Digest: sha256:341bf0f3ce6c5277d6002cf6e1fb0319fa4252add24ab6a0e262e0056d313208
Status: Downloaded newer image for nginx:latest
docker.io/library/nginx:latest

```

* **`docker rmi nginx`**    : Remove image
```ini
Untagged: nginx:latest
Deleted: sha256:341bf0f3ce6c5277d6002cf6e1fb0319fa4252add24ab6a0e262e0056d313208

```

* **`docker image prune`**  : Remove unused images

---

## 📌 3️⃣ Working with Containers

* **`docker run nginx`**    : Run a container

* **`docker run -d nginx`** : Run in detached mode

* **`docker run -d -p 8080:80 nginx`**  : Run with port mapping

* **`docker run -d --name my-nginx -p 8080:80 nginx`**  : Run with name

* **`docker ps`**   : List running containers

* **`docker ps -a`** : List all containers (including stopped)

* **`docker stop <container_id>`**  : Stop container

* **`docker start <container_id>`** : Start container

* **`docker restart <container_id>`**   : Restart container

* **`docker rm <container_id>`**    : Remove container

* **`docker container prune`**      : Remove all stopped containers

* **`docker network ls`**   : This command lists all Docker networks available on the system.

* **`docker network create <network_name>`**   : This command creates a custom Docker network with desired name

* **`docker run -d -p 80:80 --name frontend --network expense frontend:v1.0`** : This runs the frontend service in the background and makes it accessible through port 80.

---

## 📌 4️⃣ Logs & Debugging

* **`docker logs <container_id>`**  : View container logs

* **`docker logs -f <container_id>`**   : Follow logs (real-time)

* **`docker exec -it <container_id> /bin/bash`**    : Execute command inside container
