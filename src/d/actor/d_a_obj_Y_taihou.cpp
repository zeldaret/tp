/**
 * @file d_a_obj_Y_taihou.cpp
 * 
*/

#include "d/actor/d_a_obj_Y_taihou.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/actor/d_a_obj_carry.h"
#include "Z2AudioLib/Z2Instances.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_player.h"


//
// Declarations:
//

/* 80B9FAEC-80B9FC40 0000EC 0154+00 1/1 0/0 0/0 .text
 * ccHitCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void ccHitCallback(fopAc_ac_c* param_0, dCcD_GObjInf* param_1, fopAc_ac_c* param_2,
                              dCcD_GObjInf* param_3) {
    // NONMATCHING
    daObjYtaihou_c* i_this = static_cast<daObjYtaihou_c*>(param_0);
    daObjCarry_c* pCarry = static_cast<daObjCarry_c*>(param_2);
    if (fopAcM_checkCarryNow(i_this) == 0
      || (fopAcM_searchActorDistanceY(i_this, pCarry) >= 150.0f
      && fopAcM_searchActorDistanceY(i_this, pCarry) <= 200.0f)) {
        if (fopAcM_GetProfName(i_this) == 0x2fc) {
            int iVar1 = i_this->getIronBallId();
            if (iVar1 == 0xffff && pCarry->getType() == 3) {
                i_this->setIronBall(pCarry);
                fopAcM_seStartCurrent(i_this, 0x801c9, 0);
            }
        } else if (fopAcM_GetProfName(i_this) == 0x221) {
            i_this->startBomb();
            fopAcM_delete(i_this);
            fopAcM_seStartCurrent(i_this, 0x801c9, 0);
        }
    }
}

/* 80B9FC40-80B9FD20 000240 00E0+00 1/1 0/0 0/0 .text
 * pushPullcallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
static daObjYtaihou_c* pushPullcallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1, s16 param_2,
                                        dBgW_Base::PushPullLabel label) {
    if (cLib_checkBit(label, dBgW_Base::PPLABEL_3)) {
        cXyz my_vec = param_1->current.pos - param_0->current.pos;
        mDoMtx_stack_c::YrotS(-param_0->shape_angle.y);
        mDoMtx_stack_c::multVec(&my_vec, &my_vec);
        BOOL my_ubit;
        if (my_vec.x > 0.0f) {
            my_ubit = 1;
        } else {
            my_ubit = -1;
        }
        if (cLib_distanceAngleS(param_0->shape_angle.y, param_2) > 0x4000) {
            my_ubit = -my_ubit;
        }
        if (cLib_checkBit(label, dBgW_Base::PPLABEL_PULL)) {
            my_ubit = -my_ubit;
        }
        static_cast<daObjYtaihou_c*>(param_0)->setAddAngle(my_ubit);
    }
    return (daObjYtaihou_c*) param_0;
}

/* 80B9FD5C-80B9FDE8 00035C 008C+00 1/1 0/0 0/0 .text            searchIronBallCallback__FPvPv */
static void* searchIronBallCallback(void* arg_lhs, void* arg_rhs) {
    // NONMATCHING
    if (fopAcM_GetProfName(arg_lhs) == 0x2fc) {
        daObjYtaihou_c* taihou_rhs = (daObjYtaihou_c*)arg_rhs;
        if ( ((daObjCarry_c*)arg_lhs)->getType() == 3 && ((daObjCarry_c*)arg_lhs)->isDraw()
          && fopAcM_searchActorDistance2(taihou_rhs, ((daObjCarry_c*)arg_lhs)) < 40000.0f) {
            taihou_rhs->setIronBall(((daObjCarry_c*)arg_lhs));
            return arg_lhs;
        }
    }
    return NULL;
}

/* 80BA11E0-80BA11E4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static char const* l_arcName[1] = {"Y_taihou"};

/* 80B9FDE8-80B9FEB0 0003E8 00C8+00 1/1 0/0 0/0 .text            create1st__14daObjYtaihou_cFv */
int daObjYtaihou_c::create1st() {
    int phase = dComIfG_resLoad(this, l_arcName[0]);
    if (phase == cPhs_COMPLEATE_e) {
        setMtx();
        phase = MoveBGCreate(l_arcName[0], 7, dBgS_MoveBGProc_TypicalRotY, 0x4550, &mMtx);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
        loadAngle();
        setNextAngle();
        shape_angle.x = 0;
        shape_angle.y = current.angle.z;
        fopAcM_Search(searchIronBallCallback,this);
        // FIXME: Need mDoHIO_entry_c::entryHIO
    }
    return phase;
}

