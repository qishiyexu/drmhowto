FLAGS=`pkg-config --cflags --libs libdrm`
FLAGS+=-Wall -O0 -g
FLAGS+=-D_FILE_OFFSET_BITS=64
FLAGS+=-I/usr/include/libdrm -ldrm

all:
	gcc -o modeset modeset.c $(FLAGS)
	gcc -o modeset-double-buffered modeset-double-buffered.c $(FLAGS)
	gcc -o modeset-vsync modeset-vsync.c $(FLAGS)
	gcc -o modeset-atomic modeset-atomic.c $(FLAGS)
	gcc -o modeset-single-buffer modeset-single-buffer.c $(FLAGS)
	gcc -o modeset-page-flip modeset-page-flip.c $(FLAGS)
