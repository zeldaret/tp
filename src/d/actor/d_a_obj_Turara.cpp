/**
 * @file d_a_obj_Turara.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_Turara.h"
#include "dol2asm.h"
#include "SSystem/SComponent/c_math.h"

class daTurara_HIO_c : public fOpAcm_HIO_entry_c {
public:
    /* 80B9CB8C */ daTurara_HIO_c();
    /* 80B9E5B4 */ virtual ~daTurara_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ f32 field_0x04;
    /* 0x08 */ f32 mGravity;
    /* 0x0c */ f32 mMaxGravity;
    /* 0x10 */ u8 mWaitTime;
    /* 0x11 */ u8 mShockStrength;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1c */ f32 field_0x1c;
};

STATIC_ASSERT(sizeof(daTurara_HIO_c) == 0x20);

//
// Declarations:
//

/* 80B9CB8C-80B9CBF8 0000EC 006C+00 1/1 0/0 0/0 .text            __ct__14daTurara_HIO_cFv */
daTurara_HIO_c::daTurara_HIO_c() {
    field_0x04 = 450.f;
    mGravity = 10.0f;
    mMaxGravity = 200.0f;
    mWaitTime = 0x1e;
    field_0x14 = 5.0f;
    mShockStrength = 0x4;
    field_0x18 = 3.0f;
    field_0x1c = 5.0f;
}

/* 80B9CC9C-80B9CD74 0001FC 00D8+00 2/2 0/0 0/0 .text            setBaseMtx__10daTurara_cFv */
void daTurara_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(0, shape_angle.y, 0);
    mDoMtx_stack_c::ZXYrotM(field_0x750, field_0x752, field_0x754);
    mDoMtx_stack_c::transM(field_0x758, field_0x75c, field_0x760);
    mpModel[field_0x984]->setBaseScale(scale);
    mpModel[field_0x984]->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80B9EBA4-80B9EBC4 000014 0020+00 5/5 0/0 0/0 .bss             l_HIO */
static daTurara_HIO_c l_HIO;

/* ############################################################################################## */
/* 80B9E908-80B9E938 000014 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__10daTurara_c */
const dCcD_SrcGObjInf daTurara_c::mCcDObjInfo = {
    {0, // mFlags
        {
            {0x20, 0x1, 0x1f},  // mObjAt
            {0xF8400022, 0x11}, // mObjTg
            {0x79}              // mObjCo
        } // mSrcObjHitInf
    }, // mObj
    {1, 0, 1, 0, 0}, // mGObjAt
    {0xA, 0, 0, 0, 2}, // mGObjTg
    {0} // mGObjCo
};

/* 80B9E99C-80B9E9E0 000020 0044+00 2/2 0/0 0/0 .data            mCcDCyl__10daTurara_c */
dCcD_SrcCyl daTurara_c::mCcDCyl = {
    daTurara_c::mCcDObjInfo, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80B9E938-80B9E940 000044 0008+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
static u32 const l_bmdIdx[2] = {5, 8};

/* 80B9CD74-80B9CED8 0002D4 0164+00 1/0 0/0 0/0 .text            CreateHeap__10daTurara_cFv */
int daTurara_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*) dComIfG_getObjectRes("M_Turara", l_bmdIdx[field_0x98c]);

    if (modelData == NULL) {
        // FIXME: For shield decomp matching, needs a JUT assert.
    }
    if (field_0x98c == 0) {
        mpModel[0] = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    } else {
        mpModel[0] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    }
    if (mpModel[0] == NULL) {
        return 0;
    }

    modelData = (J3DModelData*) dComIfG_getObjectRes("M_Turara", 9);
    if (modelData == NULL) {
        // FIXME: For shield decomp matching, needs a JUT assert.
    }
    mpModel[1] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel[1] == NULL) {
        return 0;
    }
    dBgW* my_dBgW = new dBgW;
    field_0x980 = my_dBgW;
    if (field_0x980 == NULL || field_0x980->Set((cBgD_t *)dComIfG_getObjectRes("M_Turara", 0xd),
                                                1, &mBgMtx) != 0) {
        field_0x980 = NULL;
        return 0;
    }
    return 1;
}

