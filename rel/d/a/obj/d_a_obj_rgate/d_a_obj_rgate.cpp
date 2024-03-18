/**
 * d_a_obj_rgate.cpp
 * Bulblin Gate
 */

#include "rel/d/a/obj/d_a_obj_rgate/d_a_obj_rgate.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "SSystem/SComponent/c_math.h"
#include "d/a/d_a_player.h"
#include "d/bg/d_bg_w.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "rel/d/a/d_a_horse/d_a_horse.h"
#include "rel/d/a/obj/d_a_obj_eff/d_a_obj_eff.h"

#define GATE_L_JNT 1
#define GATE_R_JNT 2

enum {
    ACT_WAIT_EVENT,
    ACT_EVENT,
    ACT_DEAD,
};

enum {
    DEMO_ACT_WAIT,
    DEMO_ACT_ADJUSTMENT,
    DEMO_ACT_UNLOCK,
    DEMO_ACT_OPEN,
};

enum {
    AREA_CHECK_PLAYER = 1,
    AREA_CHECK_COACH,
    AREA_CHECK_HORSE,
};

/* 80CB9C98-80CB9CE8 000078 0050+00 3/3 0/0 0/0 .text            search_coach__FPvPv */
static void* search_coach(void* i_actor, void* i_data) {
    if (i_actor != NULL && fopAcM_IsActor(i_actor) && fopAcM_GetProfName(i_actor) == PROC_NPC_COACH)
    {
        return i_actor;
    }

    return NULL;
}

/* 80CB9CE8-80CB9DF8 0000C8 0110+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static int nodeCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        int jnt_no = i_joint->getJntNo();
        J3DModel* model_p = j3dSys.getModel();
        daObjRgate_c* actor_p = (daObjRgate_c*)model_p->getUserArea();

        if (jnt_no == GATE_L_JNT) {
            MTXCopy(model_p->getAnmMtx(jnt_no), mDoMtx_stack_c::get());
            mDoMtx_stack_c::YrotM(actor_p->mGateLAngle);
            model_p->setAnmMtx(jnt_no, mDoMtx_stack_c::get());

            MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
        } else if (jnt_no == GATE_R_JNT) {
            MTXCopy(model_p->getAnmMtx(jnt_no), mDoMtx_stack_c::get());
            mDoMtx_stack_c::YrotM(actor_p->mGateRAngle);
            model_p->setAnmMtx(jnt_no, mDoMtx_stack_c::get());

            MTXCopy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
        }
    }

    return 1;
}

/* ############################################################################################## */
/* 80CBC368-80CBC380 000000 0018+00 7/7 0/0 0/0 .rodata          l_cull_box */
static const Vec l_cull_box[2] = {
    {-400.0f, 0.0f, -400.0f},
    {400.0f, 450.0f, 400.0f},
};

/* 80CBC380-80CBC3C4 000018 0044+00 0/0 0/0 0/0 .rodata          l_cyl_src */
static const dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1e}, {0x20, 0x11}, 0x78}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},             // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6},             // mGObjTg
        {0x0},                                          // mGObjCo
    },                                                  // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        40.0f,               // mRadius
        350.0f               // mHeight
    }                        // mCyl
};

/* 80CB9DF8-80CB9F4C 0001D8 0154+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjRgate_cFv */
void daObjRgate_c::initBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    MTXCopy(mDoMtx_stack_c::get(), field_0xb14);
    mpGateModel->setBaseScale(scale);

    if (getSwNo() != 0xFF) {
        if (mpKeyModel != NULL) {
            mpKeyModel->setBaseScale(scale);
        }

        if (mpHookModel != NULL) {
            mpHookModel->setBaseScale(scale);
        }
    }

    cXyz eff_pos_offset(0.0f, 128.0f, 38.0f);
    mDoMtx_stack_c::YrotS(current.angle.y);
    mDoMtx_stack_c::multVec(&eff_pos_offset, &eff_pos_offset);

    mEffPos = current.pos;
    mEffPos += eff_pos_offset;
    mKeyRot.set(0, current.angle.y, 0);
    setBaseMtx();
}

