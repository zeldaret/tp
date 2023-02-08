#ifndef MSL_COMMON_SRC_FILE_POS_H
#define MSL_COMMON_SRC_FILE_POS_H

#include "MSL_C/MSL_Common/Src/ansi_files.h"

#ifdef __cplusplus
extern "C" {
#endif

int fseek(FILE* file, long offset, int mode);
int _fseek(FILE* file, fpos_t offset, int mode);
long ftell(FILE* file);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_FILE_POS_H */
