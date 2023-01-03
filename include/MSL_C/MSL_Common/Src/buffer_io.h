#ifndef MSL_COMMON_SRC_BUFFER_IO_H
#define MSL_COMMON_SRC_BUFFER_IO_H

#include "MSL_C/MSL_Common/Src/ansi_files.h"

enum { __align_buffer, __dont_align_buffer };

void __prep_buffer(FILE* file);
int __flush_buffer(FILE* file, size_t* bytes_flushed);

#endif /* MSL_COMMON_SRC_BUFFER_IO_H */