/* 80CB9F4C-80CBA468 00032C 051C+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjRgate_cFv */
void daObjRgate_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mpGateModel->setBaseTRMtx(mDoMtx_stack_c::get());

    cXyz sp30(-350.0f, 0.0f, 0.0f);
    cXyz sp3C(350.0f, 0.0f, 0.0f);

    mDoMtx_stack_c::YrotS(current.angle.y);
    mDoMtx_stack_c::multVec(&sp30, &sp30);
    mDoMtx_stack_c::multVec(&sp3C, &sp3C);

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(sp30);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::YrotM(mGateLAngle);

    MTXCopy(mDoMtx_stack_c::get(), field_0xc30);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    field_0xbe8 = current.pos + sp30;

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(sp3C);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::YrotM(0x7FFF);
    mDoMtx_stack_c::YrotM(mGateRAngle);

    MTXCopy(mDoMtx_stack_c::get(), field_0xc00);
    MTXCopy(mDoMtx_stack_c::get(), field_0xae4);
    field_0xbf4 = sp3C;

    if (getSwNo() != 0xFF) {
        cXyz sp48(0.0f, 128.0f, 38.0f);
        mDoMtx_stack_c::YrotS(current.angle.y);
        mDoMtx_stack_c::transM(-350.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::YrotM(mGateLAngle);
        mDoMtx_stack_c::transM(350.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sp48, &sp48);

        cXyz sp54;
        cXyz sp60;
        sp60 = field_0xbc0;

        mDoMtx_stack_c::YrotS(current.angle.y + mGateLAngle);
        mDoMtx_stack_c::multVec(&sp60, &sp60);
        sp54 = field_0xbb4;

        s16 var_r29 = field_0xbb0 * cM_scos(mCounter * 3000);
        cLib_addCalc(&field_0xbb0, 0.0f, 0.05f, 50.0f, 5.0f);

        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::transM(sp60);
        mDoMtx_stack_c::transM(sp48);
        mDoMtx_stack_c::YrotM(current.angle.y + mGateLAngle);
        mDoMtx_stack_c::XrotM(-0xE38);
        mDoMtx_stack_c::XrotM(-field_0xbaa);
        mDoMtx_stack_c::transM(14.0f, 0.0f, 0.0f);
        mDoMtx_stack_c::ZrotM(field_0xbae);
        mDoMtx_stack_c::ZrotM(var_r29);
        mDoMtx_stack_c::transM(-14.0f, 0.0f, 0.0f);
        mpHookModel->setBaseTRMtx(mDoMtx_stack_c::get());

        if (mpKeyModel != NULL) {
            if (field_0xbae == 0) {
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::transM(sp48);
                mDoMtx_stack_c::YrotM(current.angle.y + mGateLAngle);
                mDoMtx_stack_c::XrotM(-0xE38);
                mDoMtx_stack_c::XrotM(-field_0xbaa);
                mpKeyModel->setBaseTRMtx(mDoMtx_stack_c::get());
            } else {
                field_0xbe4 += -2.5f;
                if (field_0xbe4 < -20.0f) {
                    field_0xbe4 = -20.0f;
                }
                mEffPos.y += field_0xbe4;

                cXyz sp6C(current.pos.x, current.pos.y + 50.0f, current.pos.z);
                if (fopAcM_gc_c::gndCheck(&sp6C) && fopAcM_gc_c::getGroundY() > mEffPos.y) {
                    mEffPos.y = fopAcM_gc_c::getGroundY() + 2.0f;

                    if (!mCreatedSmokeEff) {
                        daObjEff::Act_c::make_land_smoke(&mEffPos, 0.5f);
                        mCreatedSmokeEff = true;
                    }
                }

                cLib_addCalcAngleS(&mKeyRot.x, -0x4000, 5, 0xC00, 0x400);
                mDoMtx_stack_c::transS(mEffPos);
                mDoMtx_stack_c::ZXYrotM(mKeyRot);
                mpKeyModel->setBaseTRMtx(mDoMtx_stack_c::get());
            }
        }
    }
}

