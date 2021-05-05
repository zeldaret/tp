#ifndef D_D_RESORCE_H
#define D_D_RESORCE_H

#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_ext.h"

#pragma pack(push, 1)
class dRes_info_c {
public:
    /* 8003A260 */ dRes_info_c();
    /* 8003A280 */ ~dRes_info_c();
    /* 8003A348 */ void set(char const*, char const*, u8, JKRHeap*);
    /* 8003AB30 */ void onWarpMaterial(J3DModelData*);
    /* 8003AC1C */ void offWarpMaterial(J3DModelData*);
    /* 8003AD08 */ void setWarpSRT(J3DModelData*, cXyz const&, f32, f32);
    /* 8003AE14 */ void loaderBasicBmd(u32, void*);
    /* 8003B30C */ void loadResource();
    /* 8003B998 */ void deleteArchiveRes();
    /* 8003BAC4 */ void setRes(JKRArchive*, JKRHeap*);
    /* 8003BAF8 */ void setRes();
    /* 8003BD2C */ void dump_long(dRes_info_c*, int);
    /* 8003BE38 */ void dump(dRes_info_c*, int);

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

struct J3DAnmBase {
    /* 8003C734 */ ~J3DAnmBase();
};

#endif /* D_D_RESORCE_H */
