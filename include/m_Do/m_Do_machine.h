#ifndef M_DO_M_DO_MACHINE_H
#define M_DO_M_DO_MACHINE_H

#include "JSystem/JUtility/JUTConsole.h"
#include "JSystem/JUtility/JUTGamePad.h"
#include "JSystem/JUtility/JUTVideo.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_Reset.h"
#include "m_Do/m_Do_main.h"

void myHeapCheckRecursive(JKRHeap*);
u8 mDoMch_IsProgressiveMode();
bool exceptionReadPad(u32*, u32*);
void exceptionRestart();
void myExceptionCallback(u16, OSContext*, u32, u32);
void my_SysPrintHeap(char const*, void*, u32);

class mDoMch_render_c {
public:
    static GXRenderModeObj* getRenderModeObj() { return mRenderModeObj; }

    static GXRenderModeObj* mRenderModeObj;
};

#endif /* M_DO_M_DO_MACHINE_H */