/* 80B9FEB0-80B9FF08 0004B0 0058+00 3/3 0/0 0/0 .text
 * setIronBall__14daObjYtaihou_cFP12daObjCarry_c                */
void daObjYtaihou_c::setIronBall(daObjCarry_c* obj) {
    mIronBallId = fopAcM_GetID(obj);
    obj->offDraw();
    obj->startCtrl();
    obj->current.pos = current.pos;
    obj->old.pos = current.pos;
}

/* 80B9FF08-80B9FF1C 000508 0014+00 1/1 0/0 0/0 .text            getEvent__14daObjYtaihou_cFUc */
int daObjYtaihou_c::getEvent(u8 param_0) {
    return fopAcM_GetParamBit(this, (param_0 & 0x1f) << 3, 8);
}

/* 80B9FF1C-80B9FFAC 00051C 0090+00 1/1 0/0 0/0 .text            loadAngle__14daObjYtaihou_cFv */
void daObjYtaihou_c::loadAngle() {
    int sw = home.angle.x >> 8 & 0xff;
    field_0x775 = (fopAcM_isSwitch(this, home.angle.x & 0xff)) ? 2 : 0;
    if (fopAcM_isSwitch(this, sw)) {
        field_0x775 |= 1;
    }
}

/* 80B9FFAC-80BA0060 0005AC 00B4+00 1/1 0/0 0/0 .text            saveAngle__14daObjYtaihou_cFv */
void daObjYtaihou_c::saveAngle() {
    int sw_1 = home.angle.x & 0xff;
    int sw_2 = home.angle.x >> 8 & 0xff;
    if (field_0x775 & 2) {
        fopAcM_onSwitch(this, sw_1);
    } else {
        fopAcM_offSwitch(this, sw_1);
    }
    if (field_0x775 & 1) {
        fopAcM_onSwitch(this, sw_2);
    } else {
        fopAcM_offSwitch(this, sw_2);
    }
}

/* ############################################################################################## */
/* 80BA11E4-80BA1228 000004 0044+00 1/1 0/0 0/0 .data            l_cc_cyl_src */
static dCcD_SrcCyl l_cc_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        120.0f, // mRadius
        200.0f // mHeight
    } // mCyl
};

/* 80BA1228-80BA1230 000048 0008+00 1/1 0/0 0/0 .data            l_offsetAngle$3829 */
static u16 l_offsetAngle[4] = {
    0x0, 0xC000, 0x8000, 0x4000,
};

/* 80BA0060-80BA0084 000660 0024+00 2/2 0/0 0/0 .text            setNextAngle__14daObjYtaihou_cFv */
void daObjYtaihou_c::setNextAngle() {
    current.angle.z = home.angle.y + l_offsetAngle[field_0x775];
}

/* 80BA1318-80BA131C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80BA131C-80BA1320 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80BA1320-80BA1324 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80BA1324-80BA1328 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80BA1328-80BA132C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80BA132C-80BA1330 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80BA1330-80BA1334 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80BA1334-80BA1338 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80BA1338-80BA133C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80BA133C-80BA1340 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80BA1340-80BA1344 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80BA1344-80BA1348 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80BA1348-80BA134C 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80BA134C-80BA1350 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80BA1350-80BA1354 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80BA1354-80BA1358 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80BA1358-80BA135C 000048 0004+00 1/1 0/0 0/0 .bss             l_wheelMinR$3836 */
static f32 l_wheelMinR;

/* 80BA135C-80BA1360 00004C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 lbl_396_bss_4C;

/* 80BA0084-80BA0208 000684 0184+00 2/2 0/0 0/0 .text            setMtx__14daObjYtaihou_cFv */
void daObjYtaihou_c::setMtx() {
    // NONMATCHING
    home.angle.z += (s16) ((s16)(shape_angle.y - old.angle.y) * 0.8f);
    if ((s8)lbl_396_bss_4C == 0) {
        l_wheelMinR = cM_scos(0xccc) * 60.0f;
        lbl_396_bss_4C = 1;
    }
    int iVar1 = abs(home.angle.z % 0x1999) - 0xccc;
    f32 my_val = 59.0f - l_wheelMinR / cM_scos(iVar1);
    speedF += speed.y;
    speed.y *= 0.6f;
    speed.y -= speedF * 0.4f;
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y - my_val, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::transM(0.0f, 0.0f, speedF);
    mDoMtx_copy(mDoMtx_stack_c::get(), mMtx);
}

