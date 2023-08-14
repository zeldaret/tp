/**
 * d_a_tag_chkpoint.cpp
 * 
 */

#include "rel/d/a/tag/d_a_tag_chkpoint/d_a_tag_chkpoint.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "d/d_procname.h"
#include "d/a/d_a_player.h"

//
// Forward References:
//

extern "C" void execute__11daTag_Chk_cFv();
extern "C" static bool daTag_Chk_Draw__FP11daTag_Chk_c();
extern "C" static void daTag_Chk_Execute__FP11daTag_Chk_c();
extern "C" static bool daTag_Chk_IsDelete__FP11daTag_Chk_c();
extern "C" static void daTag_Chk_Delete__FP11daTag_Chk_c();
extern "C" static void daTag_Chk_Create__FP10fopAc_ac_c();
// extern "C" extern void* g_profile_TAG_CHKPOINT[12];

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void setLookPos__9daPy_py_cFP4cXyz();
extern "C" void _savegpr_29();
extern "C" void _restgpr_29();

//
// Declarations:
//

/* ############################################################################################## */
/* 8048AC28-8048AC34 000000 0009+03 2/2 0/0 0/0 .rodata          @3769 */
SECTION_RODATA static u8 const lit_3769[9 + 3 /* padding */] = {
    0x01,
    0x01,
    0x00,
    0x00,
    0x00,
    0x00,
    0x01,
    0x01,
    0x00,
    /* padding */
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8048AC28, &lit_3769);

/* 8048AC34-8048AC38 00000C 0004+00 0/2 0/0 0/0 .rodata          @3843 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3843[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x8048AC34, &lit_3843);
#pragma pop

/* 8048AC38-8048AC40 000010 0008+00 0/1 0/0 0/0 .rodata          @3844 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3844[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8048AC38, &lit_3844);
#pragma pop

/* 8048AC40-8048AC48 000018 0008+00 0/1 0/0 0/0 .rodata          @3845 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3845[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8048AC40, &lit_3845);
#pragma pop

/* 8048AC48-8048AC50 000020 0008+00 0/1 0/0 0/0 .rodata          @3846 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3846[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8048AC48, &lit_3846);
#pragma pop

/* 8048A6F8-8048A9EC 000078 02F4+00 1/1 0/0 0/0 .text            execute__11daTag_Chk_cFv */
#ifdef NONMATCHING
s32 daTag_Chk_c::execute() {
    int iVar12;
    bool bVar6;
    u32 local_64;
    u32 local_60;
    u32 local_5c;

    s32 l_roomNo = fopAcM_GetRoomNo(this);
    s32 l_stayNo = dComIfGp_roomControl_getStayNo();

    if (l_roomNo == l_stayNo) {
        local_64 = 0x1010000;
        local_60 = 0x101;
        local_5c = 0;
        
        u8 l_swBit = getSwBit();
        if (l_swBit == -1) {
            l_stayNo = 0;
        } else {
            l_roomNo = fopAcM_GetRoomNo(this);
            l_stayNo = dComIfGs_isSwitch(l_swBit,l_roomNo);
            
            if (l_stayNo == 0) {
                l_stayNo = 2;
            } else {
                l_stayNo = 1;
            }
        }

        l_swBit = getSwBit2();
    
        if (l_swBit == -1) {
            iVar12 = 0;
        } else {
            l_roomNo = fopAcM_GetRoomNo(this);
            l_stayNo = dComIfGs_isSwitch(l_swBit,l_roomNo);

            if (l_stayNo == 0) {
                l_stayNo = 2;
            } else {
                l_stayNo = 1;
            }
        }

        bVar6 = false;

        if (true) {
            daPy_py_c* link = dComIfGp_getLinkPlayer();
            u16 areaType = getAreaType();
        }
    
        mAttentionInfo.mFlags = 0;

        if (bVar6) {
            daPy_py_c::setLookPos(&mAttentionInfo.mPosition);
            mAttentionInfo.mFlags = 0x1000;
        }

        return 1;
    }
    return 0;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm s32 daTag_Chk_c::execute() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_chkpoint/d_a_tag_chkpoint/execute__11daTag_Chk_cFv.s"
}
#pragma pop
#endif

