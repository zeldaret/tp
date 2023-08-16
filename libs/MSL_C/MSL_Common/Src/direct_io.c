#include "MSL_C/MSL_Common/Src/direct_io.h"
#include "MSL_C/MSL_Common/Src/misc_io.h"
#include "MSL_C/MSL_Common/Src/string.h"
#include "MSL_C/MSL_Common/Src/wchar_io.h"
#include "dol2asm.h"

void __end_critical_region();
void __begin_critical_region();

/* 80365494-803657A0 35FDD4 030C+00 1/1 0/0 0/0 .text            __fwrite */
size_t fwrite(const void* buffer, size_t size, size_t count, FILE* stream) {
    size_t retval;

    __begin_critical_region(2);
    retval = __fwrite(buffer, size, count, stream);
    __end_critical_region(2);

    return (retval);
}

/* 803657A0-8036581C 3600E0 007C+00 0/0 1/1 0/0 .text            fwrite */
size_t __fwrite(const void* buffer, size_t size, size_t count, FILE* stream) {
    unsigned char* write_ptr;
    size_t num_bytes, bytes_to_go, bytes_written;
    int ioresult, always_buffer;

#ifndef __NO_WIDE_CHAR
    if (fwide(stream, 0) == 0)
        fwide(stream, -1);
#endif

    bytes_to_go = size * count;

    if (!bytes_to_go || stream->file_state.error || stream->file_mode.file_kind == __closed_file)
        return 0;

    if (stream->file_mode.file_kind == __console_file)
        __stdio_atexit();

    always_buffer = !stream->file_mode.binary_io || stream->file_mode.buffer_mode == _IOFBF ||
                    stream->file_mode.buffer_mode == _IOLBF;

    if (stream->file_state.io_state == __neutral) {
        if (stream->file_mode.io_mode & __write) {
            if (stream->file_mode.io_mode & __append) {
                if (fseek(stream, 0, SEEK_END))
                    return 0;
            }
            stream->file_state.io_state = __writing;

            __prep_buffer(stream);
        }
    }

    if (stream->file_state.io_state != __writing) {
        set_error(stream);
        return 0;
    }

    write_ptr = (unsigned char*)buffer;
    bytes_written = 0;

    if (bytes_to_go && (stream->buffer_ptr != stream->buffer || always_buffer)) {
        stream->buffer_length = stream->buffer_size - (stream->buffer_ptr - stream->buffer);

        do {
            unsigned char* newline = NULL;

            num_bytes = stream->buffer_length;

            if (num_bytes > bytes_to_go)
                num_bytes = bytes_to_go;
            if (stream->file_mode.buffer_mode == _IOLBF && num_bytes)
                if ((newline = (unsigned char*)__memrchr(write_ptr, '\n', num_bytes)) != NULL)
                    num_bytes = newline + 1 - write_ptr;

            if (num_bytes) {
                memcpy(stream->buffer_ptr, write_ptr, num_bytes);

                write_ptr += num_bytes;
                bytes_written += num_bytes;
                bytes_to_go -= num_bytes;

                stream->buffer_ptr += num_bytes;
                stream->buffer_length -= num_bytes;
            }
            if (!stream->buffer_length || newline != NULL ||
                (stream->file_mode.buffer_mode == _IONBF)) {
                ioresult = __flush_buffer(stream, NULL);

                if (ioresult) {
                    set_error(stream);
                    bytes_to_go = 0;
                    break;
                }
            }
        } while (bytes_to_go && always_buffer);
    }

    if (bytes_to_go && !always_buffer) {
        unsigned char* save_buffer = stream->buffer;
        size_t save_size = stream->buffer_size;

        stream->buffer = write_ptr;
        stream->buffer_size = bytes_to_go;
        stream->buffer_ptr = write_ptr + bytes_to_go;

        if (__flush_buffer(stream, &num_bytes) != __no_io_error)
            set_error(stream);

        bytes_written += num_bytes;

        stream->buffer = save_buffer;
        stream->buffer_size = save_size;

        __prep_buffer(stream);

        stream->buffer_length = 0;
    }

    if (stream->file_mode.buffer_mode != _IOFBF)
        stream->buffer_length = 0;

    return ((bytes_written + size - 1) / size);
}