/* 80CBC4A0-80CBC4AC 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CBC4AC-80CBC4C0 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80CBC4C0-80CBC4C4 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "M_RGate00";

/* 80CBA468-80CBA654 000848 01EC+00 1/0 0/0 0/0 .text            Create__12daObjRgate_cFv */
int daObjRgate_c::Create() {
    static char* l_evName = "RIDER_GATE_OPEN00";

    u8 sw_no = getSwNo();
    if (sw_no != 0xFF && !fopAcM_isSwitch(this, sw_no) &&
        !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[68]))
    {
        eventInfo.setArchiveName(l_arcName);

        mEventID = dComIfGp_getEventManager().getEventIdx(this, l_evName, 0xFF);
        mMapToolID = getEventID();
        setAction(ACT_WAIT_EVENT);
    } else {
        mEventID = -1;
        mMapToolID = 0xFF;
        setAction(ACT_DEAD);
    }

    attention_info.position.y += 150.0f;
    eyePos.y += 150.0f;
    attention_info.flags = 0x20;

    initBaseMtx();
    fopAcM_SetMtx(this, field_0xb14);
    fopAcM_setCullSizeBox(this, l_cull_box[0].x, l_cull_box[0].y, l_cull_box[0].z, l_cull_box[1].x,
                          l_cull_box[1].y, l_cull_box[1].z);

    if (dComIfG_Bgsp().Regist(mpBgW, this)) {
#ifdef DEBUG
        OSReport_Error("キコルの門：ＢＧ登録失敗しました\n");
#endif
        return 0;
    } else {
        for (u16 i = 0; i < mpGateModel->getModelData()->getJointNum(); i++) {
            if ((int)i == 1 || (int)i == 2) {
                J3DJoint* jnt = mpGateModel->getModelData()->getJointNodePointer(i);
                JUT_ASSERT(448, jnt != 0);

                jnt->setCallBack(nodeCallBack);
                mpGateModel->setUserArea((u32)this);
            }
        }
    }

    return 1;
}

/* 80CBA654-80CBA828 000A34 01D4+00 1/0 0/0 0/0 .text            CreateHeap__12daObjRgate_cFv */
int daObjRgate_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    JUT_ASSERT(472, modelData != 0);

    mpGateModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpGateModel == NULL) {
        return 0;
    }

    if (getSwNo() != 0xFF) {
        modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 7);
        JUT_ASSERT(485, modelData != 0);

        J3DModelData* modelData2 = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
        JUT_ASSERT(495, modelData2 != 0);

        mDoExt_setupShareTexture(modelData, modelData2);
        mpKeyModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mpKeyModel == NULL) {
            return 0;
        }

        modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 6);
        JUT_ASSERT(511, modelData != 0);

        mDoExt_setupShareTexture(modelData, modelData2);
        mpHookModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mpHookModel == NULL) {
            return 0;
        }
    }

    mpBgW = new dBgW();
    if (mpBgW == NULL ||
        mpBgW->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, 10), cBgW::MOVE_BG_e, &field_0xae4))
    {
        mpBgW = NULL;
        return 0;
    }

    return 1;
}

/* 80CBA828-80CBA8A8 000C08 0080+00 1/1 0/0 0/0 .text            create1st__12daObjRgate_cFv */
int daObjRgate_c::create1st() {
    int phase_state = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName, 10, NULL, 0x2180, NULL);

        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    return phase_state;
}

