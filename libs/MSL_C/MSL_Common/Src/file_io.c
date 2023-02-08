#include "MSL_C/MSL_Common/Src/file_io.h"
#include "MSL_C/MSL_Common/Src/FILE_POS.h"
#include "MSL_C/MSL_Common/Src/alloc.h"
#include "MSL_C/MSL_Common/Src/buffer_io.h"
#include "MSL_C/MSL_Common/Src/ctype.h"

/* 8036581C-803658C0 36015C 00A4+00 0/0 1/1 0/0 .text            __msl_strnicmp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int __msl_strnicmp(const char* str1, const char* str2, size_t n) {
    nofralloc
#include "asm/MSL_C/MSL_Common/Src/file_io/__msl_strnicmp.s"
}
#pragma pop

/* 803659F8-80365BB4 360338 01BC+00 0/0 1/1 0/0 .text            fclose */
int fclose(FILE* file) {
    int flush_result, close_result;

    if (file == NULL)
        return (-1);
    if (file->file_mode.file_kind == __closed_file)
        return (0);

    flush_result = fflush(file);

    close_result = (*file->close_fn)(file->handle);

    file->file_mode.file_kind = __closed_file;
    file->handle = NULL;

    if (file->file_state.free_buffer)
        free((FILE*)file->buffer);
    return ((flush_result || close_result) ? -1 : 0);
}

/* 803658C0-803659F8 360200 0138+00 0/0 4/4 0/0 .text            fflush */
int fflush(FILE* file) {
    int pos;

    if (file == NULL) {
        return __flush_all();
    }

    if (file->file_state.error != 0 || file->file_mode.file_kind == __closed_file) {
        return -1;
    }

    if (file->file_mode.io_mode == 1) {
        return 0;
    }

    if (file->file_state.io_state >= 3) {
        file->file_state.io_state = 2;
    }

    if (file->file_state.io_state == 2) {
        file->buffer_length = 0;
    }

    if (file->file_state.io_state != 1) {
        file->file_state.io_state = 0;
        return 0;
    }

    if (file->file_mode.file_kind != __disk_file) {
        pos = 0;
    } else {
        pos = ftell(file);
    }

    if (__flush_buffer(file, 0) != 0) {
        file->file_state.error = 1;
        file->buffer_length = 0;
        return -1;
    }

    file->file_state.io_state = 0;
    file->position = pos;
    file->buffer_length = 0;
    return 0;
}