/* 80BA0208-80BA045C 000808 0254+00 1/1 0/0 0/0 .text            rotateCheck__14daObjYtaihou_cFv */
void daObjYtaihou_c::rotateCheck() {
    // NONMATCHING
    if (shape_angle.y != current.angle.y) {
        cLib_chaseAngleS(&current.angle.x, 0xbe, 5);
        if (cLib_chaseAngleS(&shape_angle.y, current.angle.z, current.angle.x)) {
            field_0x772 = 0;
            daPy_getLinkPlayerActorClass()->offPushPullKeep();
            field_0x774 = -1;
            fopAcM_seStartCurrent(this, 0x801cb, 0);
        } else {
            fopAcM_seStartCurrentLevel(this, 0x801ca, 0);
        }
    } else if (field_0x774) {
        daPy_py_c* player_class = daPy_getLinkPlayerActorClass();
        if (field_0x774 < 0) {
            if (player_class->getBaseAnimeFrame() > 10.0f) {
                field_0x774 = 1;
            }
        } else {
            if (player_class->getBaseAnimeFrame() <= 10.0f) {
                field_0x774 = 0;
            }
        }
    } else if (mAddAngle == 0 || mAddAngle != field_0x777) {
        field_0x772 = 0;
    } else if (mStartBomb == 0 && ++field_0x772 > 10) {
        // TODO.
#if 0
iVar3 = (int)(char)this[0x77e] + (uint)(byte)this[0x77d] + 4;
cVar2 = (char)(iVar3 >> 0x1f);
this[0x77d] = (daObjYtaihou_c)
            ((cVar2 * '\x04' |
            (byte)(((int)(char)this[0x77e] + (uint)(byte)this[0x77d]) * 0x40000000 +
                    (iVar3 >> 0x1f) >> 0x1e)) - cVar2);
#endif
        current.angle.x = 0;
        setNextAngle();
        saveAngle();
        daPy_getLinkPlayerActorClass()->onPushPullKeep();
    }
}

/* ############################################################################################## */
/* 80BA1190-80BA119C 00003C 000C+00 0/1 0/0 0/0 .rodata          l_hibanaOffset$3954 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_hibanaOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x16, 0x00, 0x00, 0x42, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BA1190, &l_hibanaOffset);
#pragma pop

/* 80BA119C-80BA11A8 000048 000C+00 0/1 0/0 0/0 .rodata          l_shotOffset$3961 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_shotOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x43, 0x02, 0x00, 0x00, 0xC2, 0xC8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BA119C, &l_shotOffset);
#pragma pop

/* 80BA11A8-80BA11B4 000054 000C+00 0/1 0/0 0/0 .rodata          l_shotSmokeOffset$3962 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const l_shotSmokeOffset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BA11A8, &l_shotSmokeOffset);
#pragma pop

/* 80BA11B4-80BA11B8 000060 0004+00 0/1 0/0 0/0 .rodata          @4105 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4105 = 55.0f;
COMPILER_STRIP_GATE(0x80BA11B4, &lit_4105);
#pragma pop

/* 80BA11B8-80BA11BC 000064 0004+00 0/1 0/0 0/0 .rodata          @4106 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4106 = 95.0f;
COMPILER_STRIP_GATE(0x80BA11B8, &lit_4106);
#pragma pop

/* 80BA11BC-80BA11C0 000068 0004+00 0/1 0/0 0/0 .rodata          @4107 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4107 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BA11BC, &lit_4107);
#pragma pop

/* 80BA11C0-80BA11C4 00006C 0004+00 0/1 0/0 0/0 .rodata          @4108 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4108 = 210.0f;
COMPILER_STRIP_GATE(0x80BA11C0, &lit_4108);
#pragma pop

/* 80BA11C4-80BA11C8 000070 0004+00 0/1 0/0 0/0 .rodata          @4109 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4109 = 40.0f;
COMPILER_STRIP_GATE(0x80BA11C4, &lit_4109);
#pragma pop

/* 80BA1360-80BA1370 000050 000C+04 0/1 0/0 0/0 .bss             @3951 */
#pragma push
#pragma force_active on
static u8 lit_3951[12 + 4 /* padding */];
#pragma pop

