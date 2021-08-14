CC=/usr/bin/gcc

all: libsslkeylogfile.so

libsslkeylogfile.so: sslkeylogfile.o
	${CC} sslkeylogfile.o -shared -o libsslkeylogfile.so

sslkeylogfile.o: sslkeylogfile.c
	${CC} -fPIC -c sslkeylogfile.c -o sslkeylogfile.o

clean:
	rm libsslkeylogfile.so, sslkeylogfile.o -f