CC = /home/twinturbo/Desktop/compiler/CheckCBox_Compiler/llvm/cmake-build-debug/bin/clang-12
CFLAGS = -O0 -g -Wextra -pedantic-errors

all: test

.PHONY: compile test
test: tests.c parson.c
	$(CC) $(CFLAGS) -o output tests.c parson.c
	./output

compile:
	$(CC) $(CFLAGS) -o test tests.c parson.c

clean:
	rm -f test *.o