/* 80CBA8A8-80CBAC38 000C88 0390+00 1/1 0/0 0/0 .text checkAreaL__12daObjRgate_cFPC4cXyzPC4cXyz */
int daObjRgate_c::checkAreaL(cXyz const* unused1, cXyz const* unused2) {
    daPy_py_c* player_p = daPy_getPlayerActorClass();
    Mtx m;
    cXyz pos;
    cXyz offset;
    cXyz bound_a;
    cXyz bound_b;

    bound_a.set(0.0f, 0.0f, -100.0f);
    bound_b.set(400.0f, 0.0f, 300.0f);
    offset.set(0.0f, 0.0f, 100.0f);

    fopAc_ac_c* coach_p = fopAcM_Search(search_coach, this);
    if (coach_p != NULL) {
        mDoMtx_stack_c::transS(coach_p->current.pos);
        mDoMtx_stack_c::YrotM(coach_p->shape_angle.y);
        mDoMtx_stack_c::multVec(&offset, &offset);
        pos = offset;

        mDoMtx_inverse(field_0xc30, m);
        mDoMtx_stack_c::copy(m);
        mDoMtx_stack_c::multVec(&pos, &pos);

        if (bound_a.x <= pos.x && pos.x <= bound_b.x && bound_a.z <= pos.z && pos.z <= bound_b.z) {
            return AREA_CHECK_COACH;
        }
    }

    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        offset.set(0.0f, 0.0f, 250.0f);

        daHorse_c* horse_p = dComIfGp_getHorseActor();
        if (horse_p != NULL) {
            mDoMtx_stack_c::transS(horse_p->current.pos);
            mDoMtx_stack_c::YrotM(horse_p->shape_angle.y);
            mDoMtx_stack_c::multVec(&offset, &offset);
            pos = offset;

            mDoMtx_inverse(field_0xc30, m);
            mDoMtx_stack_c::copy(m);
            mDoMtx_stack_c::multVec(&pos, &pos);

            if (bound_a.x <= pos.x && pos.x <= bound_b.x && bound_a.z <= pos.z &&
                pos.z <= bound_b.z)
            {
                return AREA_CHECK_HORSE;
            }
        }
    }

    bound_a.set(0.0f, 0.0f, -100.0f);
    bound_b.set(350.0f, 0.0f, 100.0f);
    pos = player_p->current.pos;

    if (daPy_py_c::i_checkNowWolf()) {
        offset.set(0.0f, 0.0f, 90.0f);
    } else {
        offset.set(0.0f, 0.0f, 0.0f);
    }

    mDoMtx_stack_c::YrotS(player_p->shape_angle.y);
    mDoMtx_stack_c::multVec(&offset, &offset);
    pos += offset;

    mDoMtx_inverse(field_0xc30, m);
    mDoMtx_stack_c::copy(m);
    mDoMtx_stack_c::multVec(&pos, &pos);

    if (bound_a.x <= pos.x && pos.x <= bound_b.x && bound_a.z <= pos.z && pos.z <= bound_b.z) {
        return AREA_CHECK_PLAYER;
    }

    return 0;
}

/* 80CBAC38-80CBAFC4 001018 038C+00 1/1 0/0 0/0 .text checkAreaR__12daObjRgate_cFPC4cXyzPC4cXyz */
int daObjRgate_c::checkAreaR(cXyz const* unused1, cXyz const* unused2) {
    daPy_py_c* player_p = daPy_getPlayerActorClass();
    Mtx m;
    Mtx m2;
    cXyz pos;
    cXyz offset;
    cXyz bound_a;
    cXyz bound_b;

    bound_a.set(0.0f, 0.0f, -300.0f);
    bound_b.set(400.0f, 0.0f, 100.0f);
    offset.set(0.0f, 0.0f, 100.0f);

    fopAc_ac_c* coach_p = fopAcM_Search(search_coach, this);
    if (coach_p != NULL) {
        mDoMtx_stack_c::transS(coach_p->current.pos);
        mDoMtx_stack_c::YrotM(coach_p->shape_angle.y);
        mDoMtx_stack_c::multVec(&offset, &offset);
        pos = offset;

        mDoMtx_inverse(field_0xc00, m);
        mDoMtx_stack_c::copy(m);
        mDoMtx_stack_c::multVec(&pos, &pos);

        if (bound_a.x <= pos.x && pos.x <= bound_b.x && bound_a.z <= pos.z && pos.z <= bound_b.z) {
            return AREA_CHECK_COACH;
        }
    }

    if (daPy_getPlayerActorClass()->checkHorseRide()) {
        offset.set(0.0f, 0.0f, 250.0f);

        daHorse_c* horse_p = dComIfGp_getHorseActor();
        if (horse_p != NULL) {
            mDoMtx_stack_c::transS(horse_p->current.pos);
            mDoMtx_stack_c::YrotM(horse_p->shape_angle.y);
            mDoMtx_stack_c::multVec(&offset, &offset);
            pos = offset;

            mDoMtx_inverse(field_0xc00, m);
            mDoMtx_stack_c::copy(m);
            mDoMtx_stack_c::multVec(&pos, &pos);

            if (bound_a.x <= pos.x && pos.x <= bound_b.x && bound_a.z <= pos.z &&
                pos.z <= bound_b.z)
            {
                return AREA_CHECK_HORSE;
            }
        }
    }

    bound_a.set(0.0f, 0.0f, -100.0f);
    bound_b.set(350.0f, 0.0f, 100.0f);
    pos = player_p->current.pos;

    cXyz player_offset;
    if (daPy_py_c::i_checkNowWolf()) {
        player_offset.set(0.0f, 0.0f, 90.0f);
    } else {
        player_offset.set(0.0f, 0.0f, 0.0f);
    }

    mDoMtx_stack_c::YrotS(player_p->shape_angle.y);
    mDoMtx_stack_c::multVec(&player_offset, &player_offset);
    pos += player_offset;

    mDoMtx_inverse(field_0xc00, m2);
    mDoMtx_stack_c::copy(m2);
    mDoMtx_stack_c::multVec(&pos, &pos);

    if (bound_a.x <= pos.x && pos.x <= bound_b.x && bound_a.z <= pos.z && pos.z <= bound_b.z) {
        return AREA_CHECK_PLAYER;
    }

    return 0;
}

