/**
 * @file d_a_obj_Y_taihou.cpp
 * 
*/

#include "d/actor/d_a_obj_Y_taihou.h"
#include "d/d_bg_w.h"
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
    if (fopAcM_checkCarryNow(param_2) != 0) {
        f32 actor_dist = fopAcM_searchActorDistanceY(param_0, param_2);
        if (actor_dist < 150.0f || actor_dist > 200.0f) {
            return;
        }
    }
    if (fopAcM_GetProfName(param_2) == 0x2fc) {
        int iVar1 = ((daObjYtaihou_c*)param_0)->getIronBallId();
        if (iVar1 == 0xffffffff && ((daObjCarry_c*)param_2)->getType() == daObjCarry_c::TYPE_IRON_BALL) {
            ((daObjYtaihou_c*)param_0)->setIronBall((daObjCarry_c*)param_2);
            fopAcM_seStartCurrent(param_0, Z2SE_OBJ_CANNON_CHARGE, 0);
        }
    } else if (fopAcM_GetProfName(param_2) == 0x221) {
        ((daObjYtaihou_c*)param_0)->startBomb();
        fopAcM_delete(param_2);
        fopAcM_seStartCurrent(param_0, Z2SE_OBJ_CANNON_CHARGE, 0);
    }
}

/* 80B9FC40-80B9FD20 000240 00E0+00 1/1 0/0 0/0 .text
 * pushPullcallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel */
static fopAc_ac_c* pushPullcallBack(fopAc_ac_c* param_0, fopAc_ac_c* param_1, s16 param_2,
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
    return param_0;
}

