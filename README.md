A project to facilitate Givaro, FFLAS-FFPACK, and LinBox development.  Requires docker.

### Build

make build

### Run

make run

### Commands (In Container)

make init  - Clone Givaro, FFLAS-FFPACK, and Linbox repos.
make up    - Update repos.
make clean - Clean the repos.
make build - Build and install the libraries.
make check - Build and run the checks.
make all   - make up clean build