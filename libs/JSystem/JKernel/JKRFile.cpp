#include "JSystem/JKernel/JKRFile/JKRFile.h"
#include "global.h"

// #include "JSystem/JKernel/JKRFile/asm/func_802D9518.s"
s32 JKRFile::read(void* data, s32 size, long param_3) {
    while (true) {
        s32 result = this->readData(data, size, param_3);
        if (size != result)
            VIWaitForRetrace();
        else
            return result;
    }
}

