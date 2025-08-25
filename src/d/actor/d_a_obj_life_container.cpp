/**
 * @file d_a_obj_life_container.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_life_container.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_item_data.h"
#include "SSystem/SComponent/c_math.h"

/* 804CE3F4-804CE438 000000 0044+00 6/6 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xffffffff, 0x11}, 0x59}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        20.0f, // mRadius
        40.0f // mHeight
    } // mCyl
};

/* 804CC7D8-804CCAD4 000078 02FC+00 1/1 0/0 0/0 .text            Reflect__FP4cXyzRC13cBgS_PolyInfof
 */
static f32 Reflect(cXyz* i_vec, cBgS_PolyInfo const& i_wallpoly, f32 i_scale) {
    cM3dGPla plane;

    if (dComIfG_Bgsp().GetTriPla(i_wallpoly, &plane)) {
        cXyz reflect_vec;
        f32 mag = i_vec->absXZ();

        C_VECReflect(i_vec, &plane.mNormal, &reflect_vec);
        *i_vec = (reflect_vec * mag) * i_scale;
        return i_vec->absXZ();
    }

    return 0.0f;
}

/* 804CCB1C-804CCB78 0003BC 005C+00 1/1 0/0 0/0 .text
 * lifeGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void lifeGetTgCallBack(fopAc_ac_c* i_tgActor, dCcD_GObjInf* i_tgObjInf,
                              fopAc_ac_c* i_atActor, dCcD_GObjInf* i_atObjInf) {
    if (i_tgActor != NULL &&
        (i_atObjInf->ChkAtType(AT_TYPE_40) || i_atObjInf->ChkAtType(AT_TYPE_BOOMERANG)) &&
        !dComIfGp_event_runCheck() && !((daObjLife_c*)i_tgActor)->chkStatus(daObjLife_c::STATUS_BOOMERANG_CARRY_e))
    {
        ((daObjLife_c*)i_tgActor)->actionInitBoomerangCarry();
    }
}

/* 804CCB78-804CCBE4 000418 006C+00 1/1 0/0 0/0 .text
 * lifeGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void lifeGetCoCallBack(fopAc_ac_c* i_coActorA, dCcD_GObjInf* i_coObjInfA,
                              fopAc_ac_c* i_coActorB, dCcD_GObjInf* i_coObjInfB) {
    if (i_coActorA != NULL && i_coActorB != NULL && i_coActorB == (fopAc_ac_c*)dComIfGp_getLinkPlayer()) {
        if (!daPy_getPlayerActorClass()->checkCanoeRide()) {
            ((daObjLife_c*)i_coActorA)->initActionOrderGetDemo();
        }
    }
}

/* 804CCBE4-804CCC04 000484 0020+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjLife_cFv */
void daObjLife_c::initBaseMtx() {
    setBaseMtx();
}

