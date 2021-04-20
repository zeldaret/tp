#ifndef M_DO_EXT_H_
#define M_DO_EXT_H_

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "JSystem/JKernel/JKRSolidHeap/JKRSolidHeap.h"
#include "d/d_resource/d_resource.h"
#include "global.h"
#include "os/OS.h"

extern "C" {
JKRExpHeap* mDoExt_getZeldaHeap__Fv();
JKRExpHeap* mDoExt_getGameHeap__Fv();
JKRExpHeap* mDoExt_getArchiveHeap__Fv();
JKRExpHeap* mDoExt_getJ2dHeap__Fv();
JKRExpHeap* mDoExt_getHostIOHeap__Fv();
JKRExpHeap* mDoExt_getCommandHeap__Fv();
void mDoExt_destroySolidHeap__FP12JKRSolidHeap(JKRSolidHeap*);
JKRHeap* mDoExt_setCurrentHeap__FP7JKRHeap(JKRHeap*);
}
OSThread* mDoExt_GetCurrentRunningThread(void);

#pragma pack(push, 1)
class mDoExt_baseAnm {
public:
private:
    J3DFrameCtrl frame_control;
};
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_btkAnm {
public:
    mDoExt_btkAnm(void);

private:
    mDoExt_baseAnm base_anm;
    u32 field_0x14;
};
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_brkAnm {
public:
    mDoExt_brkAnm(void);

private:
    mDoExt_baseAnm mDoExt_baseAnm;
    u32 field_0x14;
};
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_bpkAnm {
public:
    mDoExt_bpkAnm(void);

private:
    mDoExt_baseAnm mDoExt_baseAnm;
    u32 field_0x14;
};
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_bckAnm {
public:
    mDoExt_bckAnm(void);

private:
    mDoExt_baseAnm base_anm;
    u8 field_0x14[4];
    u32 field_0x18;
};  // Size = 0x1C
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_McaMorfCallBack1_c {
public:
private:
    void* vtable;
};
#pragma pack(pop)

class mDoExt_AnmRatioPack {
private:
    /* 0x0 */ float mRatio;
    /* 0x4 */ J3DAnmTransform* mAnmTransform;
};  // Size = 0x8

#endif