/* 80B9CED8-80B9D29C 000438 03C4+00 1/1 0/0 0/0 .text            create__10daTurara_cFv */
int daTurara_c::create() {
    fopAcM_SetupActor(this, daTurara_c);
    u8 my_bit = getSwBit3();
    if (fopAcM_isSwitch(this, my_bit)) {
        return cPhs_ERROR_e;
    }
    int phase = dComIfG_resLoad(&mPhaseReq,"M_Turara");
    if (phase == cPhs_COMPLEATE_e) {
        u8 my_bool = 0;
        field_0x98c = shape_angle.x;
        if (field_0x98c != 0) {
            if (field_0x98c == 1) {
                my_bool = 1;
                u8 my_bit1 = getSwBit1();
                fopAcM_onSwitch(this, my_bit1);
            }
            fopAcM_SetGroup(this,0);
            field_0x98c = 1;
        } else {
            fopAcM_SetGroup(this,2);
        }
        if (MoveBGCreate("M_Turara", 0xc, dBgS_MoveBGProc_TypicalRotY, 0x2180, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }
        mAcchCir.SetWall(150.0f, 150.0f);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);
        mAcch.SetWaterCheckOffset(10000.0f);
        field_0x748 = 0;
        field_0x750 = 0;
        field_0x752 = 0;
        field_0x754 = 0;
        field_0x758 = 0.0f;
        field_0x75c = 0.0f;
        field_0x760 = 0.0f;
        mColliderStts.Init(0xff, 0xff, this);
        mCylCollider.Set(mCcDCyl);
        mCylCollider.SetStts(&mColliderStts);
        mCylCollider.OffAtSetBit();
        u8 my_bit1 = getSwBit1();
        if (fopAcM_isSwitch(this, my_bit1)) {
            field_0x984 = 1;
            mCylCollider.OffCoSetBit();
            if (mpBgW) {
                dComIfG_Bgsp().Release(mpBgW);
            }
            if (field_0x980) {
                dComIfG_Bgsp().Regist(field_0x980, this);
                field_0x980->Move();
            }
            if (my_bool) {
                mMode = 3;
            } else {
                setFallStat();
            }
        } else {
            field_0x984 = 0;
            field_0x5c9 = getSwBit2();
            init_modeWait();
        }
        fopAcM_SetMtx(this, mpModel[field_0x984]->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel[field_0x984]->getModelData());
        setBaseMtx();
        field_0x994 = 1;
        // FIXME: Needs entryHIO here.
    }
    return phase;
}

/* 80B9D468-80B9D4CC 0009C8 0064+00 1/1 0/0 0/0 .text            setFallStat__10daTurara_cFv */
void daTurara_c::setFallStat() {
    mAcch.CrrPos(dComIfG_Bgsp());
    current.pos.y = mAcch.GetGroundH();
    mAcch.CrrPos(dComIfG_Bgsp());
    mMode = 3;
}

/* 80B9D4CC-80B9D548 000A2C 007C+00 1/0 0/0 0/0 .text            Execute__10daTurara_cFPPA3_A4_f */
int daTurara_c::Execute(Mtx** i_mtx) {
    eventUpdate();
    move();
    *i_mtx = &mpModel[field_0x984]->getBaseTRMtx();
    mInWater = mAcch.ChkWaterIn();
    setBaseMtx();
    mColliderStts.Move();
    return 1;
}

/* 80B9D548-80B9D72C 000AA8 01E4+00 1/1 0/0 0/0 .text            move__10daTurara_cFv */
void daTurara_c::move() {
    typedef void (daTurara_c::*modeFunc)();
    static modeFunc mode_proc[] = {&daTurara_c::modeWait, &daTurara_c::modeDropInit,
                                   &daTurara_c::modeDrop, &daTurara_c::modeDropEnd,
                                   &daTurara_c::modeDropEnd2};
    (this->*mode_proc[mMode])();
    field_0x750 = field_0x74c * cM_scos(field_0x748 * 0x3000);
    field_0x754 = field_0x74c * cM_ssin(field_0x748 * 0x3000);
    cLib_addCalc0(&field_0x74c, 0.1f, 10.0f);
    field_0x748 += 1;
    if (field_0x984 == 0) {
        mCylCollider.SetR(170.0f);
    } else {
        mCylCollider.SetR(130.0f);
    }
    mCylCollider.SetH(510.0f);
    cXyz my_vec(current.pos);
    my_vec.y -= 50.0f;
    mCylCollider.SetC(my_vec);
    dComIfG_Ccsp()->Set(&mCylCollider);
}

