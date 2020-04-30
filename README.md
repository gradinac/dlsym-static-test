## What this repo is.
A basic dlsym behaviour test in static binaries.
## Requirements
Docker is required to run the tests.
## How to run
Run `run-tests.sh`
## Expected output
```bash
$ ./run-tests.sh
Running test on Ubuntu 18.04
Hello World!
fprintf called from a symbol obtained using dlsym
-------------------------
Hello World!
Symbol fprintf not found!
Running test on Oracle Linux 7.7
Hello World!
fprintf called from a symbol obtained using dlsym
-------------------------
Hello World!
Symbol fprintf not found!
Running test on Oracle Linux 6.10
Hello World!
fprintf called from a symbol obtained using dlsym
-------------------------
./compile_and_run_tests.sh: line 8:    20 Segmentation fault      (core dumped) ./main-static
Running test on Alpine Linux 3.11
Hello World!
fprintf called from a symbol obtained using dlsym
-------------------------
Hello World!
Symbol fprintf not found!
```