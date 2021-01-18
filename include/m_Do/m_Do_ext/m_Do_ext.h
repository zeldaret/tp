#ifndef M_DO_EXT_H_
#define M_DO_EXT_H_

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "JSystem/JKernel/JKRExpHeap/JKRExpHeap.h"
#include "global.h"

extern "C" {
JKRExpHeap* mDoExt_getZeldaHeap();
JKRExpHeap* mDoExt_getGameHeap();
JKRExpHeap* mDoExt_getArchiveHeap();
JKRExpHeap* mDoExt_getJ2dHeap();
JKRExpHeap* mDoExt_getHostIOHeap();
JKRExpHeap* mDoExt_getCommandHeap();
}

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
};
#pragma pack(pop)

#pragma pack(push, 1)
class mDoExt_McaMorfCallBack1_c {
public:
private:
    void* vtable;
};
#pragma pack(pop)

#endif