#define _GNU_SOURCE
#include <stdio.h>
#include <dlfcn.h>

typedef int (*fprintf_func)(FILE* stream, const char* format, ...);

int main(int argc, char* argv[]) {
    printf("Hello World!\n");
    fprintf_func func = dlsym(RTLD_DEFAULT, "fprintf");
    if (func) {
        func(stdout, "fprintf called from a symbol obtained using dlsym\n");
    } else {
        fprintf(stdout, "Symbol fprintf not found!\n");
    }
    return 0;
}