/* 80CBAFC4-80CBB0F0 0013A4 012C+00 1/1 0/0 0/0 .text            checkOpen__12daObjRgate_cFv */
BOOL daObjRgate_c::checkOpen() {
    if (dComIfGs_getKeyNum() == 0) {
        return false;
    }

    daPy_py_c* player_p = daPy_getPlayerActorClass();

    if (abs((s16)(current.angle.y - player_p->current.angle.y)) < 0x5000) {
        return false;
    }

    Mtx m;
    mDoMtx_inverse(field_0xb14, m);

    cXyz pos(player_p->current.pos);
    mDoMtx_stack_c::copy(m);
    mDoMtx_stack_c::multVec(&pos, &pos);

    cXyz bound_a(-100.0f, 0.0f, 0.0f);
    cXyz bound_b(100.0f, 0.0f, 100.0f);

    if (bound_a.x <= pos.x && pos.x <= bound_b.x && bound_a.z <= pos.z && pos.z <= bound_b.z) {
        return true;
    }

    return false;
}

/* 80CBB0F0-80CBB180 0014D0 0090+00 1/1 0/0 0/0 .text checkDirL__12daObjRgate_cFP10fopAc_ac_c */
BOOL daObjRgate_c::checkDirL(fopAc_ac_c* i_actor) {
    Mtx m;
    mDoMtx_inverse(field_0xc30, m);

    cXyz pos(i_actor->current.pos);
    mDoMtx_stack_c::copy(m);
    mDoMtx_stack_c::multVec(&pos, &pos);

    if (pos.z > 0.0f) {
        return false;
    } else {
        return true;
    }
}

/* 80CBB180-80CBB210 001560 0090+00 1/1 0/0 0/0 .text checkDirR__12daObjRgate_cFP10fopAc_ac_c */
BOOL daObjRgate_c::checkDirR(fopAc_ac_c* i_actor) {
    Mtx m;
    mDoMtx_inverse(field_0xc00, m);

    cXyz pos(i_actor->current.pos);
    mDoMtx_stack_c::copy(m);
    mDoMtx_stack_c::multVec(&pos, &pos);

    if (pos.z < 0.0f) {
        return false;
    } else {
        return true;
    }
}

/* 80CBB210-80CBB28C 0015F0 007C+00 1/1 0/0 0/0 .text            setAtkSE__12daObjRgate_cFv */
void daObjRgate_c::setAtkSE() {
    fopAcM_seStart(this, Z2SE_OBJ_RIDER_GATE_ATK, 0);
}

/* 80CBB28C-80CBB308 00166C 007C+00 1/1 0/0 0/0 .text            setCrkSE__12daObjRgate_cFv */
void daObjRgate_c::setCrkSE() {
    fopAcM_seStart(this, Z2SE_OBJ_RIDER_GATE_CRK, 0);
}

/* 80CBB308-80CBB370 0016E8 0068+00 1/1 0/0 0/0 .text            action__12daObjRgate_cFv */
void daObjRgate_c::action() {
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[68])) {
        mGateLAngle = 0x4000;
        mGateRAngle = -0x4000;
    } else {
        action_typeA();
    }
}

