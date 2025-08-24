/**
 * @file d_a_obj_shield.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_shield.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/d_cc_d.h"
#include "d/d_item_data.h"
#include "cmath.h"

/* 80CD8274-80CD82B8 000000 0044+00 5/5 0/0 0/0 .rodata          l_cyl_src */
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

/* 80CD6A58-80CD6D54 000078 02FC+00 1/1 0/0 0/0 .text            Reflect__FP4cXyzRC13cBgS_PolyInfof
 */
static f32 Reflect(cXyz* pSpeed, cBgS_PolyInfo const& param_2, f32 param_3) {
    cM3dGPla acStack_3c;
    if (dComIfG_Bgsp().GetTriPla(param_2, &acStack_3c)) {
        cXyz cStack_48;
        f32 dVar5 = pSpeed->absXZ();
        C_VECReflect(pSpeed, &acStack_3c.mNormal, &cStack_48);
        *pSpeed = (cStack_48 * dVar5) * param_3;
        return pSpeed->absXZ();
    }
    return 0;
}

/* 80CD6D9C-80CD6DD8 0003BC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daItemShield_cFv */
void daItemShield_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CD6DD8-80CD7094 0003F8 02BC+00 2/2 0/0 0/0 .text            setBaseMtx__14daItemShield_cFv */
void daItemShield_c::setBaseMtx() {
    cLib_addCalcAngleS(&field_0x952, field_0x954, 3, 500, 100);
    if (field_0x950 > -9000 && field_0x954 > 0) {
        field_0x954 = -std::fabs(field_0x954 * 0.88f);
        if (std::fabs(field_0x954) < 200.0f) {
            field_0x954 = 0;
        }
    } else if (field_0x950 < -9000 && field_0x954 < 0) {
        field_0x954 = std::fabs(field_0x954 * 0.88f);
        if (std::fabs(field_0x954) < 200.0f) {
            field_0x954 = 0;
        }
    }
    field_0x950 += field_0x952;
    csXyz rotation;
    rotation.x = field_0x944.x * cM_scos(mRotAngleCoeff * 2000) - field_0x944.x;
    rotation.z = field_0x944.z * cM_scos(2000 * (mRotAngleCoeff + 8)) - field_0x944.z;
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    if (fopAcM_GetGravity(this) == 0.0f) {
        mDoMtx_stack_c::transM(-20.0f, 0.0f, -15.0f);
        mDoMtx_stack_c::YrotM(field_0x950);
        mDoMtx_stack_c::transM(20.0f, 0.0f, 15.0f);
    } else {
        mDoMtx_stack_c::ZXYrotM(rotation.x, 0, rotation.z);
    }
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CD7094-80CD724C 0006B4 01B8+00 1/1 0/0 0/0 .text            Create__14daItemShield_cFv */
int daItemShield_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                     &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
    mCcStts.Init(0, 0xff, this);
    mCcCyl.Set(l_cyl_src);
    mCcCyl.SetStts(&mCcStts);
    mCcCyl.SetR(dItem_data::getR(m_itemNo));
    mCcCyl.SetH(dItem_data::getH(m_itemNo));
    fopAcM_SetCullSize(this, fopAc_CULLSPHERE_0_e);
    actionWaitInit();
    if (fopAcM_isSwitch(this, getSwBit())) {
        field_0x94a = 3;
        fopAcM_SetGravity(this, -4.0f);
        shape_angle.z = 0;
        shape_angle.x = 0;
        if (fopAcM_gc_c::gndCheck(&current.pos)) {
            current.pos.y = fopAcM_gc_c::getGroundY();
        }
    }
    mEvId = getEvId();
    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, NULL, mEvId);
    return 1;
}

/* 80CD724C-80CD7254 00086C 0008+00 1/0 0/0 0/0 .text            __CreateHeap__14daItemShield_cFv */
int daItemShield_c::__CreateHeap() {
    return 1;
}

