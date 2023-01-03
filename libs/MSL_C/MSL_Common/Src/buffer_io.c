#include "MSL_C/MSL_Common/Src/buffer_io.h"

void __convert_from_newlines(unsigned char* buf, size_t* n) {}

void __convert_to_newlines(unsigned char* buf, size_t* n) {}

/* 803651A4-803651D8 35FAE4 0034+00 0/0 2/2 0/0 .text            __prep_buffer */
void __prep_buffer(FILE* file) {
    file->buffer_ptr = file->buffer;
    file->buffer_length = file->buffer_size;
    file->buffer_length -= file->position & file->buffer_alignment;
    file->buffer_position = file->position;
}

/* 803650E0-803651A4 35FA20 00C4+00 0/0 5/5 0/0 .text            __flush_buffer */
int __flush_buffer(FILE* file, size_t* bytes_flushed) {
    size_t buffer_len;
    int ioresult;

    buffer_len = file->buffer_ptr - file->buffer;

    if (buffer_len) {
        file->buffer_length = buffer_len;

        if (!file->file_mode.binary_io)
            __convert_from_newlines(file->buffer, (size_t*)&file->buffer_length);

        ioresult = (*file->write_fn)(file->handle, file->buffer, (size_t*)&file->buffer_length,
                                     file->idle_fn);

        if (bytes_flushed)
            *bytes_flushed = file->buffer_length;

        if (ioresult)
            return (ioresult);

        file->position += file->buffer_length;
    }

    __prep_buffer(file);

    return 0;
}