/* 80CBB370-80CBBA10 001750 06A0+00 1/1 0/0 0/0 .text            action_typeA__12daObjRgate_cFv */
void daObjRgate_c::action_typeA() {
    u8 sw_no = getSwNo();
    daPy_py_c* player_p = daPy_getPlayerActorClass();

    if (fopAcM_isSwitch(this, sw_no) || sw_no == 0xFF) {
        cXyz unused1;
        cXyz unused2;

        int chk_l = checkAreaL(&unused1, &unused2);
        int chk_r = checkAreaR(&unused1, &unused2);
        s16 prev_l_move = mGateLMove;
        s16 prev_r_move = mGateRMove;

        if (player_p->getSpeedF() != 0.0f) {
            if (chk_l == AREA_CHECK_PLAYER) {
                switch (checkDirL(player_p)) {
                case FALSE:
                    mGateLMove = 500;
                    break;
                case TRUE:
                    mGateLMove = -500;
                    break;
                }

                field_0xbb0 = 2000.0f;
            }

            if (chk_r == AREA_CHECK_PLAYER) {
                switch (checkDirR(player_p)) {
                case FALSE:
                    mGateRMove = -500;
                    break;
                case TRUE:
                    mGateRMove = 500;
                    break;
                }
            }
        }

        daHorse_c* horse_p = dComIfGp_getHorseActor();
        if (horse_p != NULL && horse_p->speedF != 0.0f) {
            if (chk_l == AREA_CHECK_HORSE) {
                switch (checkDirL(horse_p)) {
                case FALSE:
                    mGateLMove = 800;
                    break;
                case TRUE:
                    mGateLMove = -800;
                    break;
                }

                field_0xbb0 = 2500.0f;
            }

            if (chk_r == AREA_CHECK_HORSE) {
                switch (checkDirR(horse_p)) {
                case FALSE:
                    mGateRMove = -800;
                    break;
                case TRUE:
                    mGateRMove = 800;
                    break;
                }
            }
        }

        fopAc_ac_c* coach_p = fopAcM_Search(search_coach, this);
        if (coach_p != NULL && coach_p->speedF != 0.0f) {
            if (chk_l == AREA_CHECK_COACH) {
                switch (checkDirL(coach_p)) {
                case FALSE:
                    mGateLMove = 900;
                    break;
                case TRUE:
                    mGateLMove = -900;
                    break;
                }

                field_0xbb0 = 2500.0f;
            }

            if (chk_r == AREA_CHECK_COACH) {
                switch (checkDirR(coach_p)) {
                case FALSE:
                    mGateRMove = -900;
                    break;
                case TRUE:
                    mGateRMove = 900;
                    break;
                }
            }
        }

        if (abs(abs(prev_l_move) - abs(mGateLMove)) > 400 ||
            abs(abs(prev_r_move) - abs(mGateRMove)) > 400)
        {
            setCrkSE();
        }

        if (mGateLMove > 1500) {
            mGateLMove = 1500;
        }

        if (mGateLMove < -1500) {
            mGateLMove = -1500;
        }

        if (mGateRMove > 1500) {
            mGateRMove = 1500;
        }

        if (mGateRMove < -1500) {
            mGateRMove = -1500;
        }

        mGateLAngle += mGateLMove;
        if (mGateLAngle > 0x4000) {
            mGateLAngle = 0x4000;
            mGateLMove *= -0.7f;
        }

        if (mGateLAngle < -0x4000) {
            mGateLAngle = -0x4000;
            mGateLMove *= -0.7f;
        }

        mGateRAngle += mGateRMove;
        if (mGateRAngle > 0x4000) {
            mGateRAngle = 0x4000;
            mGateRMove *= -0.7f;
        }

        if (mGateRAngle < -0x4000) {
            mGateRAngle = -0x4000;
            mGateRMove *= -0.7f;
        }

        cLib_addCalcAngleS(&mGateLMove, 0, 10, 100, 10);
        cLib_addCalcAngleS(&mGateRMove, 0, 10, 100, 10);
        cLib_addCalcAngleS(&field_0xbae, 0x3000, 10, 0x400, 0x100);
        cLib_chaseF(&field_0xbb4.x, -39.0f, 1.0f);
        cLib_chaseF(&field_0xbc0.x, -25.0f, 1.0f);
        cLib_addCalcAngleS(&field_0xbcc, 0x7FFF, 10, 0x400, 0x100);
    } else {
        cXyz unused1;
        cXyz unused2;

        int chk_l = checkAreaL(&unused1, &unused2);
        int chk_r = checkAreaR(&unused1, &unused2);
        if (chk_l != 0 || chk_r != 0) {
            daPy_py_c* player_p = daPy_getPlayerActorClass();

            if (daPy_py_c::i_checkNowWolf()) {
                if (player_p->checkWolfAttackReverse() || player_p->checkFrontRollCrash()) {
                    field_0xb94 = 1200.0f;
                    field_0xb90 = 1200.0f;
                    field_0xbac = 0x800;
                    setAtkSE();
                }
            } else {
                if (player_p->checkFrontRollCrash()) {
                    field_0xb94 = 600.0f;
                    field_0xb90 = 600.0f;
                    field_0xbac = 0x800;
                    setAtkSE();
                }
            }
        }

        mGateLAngle = field_0xb90 * cM_ssin(mCounter * 4000);
        mGateRAngle = field_0xb94 * -cM_ssin(mCounter * 4000);
        cLib_addCalc0(&field_0xb90, 0.1f, 20.0f);
        cLib_addCalc0(&field_0xb94, 0.1f, 20.0f);

        field_0xbac -= 0x160;
        field_0xbaa += field_0xbac;
        if (field_0xbaa >= 0) {
            return;
        }

        field_0xbaa = 0;
        field_0xbac = -field_0xbac * 0.7f;
    }
}