/* 804CCC04-804CCC6C 0004A4 0068+00 2/2 0/0 0/0 .text            setBaseMtx__11daObjLife_cFv */
void daObjLife_c::setBaseMtx() {
    mpModel->setBaseScale(scale);
    
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 804CCC6C-804CCE00 00050C 0194+00 1/1 0/0 0/0 .text            Create__11daObjLife_cFv */
int daObjLife_c::Create() {
    scale.x = scale.y = scale.z = 0.0f;
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
    
    mCcStts.Init(0, 0xFF, this);
    mCcCyl.Set(l_cyl_src);
    mCcCyl.SetStts(&mCcStts);
    mCcCyl.SetCoHitCallback(lifeGetCoCallBack);
    mCcCyl.SetTgHitCallback(lifeGetTgCallBack);
    mCcCyl.SetR(dItem_data::getR(m_itemNo));
    mCcCyl.SetH(dItem_data::getH(m_itemNo));

    fopAcM_SetCullSize(this, fopAc_CULLSPHERE_0_e);
    fopAcM_SetGravity(this, -3.2f);

    actionWaitInit();
    field_0x94c = 0.7f;
    mRotateSpeed = 7000;

    setEffect();
    mSound.init(&current.pos, 1);
    return 1;
}

/* 804CCE00-804CCF5C 0006A0 015C+00 1/1 0/0 0/0 .text            setEffect__11daObjLife_cFv */
void daObjLife_c::setEffect() {
    cXyz size(1.5f, 1.5f, 1.5f);

    if (mEffect0.getEmitter() == NULL) {
        dComIfGp_particle_set(0x8DE, &current.pos, NULL, &size, 0xFF, &mEffect0, -1, NULL, NULL, NULL);
    }

    if (mEffect1.getEmitter() == NULL) {
        dComIfGp_particle_set(0x8DF, &current.pos, NULL, &size, 0xFF, &mEffect1, -1, NULL, NULL, NULL);
    }

    if (mEffect2.getEmitter() == NULL) {
        dComIfGp_particle_set(0x8E0, &current.pos, NULL, &size, 0xFF, &mEffect2, -1, NULL, NULL, NULL);
    }
}

/* 804CCF5C-804CCFAC 0007FC 0050+00 2/2 0/0 0/0 .text            endEffect00__11daObjLife_cFv */
void daObjLife_c::endEffect00() {
    mEffect0.remove();
    mEffect1.remove();
}

/* 804CCFAC-804CCFD8 00084C 002C+00 3/3 0/0 0/0 .text            endEffect02__11daObjLife_cFv */
void daObjLife_c::endEffect02() {
    mEffect2.remove();
}

/* 804CCFD8-804CCFE0 000878 0008+00 1/0 0/0 0/0 .text            __CreateHeap__11daObjLife_cFv */
int daObjLife_c::__CreateHeap() {
    return 1;
}

/* 804CCFE0-804CD258 000880 0278+00 1/1 0/0 0/0 .text            create__11daObjLife_cFv */
int daObjLife_c::create() {
    fopAcM_SetupActor(this, daObjLife_c);

    if (!mIsPrmsInit) {
        field_0x938 = home.angle.x;
        field_0x93a = home.angle.z;
        home.angle.x = home.angle.z = 0;
        current.angle.x = current.angle.z = 0;
        shape_angle.x = shape_angle.z = 0;
        mIsPrmsInit = true;
    }

    m_itemNo = getItemNo();
    if (m_itemNo != fpcNm_ITEM_KAKERA_HEART && m_itemNo != fpcNm_ITEM_UTAWA_HEART) {
        // "Heart Container: Item No is incorrect!<%d>\n"
        OS_REPORT_ERROR("ハートの器：アイテム番号が不正です！<%d>\n", m_itemNo);
    }

    if (fopAcM_isItem(this, getSaveBitNo())) {
        return cPhs_ERROR_e;
    }

    if (m_itemNo == fpcNm_ITEM_UTAWA_HEART && dComIfGs_isStageLife()) {
        return cPhs_ERROR_e;
    }

    int phase_state = dComIfG_resLoad(&mPhase, dItem_data::getFieldArc(m_itemNo));
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckFieldItemCreateHeap, 0x4000)) {
            return cPhs_ERROR_e;
        }

        if (!Create()) {
            return cPhs_ERROR_e;
        }

        OS_REPORT("LIFE CONTAINER:<0x%x>\n", fopAcM_GetParam(this));
    }

    return phase_state;
}

/* 804CD428-804CD5B8 000CC8 0190+00 1/1 0/0 0/0 .text            bg_check__11daObjLife_cFv */
void daObjLife_c::bg_check() {
    f32 bounce_speed_scale = 0.7f;

    if (mAcch.ChkWallHit()) {
        if (speedF > 5.0f) {
            Reflect(&speed, mAcchCir, 1.0f);
        }

        current.angle.y = cM_atan2s(speed.x, speed.z);
    }

    if (mAcch.ChkGroundLanding()) {
        cXyz reflect_vec(speed);
        if (speedF > 5.0f) {
            Reflect(&reflect_vec, mAcchCir, bounce_speed_scale);
        }

        speed.y = -mPrevSpeed.y * bounce_speed_scale;
        if (speed.y < 3.0f) {
            speedF = 0.0f;
        }

        mGndLandCount++;
        fopAcM_seStart(this, Z2SE_OBJ_KEY_BOUND, fabsf(mPrevSpeed.y) * 2.0f);
    }

    if (mGndLandCount >= 2 || (!mAcch.ChkGroundLanding() && mAcch.ChkGroundHit())) {
        endEffect02();
    }
}

