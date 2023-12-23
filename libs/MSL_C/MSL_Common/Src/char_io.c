#include "MSL_C/MSL_Common/Src/char_io.h"
#include "MSL_C/MSL_Common/Src/FILE_POS.h"
#include "MSL_C/MSL_Common/Src/buffer_io.h"
#include "MSL_C/MSL_Common/Src/critical_regions.h"
#include "MSL_C/MSL_Common/Src/misc_io.h"
#include "MSL_C/MSL_Common/Src/wchar_io.h"

/* 803652AC-80365464 35FBEC 01B8+00 1/1 0/0 0/0 .text            __put_char */
int __put_char(int c, FILE* stream) {
    int ret;
    unsigned char* ptr;

    int file_kind = stream->file_mode.file_kind;
    stream->buffer_length = 0;

    if (stream->file_state.error != 0 || file_kind == __closed_file) {
        return -1;
    }

    if (file_kind == __console_file) {
        __stdio_atexit();
    }

    if (stream->file_state.io_state == __neutral && (stream->file_mode.io_mode & __write)) {
        if ((stream->file_mode.io_mode & __append) && fseek(stream, 0, 2) != 0) {
            return 0;
        }

        stream->file_state.io_state = __writing;
        __prep_buffer(stream);
    }

    if (stream->file_state.io_state != __writing) {
        stream->file_state.error = 1;
        ret = -1;
        stream->buffer_length = 0;
    } else if ((stream->file_mode.buffer_mode == 2 ||
                stream->buffer_size ==
                    (unsigned int)stream->buffer_ptr - (unsigned int)stream->buffer) &&
               __flush_buffer(stream, NULL) != 0)
    {
        stream->file_state.error = 1;
        ret = -1;
        stream->buffer_length = 0;
    } else {
        stream->buffer_length--;

        ptr = stream->buffer_ptr;
        stream->buffer_ptr++;
        *ptr = c;

        if (stream->file_mode.buffer_mode != 2) {
            if ((stream->file_mode.buffer_mode == 0 || c == 10) &&
                __flush_buffer(stream, NULL) != 0)
            {
                stream->file_state.error = 1;
                ret = -1;
                stream->buffer_length = 0;
                goto exit;
            }
            stream->buffer_length = 0;
        }

        ret = c & 0xFF;
    }

exit:
    return ret;
}

/* 803651D8-803652AC 35FB18 00D4+00 0/0 1/1 0/0 .text            fputs */
int fputs(const char* s, FILE* stream) {
    char temp_r31;
    int var_r3;
    unsigned long len;
    int var_r30 = 0;

    __begin_critical_region(stdin_access);
    while (temp_r31 = *s++, temp_r31 != 0) {
        if (fwide(stream, -1) >= 0) {
            var_r3 = -1;
        } else {
            len = stream->buffer_length;
            stream->buffer_length = len - 1;

            if (len != 0) {
                char* buf = (char*)stream->buffer_ptr;
                ;
                stream->buffer_ptr++;

                *buf = var_r3 = temp_r31 & 0xFF;
            } else {
                var_r3 = __put_char(temp_r31, stream);
            }
        }

        if (var_r3 == -1) {
            var_r30 = -1;
            break;
        }
    }
    __end_critical_region(stdin_access);

    return var_r30;
}
