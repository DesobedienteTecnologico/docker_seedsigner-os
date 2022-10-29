<p align="center">
  <a href="https://seedsigner.com/">
    <img alt="Docker_SeedSigner_OS" src="img/logo.png" width="250"/>
  </a>
</p>
<h1 align="center">Docker SeedSigner OS</h1>

<p align="center">
  <a href="https://opensource.org/licenses/MIT" title="License: MIT">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg">
  </a>
  <a href="" title="Twitter">
  <img src="https://img.shields.io/twitter/follow/seedsigner?style=social">
  </a>
  
</p>


Build SeedSigner-OS image inside a Docker container.

# 🛠 Build:

### Build image
```bash
docker build . -t ss
```

### Run and build SeedSigner OS
```bash
docker run --name ssos ss:latest -i dev
```

### Pick the final image from the container
```bash
docker cp ssos:/opt/build_workdir/images/seedsigner_os.img .
```

---

# Extras:

### Remove container
```bash
docker container rm ssos
```

### Get into the ssos container's shell
Enter into the container terminal:
```bash
docker exec -it ssos /bin/bash
```
