#ifndef D_RESOURCE_H_
#define D_RESOURCE_H_

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "JSystem/JKernel/JKRSolidHeap/JKRSolidHeap.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_dvd_thread/m_Do_dvd_thread.h"

class dRes_info_c {
public:
private:
    u8 unk[0x24];
    // u8* name;
    // u32 unk4;
    // u32 unk8;
    // s16 reference_count;
    // u8 padding[2];
    // mDoDVDThd_command_c* command;
    // JKRArchive* archive;
    // JKRHeap* heap;
    // JKRSolidHeap* solid_heap;
    // void** resource_buffer;
};

struct J3DAnmBase {};

struct J3DAnmTransform {};

#endif