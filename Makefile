CC = /home/twinturbo/Desktop/compiler/CheckCBox_Compiler/llvm/cmake-build-debug/bin/clang
CFLAGS = -O0 -g -Wextra -pedantic-errors -ferror-limit=100

all: test

.PHONY: compile test
test: tests.c parson.c
	$(CC) $(CFLAGS) -o output libSBX_CON_LIB.a tests.c parson.c
	./output

compile:
	$(CC) $(CFLAGS) -o test tests.c parson.c

clean:
	rm -f test *.o
