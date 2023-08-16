#ifndef MSL_STDIO_H_
#define MSL_STDIO_H_

#include "MSL_C/MSL_Common/Src/char_io.h"
#include "MSL_C/MSL_Common/Src/file_io.h"
#include "MSL_C/MSL_Common/Src/printf.h"

#define stdin (&__files._stdin)
#define stdout (&__files._stdout)
#define stderr (&__files._stderr)

#endif