/* 80B9D72C-80B9D738 000C8C 000C+00 1/1 0/0 0/0 .text            init_modeWait__10daTurara_cFv */
void daTurara_c::init_modeWait() {
    mMode = 0;
}

/* 80B9D738-80B9D998 000C98 0260+00 1/0 0/0 0/0 .text            modeWait__10daTurara_cFv */
void daTurara_c::modeWait() {
    if (field_0x5c9 != 0xff && fopAcM_isSwitch(this, field_0x5c9)) {
        if (getEvetID() != 0xff) {
            orderEvent(getEvetID(), 0xFF, 1);
        } else {
            eventStart();
        }
    }
    if (mCylCollider.ChkTgHit()) {
        dCcD_GObjInf* my_actor = mCylCollider.GetTgHitGObj();
        if (my_actor->GetAtType() == AT_TYPE_BOMB) {
            if (getEvetID() != 0xff) {
                orderEvent(getEvetID(), 0xFF, 1);
            } else {
                eventStart();
            }
        } else if (my_actor->GetAtType() == AT_TYPE_IRON_BALL) {
            dComIfGp_particle_set(0x8a8f, &current.pos, NULL, NULL, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
            dComIfGp_particle_set(0x8a90, &current.pos, NULL, NULL, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
            dComIfGp_particle_set(0x8a91, &current.pos, NULL, NULL, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
            s8 roomNo = fopAcM_GetRoomNo(this);
            mDoAud_seStart(Z2SE_OBJ_ICICLE_BRK, &current.pos, 0, dComIfGp_getReverb(roomNo));
            u8 swbit3 = getSwBit3();
            fopAcM_onSwitch(this, swbit3);
            fopAcM_delete(this);
        }
    }
}

/* 80B9D998-80B9D9BC 000EF8 0024+00 2/1 0/0 0/0 .text            eventStart__10daTurara_cFv */
bool daTurara_c::eventStart() {
    init_modeDropInit();
    return true;
}

/* 80B9D9BC-80B9DA00 000F1C 0044+00 1/1 0/0 0/0 .text            init_modeDropInit__10daTurara_cFv
 */
void daTurara_c::init_modeDropInit() {
    if (field_0x98c == 0) {
        mWaitTime = getWaitTime();
    } else {
        mWaitTime = l_HIO.mWaitTime;
    }
    field_0x74c = l_HIO.field_0x04;
    mMode = 1;
}

/* 80B9DA00-80B9DA44 000F60 0044+00 1/0 0/0 0/0 .text            modeDropInit__10daTurara_cFv */
void daTurara_c::modeDropInit() {
    if (mWaitTime != 0) {
        mWaitTime -= 1;
    } else {
        field_0x74c = 0.0f;
        init_modeDrop();
    }
}

/* 80B9DA44-80B9DB44 000FA4 0100+00 1/1 0/0 0/0 .text            init_modeDrop__10daTurara_cFv */
void daTurara_c::init_modeDrop() {
    fopAcM_SetGravity(this, -l_HIO.mGravity);
    fopAcM_SetMaxFallSpeed(this, -l_HIO.mMaxGravity);
    fopAcM_SetSpeedF(this, 0.0f);
    fopAcM_SetMtx(this, mpModel[field_0x984]->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel[field_0x984]->getModelData());
    mCylCollider.OnAtSetBit();
    mpBgW->OffRoofRegist();
    s8 roomNo = fopAcM_GetRoomNo(this);
    mDoAud_seStart(Z2SE_OBJ_ICICLE_FALL, &current.pos, 0, dComIfGp_getReverb(roomNo));
    mMode = 2;
}

/* 80B9DB44-80B9DB90 0010A4 004C+00 1/0 0/0 0/0 .text            modeDrop__10daTurara_cFv */
void daTurara_c::modeDrop() {
    fopAcM_posMoveF(this, mColliderStts.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());
    bgCheck();
}

/* 80B9DB90-80B9DBD0 0010F0 0040+00 1/1 0/0 0/0 .text            bgCheck__10daTurara_cFv */
void daTurara_c::bgCheck() {
    if (mAcch.ChkGroundHit() & 0xff) {
        if (field_0x98c == 0) {
            init_modeDropEnd2();
        } else {
            init_modeDropEnd();
        }
    }
}

/* 80B9DBD0-80B9DE48 001130 0278+00 1/1 0/0 0/0 .text            init_modeDropEnd__10daTurara_cFv */
void daTurara_c::init_modeDropEnd() {
    if (mAcch.ChkWaterIn() == 0) {
        dComIfGp_getVibration().StartShock(l_HIO.mShockStrength, 0xf, cXyz(0.0f, 1.0f, 0.0f));
    }
    dComIfGp_particle_set(0x8a8f, &current.pos, NULL, NULL);
    dComIfGp_particle_set(0x8a90, &current.pos, NULL, NULL);
    dComIfGp_particle_set(0x8a91, &current.pos, NULL, NULL);
    dComIfGp_particle_set(0x8a92, &current.pos, NULL, NULL);
    field_0x984 = 1;
    if (mpBgW) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    if (field_0x980) {
        dComIfG_Bgsp().Regist(field_0x980, this);
        field_0x980->Move();
    }
    mCylCollider.OffCoSetBit();
    mCylCollider.OffAtSetBit();
    u8 swbit1 = getSwBit1();
    fopAcM_onSwitch(this, swbit1);
    s8 roomNo = fopAcM_GetRoomNo(this);
    mDoAud_seStart(Z2SE_OBJ_ICICLE_LAND, &current.pos, 0, dComIfGp_getReverb(roomNo));
    mMode = 3;
}

/* 80B9DE48-80B9E078 0013A8 0230+00 1/0 0/0 0/0 .text            modeDropEnd__10daTurara_cFv */
void daTurara_c::modeDropEnd() {
    if (mCylCollider.ChkTgHit()) {
        dCcD_GObjInf* my_actor = mCylCollider.GetTgHitGObj();
        u32 att_type = my_actor->GetAtType();
        if ((att_type & AT_TYPE_UNK) || (att_type & AT_TYPE_20000000)) {
            if (field_0x980) {
                dComIfG_Bgsp().Release(field_0x980);
                field_0x980->Move();
            }
            csXyz my_vec(0, home.angle.y, 0);
            fopAcM_createItemFromTable(&current.pos, getItemTbleNum(), -1,
                                       fopAcM_GetHomeRoomNo(this), &my_vec, 0, (cXyz*)NULL,
                                       NULL, NULL, false);
        }
        dComIfGp_particle_set(0x8a8f, &current.pos, NULL, NULL);
        dComIfGp_particle_set(0x8a90, &current.pos, NULL, NULL);
        dComIfGp_particle_set(0x8a91, &current.pos, NULL, NULL);
        s8 roomNo = fopAcM_GetRoomNo(this);
        mDoAud_seStart(Z2SE_OBJ_ICICLE_BRK, &current.pos, 0, dComIfGp_getReverb(roomNo));
        u8 swbit3 = getSwBit3();
        fopAcM_onSwitch(this, swbit3);
        fopAcM_delete(this);
    }
}

/* 80B9E078-80B9E338 0015D8 02C0+00 1/1 0/0 0/0 .text            init_modeDropEnd2__10daTurara_cFv
 */
void daTurara_c::init_modeDropEnd2() {
    if (mAcch.ChkWaterIn() == 0) {
        dComIfGp_getVibration().StartShock(l_HIO.mShockStrength, 0xf, cXyz(0.0f, 1.0f, 0.0f));
    }
    if (mpBgW) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    mCylCollider.OffCoSetBit();
    mCylCollider.OffAtSetBit();
    s8 roomNo = fopAcM_GetRoomNo(this);
    mDoAud_seStart(Z2SE_OBJ_ICICLE_BRK, &current.pos, 0, dComIfGp_getReverb(roomNo));
    current.pos.y -= 100.0f;
    cXyz first_vec(current.pos);
    first_vec.y += 100.0f;
    s16 my_proc = PROC_E_KK;
    field_0x988 = fopAcM_create(my_proc, getSwBit1() << 0x10 | 3, &first_vec, fopAcM_GetRoomNo(this), 0, 0, 0xffffffff);
    // FIXME: JUT assert needed here
    cXyz second_vec(0.7f, 0.7f, 0.7f);
    dComIfGp_particle_set(0x8a8f, &first_vec, NULL, &second_vec);
    dComIfGp_particle_set(0x8a90, &first_vec, NULL, &second_vec);
    dComIfGp_particle_set(0x8a91, &first_vec, NULL, &second_vec);
    dComIfGp_particle_set(0x8a92, &first_vec, NULL, &second_vec);
    u8 swbit = getSwBit3();
    fopAcM_onSwitch(this, swbit);
    field_0x994 = 0;
    mMode = 4;
}

/* 80B9E338-80B9E388 001898 0050+00 1/0 0/0 0/0 .text            modeDropEnd2__10daTurara_cFv */
void daTurara_c::modeDropEnd2() {
    if (fopAcM_SearchByID(field_0x988)) {
        fopAcM_delete(this);
    }
}

/* 80B9E388-80B9E478 0018E8 00F0+00 1/0 0/0 0/0 .text            Draw__10daTurara_cFv */
int daTurara_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel[field_0x984], &tevStr);
    if (field_0x98c == 0) {
        fopAcM_setEffectMtx(this, mpModel[field_0x984]->getModelData());
    }

    dComIfGd_setListBG();
    if (field_0x994) {
        mDoExt_modelUpdateDL(mpModel[field_0x984]);
    }
    dComIfGd_setList();
    return 1;
}

/* 80B9E478-80B9E4E0 0019D8 0068+00 1/0 0/0 0/0 .text            Delete__10daTurara_cFv */
int daTurara_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "M_Turara");
    if (field_0x980 && field_0x980->ChkUsed()) {
        dComIfG_Bgsp().Release(field_0x980);
    }
    return 1;
}

