/**
 * d_a_tag_mstop.cpp
 * Tag - Midna Stop
 */

#include "rel/d/a/tag/d_a_tag_mstop/d_a_tag_mstop.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

//
// Forward References:
//

extern "C" void create__12daTagMstop_cFv();
extern "C" static void daTagMstop_Create__FP10fopAc_ac_c();
extern "C" void __dt__12daTagMstop_cFv();
extern "C" static void daTagMstop_Delete__FP12daTagMstop_c();
extern "C" void eventOrder__12daTagMstop_cFv();
extern "C" void execute__12daTagMstop_cFv();
extern "C" static void daTagMstop_Execute__FP12daTagMstop_c();
extern "C" static bool daTagMstop_Draw__FP12daTagMstop_c();

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGp_getRoomCamera__Fi();
extern "C" void dComIfGp_getRoomArrow__Fi();
extern "C" void isEventBit__11dSv_event_cCFUs();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void reset__14dEvt_control_cFPv();
extern "C" void daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz();
extern "C" void __ct__10dMsgFlow_cFv();
extern "C" void __dt__10dMsgFlow_cFv();
extern "C" void init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c();
extern "C" void doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 saveBitLabels__16dSv_event_flag_c[1644 + 4 /* padding */];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* ############################################################################################## */
/* 805A696C-805A6970 000000 0004+00 2/2 0/0 0/0 .rodata          @3863 */
SECTION_RODATA static f32 const lit_3863 = 10000.0f;
COMPILER_STRIP_GATE(0x805A696C, &lit_3863);

/* 805A6970-805A6974 000004 0004+00 1/1 0/0 0/0 .rodata          @3864 */
SECTION_RODATA static f32 const lit_3864 = 100.0f;
COMPILER_STRIP_GATE(0x805A6970, &lit_3864);

/* 805A6138-805A6318 000078 01E0+00 1/1 0/0 0/0 .text            create__12daTagMstop_cFv */
#ifdef NONMATCHING
int daTagMstop_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daTagMstop_c();
        fopAcM_OnCondition(this, 8);
    }

    field_0x56b = fopAcM_GetParam(this) >> 16;
    field_0x56a = fopAcM_GetParam(this) >> 24;

    if (field_0x56a == 1 || field_0x56a == 2) {
        field_0x56c = 1;

        if (field_0x56a == 2) {
            field_0x56a = 0;
        }
        
    } else {
        field_0x56c = 0;
    }

    if ((fopAcM_GetParam(this) >> 28) & 1) {
        field_0x568 = 0xFF;
        mSwitch = 0xFF;
        field_0x570 = shape_angle.x;
        field_0x572 = shape_angle.y;
    } else {
        field_0x568 = shape_angle.x;
        mSwitch = shape_angle.x;
        field_0x570 = 0xFFFF;
        field_0x572 = 0xFFFF;
    }

    f32 tmp = mScale.x;
    tmp *= 10000.0f * mScale.x;

    field_0x5c0 = tmp;
    field_0x5c4 = current.pos.y + mScale.y * 100.0f;

    csXyz pos_angle;

    daNpcF_getPlayerInfoFromPlayerList(fopAcM_GetParam(this) & 0xFFFF,fopAcM_GetRoomNo(this),field_0x5c8,pos_angle);

    if (checkNoAttention() == 0) {
        s32 room = fopAcM_GetRoomNo(this);
        stage_camera_class* cameraP = dComIfGp_getRoomCamera(room);
        u8 unk = cameraP->field_0x4[checkNoAttention()].field_0x10;

        stage_arrow_class* arrowP = dComIfGp_getRoomArrow(room);
        mEyePos.set(arrowP->mEntries[unk].mPosition);
        mAttentionInfo.mPosition = mEyePos;
    }
    
    shape_angle.y = fopAcM_searchPlayerAngleY(this);
    return cPhs_COMPLEATE_e;    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daTagMstop_c::create() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_mstop/d_a_tag_mstop/create__12daTagMstop_cFv.s"
}
#pragma pop
#endif