/* 80CD7254-80CD7420 000874 01CC+00 1/1 0/0 0/0 .text            create__14daItemShield_cFv */
int daItemShield_c::create() {
    fopAcM_SetupActor(this, daItemShield_c);
    m_itemNo = fpcNm_ITEM_WOOD_SHIELD;
    if (fopAcM_isSwitch(this, getSwBit2())) {
        OS_REPORT("木の盾：もう取ったので出ません\n");
        return cPhs_ERROR_e;
    }
    if (getSwBit2() == 0xff) {
        OS_REPORT("[43;30m木の盾：スイッチビット２指定がありません！\n\x1b[m");
    }
    if (getSwBit() == 0xff) {
        OS_REPORT("[43;30m木の盾：スイッチビット指定がありません！\n\x1b[m");
    }
    int rv = dComIfG_resLoad(&mPhase, dItem_data::getFieldArc(m_itemNo));
    if (rv == cPhs_COMPLEATE_e) {
        if (fopAcM_entrySolidHeap(this, CheckFieldItemCreateHeap, 0x820) == 0) {
            return cPhs_ERROR_e;
        } 
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }
    return rv;
}

/* 80CD75EC-80CD7734 000C0C 0148+00 1/1 0/0 0/0 .text            bg_check__14daItemShield_cFv */
void daItemShield_c::bg_check() {
    f32 dVar6 = 0.7f;
    if (mAcch.ChkWallHit()) {
        if (speedF > 5.0f) {
            Reflect(&speed, mAcchCir, 1.0f);
        }
        current.angle.y = cM_atan2s(speed.x, speed.z);
    }
    if ( mAcch.ChkGroundLanding()) {
        cXyz acStack_38(speed);
        if (speedF > 5.0f) {
            Reflect(&acStack_38, mAcchCir, dVar6);
        }
        speed.y = -field_0x938.y * dVar6;
        if (speed.y < 3.0f) {
            fopAcM_SetSpeedF(this, 0.0f);
        }
        field_0x936++;
        if (field_0x936 == 1) {
            fopAcM_seStart(this, Z2SE_OBJ_WOODSHIELD_BOUND, 0);
        }
    }
}

/* 80CD7734-80CD77F0 000D54 00BC+00 1/1 0/0 0/0 .text action_proc_call__14daItemShield_cFv */
int daItemShield_c::action_proc_call() {
    static daItemShield_c::actionFunc l_actionFunc[4] = {
        &daItemShield_c::actionInit,
        &daItemShield_c::actionWait,
        &daItemShield_c::actionOrderGetDemo,
        &daItemShield_c::actionGetDemo,
    };
    return (this->*(l_actionFunc[mStatus]))();
}

/* 80CD77F0-80CD7828 000E10 0038+00 1/0 0/0 0/0 .text            actionInit__14daItemShield_cFv */
int daItemShield_c::actionInit() {
    daItemBase_c::show();
    actionWaitInit();
    return 1;
}

/* 80CD7828-80CD7890 000E48 0068+00 2/2 0/0 0/0 .text            actionWaitInit__14daItemShield_cFv
 */
int daItemShield_c::actionWaitInit() {
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OnCoSPrmBit(1);
    attention_info.position = current.pos;
    daItemBase_c::show();
    setStatus(1);
    return 1;
}