/* 80CBBA10-80CBBAF4 001DF0 00E4+00 1/0 0/0 0/0 .text            actionWaitEvent__12daObjRgate_cFv
 */
void daObjRgate_c::actionWaitEvent() {
    if (eventInfo.i_checkCommandDoor()) {
        setAction(ACT_EVENT);
        dComIfGp_setItemKeyNumCount(-1);
        fopAcM_onSwitch(this, getSwNo());
        fopAcM_seStart(this, Z2SE_OBJ_RIDER_GATE_L_OP, 0);
    } else if (checkOpen()) {
        eventInfo.setEventId(mEventID);
        eventInfo.setMapToolId(mMapToolID);
        eventInfo.i_onCondition(dEvtCnd_CANDOOR_e);
    }
}

/* 80CBBAF4-80CBBB5C 001ED4 0068+00 1/0 0/0 0/0 .text            actionEvent__12daObjRgate_cFv */
void daObjRgate_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventID)) {
        setAction(ACT_DEAD);
        dComIfGp_event_reset();
    } else {
        demoProc();
    }
}

/* 80CBBB5C-80CBBB60 001F3C 0004+00 1/0 0/0 0/0 .text            actionDead__12daObjRgate_cFv */
void daObjRgate_c::actionDead() {}

/* 80CBBB60-80CBBC04 001F40 00A4+00 1/1 0/0 0/0 .text            event_proc_call__12daObjRgate_cFv
 */
void daObjRgate_c::event_proc_call() {
    typedef void (daObjRgate_c::*func)();
    static func l_func[] = {&daObjRgate_c::actionWaitEvent, &daObjRgate_c::actionEvent,
                            &daObjRgate_c::actionDead};

    (this->*l_func[mAction])();
}

/* 80CBBC04-80CBBD68 001FE4 0164+00 1/1 0/0 0/0 .text            demoProc__12daObjRgate_cFv */
void daObjRgate_c::demoProc() {
    mStaffID = dComIfGp_evmng_getMyStaffId("K_GATE", NULL, 0);
    int demo_action = getDemoAction();

    if (dComIfGp_evmng_getIsAddvance(mStaffID)) {
        switch (demo_action) {
        case DEMO_ACT_WAIT:
            int* timer_p = dComIfGp_evmng_getMyIntegerP(mStaffID, "Timer");
            if (timer_p == NULL) {
                mTimer = 1;
            } else {
                mTimer = *timer_p;
            }
            break;
        case DEMO_ACT_OPEN:
            mGateLMove = 1000;
            mGateRMove = -1000;
            break;
        }
    }

    switch (demo_action) {
    case DEMO_ACT_WAIT:
        if (cLib_calcTimer(&mTimer) == 0) {
            dComIfGp_evmng_cutEnd(mStaffID);
        }
        break;
    case DEMO_ACT_OPEN:
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    case DEMO_ACT_UNLOCK:
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    case DEMO_ACT_ADJUSTMENT:
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    }
}

