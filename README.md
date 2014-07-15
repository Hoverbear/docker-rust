## Shell
As a shell with rustc and cargo installed:
```bash
docker run -t -i --rm=true -v $(pwd):/source hoverbear/rust /bin/bash
```
## Rustc

To compile a rust file:
```bash
docker run -t -i --rm=true -v $(pwd):/source hoverbear/rust rustc myfile.rs
```

## Cargo

To build a cargo project:
```bash
docker run -t -i --rm=true -v $(pwd):/source hoverbear/rust cargo build
```

## SELinux Issues
On SELinux flavors you might need to set permissions properly.
```bash
chcon -Rt svirt_sandbox_file_t $(pwd)
```