/* 80CD7890-80CD7C68 000EB0 03D8+00 1/0 0/0 0/0 .text            actionWait__14daItemShield_cFv */
int daItemShield_c::actionWait() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if ((player->checkWolfAttackReverse() || daPy_getPlayerActorClass()->checkFrontRollCrash()) &&
        player->current.pos.absXZ(current.pos) < 500.0f)
    {
        field_0x94a++;
        if (field_0x94a == 1) {
            field_0x952 = 0;
            field_0x954 = 2500;
            OS_REPORT("FrontCrash! %d\n", field_0x94a);
            fopAcM_seStart(this, Z2SE_OBJ_WOODSHIELD_SHAKE, 0);
        } else if (field_0x94a == 2) {
            field_0x937 = true;
            field_0x94c = 8;
            fopAcM_onSwitch(this, getSwBit());
            fopAcM_seStart(this, Z2SE_OBJ_WOODSHIELD_COME_OFF, 0);
        }
    } else if (field_0x94a == 0) {
        fopAcM_SetGravity(this, 0.0f);
    }
    if (field_0x94a == 2 && cLib_calcTimer(&field_0x94c) == 0) {
        fopAcM_SetGravity(this, -4.0f);
        fopAcM_SetMaxFallSpeed(this, -25.0f);
    }
    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());
    bg_check();
    if (mAcch.ChkGroundLanding()) {
        field_0x944.x = 4000;
        field_0x944.z = 4000;
        shape_angle.x = 0;
    } else if (mAcch.ChkGroundHit()) {
        speedF *= 0.9f;
        if (speedF < 1.0f) {
            speedF = 0.0f;
        }
        shape_angle.x = 0;
    } else if (fopAcM_GetGravity(this) != 0.0f && field_0x936 == 0) {
        shape_angle.x += 3000;
    }
    if (mCcCyl.ChkCoHit()) {
        fopAc_ac_c* hitActor = mCcCyl.GetCoHitAc();
        if (hitActor != NULL) {
            if (fopAcM_GetName(hitActor) == fopAcM_GetName(dComIfGp_getLinkPlayer())) {
                initActionOrderGetDemo();
            }
        }
    }
    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
    return 1;
}

/* 80CD7C68-80CD7D04 001288 009C+00 1/1 0/0 0/0 .text initActionOrderGetDemo__14daItemShield_cFv
 */
int daItemShield_c::initActionOrderGetDemo() {
    cLib_offBit(attention_info.flags, 0x10UL);
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    daItemBase_c::hide();
    fopAcM_orderItemEvent(this, 0, 0);
    eventInfo.onCondition(dEvtCnd_CANGETITEM_e);
    mItemId =
        fopAcM_createItemForTrBoxDemo(&current.pos, m_itemNo, -1, fopAcM_GetRoomNo(this), 0, 0);
    JUT_ASSERT(682, mItemId != fpcM_ERROR_PROCESS_ID_e)
    setStatus(STATUS_ORDERGETDEMO);
    return 1;
}

/* 80CD7D04-80CD7D80 001324 007C+00 1/0 0/0 0/0 .text actionOrderGetDemo__14daItemShield_cFv */
int daItemShield_c::actionOrderGetDemo() {
    if (eventInfo.checkCommandItem()) {
        setStatus(STATUS_GETDEMO);
        if (mItemId != fpcM_ERROR_PROCESS_ID_e) {
            dComIfGp_event_setItemPartnerId(mItemId);
        }
    } else {
        fopAcM_orderItemEvent(this, 0, 0);
        eventInfo.onCondition(dEvtCnd_CANGETITEM_e);
    }
    return 1;
}

/* 80CD7D80-80CD7E00 0013A0 0080+00 1/0 0/0 0/0 .text            actionGetDemo__14daItemShield_cFv
 */
int daItemShield_c::actionGetDemo() {
    if (dComIfGp_evmng_endCheck("DEFAULT_GETITEM")) {
        dComIfGp_event_reset();
        fopAcM_delete(this);
        fopAcM_onSwitch(this, getSwBit2());
    }
    return 1;
}

/* 80CD7E00-80CD7EBC 001420 00BC+00 1/1 0/0 0/0 .text            event_proc_call__14daItemShield_cFv
 */
void daItemShield_c::event_proc_call() {
    static daItemShield_c::camActionFunc l_func[4] = {
        &daItemShield_c::actionWaitCamDemo,
        &daItemShield_c::actionOrderCamDemo,
        &daItemShield_c::actionCamDemo,
        &daItemShield_c::actionCamDemoEnd,
    };

    (this->*(l_func[mAction]))();
}

/* 80CD7EBC-80CD7F20 0014DC 0064+00 1/0 0/0 0/0 .text actionWaitCamDemo__14daItemShield_cFv */
void daItemShield_c::actionWaitCamDemo() {
    if (field_0x937) {
        setAction(ACTION_ORDER_CAM_DEMO);
        fopAcM_orderOtherEventId(this, mEventIdx, mEvId,
                                                 0xffff, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 80CD7F20-80CD7F88 001540 0068+00 1/0 0/0 0/0 .text actionOrderCamDemo__14daItemShield_cFv */
void daItemShield_c::actionOrderCamDemo() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_CAM_DEMO);
    } else {
        fopAcM_orderOtherEventId(this, mEventIdx, mEvId,
                                                 0xffff, 0, 1);
        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
    }
}