/* 804CD5B8-804CD660 000E58 00A8+00 3/3 0/0 0/0 .text            actionWaitInit__11daObjLife_cFv */
int daObjLife_c::actionWaitInit() {
    mCcCyl.OnTgSPrmBit(1);
    mCcCyl.OnCoSPrmBit(1);

    show();
    attention_info.position = current.pos;
    setStatus(STATUS_WAIT_e);

    if (strcmp(dComIfGp_getStartStageName(), "D_MN11A") == 0) {
        fopAcM_SetGravity(this, 0.0f);
        mLv5Counter = 0;
        speed.y = 4.0f;
    }

    return 1;
}

/* 804CD660-804CD8C0 000F00 0260+00 1/0 0/0 0/0 .text            actionWait__11daObjLife_cFv */
int daObjLife_c::actionWait() {
    if (strcmp(dComIfGp_getStartStageName(), "D_MN11A") == 0) {
        if (mLv5Counter < 20000) {
            mLv5Counter++;
        }

        if (mLv5Counter == 1) {
            speed.y = 5.0f;
            speedF = 3.0f;
        } else if (mLv5Counter >= 50 && mLv5Counter < 2000) {
            cLib_addCalc(&speed.y, -3.2f, 0.05f, 0.5f, 0.1f);
        }

        fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
        mAcch.CrrPos(dComIfG_Bgsp());

        if (mAcch.ChkGroundLanding() || mAcch.ChkGroundHit()) {
            fopAcM_SetSpeed(this, 0.0f, -1.0f, 0.0f);
            fopAcM_SetSpeedF(this, 0.0f);
        } else if (speed.y < 0.0f) {
            f32 var_f31 = 3.5f;
            s16 var_r28 = mCounter * 1100;
            fopAcM_SetSpeedF(this, cM_ssin(var_r28) * var_f31);
        }

        RotateYBase();
    } else {
        if (!fopAcM_checkHookCarryNow(this)) {
            fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
        }

        mAcch.CrrPos(dComIfG_Bgsp());
        bg_check();

        if (mAcch.ChkGroundHit()) {
            speedF *= 0.9f;
            if (speedF < 1.0f) {
                speedF = 0.0f;
            }
        }

        if (mGndLandCount != 0) {
            s16 target_speed = 0xFFFF / getData().mRotateYSpeed;
            cLib_addCalcAngleS2(&mRotateSpeed, target_speed, 5, 2000);
        }

        shape_angle.y += mRotateSpeed;
    }

    if (!daPy_getPlayerActorClass()->checkCanoeRide() && mCcCyl.ChkCoHit()) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        fopAc_ac_c* hit_actor = mCcCyl.GetCoHitAc();
        if (player == hit_actor) {
            initActionOrderGetDemo();
        }
    }

    attention_info.position = current.pos;
    return 1;
}

/* 804CD8C0-804CD98C 001160 00CC+00 3/3 0/0 0/0 .text initActionOrderGetDemo__11daObjLife_cFv */
int daObjLife_c::initActionOrderGetDemo() {
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    mCcCyl.ClrTgHit();
    mCcCyl.ClrCoHit();

    endEffect00();
    endEffect02();
    
    hide();

    fopAcM_orderItemEvent(this, 0, 0);
    eventInfo.onCondition(dEvtCnd_CANGETITEM_e);

    mItemId = fopAcM_createItemForTrBoxDemo(&current.pos, m_itemNo, -1, fopAcM_GetRoomNo(this), NULL, NULL);
    JUT_ASSERT(699, mItemId != fpcM_ERROR_PROCESS_ID_e);

    setStatus(STATUS_ORDER_GET_DEMO_e);
    return 1;
}

/* 804CD98C-804CDA08 00122C 007C+00 1/0 0/0 0/0 .text            actionOrderGetDemo__11daObjLife_cFv
 */
int daObjLife_c::actionOrderGetDemo() {
    if (eventInfo.checkCommandItem()) {
        setStatus(STATUS_GET_DEMO_e);
        
        if (mItemId != fpcM_ERROR_PROCESS_ID_e) {
            dComIfGp_event_setItemPartnerId(mItemId);
        }
    } else {
        fopAcM_orderItemEvent(this, 0, 0);
        eventInfo.onCondition(dEvtCnd_CANGETITEM_e);
    }

    return 1;
}

