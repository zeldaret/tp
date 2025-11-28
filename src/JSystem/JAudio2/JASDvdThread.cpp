#include "JSystem/JSystem.h" // IWYU pragma: keep

#include "JSystem/JAudio2/JASDvdThread.h"
#include "JSystem/JAudio2/JASTaskThread.h"
#include "JSystem/JKernel/JKRSolidHeap.h"

/* 80451208-80451210 000708 0004+04 2/1 0/0 0/0 .sbss            sThread__6JASDvd */
JASTaskThread* JASDvd::sThread;

/* 8028FEFC-8028FF04 -00001 0008+00 0/0 0/0 0/0 .text            getThreadPointer__6JASDvdFv */
JASTaskThread* JASDvd::getThreadPointer() {
    return JASDvd::sThread;
}

/* 8028FF04-8028FFA8 28A844 00A4+00 0/0 1/1 0/0 .text            createThread__6JASDvdFliUl */
bool JASDvd::createThread(s32 priority, int msgCount, u32 stackSize) {
    if (sThread != NULL) {
        JUT_WARN_DEVICE(32, 2, "%s", "JASDvd::createThread が２回呼び出されました");
        return false;
    }

    sThread = new (JASDram, 0) JASTaskThread(priority, msgCount, stackSize);
    JUT_ASSERT(36, sThread);

    JKRHeap* pCurrentHeap = JKRGetSystemHeap();
    JUT_ASSERT(38, pCurrentHeap);

    sThread->setCurrentHeap(pCurrentHeap);
    sThread->resume();
	return true;
}
