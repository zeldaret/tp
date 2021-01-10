#ifndef D_RESOURCE_H_
#define D_RESOURCE_H_

#include "JSystem/JKernel/JKRArchive/JKRArchive.h"
#include "JSystem/JKernel/JKRHeap/JKRHeap.h"
#include "JSystem/JKernel/JKRSolidHeap/JKRSolidHeap.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_dvd_thread/m_Do_dvd_thread.h"

#pragma pack(push, 1)
class dRes_info_c {
public:
    dRes_info_c(void);
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
#pragma pack(pop)

struct J3DAnmBase {};

struct J3DAnmTransform {};

#endif