/* 80CD7F88-80CD7FE4 0015A8 005C+00 1/0 0/0 0/0 .text            actionCamDemo__14daItemShield_cFv
 */
void daItemShield_c::actionCamDemo() {
    if (dComIfGp_evmng_endCheck(mEventIdx)) {
        setAction(ACTION_CAM_DEMO_END);
        dComIfGp_event_reset();
    }
}

/* 80CD7FE4-80CD7FE8 001604 0004+00 1/0 0/0 0/0 .text actionCamDemoEnd__14daItemShield_cFv */
void daItemShield_c::actionCamDemoEnd() {
}

/* 80CD7FE8-80CD80EC 001608 0104+00 1/1 0/0 0/0 .text            execute__14daItemShield_cFv */
int daItemShield_c::execute() {
    field_0x938 = speed;
    mRotAngleCoeff++;
    action_proc_call();
    event_proc_call();
    eyePos = current.pos;
    attention_info.position = current.pos;
    cLib_addCalcAngleS(&field_0x944.x, 0, 0x50, 0x28, 10);
    cLib_addCalcAngleS(&field_0x944.z, 0, 0x50, 0x28, 10);
    setBaseMtx();
    if (fopAcM_searchPlayerDistance(this) < 500.0f) {
        daPy_getPlayerActorClass()->setLookPos(&attention_info.position);
        attention_info.flags = 0x100;
    } else {
        attention_info.flags = 0;
    }
    return 1;
}

/* 80CD80EC-80CD8140 00170C 0054+00 1/1 0/0 0/0 .text            draw__14daItemShield_cFv */
int daItemShield_c::draw() {
    if (!daItemBase_c::chkDraw()) {
        return 1;
    }
    if (DrawBase() != 0) {
    }
    return 1;
}

/* 80CD8140-80CD8178 001760 0038+00 1/1 0/0 0/0 .text            _delete__14daItemShield_cFv */
int daItemShield_c::_delete() {
    daItemBase_c::DeleteBase(dItem_data::getFieldArc(m_itemNo));
    return 1;
}

/* 80CD8178-80CD8198 001798 0020+00 1/0 0/0 0/0 .text daItemShield_Draw__FP14daItemShield_c */
static int daItemShield_Draw(daItemShield_c* i_this) {
    return i_this->draw();
}

/* 80CD8198-80CD81B8 0017B8 0020+00 1/0 0/0 0/0 .text daItemShield_Execute__FP14daItemShield_c */
static int daItemShield_Execute(daItemShield_c* i_this) {
    return i_this->execute();
}

/* 80CD81B8-80CD81D8 0017D8 0020+00 1/0 0/0 0/0 .text daItemShield_Delete__FP14daItemShield_c */
static int daItemShield_Delete(daItemShield_c* i_this) {
    return i_this->_delete();
}

/* 80CD81D8-80CD81F8 0017F8 0020+00 1/0 0/0 0/0 .text            daItemShield_Create__FP10fopAc_ac_c
 */
static int daItemShield_Create(fopAc_ac_c* i_this) {
    return static_cast<daItemShield_c*>(i_this)->create();
}

/* 80CD841C-80CD843C -00001 0020+00 1/0 0/0 0/0 .data            l_daItemShield_Method */
static actor_method_class l_daItemShield_Method = {
    (process_method_func)daItemShield_Create,
    (process_method_func)daItemShield_Delete,
    (process_method_func)daItemShield_Execute,
    NULL,
    (process_method_func)daItemShield_Draw,
};

/* 80CD843C-80CD846C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Shield */
extern actor_process_profile_definition g_profile_Obj_Shield = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Shield,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daItemShield_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  240,                    // mPriority
  &l_daItemShield_Method, // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};


/* 80CD832C-80CD832C 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