/* 80BA1370-80BA137C 000060 000C+00 0/1 0/0 0/0 .bss             l_effectScale$3950 */
#pragma push
#pragma force_active on
static u8 l_effectScale[12];
#pragma pop

/* 80BA045C-80BA0964 000A5C 0508+00 1/1 0/0 0/0 .text            shotCheck__14daObjYtaihou_cFv */
void daObjYtaihou_c::shotCheck() {
    // NONMATCHING
}

/* 80BA0964-80BA0974 000F64 0010+00 2/1 0/0 0/0 .text            eventStart__14daObjYtaihou_cFv */
void daObjYtaihou_c::eventStart() {
    // NONMATCHING
}

/* 80BA0974-80BA09E4 000F74 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjYtaihou_cFv */
int daObjYtaihou_c::CreateHeap() {
    // NONMATCHING
}

/* 80BA09E4-80BA0A94 000FE4 00B0+00 1/0 0/0 0/0 .text            Create__14daObjYtaihou_cFv */
int daObjYtaihou_c::Create() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA11C8-80BA11D4 000074 000C+00 1/1 0/0 0/0 .rodata          l_cc_offset$4147 */
SECTION_RODATA static u8 const l_cc_offset[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x48, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80BA11C8, &l_cc_offset);

/* 80BA0A94-80BA0B4C 001094 00B8+00 1/0 0/0 0/0 .text            Execute__14daObjYtaihou_cFPPA3_A4_f
 */
int daObjYtaihou_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BA0B4C-80BA0C1C 00114C 00D0+00 1/0 0/0 0/0 .text            Draw__14daObjYtaihou_cFv */
int daObjYtaihou_c::Draw() {
    // NONMATCHING
}

/* 80BA0C1C-80BA0C88 00121C 006C+00 1/0 0/0 0/0 .text            Delete__14daObjYtaihou_cFv */
int daObjYtaihou_c::Delete() {
    // NONMATCHING
}

/* 80BA0C88-80BA0DA4 001288 011C+00 1/0 0/0 0/0 .text daObjYtaihou_create1st__FP14daObjYtaihou_c
 */
static void daObjYtaihou_create1st(daObjYtaihou_c* i_this) {
    // NONMATCHING
    fopAcM_SetupActor(i_this, daObjYtaihou_c);
    i_this->create1st();
}

/* 80BA0E90-80BA0EB0 001490 0020+00 1/0 0/0 0/0 .text
 * daObjYtaihou_MoveBGDelete__FP14daObjYtaihou_c                */
static void daObjYtaihou_MoveBGDelete(daObjYtaihou_c* param_0) {
    // NONMATCHING
}

/* 80BA0EB0-80BA0ED0 0014B0 0020+00 1/0 0/0 0/0 .text
 * daObjYtaihou_MoveBGExecute__FP14daObjYtaihou_c               */
static void daObjYtaihou_MoveBGExecute(daObjYtaihou_c* param_0) {
    // NONMATCHING
}

/* 80BA0ED0-80BA0EFC 0014D0 002C+00 1/0 0/0 0/0 .text daObjYtaihou_MoveBGDraw__FP14daObjYtaihou_c
 */
static void daObjYtaihou_MoveBGDraw(daObjYtaihou_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BA1230-80BA1250 -00001 0020+00 1/0 0/0 0/0 .data            daObjYtaihou_METHODS */
static actor_method_class daObjYtaihou_METHODS = {
    (process_method_func)daObjYtaihou_create1st,
    (process_method_func)daObjYtaihou_MoveBGDelete,
    (process_method_func)daObjYtaihou_MoveBGExecute,
    0,
    (process_method_func)daObjYtaihou_MoveBGDraw,
};

/* 80BA1250-80BA1280 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Ytaihou */
extern actor_process_profile_definition g_profile_Obj_Ytaihou = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Ytaihou,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjYtaihou_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  635,                    // mPriority
  &daObjYtaihou_METHODS,  // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80BA0FA4-80BA1118 0015A4 0174+00 2/1 0/0 0/0 .text            __dt__14daObjYtaihou_cFv */
daObjYtaihou_c::~daObjYtaihou_c() {
    // NONMATCHING
}

AUDIO_INSTANCES;

/* 80BA11D4-80BA11D4 000080 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