/* 804CDA08-804CDBC8 0012A8 01C0+00 1/0 0/0 0/0 .text            actionGetDemo__11daObjLife_cFv */
int daObjLife_c::actionGetDemo() {
    if (dComIfGp_evmng_endCheck("DEFAULT_GETITEM")) {
        dComIfGp_event_reset();
        fopAcM_delete(this);

        u8 savebit = getSaveBitNo();
        if (savebit != 0xFF) {
            fopAcM_onItem(this, savebit);
        }

        if (m_itemNo == fpcNm_ITEM_KAKERA_HEART) {
            if (strcmp(dComIfGp_getStartStageName(), "F_SP121") == 0) {
                if (fopAcM_GetRoomNo(this) == 0) {
                    if (savebit == 128) {
                        dComIfGs_setEventReg(0xECFF, dComIfGs_getEventReg(0xECFF) | 0x10);
                    }
                } else if (fopAcM_GetRoomNo(this) == 3 && savebit == 130) {
                    dComIfGs_setEventReg(0xECFF, dComIfGs_getEventReg(0xECFF) | 0x4);
                }
            } else if (strcmp(dComIfGp_getStartStageName(), "F_SP109") == 0) {
                if (fopAcM_GetRoomNo(this) == 0 && savebit == 140) {
                    dComIfGs_setEventReg(0xECFF, dComIfGs_getEventReg(0xECFF) | 0x2);
                }
            }
        }
    }

    return 1;
}

/* 804CDBC8-804CDC2C 001468 0064+00 1/0 0/0 0/0 .text            actionSwOnWait__11daObjLife_cFv */
int daObjLife_c::actionSwOnWait() {
    if (fopAcM_isSwitch(this, getSwNo()) && cLib_calcTimer<u8>(&field_0x935) == 0) {
        actionWaitInit();
    }

    return 1;
}

/* 804CDC2C-804CDD0C 0014CC 00E0+00 1/1 0/0 0/0 .text actionInitBoomerangCarry__11daObjLife_cFv */
int daObjLife_c::actionInitBoomerangCarry() {
    mCcCyl.OnTgSPrmBit(1);
    mCcCyl.OnCoSPrmBit(1);

    f32 height = dItem_data::getH(m_itemNo) * 4.0f;
    f32 radius = dItem_data::getR(m_itemNo) * 4.0f;
    mCcCyl.SetR(radius);
    mCcCyl.SetH(height);

    mCcCyl.OnCoSPrmBit(1);

    setStatus(STATUS_BOOMERANG_CARRY_e);
    return 1;
}

/* 804CDD0C-804CDD7C 0015AC 0070+00 1/0 0/0 0/0 .text actionBoomerangCarry__11daObjLife_cFv */
int daObjLife_c::actionBoomerangCarry() {
    fopAc_ac_c* boomerang = fopAcM_SearchByName(PROC_BOOMERANG);
    if (boomerang != NULL) {
        current.pos = boomerang->current.pos;
    } else {
        actionWaitInit();
    }

    // "Heart Container / Piece: Pulling towards\n"
    OS_REPORT("ハートの器・欠片：引き寄せ中\n");
    return 1;
}

/* 804CDD7C-804CDD8C 00161C 0010+00 0/0 0/0 1/1 .text            actionInitWait2__11daObjLife_cFv */
int daObjLife_c::actionInitWait2() {
    setStatus(STATUS_WAIT_2_e);
    return 1;
}

/* 804CDD8C-804CDDAC 00162C 0020+00 1/0 0/0 0/0 .text            actionWait2__11daObjLife_cFv */
int daObjLife_c::actionWait2() {
    attention_info.position = current.pos;
    return 1;
}

/* 804CDDAC-804CDE70 00164C 00C4+00 1/1 0/0 0/0 .text            calcScale__11daObjLife_cFv */
void daObjLife_c::calcScale() {
    cLib_chaseF(&field_0x954, 1.0f, 0.2f);
    if (field_0x954 == 1.0f) {
        cLib_chaseF(&field_0x94c, 0.0f, 0.05f);
        field_0x950 = field_0x94c * cM_ssin(field_0x95e * 3000);

        if (field_0x95e < 1000) {
            field_0x95e++;
        }
    } else {
        field_0x950 = 0.0f;
    }

    scale.setall(field_0x950 + field_0x954);
}