/* 805A6318-805A6338 000258 0020+00 1/0 0/0 0/0 .text            daTagMstop_Create__FP10fopAc_ac_c
 */
static int daTagMstop_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagMstop_c*>(i_this)->create();
}

/* 805A6338-805A639C 000278 0064+00 1/1 0/0 0/0 .text            __dt__12daTagMstop_cFv */
daTagMstop_c::~daTagMstop_c() { }

/* 805A639C-805A63C4 0002DC 0028+00 1/0 0/0 0/0 .text            daTagMstop_Delete__FP12daTagMstop_c
 */
static int daTagMstop_Delete(daTagMstop_c* i_this) {
    i_this->~daTagMstop_c();
    return 1;
}

/* 805A63C4-805A63F8 000304 0034+00 1/1 0/0 0/0 .text            eventOrder__12daTagMstop_cFv */
void daTagMstop_c::eventOrder() {
    mEvtInfo.i_onCondition(1);
    fopAcM_orderSpeakEvent(this,0,0);
}

/* ############################################################################################## */
/* 805A6974-805A6978 000008 0004+00 0/1 0/0 0/0 .rodata          @4056 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4056 = 1.0f;
COMPILER_STRIP_GATE(0x805A6974, &lit_4056);
#pragma pop

/* 805A6978-805A697C 00000C 0004+00 0/1 0/0 0/0 .rodata          @4057 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4057 = -1.0f;
COMPILER_STRIP_GATE(0x805A6978, &lit_4057);
#pragma pop

/* 805A697C-805A6980 000010 0004+00 0/1 0/0 0/0 .rodata          @4058 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4058 = 2500.0f;
COMPILER_STRIP_GATE(0x805A697C, &lit_4058);
#pragma pop

/* 805A6980-805A6984 000014 0004+00 0/1 0/0 0/0 .rodata          @4059 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4059[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x805A6980, &lit_4059);
#pragma pop

/* 805A63F8-805A693C 000338 0544+00 1/1 0/0 0/0 .text            execute__12daTagMstop_cFv */
#ifdef NONMATCHING
int daTagMstop_c::execute() {
    
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daTagMstop_c::execute() {
    nofralloc
#include "asm/rel/d/a/tag/d_a_tag_mstop/d_a_tag_mstop/execute__12daTagMstop_cFv.s"
}
#pragma pop
#endif

/* 805A693C-805A695C 00087C 0020+00 1/0 0/0 0/0 .text daTagMstop_Execute__FP12daTagMstop_c */
static int daTagMstop_Execute(daTagMstop_c* i_this) {
    return i_this->execute();
}

/* 805A695C-805A6964 00089C 0008+00 1/0 0/0 0/0 .text            daTagMstop_Draw__FP12daTagMstop_c
 */
static int daTagMstop_Draw(daTagMstop_c* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 805A6984-805A69A4 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagMstop_Method */
static actor_method_class l_daTagMstop_Method = {
    (process_method_func)daTagMstop_Create,
    (process_method_func)daTagMstop_Delete,
    (process_method_func)daTagMstop_Execute,
    0,
    (process_method_func)daTagMstop_Draw
};

/* 805A69A4-805A69D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Mstop */
extern actor_process_profile_definition g_profile_Tag_Mstop = {
    -3,                      // mLayerID     
    7,                       // mListID   
    -3,                      // mListPrio    
    PROC_Tag_Mstop,          // mProcName                
    0,                       // padding    
    &g_fpcLf_Method.mBase,   // mSubMtd                       
    sizeof(daTagMstop_c),    // mSize                       
    0,                       // mSizeOther   
    0,                       // mParameters          
    &g_fopAc_Method.base,    // mSubMtd                      
    0x0101,                  // mPriority        
    0,                       // padding   
    0,                       // padding    
    &l_daTagMstop_Method,    // mSubMtd                      
    0x00044000,              // mStatus             
    3,                       // mActorType   
    0x0E,                    // mCullType      
    0,                       // padding   
    0                        // padding  
};
