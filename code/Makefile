IDIR=/root/opt
GD=$(IDIR)/givaro
FD=$(IDIR)/fflas-ffpack
LD=$(IDIR)/linbox
BL=--with-blas-libs="-llapack -lblas"

all: up clean build tif

build: givaro fflas linbox

givaro:
	cd givaro; ./autogen.sh --prefix=$(GD); make install

fflas:
	cd fflas-ffpack; ./autogen.sh --prefix=$(FD) $(BL); make install

linbox:
	cd linbox; ./autogen.sh --prefix=$(LD) --enable-debug=yes; make install

check:
	-cd givaro; make check
	-cd fflas-ffpack; make check
	-cd linbox; make check

clean:
	-cd givaro; make clean
	-cd fflas-ffpack; make clean
	-cd linbox; make clean

up:
	cd givaro; git pull
	cd fflas-ffpack; git pull
	cd linbox; git pull

init:
	git clone git@github.com:linbox-team/givaro.git
	git clone git@github.com:linbox-team/fflas-ffpack.git
	git clone git@github.com:linbox-team/linbox.git

