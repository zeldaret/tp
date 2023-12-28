#include "wchar_io.h"

/* 80369114-8036919C 363A54 0088+00 0/0 5/5 0/0 .text            fwide */
int fwide(FILE* file, int mode) {
    if (file == NULL || file->file_mode.file_kind == __closed_file) {
        return 0;
    }

    switch (file->file_mode.file_orientation) {
    case UNORIENTED:
        if (mode > 0) {
            file->file_mode.file_orientation = WIDE_ORIENTED;
        } else if (mode < 0) {
            file->file_mode.file_orientation = CHAR_ORIENTED;
        }
        return mode;
    case WIDE_ORIENTED:
        return 1;
    case CHAR_ORIENTED:
        return -1;
    }
}
