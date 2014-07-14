As a shell with rustc and cargo installed:
```bash
docker run -t -i --rm=true -v $(pwd):/source hoverbear/rust /bin/bash
```
To compile a rust file:
```bash
docker run -t -i --rm=true -v $(pwd):/source hoverbear/rust rustc myfile.rs
```
To build a cargo project:
```bash
docker run -t -i --rm=true -v $(pwd):/source hoverbear/rust cargo build
```
