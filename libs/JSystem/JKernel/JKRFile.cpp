#include "JSystem/JKernel/JKRFile.h"
#include "dolphin/vi.h"

/* 802D9518-802D9584 2D3E58 006C+00 0/0 2/2 0/0 .text            read__7JKRFileFPvll */
s32 JKRFile::read(void* data, s32 size, s32 offset) {
    while (true) {
        s32 result = readData(data, size, offset);
        if (size != result)
            VIWaitForRetrace();
        else
            return result;
    }
}