/* 80B9FD5C-80B9FDE8 00035C 008C+00 1/1 0/0 0/0 .text            searchIronBallCallback__FPvPv */
static void* searchIronBallCallback(void* i_actor, void* i_data) {
    // NONMATCHING
    daObjYtaihou_c* taihou_rhs = (daObjYtaihou_c*)i_data;
    if (fopAcM_GetProfName(i_actor) == PROC_Obj_Carry) {
        daObjCarry_c* pCarry = ((daObjCarry_c*)i_actor);
        if ( ((daObjCarry_c*)i_actor)->getType() == daObjCarry_c::TYPE_IRON_BALL) {
            if ( pCarry->isDraw() == 0
                && fopAcM_searchActorDistance2(taihou_rhs, pCarry) < 40000.0f) {
                taihou_rhs->setIronBall(pCarry);
                return pCarry;
            }
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

UNK_BSS(1109);
UNK_BSS(1107);
UNK_BSS(1105);
UNK_BSS(1104);
UNK_BSS(1099);
UNK_BSS(1097);
UNK_BSS(1095);
UNK_BSS(1094);
UNK_BSS(1057);
UNK_BSS(1055);
UNK_BSS(1053);
UNK_BSS(1052);
UNK_BSS(1014);
UNK_BSS(1012);
UNK_BSS(1010);
UNK_BSS(1009);

/* 80BA1358-80BA135C 000048 0004+00 1/1 0/0 0/0 .bss             l_wheelMinR$3836 */
static f32 l_wheelMinR;

/* 80BA135C-80BA1360 00004C 0004+00 1/1 0/0 0/0 .bss             None */
static u8 lbl_396_bss_4C;

/* 80BA0084-80BA0208 000684 0184+00 2/2 0/0 0/0 .text            setMtx__14daObjYtaihou_cFv */
void daObjYtaihou_c::setMtx() {
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
    if (shape_angle.y != current.angle.z) {
        cLib_chaseAngleS(&current.angle.x, 0xbe, 5);
        if (cLib_chaseAngleS(&shape_angle.y, current.angle.z, current.angle.x)) {
            field_0x772 = 0;
            daPy_getLinkPlayerActorClass()->offPushPullKeep();
            field_0x774 = -1;
            fopAcM_seStartCurrent(this, Z2SE_OBJ_CANNON_STOP, 0);
        } else {
            fopAcM_seStartCurrentLevel(this, Z2SE_OBJ_CANNON_MOVE, 0);
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
    } else if (mAddAngle == 0 || mAddAngle != mOldAddAngle) {
        field_0x772 = 0;
    } else if (mStartBomb == 0 && ++field_0x772 > 10) {
        // FIXME: Order of registers in add statement:
        int temp = field_0x775;
        temp = mAddAngle + temp;
        temp += 4;
        field_0x775 = (temp) % 4;
        current.angle.x = 0;
        setNextAngle();
        saveAngle();
        daPy_getLinkPlayerActorClass()->onPushPullKeep();
    }
}

/* ############################################################################################## */
/* 80BA1190-80BA119C 00003C 000C+00 0/1 0/0 0/0 .rodata          l_hibanaOffset$3954 */
static const Vec l_hibanaOffset = {0.0f, 150.0f, 50.0f};

/* 80BA119C-80BA11A8 000048 000C+00 0/1 0/0 0/0 .rodata          l_shotOffset$3961 */
static const Vec l_shotOffset = {0.0f, 130.0f, -100.0f};

/* 80BA11A8-80BA11B4 000054 000C+00 0/1 0/0 0/0 .rodata          l_shotSmokeOffset$3962 */
static const Vec l_shotSmokeOffset = {0.0f, 0.0f, 0.0f};

/* 80BA045C-80BA0964 000A5C 0508+00 1/1 0/0 0/0 .text            shotCheck__14daObjYtaihou_cFv */
void daObjYtaihou_c::shotCheck() {
    if (mStartBomb == 0) {
        f32 player_dist = fopAcM_searchPlayerDistanceY(this);
        daPy_py_c *player_actor = daPy_getLinkPlayerActorClass();
        if (55.0f < player_dist && player_dist < 95.0f && fopAcM_searchPlayerDistanceXZ(this) < 150.0f) {
            s16 player_angle = fopAcM_searchPlayerAngleY(this);
            if (cLib_distanceAngleS(player_angle, shape_angle.y) < 0x2000
                && cLib_distanceAngleS(player_actor->shape_angle.y, player_angle) > 0x6800) {
                if (mCyl.GetCoHitCallback() == 0) {
                    if (player_actor->getGrabPutStart()) {
                        mCyl.SetCoHitCallback(ccHitCallback);
                        return;
                    }
                    player_actor->onDoExchangePutIn();
                } else {
                    if (player_actor->getGrabActorID() != 0xffffffff) {
                        return;
                    }
                }
            }
        }
    } else if (mStartBomb < 0) {
        int event = getEvent(field_0x775);
        if (mIronBallId != 0xffffffff && event != 0xff) {
            orderEvent(event, 0xff, 1);
        } else {
            eventStart();
        }
    } else {
        if (cLib_calcTimer(&mStartBomb)) {
            if (mStartBomb > 4) {
                static cXyz l_effectScale(1.8f, 1.8f, 1.8f);
                cXyz my_vec_0;
                cMtx_multVec(mMtx, &l_hibanaOffset, &my_vec_0);
                mParticleKeys[0] = dComIfGp_particle_set(mParticleKeys[0], 0x1de, &my_vec_0, &tevStr,
                                                     NULL, &l_effectScale, 0xff, NULL, -1,
                                                     NULL, NULL, NULL);
                mParticleKeys[1] = dComIfGp_particle_set(mParticleKeys[1], 0x1df, &my_vec_0, &tevStr,
                                                     NULL, &l_effectScale, 0xff, NULL, -1,
                                                     NULL, NULL, NULL);
                fopAcM_seStartCurrentLevel(this, Z2SE_OBJ_BOMB_IGNITION, 0);
            } else if (mStartBomb == 4) {
                daObjCarry_c* pCarry = (daObjCarry_c*) fopAcM_SearchByID(mIronBallId);
                if (pCarry) {
                    cXyz my_vec_0;
                    cMtx_multVec(mMtx, &l_shotOffset, &my_vec_0);
                    pCarry->current.pos = my_vec_0;
                    pCarry->old.pos = my_vec_0;
                    pCarry->onDraw();
                    pCarry->endCtrl();
                    s16 adj_angle = shape_angle.y + 0x8000;
                    f32 cos_val = cM_scos(3000) * 210.0f;
                    f32 sin_val = cM_ssin(3000) * 210.0f;
                    pCarry->setPower(this, sin_val, cos_val, adj_angle);
                }
                mIronBallId = -1;
                cXyz my_vec_1;
                cMtx_multVec(mMtx, &l_shotSmokeOffset, &my_vec_1);
                dComIfGp_particle_set(0x8ae4, &my_vec_1, &tevStr, &shape_angle, 0);
                dComIfGp_particle_set(0x8ae5, &my_vec_1, &tevStr, &shape_angle, 0);
                dComIfGp_particle_set(0x8ae6, &my_vec_1, &tevStr, &shape_angle, 0);
                dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
                fopAcM_seStartCurrent(this, Z2SE_OBJ_BOMB_EXPLODE, 0);
                speed.y = 40.0f;
            }
        }
    }
    mCyl.SetCoHitCallback(NULL);
}

/* 80BA0964-80BA0974 000F64 0010+00 2/1 0/0 0/0 .text            eventStart__14daObjYtaihou_cFv */
BOOL daObjYtaihou_c::eventStart() {
    mStartBomb = 0x5a;
    return 1;
}

/* 80BA0974-80BA09E4 000F74 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjYtaihou_cFv */
int daObjYtaihou_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*) dComIfG_getObjectRes(l_arcName[0], 0x4);
    JUT_ASSERT(0x247, model_data != NULL);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel) {
        return 1;
    } else {
        return 0;
    }
}

/* 80BA09E4-80BA0A94 000FE4 00B0+00 1/0 0/0 0/0 .text            Create__14daObjYtaihou_cFv */
int daObjYtaihou_c::Create() {
    mpModel->setBaseTRMtx(mMtx);
    fopAcM_SetMtx(this, mMtx);
    J3DJoint* joint = mpModel->getModelData()->getJointNodePointer(1);
    Vec* min_vals = joint->getMin();
    Vec* max_vals = joint->getMax();
    fopAcM_setCullSizeBox(this, min_vals->x, min_vals->y, min_vals->z,
                          max_vals->x, max_vals->y, max_vals->z);
    mStts.Init(0xff, 0, this);
    mCyl.Set(l_cc_cyl_src);
    mCyl.SetStts(&mStts);
    mpBgW->SetPushPullCallback(pushPullcallBack);
    return 1;
}

/* ############################################################################################## */
/* 80BA11C8-80BA11D4 000074 000C+00 1/1 0/0 0/0 .rodata          l_cc_offset$4147 */
static const Vec l_cc_offset = {0.0f, 0.0f, -50.0f};

/* 80BA0A94-80BA0B4C 001094 00B8+00 1/0 0/0 0/0 .text            Execute__14daObjYtaihou_cFPPA3_A4_f
 */
int daObjYtaihou_c::Execute(Mtx** i_mtx) {
    old.angle.y = shape_angle.y;
    rotateCheck();
    setMtx();
    mpModel->setBaseTRMtx(mMtx);
    *i_mtx = &mMtx;
    eventUpdate();
    shotCheck();
    cXyz my_vec_0;
    cMtx_multVec(mMtx, &l_cc_offset, &my_vec_0);
    mCyl.SetC(my_vec_0);
    dComIfG_Ccsp()->Set(&mCyl);
    mOldAddAngle = mAddAngle;
    mAddAngle = 0;
    return 1;
}

/* 80BA0B4C-80BA0C1C 00114C 00D0+00 1/0 0/0 0/0 .text            Draw__14daObjYtaihou_cFv */
int daObjYtaihou_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    J3DModelData* model_data = mpModel->getModelData();
    model_data->getJointNodePointer(2)->getTransformInfo().mRotation.x = home.angle.z;
    model_data->getJointNodePointer(3)->getTransformInfo().mRotation.x = -home.angle.z;
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80BA0C1C-80BA0C88 00121C 006C+00 1/0 0/0 0/0 .text            Delete__14daObjYtaihou_cFv */
int daObjYtaihou_c::Delete() {
    dComIfG_resDelete(this, l_arcName[0]);
    daObjCarry_c* pCarry = (daObjCarry_c*) fopAcM_SearchByID(mIronBallId);
    if (pCarry) {
        setIronBall(pCarry);
    }
    return 1;
}

/* 80BA0C88-80BA0DA4 001288 011C+00 1/0 0/0 0/0 .text daObjYtaihou_create1st__FP14daObjYtaihou_c
 */
static void daObjYtaihou_create1st(daObjYtaihou_c* i_this) {
    fopAcM_SetupActor(i_this, daObjYtaihou_c);
    i_this->create1st();
}

/* 80BA0E90-80BA0EB0 001490 0020+00 1/0 0/0 0/0 .text
 * daObjYtaihou_MoveBGDelete__FP14daObjYtaihou_c                */
static void daObjYtaihou_MoveBGDelete(daObjYtaihou_c* i_this) {
    i_this->MoveBGDelete();
}

/* 80BA0EB0-80BA0ED0 0014B0 0020+00 1/0 0/0 0/0 .text
 * daObjYtaihou_MoveBGExecute__FP14daObjYtaihou_c               */
static void daObjYtaihou_MoveBGExecute(daObjYtaihou_c* i_this) {
    i_this->MoveBGExecute();
}

/* 80BA0ED0-80BA0EFC 0014D0 002C+00 1/0 0/0 0/0 .text daObjYtaihou_MoveBGDraw__FP14daObjYtaihou_c
 */
static void daObjYtaihou_MoveBGDraw(daObjYtaihou_c* i_this) {
    i_this->Draw();
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

AUDIO_INSTANCES;

/* 80BA11D4-80BA11D4 000080 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
