#include "JSystem/JKernel/JKRFile/JKRFile.h"
#include "global.h"

s32 JKRFile::read(void* data, s32 size, long offset) {
    while (true) {
        s32 result = readData(data, size, offset);
        if (size != result)
            VIWaitForRetrace();
        else
            return result;
    }
}
