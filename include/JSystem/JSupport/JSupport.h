#ifndef JSUPPORT_H
#define JSUPPORT_H

template <typename T>
T* JSUConvertOffsetToPtr(const void* ptr, const void* offset) {
    if (ptr == NULL) {
        return NULL;
    } else {
        return (T*) ((s32)ptr + (s32)offset);
    }
}

#endif
