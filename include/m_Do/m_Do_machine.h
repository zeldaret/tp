#ifndef M_DO_M_DO_MACHINE_H
#define M_DO_M_DO_MACHINE_H

#include "JSystem/JUtility/JUTConsole.h"
#include "JSystem/JUtility/JUTGamePad.h"
#include "JSystem/JUtility/JUTVideo.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_Reset.h"
#include "m_Do/m_Do_main.h"

typedef struct OSContext OSContext;
class JKRHeap;

void myHeapCheckRecursive(JKRHeap*);
BOOL mDoMch_IsProgressiveMode();
bool exceptionReadPad(u32*, u32*);
void exceptionRestart();
void myExceptionCallback(u16, OSContext*, u32, u32);
void my_SysPrintHeap(char const*, void*, u32);
void mDoMch_HeapCheckAll();
int mDoMch_Create();

extern GXRenderModeObj g_ntscZeldaProg;

class mDoMch_render_c {
public:
    static void setRenderModeObj(GXRenderModeObj* obj) { mRenderModeObj = obj; }
    static void setProgressiveMode() { setRenderModeObj(&g_ntscZeldaProg); }
    static u16 getEfbHeight() { return mRenderModeObj->efb_height; }
    static u16 getFbWidth() { return mRenderModeObj->fb_width; }

    static GXRenderModeObj* getRenderModeObj() { return mRenderModeObj; }

    static GXRenderModeObj* mRenderModeObj;
};

#endif /* M_DO_M_DO_MACHINE_H */
