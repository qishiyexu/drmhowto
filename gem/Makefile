ifneq  ($(KERNELRELEASE),)
obj-m:=gem2.o
else
KDIR := /lib/modules/4.15.0-122-generic/build
PWD:=$(pwd)

all:
        make -C /lib/modules/4.15.0-122-generic/build M=${shell pwd} modules
clean:
        rm -f *.ko *.o *.symvers *.cmd *.cmd.o
endif