/* 80B9E4E0-80B9E50C 001A40 002C+00 1/0 0/0 0/0 .text            daTurara_Draw__FP10daTurara_c */
static int daTurara_Draw(daTurara_c* i_this) {
    return i_this->Draw();
}

/* 80B9E50C-80B9E52C 001A6C 0020+00 1/0 0/0 0/0 .text            daTurara_Execute__FP10daTurara_c */
static int daTurara_Execute(daTurara_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80B9E52C-80B9E54C 001A8C 0020+00 1/0 0/0 0/0 .text            daTurara_Delete__FP10daTurara_c */
static int daTurara_Delete(daTurara_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80B9E54C-80B9E56C 001AAC 0020+00 1/0 0/0 0/0 .text            daTurara_Create__FP10fopAc_ac_c */
static int daTurara_Create(fopAc_ac_c* i_this) {
    return static_cast<daTurara_c*>(i_this)->create();
}

/* 80B9EA58-80B9EA78 -00001 0020+00 1/0 0/0 0/0 .data            l_daTurara_Method */
static actor_method_class l_daTurara_Method = {
    (process_method_func)daTurara_Create,
    (process_method_func)daTurara_Delete,
    (process_method_func)daTurara_Execute,
    0,
    (process_method_func)daTurara_Draw,
};

/* 80B9EA78-80B9EAA8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Turara */
extern actor_process_profile_definition g_profile_Obj_Turara = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Turara,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daTurara_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  545,                    // mPriority
  &l_daTurara_Method,     // sub_method
  0x00044100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80B9E970-80B9E970 00007C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