/* 80CBBD68-80CBBDB0 002148 0048+00 1/1 0/0 0/0 .text            getDemoAction__12daObjRgate_cFv */
int daObjRgate_c::getDemoAction() {
    static char* action_table[] = {"WAIT", "ADJUSTMENT", "UNLOCK", "OPEN"};

    return dComIfGp_evmng_getMyActIdx(mStaffID, action_table, ARRAY_SIZE(action_table), 0, 0);
}

/* 80CBBDB0-80CBBE18 002190 0068+00 1/0 0/0 0/0 .text            Execute__12daObjRgate_cFPPA3_A4_f
 */
int daObjRgate_c::Execute(Mtx** param_0) {
    event_proc_call();
    action();
    mCounter++;

    *param_0 = &mBgMtx;
    setBaseMtx();
    mpBgW->Move();
    return 1;
}

/* 80CBBE18-80CBBF34 0021F8 011C+00 1/0 0/0 0/0 .text            Draw__12daObjRgate_cFv */
int daObjRgate_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpGateModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpGateModel);
    dComIfGd_setList();

    if (getSwNo() != 0xFF) {
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);

        if (mpHookModel != NULL) {
            g_env_light.setLightTevColorType_MAJI(mpHookModel, &tevStr);
            mDoExt_modelUpdateDL(mpHookModel);
        }

        if (mpKeyModel != NULL) {
            g_env_light.setLightTevColorType_MAJI(mpKeyModel, &tevStr);
            mDoExt_modelUpdateDL(mpKeyModel);
        }
    }

    return 1;
}

/* 80CBBF34-80CBBFA0 002314 006C+00 1/0 0/0 0/0 .text            Delete__12daObjRgate_cFv */
int daObjRgate_c::Delete() {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        if (dComIfG_Bgsp().Release(mpBgW)) {
#ifdef DEBUG
            OSReport("Release Error\n");
#endif
        }
    }

    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80CBBFA0-80CBC054 002380 00B4+00 1/0 0/0 0/0 .text daObjRgate_create1st__FP12daObjRgate_c */
static int daObjRgate_create1st(daObjRgate_c* i_this) {
    fopAcM_SetupActor(i_this, daObjRgate_c);
    return i_this->create1st();
}

/* 80CBC290-80CBC2B0 002670 0020+00 1/0 0/0 0/0 .text daObjRgate_MoveBGDelete__FP12daObjRgate_c */
static int daObjRgate_MoveBGDelete(daObjRgate_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CBC2B0-80CBC2D0 002690 0020+00 1/0 0/0 0/0 .text daObjRgate_MoveBGExecute__FP12daObjRgate_c
 */
static int daObjRgate_MoveBGExecute(daObjRgate_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CBC2D0-80CBC2FC 0026B0 002C+00 1/0 0/0 0/0 .text daObjRgate_MoveBGDraw__FP12daObjRgate_c */
static int daObjRgate_MoveBGDraw(daObjRgate_c* i_this) {
    return i_this->MoveBGDraw();
}

/* ############################################################################################## */
/* 80CBC51C-80CBC53C -00001 0020+00 1/0 0/0 0/0 .data            daObjRgate_METHODS */
static actor_method_class daObjRgate_METHODS = {
    (process_method_func)daObjRgate_create1st,     (process_method_func)daObjRgate_MoveBGDelete,
    (process_method_func)daObjRgate_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjRgate_MoveBGDraw,
};

/* 80CBC53C-80CBC56C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RiderGate */
extern actor_process_profile_definition g_profile_Obj_RiderGate = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_RiderGate,
    &g_fpcLf_Method.mBase,
    sizeof(daObjRgate_c),
    0,
    0,
    &g_fopAc_Method.base,
    600,
    &daObjRgate_METHODS,
    0x40100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