/* 804CDE70-804CE19C 001710 032C+00 1/1 0/0 0/0 .text            execute__11daObjLife_cFv */
int daObjLife_c::execute() {
    static int (daObjLife_c::*l_demoFunc[])() = {
        &daObjLife_c::actionWait,
        &daObjLife_c::actionOrderGetDemo,
        &daObjLife_c::actionGetDemo,
        &daObjLife_c::actionSwOnWait,
        &daObjLife_c::actionBoomerangCarry,
        &daObjLife_c::actionWait2,
    };

    mPrevSpeed = speed;
    mCounter++;

    (this->*l_demoFunc[mStatus])();

    eyePos = current.pos;
    eyePos.y += 30.0f;
    attention_info.position = current.pos;

    calcScale();
    setBaseMtx();

    animPlay(1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f);

    if (mCcCyl.ChkTgHit()) {
        cCcD_Obj* hitobj = mCcCyl.GetTgHitObj();
        if (hitobj != NULL && hitobj->ChkAtType(AT_TYPE_HOOKSHOT)) {
            mSound.startCollisionSE(Z2SE_HIT_HOOKSHOT_STICK, 0, NULL);
        }
    }

    if (fopAcM_checkHookCarryNow(this)) {
        cXyz offset(current.pos);
        if (mpModel != NULL) {
            offset.y += mpModel->getModelData()->getJointNodePointer(0)->getMax()->y * 0.5f;
        }

        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::inverse();
        mDoMtx_stack_c::multVec(&offset, &offset);
        daPy_getPlayerActorClass()->setHookshotCarryOffset(fopAcM_GetID(this), &offset);
    } else if (mIsHookCarry && fopAcM_searchPlayerDistance(this) < 300.0f) {
        initActionOrderGetDemo();
    }

    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mIsHookCarry = fopAcM_checkHookCarryNow(this) != 0;
    return 1;
}

/* 804CE19C-804CE1F0 001A3C 0054+00 1/1 0/0 0/0 .text            draw__11daObjLife_cFv */
int daObjLife_c::draw() {
    if (!chkDraw()) {
        return 1;
    }

    DrawBase();
    return 1;
}

/* 804CE1F0-804CE214 001A90 0024+00 1/0 0/0 0/0 .text            setListStart__11daObjLife_cFv */
void daObjLife_c::setListStart() {
    dComIfGd_setListDark();
}

/* 804CE214-804CE274 001AB4 0060+00 1/1 0/0 0/0 .text            _delete__11daObjLife_cFv */
int daObjLife_c::_delete() {
    mSound.deleteObject();
    endEffect00();
    endEffect02();

    DeleteBase(dItem_data::getFieldArc(m_itemNo));
    return 1;
}

/* 804CE274-804CE294 001B14 0020+00 1/0 0/0 0/0 .text            daObjLife_Draw__FP11daObjLife_c */
static int daObjLife_Draw(daObjLife_c* i_this) {
    return i_this->draw();
}

/* 804CE294-804CE2B4 001B34 0020+00 1/0 0/0 0/0 .text            daObjLife_Execute__FP11daObjLife_c
 */
static int daObjLife_Execute(daObjLife_c* i_this) {
    return i_this->execute();
}

/* 804CE2B4-804CE2D4 001B54 0020+00 1/0 0/0 0/0 .text            daObjLife_Delete__FP11daObjLife_c
 */
static int daObjLife_Delete(daObjLife_c* i_this) {
    return i_this->_delete();
}

/* 804CE2D4-804CE2F4 001B74 0020+00 1/0 0/0 0/0 .text            daObjLife_Create__FP10fopAc_ac_c */
static int daObjLife_Create(fopAc_ac_c* i_this) {
    return ((daObjLife_c*)i_this)->create();
}

/* 804CE57C-804CE59C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjLife_Method */
static actor_method_class l_daObjLife_Method = {
    (process_method_func)daObjLife_Create,
    (process_method_func)daObjLife_Delete,
    (process_method_func)daObjLife_Execute,
    (process_method_func)NULL,
    (process_method_func)daObjLife_Draw,
};

/* 804CE59C-804CE5CC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_LifeContainer */
extern actor_process_profile_definition g_profile_Obj_LifeContainer = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_LifeContainer, // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjLife_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  239,                    // mPriority
  &l_daObjLife_Method,    // sub_method
  0x000C4100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
