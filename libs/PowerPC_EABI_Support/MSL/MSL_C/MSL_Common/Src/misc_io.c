#include "misc_io.h"
#include "abort_exit.h"
#include "ansi_files.h"

/* 803664CC-803664DC 360E0C 0010+00 0/0 2/2 0/0 .text            __stdio_atexit */
void __stdio_atexit(void) {
    __stdio_exit = __close_all;
}