/* 8048A9EC-8048A9F4 00036C 0008+00 1/0 0/0 0/0 .text            daTag_Chk_Draw__FP11daTag_Chk_c */
static s32 daTag_Chk_Draw(daTag_Chk_c* i_this) {
    return 1;
}

/* 8048A9F4-8048AA18 000374 0024+00 1/0 0/0 0/0 .text            daTag_Chk_Execute__FP11daTag_Chk_c
 */
static s32 daTag_Chk_Execute(daTag_Chk_c* i_this) {
    i_this->execute();
    return 1;
}

/* 8048AA18-8048AA20 000398 0008+00 1/0 0/0 0/0 .text            daTag_Chk_IsDelete__FP11daTag_Chk_c
 */
static s32 daTag_Chk_IsDelete(daTag_Chk_c* i_this) {
    return 1;
}

/* 8048AA20-8048AA50 0003A0 0030+00 1/0 0/0 0/0 .text            daTag_Chk_Delete__FP11daTag_Chk_c
 */
static s32 daTag_Chk_Delete(daTag_Chk_c* i_this) {
    i_this->~daTag_Chk_c();
    return 1;
}

/* ############################################################################################## */
/* 8048AC50-8048AC54 000028 0004+00 0/1 0/0 0/0 .rodata          @3925 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3925 = 50.0f;
COMPILER_STRIP_GATE(0x8048AC50, &lit_3925);
#pragma pop

/* 8048AC54-8048AC58 00002C 0004+00 0/1 0/0 0/0 .rodata          @3926 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3926 = 100.0f;
COMPILER_STRIP_GATE(0x8048AC54, &lit_3926);
#pragma pop

/* 8048AC58-8048AC5C 000030 0004+00 0/1 0/0 0/0 .rodata          @3927 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3927 = 10.0f;
COMPILER_STRIP_GATE(0x8048AC58, &lit_3927);
#pragma pop

/* 8048AC5C-8048AC60 000034 0004+00 0/1 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 0.5f;
COMPILER_STRIP_GATE(0x8048AC5C, &lit_3928);
#pragma pop

/* 8048AC60-8048AC68 000038 0008+00 0/1 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3930[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8048AC60, &lit_3930);
#pragma pop

/* 8048AA50-8048AC20 0003D0 01D0+00 1/0 0/0 0/0 .text            daTag_Chk_Create__FP10fopAc_ac_c */
#ifdef NONMATCHING
// literals
static s32 daTag_Chk_Create(fopAc_ac_c* i_this) {
    return static_cast<daTag_Chk_c*>(i_this)->create();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm s32 daTag_Chk_Create(fopAc_ac_c* i_this) {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_chkpoint/d_a_tag_chkpoint/daTag_Chk_Create__FP10fopAc_ac_c.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 8048AC68-8048AC88 -00001 0020+00 1/0 0/0 0/0 .data            l_daTag_Chk_Method */
static actor_method_class l_daTag_Chk_Method = {
    (process_method_func)daTag_Chk_Create,
    (process_method_func)daTag_Chk_Delete,
    (process_method_func)daTag_Chk_Execute,
    (process_method_func)daTag_Chk_IsDelete,
    (process_method_func)daTag_Chk_Draw
};

/* 8048AC88-8048ACB8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_CHKPOINT */
extern actor_process_profile_definition g_profile_TAG_CHKPOINT = {
    -3,                     // mLayerID
    7,                      // mListID
    -3,                     // mListPrio
    PROC_TAG_CHKPOINT,      // mProcName
    &g_fpcLf_Method.mBase,  // mSubMtd
    sizeof(daTag_Chk_c),    // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // mSubMtd
    0x0118,                 // mPriority
    &l_daTag_Chk_Method,    // mSubMtd
    0x00044000,             // mStatus
    0,                      // mActorType
    6                       // mCullType
};


