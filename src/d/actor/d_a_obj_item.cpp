/**
 * d_a_obj_item.cpp
 * Item (Rupee, Arrow, Heart, etc) Object Actor
 */

#include "d/actor/d_a_obj_item.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_a_itembase_static.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_item.h"
#include "d/d_item_data.h"
#include "d/d_s_play.h"
#include "dol2asm.h"
#include "m_Do/m_Do_mtx.h"

//
// Forward References:
//

extern "C" void itemGetNextExecute__8daItem_cFv();
extern "C" void checkPlayerGet__8daItem_cFv();

//
// External References:
//

// cLib_calcTimer<u8>
extern "C" u8 func_80141AE8(u8*);

extern "C" extern void* __vt__16Z2SoundObjSimple[8];
extern "C" void __dl__FPv();
extern "C" void __dt__14Z2SoundObjBaseFv();

/* 8015ADCC-8015B0B8 15570C 02EC+00 1/1 0/0 0/0 .text            Reflect__FP4cXyzRC13cBgS_PolyInfof
 */
static f32 Reflect(cXyz* i_vec, cBgS_PolyInfo const& i_polyinfo, f32 i_scale) {
    cM3dGPla plane;

    if (dComIfG_Bgsp().GetTriPla(i_polyinfo, &plane)) {
        cXyz reflect_vec;
        f32 mag = i_vec->absXZ();

        C_VECReflect(i_vec, &plane.mNormal, &reflect_vec);
        *i_vec = (reflect_vec * mag) * i_scale;
        return i_vec->absXZ();
    }

    return 0.0f;
}

/* 8015B0B8-8015B0C4 1559F8 000C+00 10/10 1/1 1/1 .text            getData__12daItemBase_cFv */
const daItemBase_data& daItemBase_c::getData() {
    return m_data;
}

/* 8015B0C4-8015B108 155A04 0044+00 1/1 0/0 0/0 .text            initBaseMtx__8daItem_cFv */
void daItem_c::initBaseMtx() {
    if (mpModel != NULL) {
        mpModel->setBaseScale(scale);
        setBaseMtx();
    }
}

/* 8015B108-8015B190 155A48 0088+00 2/2 0/0 0/0 .text            setBaseMtx__8daItem_cFv */
void daItem_c::setBaseMtx() {
    if (mpModel != NULL) {
        mpModel->setBaseScale(scale);

        switch (m_itemNo) {
        case fpcNm_ITEM_GREEN_RUPEE:
        case fpcNm_ITEM_BLUE_RUPEE:
        case fpcNm_ITEM_YELLOW_RUPEE:
        case fpcNm_ITEM_RED_RUPEE:
        case fpcNm_ITEM_PURPLE_RUPEE:
        case fpcNm_ITEM_ORANGE_RUPEE:
        case fpcNm_ITEM_SILVER_RUPEE:
            setBaseMtx_1();
            break;
        default:
            setBaseMtx_0();
            break;
        }

        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 8015B190-8015B1C8 155AD0 0038+00 1/1 0/0 0/0 .text            setBaseMtx_0__8daItem_cFv */
void daItem_c::setBaseMtx_0() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
}

/* 8015B1C8-8015B254 155B08 008C+00 1/1 0/0 0/0 .text            setBaseMtx_1__8daItem_cFv */
void daItem_c::setBaseMtx_1() {
    f32 max_y = mpModel->getModelData()->getJointNodePointer(0)->getMax()->y;
    f32 y = (max_y / 2) * scale.y;

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(0.0f, y, 0.0f);

    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(0.0f, -y, 0.0f);
}

/* 8015B254-8015B320 155B94 00CC+00 2/2 0/0 0/0 .text
 * itemGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
// NONMATCHING - matches, but pushes up weak daPy_py_c functions incorrectly
// might need other TUs that use daPy_py_c weaks to be finished first
static void itemGetCoCallBack(fopAc_ac_c* i_coActorA, dCcD_GObjInf* i_coObjInfA,
                              fopAc_ac_c* i_coActorB, dCcD_GObjInf* i_coObjInfB) {
    daItem_c* a_coActorA = (daItem_c*)i_coActorA;

    if (a_coActorA != NULL) {
        if (a_coActorA->checkPlayerGet() && i_coActorB != NULL) {
            if (fopAcM_GetName(i_coActorB) == fopAcM_GetName(dComIfGp_getLinkPlayer()) ||
                fopAcM_GetName(i_coActorB) == PROC_NPC_P2 ||
                (fopAcM_GetName(i_coActorB) == PROC_CANOE &&
                 daPy_getPlayerActorClass()->checkCanoeRide()) ||
                (fopAcM_GetName(i_coActorB) == PROC_HORSE &&
                 daPy_getPlayerActorClass()->checkHorseRide()))
            {
                a_coActorA->itemGetNextExecute();
            }
        }
    }
}

/* 8015B320-8015B3D8 155C60 00B8+00 2/2 0/0 0/0 .text
 * itemGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void itemGetTgCallBack(fopAc_ac_c* i_tgActor, dCcD_GObjInf* i_tgObjInf,
                              fopAc_ac_c* i_atActor, dCcD_GObjInf* i_atObjInf) {
    daItem_c* a_tgActor = (daItem_c*)i_tgActor;

    if (a_tgActor != NULL && a_tgActor->checkPlayerGet()) {
        if (i_atObjInf->ChkAtType(2)) {
            a_tgActor->itemGetNextExecute();
        } else if (i_atObjInf->ChkAtType(AT_TYPE_40) || i_atObjInf->ChkAtType(AT_TYPE_BOOMERANG)) {
            if (!dComIfGp_event_runCheck() && a_tgActor->checkBoomWindTgTimer() &&
                a_tgActor->getStatus() != daItem_c::STATUS_BOOMERANG_CARRY_e)
            {
                a_tgActor->procInitBoomerangCarry();
            }
        } else if (i_atObjInf->ChkAtType(AT_TYPE_HOOKSHOT)) {
            a_tgActor->clrFlag(daItem_c::FLAG_NO_MOVE_e);
        }
    }
}

/* 803B9DA0-803B9DAC 016EC0 000C+00 2/2 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 8015B3D8-8015B7BC 155D18 03E4+00 1/1 0/0 0/0 .text            CreateInit__8daItem_cFv */
void daItem_c::CreateInit() {
    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
    mAcch.ClrWaterNone();
    mAcch.ClrRoofNone();
    mAcch.SetWtrChkMode(2);
    mAcch.SetWaterCheckOffset(10000.0f);

    mCcStts.Init(0, 0xFF, this);
    mCcCyl.Set(m_cyl_src);
    mCcCyl.SetStts(&mCcStts);
    mCcCyl.SetCoHitCallback(itemGetCoCallBack);
    mCcCyl.SetTgHitCallback(itemGetTgCallBack);

    f32 cylHeight = dItem_data::getH(m_itemNo);
    f32 cylRadius = dItem_data::getR(m_itemNo);

    if (scale.x > 1.0f) {
        cylHeight *= scale.x;
        cylRadius *= scale.x;
    }

    mCcCyl.SetR(cylRadius);
    mCcCyl.SetH(cylHeight);

    setCullInfo();

    mWaitTimer = getData().mWaitTime;
    mDisappearTimer = getData().mDisappearTime;

    procInitNormal();
    show();

    mItemScale.setall(1.0f);

    switch (daItem_prm::getType(this)) {
    case TYPE_BOOM_HIT_e:
        hide();
        procInitBoomHitWait();
        break;
    case TYPE_FORCE_GET_e:
        procInitForceGet();
        break;
    case TYPE_SIMPLE_GET_e:
        procInitSimpleGetDemo();
        procMainSimpleGetDemo();
        break;
    default:
    case TYPE_LAUNCH_NO_RND_e:
        mSwitchNo = daItem_prm::getSwitchNo(this);
        if (mSwitchNo != 0xFF && !fopAcM_isSwitch(this, mSwitchNo)) {
            hide();
            setFlag(FLAG_NO_TIMER_e);
            procInitSwOnWait();
        }
        break;
    }

    initAction();
    initBaseMtx();
    animPlay(1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f);

    if (m_itemNo == fpcNm_ITEM_BOOMERANG) {
        itemGetNextExecute();
    } else if ((m_itemNo == fpcNm_ITEM_ORANGE_RUPEE || m_itemNo == fpcNm_ITEM_SILVER_RUPEE) &&
               mSparkleEmtr.getEmitter() == NULL)
    {
        dComIfGp_particle_set(0x0C14, &mSparklePos, NULL, NULL, -1, &mSparkleEmtr, -1, NULL, NULL,
                              NULL);
    }

    mSound.init(&current.pos, 1);

    f32 old_speedF = speedF;
    cXyz old_speed = speed;

    mAcch.CrrPos(dComIfG_Bgsp());

    if (mAcch.ChkWaterHit() && mAcch.m_wtr.GetHeight() > home.pos.y + 150.0f) {
        field_0x9c0 = 1;
    }

    if (daItem_prm::checkInWater(this) == true) {
        field_0x9c0 = 1;
    }

    speedF = old_speedF;
    speed = old_speed;

    mAcch.ClrGroundLanding();
    mAcch.ClrGroundHit();
    mAcch.ClrWaterHit();
    mAcch.ClrWaterIn();
    mAcch.ClrWallHit();

    if (field_0x9c0) {
        // "Occurs below water surface wtr<%.2f>my<%.2f>\n"
        OS_REPORT("水面より下で発生wtr<%.2f>my<%.2f>\n", mAcch.m_wtr.GetHeight(), home.pos.y);
    }
}

/* 8015B7BC-8015B7D4 1560FC 0018+00 1/1 0/0 0/0 .text            setCullInfo__8daItem_cFv */
void daItem_c::setCullInfo() {
    if (mpModel != NULL) {
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    }
}

/* 8015B7D4-8015BA3C 156114 0268+00 1/1 0/0 0/0 .text            _daItem_create__8daItem_cFv */
int daItem_c::_daItem_create() {
    fopAcM_SetupActor(this, daItem_c);

    if (!field_0x95d) {
        field_0x92c = home.angle.x;
        field_0x92e = home.angle.z;
        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;

        field_0x95d = true;
    }

    m_itemNo = daItem_prm::getItemNo(this);
    BOOL flag = dItem_data::chkFlag(m_itemNo, 2);

#ifdef DEBUG
    if (dItem_data::getFieldArc(m_itemNo) == NULL) {
        // "Item Num<%d>: No Resource Archive specified!!\n"
        OS_REPORT_ERROR("アイテム番号<%d>:リソースのアーカイブ指定がありません！！\n", m_itemNo);
        return cPhs_ERROR_e;
    }

    if (m_itemNo == fpcNm_ITEM_SMALL_KEY || m_itemNo == fpcNm_ITEM_KANTERA || m_itemNo == fpcNm_ITEM_LIGHT_DROP ||
        m_itemNo == fpcNm_ITEM_UTAWA_HEART || m_itemNo == fpcNm_ITEM_KAKERA_HEART)
    {
        // "fpcNm_ITEM_(ITEM) is an unhandled item<%d>\n"
        OS_REPORT_ERROR("fpcNm_(ITEM)では扱わないアイテムです<%d>\n", m_itemNo);
        JUT_ASSERT(0, 0);
        return cPhs_ERROR_e;
    } else if (m_itemNo == fpcNm_ITEM_BOMB_5 || m_itemNo == fpcNm_ITEM_BOMB_10 || m_itemNo == fpcNm_ITEM_BOMB_20 ||
               m_itemNo == fpcNm_ITEM_BOMB_30)
    {
        // "Bomb Replenish Items are no longer in use!\n"
        OS_REPORT_ERROR("補給アイテムの爆弾は使用不可になりました！\n");
        return cPhs_ERROR_e;
    }
#endif

    mItemBitNo = daItem_prm::getItemBitNo(this);
    if (fopAcM_isItem(this, mItemBitNo)) {
        return cPhs_ERROR_e;
    }

    int phase_state = cPhs_COMPLEATE_e;

    if (flag) {
        CreateInit();
    } else {
        phase_state = dComIfG_resLoad(&mPhase, dItem_data::getFieldArc(m_itemNo));
        if (phase_state == cPhs_COMPLEATE_e) {
            if (!fopAcM_entrySolidHeap(this, CheckFieldItemCreateHeap,
                                       dItem_data::getFieldHeapSize(m_itemNo)))
            {
                return cPhs_ERROR_e;
            }

            CreateInit();
        }
    }

    return phase_state;
}

/* 8015BA3C-8015BA9C 15637C 0060+00 0/0 1/1 0/0 .text            __dt__16Z2SoundObjSimpleFv */
// Z2SoundObjSimple::~Z2SoundObjSimple() {
extern "C" void __dt__16Z2SoundObjSimpleFv() {
    // NONMATCHING
}

/* 8015BA9C-8015BD84 1563DC 02E8+00 1/1 0/0 0/0 .text            _daItem_execute__8daItem_cFv */
int daItem_c::_daItem_execute() {
    field_0x950 = speed;
    CountTimer();

    eyePos = current.pos;
    eyePos.y += (f32)dItem_data::getH(m_itemNo) / 2;

    attention_info.position = current.pos;

    if (mCcCyl.ChkTgHit()) {
        cCcD_Obj* hitObj = mCcCyl.GetTgHitObj();
        if (hitObj != NULL && hitObj->ChkAtType(AT_TYPE_HOOKSHOT)) {
            mSound.startCollisionSE(Z2SE_HIT_HOOKSHOT_STICK, 0, NULL);
        }
    }

    if (mFuncPtr[getStatus()] != NULL) {
        (this->*mFuncPtr[getStatus()])();
    }

    if (field_0x95f != 0 && !fopAcM_checkHookCarryNow(this)) {
        if (fopAcM_searchPlayerDistance(this) < 300.0f) {
            itemGetNextExecute();
        }
    }

    if (fopAcM_checkHookCarryNow(this)) {
        cXyz carry_pos = current.pos;

        if (mpModel != NULL) {
            carry_pos.y += 0.5f * mpModel->getModelData()->getJointNodePointer(0)->getMax()->y;
        }

        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::inverse();
        mDoMtx_stack_c::multVec(&carry_pos, &carry_pos);
        daPy_getPlayerActorClass()->setHookshotCarryOffset(fopAcM_GetID(this), &carry_pos);
    }

    animPlay(1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f);
    setBaseMtx();
    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    mLastPos = current.pos;
    field_0x95f = (fopAcM_checkHookCarryNow(this) >> 0x14) & 1;

    if (m_itemNo == fpcNm_ITEM_ORANGE_RUPEE || m_itemNo == fpcNm_ITEM_SILVER_RUPEE) {
        mSparklePos = current.pos;
        mSparklePos.y += 18.0f;
    }

    return 1;
}

/* 8015BD84-8015BDE8 1566C4 0064+00 1/1 0/0 0/0 .text            _daItem_draw__8daItem_cFv */
int daItem_c::_daItem_draw() {
    if (mpModel == NULL) {
        return 1;
    }

    if (chkDraw()) {
        return DrawBase();
    }

    return 1;
}

/* 8015BDE8-8015BE60 156728 0078+00 1/1 0/0 0/0 .text            _daItem_delete__8daItem_cFv */
int daItem_c::_daItem_delete() {
    mSound.deleteObject();

    if (m_itemNo == fpcNm_ITEM_ORANGE_RUPEE || m_itemNo == fpcNm_ITEM_SILVER_RUPEE) {
        mSparkleEmtr.remove();
    }

    DeleteBase(dItem_data::getFieldArc(m_itemNo));
    return 1;
}

/* 8015BE60-8015BEA4 1567A0 0044+00 4/4 0/0 0/0 .text            procInitNormal__8daItem_cFv */
void daItem_c::procInitNormal() {
    mAcch.ClrGrndNone();
    mAcch.ClrMoveBGOnly();
    setStatus(STATUS_NORMAL_e);
}

/* 8015BEA4-8015BFE8 1567E4 0144+00 1/0 0/0 0/0 .text            procMainNormal__8daItem_cFv */
void daItem_c::procMainNormal() {
    move_proc_call();

    if (scale != mItemScale) {
        f32 step_x = mItemScale.x / getData().mScalingTime;
        f32 step_y = mItemScale.y / getData().mScalingTime;
        f32 step_z = mItemScale.z / getData().mScalingTime;

        cLib_chaseF(&scale.x, mItemScale.x, step_x);
        cLib_chaseF(&scale.y, mItemScale.y, step_y);
        cLib_chaseF(&scale.z, mItemScale.z, step_z);
    }

    if (mWaitTimer == 0) {
        if (mDisappearTimer == 0) {
            deleteItem();
        }

        if (m_timer % getData().mFlashCycleTime == 0) {
            changeDraw();
        }
    }

    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
}

/* 8015BFE8-8015BFEC 156928 0004+00 1/0 0/0 0/0 .text            procMainEnemyCarry__8daItem_cFv */
void daItem_c::procMainEnemyCarry() {}

/* 8015BFEC-8015C038 15692C 004C+00 1/1 0/0 0/0 .text            procInitForceGet__8daItem_cFv */
void daItem_c::procInitForceGet() {
    mAcch.ClrGrndNone();
    mAcch.ClrMoveBGOnly();
    setStatus(STATUS_FORCE_GET_e);
    itemGetNextExecute();
}

/* 8015C038-8015C058 156978 0020+00 1/0 0/0 0/0 .text            procMainForceGet__8daItem_cFv */
void daItem_c::procMainForceGet() {
    procInitSimpleGetDemo();
}

/* 8015C058-8015C134 156998 00DC+00 4/4 0/0 0/0 .text            procInitSimpleGetDemo__8daItem_cFv
 */
void daItem_c::procInitSimpleGetDemo() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    current.pos = player->getItemPos();
    current.pos.y += 15.0f;
    shape_angle.z = 0;
    shape_angle.x = 0;
    scale = mItemScale;
    fopAcM_SetSpeed(this, 0, getData().mGetDemoLaunchSpeed, 0);
    fopAcM_SetGravity(this, getData().mGetDemoGravity);
    show();
    mSimpleExistTimer = getData().mSimpleExistTime;
    fopAcM_SetStatus(this, 0x20000);
    setStatus(STATUS_SIMPLE_GET_DEMO_e);
}

/* 8015C134-8015C200 156A74 00CC+00 2/1 0/0 0/0 .text            procMainSimpleGetDemo__8daItem_cFv
 */
void daItem_c::procMainSimpleGetDemo() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz item_pos = player->getItemPos();
    item_pos.y += 15.0f;

    current.pos.x = item_pos.x;
    current.pos.z = item_pos.z;
    fopAcM_posMoveF(this, NULL);

    if (current.pos.y < item_pos.y) {
        current.pos.y = item_pos.y;
    }

    camera_class* camera = dComIfGp_getCamera(0);
    shape_angle.x = fopCamM_GetAngleX(camera);
    shape_angle.y = fopCamM_GetAngleY(camera);
    shape_angle.z = fopCamM_GetAngleZ(camera);

    mSimpleExistTimer--;
    if (mSimpleExistTimer < 0) {
        fopAcM_delete(this);
    }
}

/* 8015C200-8015C2A4 156B40 00A4+00 1/1 0/0 0/0 .text            procInitGetDemoEvent__8daItem_cFv
 */
void daItem_c::procInitGetDemoEvent() {
    hide();

    if (m_itemNo == fpcNm_ITEM_ORANGE_RUPEE || m_itemNo == fpcNm_ITEM_SILVER_RUPEE) {
        mSparkleEmtr.remove();
    }

    field_0x9c1 = 10;
    fopAcM_orderItemEvent(this, 0, 0);
    eventInfo.onCondition(dEvtCnd_CANGETITEM_e);

    m_item_id = fopAcM_createItemForTrBoxDemo(&current.pos, m_itemNo, -1, fopAcM_GetRoomNo(this),
                                              NULL, NULL);
    JUT_ASSERT(0, m_item_id != fpcM_ERROR_PROCESS_ID_e);

    setStatus(STATUS_WAIT_GET_DEMO_EVENT_e);
}

/* 8015C2A4-8015C3BC 156BE4 0118+00 1/0 0/0 0/0 .text            procWaitGetDemoEvent__8daItem_cFv
 */
void daItem_c::procWaitGetDemoEvent() {
    if (eventInfo.checkCommandItem()) {
        setStatus(STATUS_GET_DEMO_EVENT_e);
        if (m_item_id != -1) {
            dComIfGp_event_setItemPartnerId(m_item_id);
        }
    } else {
        if (m_itemNo == fpcNm_ITEM_BOOMERANG) {
            fopAcM_orderItemEvent(this, 0, 0);
            eventInfo.onCondition(dEvtCnd_CANGETITEM_e);
            return;
        }

        if (func_80141AE8(&field_0x9c1) == 0 || checkItemGet(m_itemNo, 1)) {
            if (fopAcM_delete(m_item_id)) {
                // "Item: Get Item deleted because Get Demo was canceled\n"
                OS_REPORT("アイテム：ゲットデモ中止されたので、ゲットアイテム削除しました\n");
            }

            BOOL haveItem = checkItemGet(m_itemNo, 1);

            procInitSimpleGetDemo();
            itemGet();
            if (!haveItem) {
                dComIfGs_offItemFirstBit(m_itemNo);
            }
        } else {
            fopAcM_orderItemEvent(this, 0, 0);
            eventInfo.onCondition(dEvtCnd_CANGETITEM_e);
        }
    }
}

/* 8015C3BC-8015C41C 156CFC 0060+00 1/0 0/0 0/0 .text            procMainGetDemoEvent__8daItem_cFv
 */
void daItem_c::procMainGetDemoEvent() {
    if (dComIfGp_evmng_endCheck("DEFAULT_GETITEM")) {
        dComIfGp_event_reset();
        fopAcM_delete(this);
    }
}

/* 8015C41C-8015C514 156D5C 00F8+00 1/1 0/0 0/0 .text            procInitBoomerangCarry__8daItem_cFv
 */
void daItem_c::procInitBoomerangCarry() {
    clrFlag(FLAG_NO_MOVE_e);
    scale = mItemScale;
    mBoomerangMove.initOffset(&current.pos);

    u8 height = dItem_data::getH(m_itemNo);
    u8 radius = dItem_data::getR(m_itemNo);
    mCcCyl.SetR((f32)radius * 2.0f);
    mCcCyl.SetH((f32)height * 2.0f);
    mCcCyl.OnCoSPrmBit(1);

    mAcch.ClrGrndNone();
    mAcch.ClrMoveBGOnly();
    setStatus(STATUS_BOOMERANG_CARRY_e);
}

/* 8015C514-8015C5F4 156E54 00E0+00 1/0 0/0 0/0 .text            procMainBoomerangCarry__8daItem_cFv
 */
void daItem_c::procMainBoomerangCarry() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (!mBoomerangMove.posMove(&current.pos, &shape_angle.y, NULL, 0x1C00)) {
        if (fopAcM_searchPlayerDistance(this) < KREG_F(0) + 200.0f &&
            !fopAcM_lc_c::lineCheck(&current.pos, &player->current.pos, this))
        {
            itemGetNextExecute();
        } else {
            procInitNormal();
        }
    }

    mAcch.CrrPos(dComIfG_Bgsp());
    mBoomerangMove.bgCheckAfterOffset(&current.pos);
    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
}

/* 8015C5F4-8015C648 156F34 0054+00 1/1 0/0 0/0 .text            procInitSwOnWait__8daItem_cFv */
void daItem_c::procInitSwOnWait() {
    hide();

    if (daItem_prm::getSwOnWaitTimer(this) == 63) {
        mSwOnWaitTimer = 15;
    } else {
        mSwOnWaitTimer = daItem_prm::getSwOnWaitTimer(this);
    }

    setStatus(STATUS_SW_ON_WAIT_e);
}

/* 8015C648-8015C708 156F88 00C0+00 1/0 0/0 0/0 .text            procMainSwOnWait__8daItem_cFv */
void daItem_c::procMainSwOnWait() {
    if (fopAcM_isSwitch(this, mSwitchNo)) {
        mAcch.CrrPos(dComIfG_Bgsp());

        if (mAcch.ChkWaterHit() && mAcch.m_wtr.GetHeight() > 150.0f + home.pos.y) {
            field_0x9c0 = 1;
        }

        if (daItem_prm::checkInWater(this) == 1) {
            field_0x9c0 = 1;
        }

        if (field_0x9c0) {
            // "Occurs below water surface wtr<%.2f>my<%.2f>\n"
            OS_REPORT("水面より下で発生wtr<%.2f>my<%.2f>\n", mAcch.m_wtr.GetHeight(), home.pos.y);
        }

        if (func_80141AE8(&mSwOnWaitTimer) == 0) {
            show();
            procInitNormal();
        }
    }
}

/* 8015C708-8015C738 157048 0030+00 1/1 0/0 0/0 .text            procInitBoomHitWait__8daItem_cFv */
void daItem_c::procInitBoomHitWait() {
    mCcCyl.SetCoHitCallback(NULL);
    mCcCyl.SetTgHitCallback(NULL);
    mCcCyl.OffCoSPrmBit(1);
    mCcCyl.SetTgType(0x10020);
    setStatus(STATUS_BOOM_HIT_WAIT_e);
}

/* 8015C738-8015CAB8 157078 0380+00 1/0 0/0 0/0 .text            procMainBoomHitWait__8daItem_cFv */
void daItem_c::procMainBoomHitWait() {
    m_get_timer = 0;

    if (mCcCyl.ChkTgHit()) {
        cCcD_Obj* hit_obj = mCcCyl.GetTgHitObj();

        if (hit_obj != NULL && (hit_obj->ChkAtType(AT_TYPE_BOOMERANG) || hit_obj->ChkAtType(AT_TYPE_BOMB))) {
            m_get_timer = 100;

            show();
            clrFlag(FLAG_NO_MOVE_e);
            clrFlag(FLAG_NO_TIMER_e);
            setFlag(FLAG_UNK_2_e);
            initSpeed(TRUE);

            mCcCyl.SetTgType(0xFFFFFFFF);
            mCcCyl.SetCoHitCallback(itemGetCoCallBack);
            mCcCyl.SetTgHitCallback(itemGetTgCallBack);
            mCcCyl.OnCoSPrmBit(1);
            mCcCyl.OnTgSPrmBit(1);
            mBoomWindTgTimer = 5;
            procInitNormal();
        }
    } else {
        daPy_py_c* player = daPy_getPlayerActorClass();
        if (player->checkWolfDig()) {
            cXyz sp34 = player->getLeftHandPos() - current.pos;
            if (sp34.abs() < 200.0f) {
                cXyz pos_offset(0.0f, 0.0f, KREG_F(1) + 100.0f);
                mDoMtx_stack_c::YrotS(player->shape_angle.y);
                mDoMtx_stack_c::multVec(&pos_offset, &pos_offset);
                current.pos = player->current.pos + pos_offset;

                current.angle.y = (f32)player->shape_angle.y + cM_rndFX(16383.0f);
                show();
                clrFlag(FLAG_NO_MOVE_e);
                clrFlag(FLAG_NO_TIMER_e);
                setFlag(FLAG_UNK_2_e);
                initSpeed(TRUE);

                mCcCyl.SetTgType(0xFFFFFFFF);
                mCcCyl.SetCoHitCallback(itemGetCoCallBack);
                mCcCyl.SetTgHitCallback(itemGetTgCallBack);
                mCcCyl.OnCoSPrmBit(1);
                mCcCyl.OnTgSPrmBit(1);
                procInitNormal();
            }
        }
    }

    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);
}

/* 8015CAB8-8015CC4C 1573F8 0194+00 1/1 0/0 0/0 .text            move_proc_call__8daItem_cFv */
void daItem_c::move_proc_call() {
    static procFunc mode_proc[] = {&daItem_c::mode_wait, &daItem_c::mode_water};

    if (checkFlag(FLAG_NO_MOVE_e)) {
        RotateYBase();
        return;
    }

    bool update_pos = true;
    if (mAcch.ChkGroundHit() && !mAcch.ChkGroundLanding() && !mAcch.ChkWallHit() &&
        !dComIfG_Bgsp().ChkMoveBG_NoDABg(mAcch.m_gnd) && !mCcCyl.ChkCoHit() &&
        mLastPos == current.pos)
    {
        mAcch.SetGrndNone();
        mAcch.SetRoofNone();
        mAcch.SetMoveBGOnly();
        update_pos = false;
    } else {
        mAcch.ClrGrndNone();
        mAcch.ClrRoofNone();
        mAcch.ClrMoveBGOnly();
    }

    checkYogan();

    if (fopAcM_checkHookCarryNow(this)) {
        update_pos = false;
    }

    if (update_pos) {
        fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    }

    (this->*mode_proc[mMode])();
}

/* 8015CC4C-8015CC88 15758C 003C+00 1/1 0/0 0/0 .text            mode_wait_init__8daItem_cFv */
void daItem_c::mode_wait_init() {
    mMode = MODE_WAIT_e;
    fopAcM_SetGravity(this, getData().mGravity);
}

/* 8015CC88-8015CCD0 1575C8 0048+00 1/1 0/0 0/0 .text            mode_water_init__8daItem_cFv */
void daItem_c::mode_water_init() {
    mMode = MODE_WATER_e;
    fopAcM_SetSpeed(this, 0.0f, 0.0f, 0.0f);
    fopAcM_SetSpeedF(this, 0.0f);
    shape_angle.z = 0;
    shape_angle.x = 0;
    field_0x940 = 0;
    scale = mItemScale;
}

/* 8015CCD0-8015CDCC 157610 00FC+00 1/0 0/0 0/0 .text            mode_wait__8daItem_cFv */
void daItem_c::mode_wait() {
    if (m_timer < 5 && speed.y > 0.0f) {
        mAcch.SetGrndNone();
    }

    switch (m_itemNo) {
    case fpcNm_ITEM_HEART:
        itemActionForHeart();
        break;
    case fpcNm_ITEM_ARROW_10:
    case fpcNm_ITEM_ARROW_20:
    case fpcNm_ITEM_ARROW_30:
    case fpcNm_ITEM_ARROW_1:
    case fpcNm_ITEM_PACHINKO_SHOT:
    case fpcNm_ITEM_LIGHT_ARROW:
        itemActionForArrow();
        break;
    case fpcNm_ITEM_BOOMERANG:
        itemActionForBoomerang();
        break;
    case fpcNm_ITEM_GREEN_RUPEE:
    case fpcNm_ITEM_BLUE_RUPEE:
    case fpcNm_ITEM_YELLOW_RUPEE:
    case fpcNm_ITEM_RED_RUPEE:
    case fpcNm_ITEM_PURPLE_RUPEE:
    case fpcNm_ITEM_ORANGE_RUPEE:
    case fpcNm_ITEM_SILVER_RUPEE:
    default:
        itemActionForRupee();
        break;
    }

    if (field_0x9c0 == 0 && mAcch.ChkWaterHit() && mAcch.m_wtr.GetHeight() > current.pos.y) {
        mode_water_init();
    }

    mAcch.ClrGrndNone();
}

/* 8015CDCC-8015CE94 15770C 00C8+00 1/0 0/0 0/0 .text            mode_water__8daItem_cFv */
void daItem_c::mode_water() {
    mAcch.CrrPos(dComIfG_Bgsp());

    if (!mAcch.ChkWaterHit() || mAcch.m_wtr.GetHeight() < current.pos.y) {
        mode_wait_init();
    } else {
        current.pos.y = mAcch.m_wtr.GetHeight();
    }

    f32 scale = 1.0f;
    switch (m_itemNo) {
    case fpcNm_ITEM_HEART:
        scale = 0.5f;
        break;
    case fpcNm_ITEM_GREEN_RUPEE:
    case fpcNm_ITEM_BLUE_RUPEE:
    case fpcNm_ITEM_YELLOW_RUPEE:
    case fpcNm_ITEM_RED_RUPEE:
    case fpcNm_ITEM_PURPLE_RUPEE:
    case fpcNm_ITEM_ORANGE_RUPEE:
        scale = 1.0f;
        break;
    case fpcNm_ITEM_ARROW_10:
    case fpcNm_ITEM_ARROW_20:
    case fpcNm_ITEM_ARROW_30:
    case fpcNm_ITEM_ARROW_1:
        scale = 1.0f;
        break;
    case fpcNm_ITEM_PACHINKO_SHOT:
        scale = 1.0f;
        break;
    }

    fopAcM_effHamonSet(&field_0x9b8, &current.pos, scale, 0.1f);
    RotateYBase();
}

/* 8015CE94-8015CEEC 1577D4 0058+00 1/0 0/0 0/0 .text            setTevStr__8daItem_cFv */
void daItem_c::setTevStr() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
}

/* 8015CEEC-8015D0A8 15782C 01BC+00 6/6 0/0 0/0 .text            itemGetNextExecute__8daItem_cFv */
void daItem_c::itemGetNextExecute() {
    if (!checkFlag(FLAG_DELETE_ITEM_e) && !checkFlag(FLAG_INIT_GET_ITEM_e)) {
        setFlag(FLAG_INIT_GET_ITEM_e);
        BOOL haveItem = false;

        switch (m_itemNo) {
        case fpcNm_ITEM_HEART:
        case fpcNm_ITEM_GREEN_RUPEE:
        case fpcNm_ITEM_ARROW_10:
        case fpcNm_ITEM_ARROW_20:
        case fpcNm_ITEM_ARROW_30:
        case fpcNm_ITEM_ARROW_1:
            procInitSimpleGetDemo();
            itemGet();
            break;
        case fpcNm_ITEM_BLUE_RUPEE:
        case fpcNm_ITEM_YELLOW_RUPEE:
        case fpcNm_ITEM_RED_RUPEE:
        case fpcNm_ITEM_PURPLE_RUPEE:
        case fpcNm_ITEM_ORANGE_RUPEE:
        case fpcNm_ITEM_SILVER_RUPEE:
        case fpcNm_ITEM_PACHINKO_SHOT:
            if (daPy_getPlayerActorClass()->checkCanoeRide() ||
                daPy_getPlayerActorClass()->checkHorseRide())
            {
                if (checkItemGet(m_itemNo, 1)) {
                    haveItem = true;
                }
                procInitSimpleGetDemo();
                itemGet();

                if (!haveItem) {
                    dComIfGs_offItemFirstBit(m_itemNo);
                }
            } else if (!checkItemGet(m_itemNo, 1)) {
                procInitGetDemoEvent();
            } else {
                procInitSimpleGetDemo();
                itemGet();
            }
            break;
        case fpcNm_ITEM_BOOMERANG:
            procInitGetDemoEvent();
            break;
        default:
            // "[daItem_c] Get process not defined[%d]\n"
            OS_REPORT_ERROR("[daItem_c]ゲット処理が定義されていません[%d]\n", m_itemNo);
        }

        fopAcM_onItem(this, mItemBitNo);
        mCcCyl.SetTgType(0);
        mCcCyl.OffCoSPrmBit(1);
        mCcCyl.ClrTgHit();
        mCcCyl.ClrCoHit();
    }
}

/* 8015D0A8-8015D370 1579E8 02C8+00 2/2 0/0 0/0 .text            itemGet__8daItem_cFv */
void daItem_c::itemGet() {
    switch (m_itemNo) {
    case fpcNm_ITEM_HEART:
        mDoAud_seStart(Z2SE_HEART_PIECE_GET, NULL, 0, 0);
        execItemGet(m_itemNo);
        break;
    case fpcNm_ITEM_GREEN_RUPEE:
        mDoAud_seStart(Z2SE_GREEN_LUPY_GET, NULL, 0, 0);
        execItemGet(m_itemNo);
        break;
    case fpcNm_ITEM_BLUE_RUPEE:
        mDoAud_seStart(Z2SE_BLUE_LUPY_GET, NULL, 0, 0);
        execItemGet(m_itemNo);
        break;
    case fpcNm_ITEM_YELLOW_RUPEE:
        mDoAud_seStart(Z2SE_BLUE_LUPY_GET, NULL, 0, 0);
        execItemGet(m_itemNo);
        break;
    case fpcNm_ITEM_RED_RUPEE:
        mDoAud_seStart(Z2SE_RED_LUPY_GET, NULL, 0, 0);
        execItemGet(m_itemNo);
        break;
    case fpcNm_ITEM_PURPLE_RUPEE:
        mDoAud_seStart(Z2SE_RED_LUPY_GET, NULL, 0, 0);
        execItemGet(m_itemNo);
        break;
    case fpcNm_ITEM_ORANGE_RUPEE:
        mDoAud_seStart(Z2SE_RED_LUPY_GET, NULL, 0, 0);
        execItemGet(m_itemNo);
        break;
    case fpcNm_ITEM_SILVER_RUPEE:
        mDoAud_seStart(Z2SE_RED_LUPY_GET, NULL, 0, 0);
        execItemGet(m_itemNo);
        break;
    case fpcNm_ITEM_BOOMERANG:
        break;
    case fpcNm_ITEM_ARROW_10:
    case fpcNm_ITEM_ARROW_20:
    case fpcNm_ITEM_ARROW_30:
    case fpcNm_ITEM_ARROW_1:
    case fpcNm_ITEM_PACHINKO_SHOT:
        mDoAud_seStart(Z2SE_CONSUMP_ITEM_GET, NULL, 0, 0);
        execItemGet(m_itemNo);
    default:
        // "[daItem_c] Get process not defined[%d]\n"
        OS_REPORT_ERROR("[daItem_c]ゲット処理が定義されていません[%d]\n", m_itemNo);
        break;
    }
}

/* 8015D370-8015D3CC 157CB0 005C+00 1/1 0/0 0/0 .text            checkCountTimer__8daItem_cFv */
BOOL daItem_c::checkCountTimer() {
    BOOL can_count = true;

    if (mStatus == STATUS_ENEMY_CARRY_e) {
        can_count = false;
    }

    if (checkFlag(FLAG_NO_TIMER_e)) {
        can_count = false;
    }

    if (dComIfGp_event_runCheck()) {
        can_count = false;
    }

    if (mStatus == STATUS_BOOMERANG_CARRY_e || fopAcM_checkHookCarryNow(this)) {
        can_count = false;
    }

    return can_count;
}

/* 8015D3CC-8015D410 157D0C 0044+00 2/2 0/0 0/0 .text            checkPlayerGet__8daItem_cFv */
BOOL daItem_c::checkPlayerGet() {
    return getData().mNoGetTime <= m_get_timer ? TRUE : FALSE;
}

/* 8015D410-8015D480 157D50 0070+00 1/1 0/0 0/0 .text            checkYogan__8daItem_cFv */
void daItem_c::checkYogan() {
    if (mAcch.ChkWaterHit() && mAcch.m_wtr.GetHeight() > current.pos.y + 100.0f) {
        if (dComIfG_Bgsp().GetPolyAtt0(mAcch.m_wtr) == 6) {
            deleteItem();
        }
    }
}

/* 8015D480-8015D4AC 157DC0 002C+00 2/2 0/0 0/0 .text            deleteItem__8daItem_cFv */
void daItem_c::deleteItem() {
    setFlag(FLAG_DELETE_ITEM_e);
    fopAcM_delete(this);
}

/* 8015D4AC-8015D56C 157DEC 00C0+00 1/1 0/0 0/0 .text            itemActionForRupee__8daItem_cFv */
int daItem_c::itemActionForRupee() {
    mAcch.CrrPos(dComIfG_Bgsp());
    bg_check();

    if (mAcch.ChkGroundHit()) {
        RotateYBase();
        speedF *= 0.95f;
    }

    if (field_0x94b >= 2) {
        clrFlag(FLAG_UNK_2_e);
    }

    if (field_0x94b == 0) {
        shape_angle.x += getData().mRotateXSpeed;
    } else {
        shape_angle.x = 0;
    }

    return 1;
}

/* 8015D56C-8015D688 157EAC 011C+00 1/1 0/0 0/0 .text            itemActionForHeart__8daItem_cFv */
int daItem_c::itemActionForHeart() {
    f32 var_f31 = fopAcM_GetSpeed(this).y;

    if (fopAcM_GetSpeed_p(this)->y <= 0.0f) {
        fopAcM_SetGravity(this, 0.0f);
        fopAcM_SetSpeed(this, 0.0f, getData().mHeartFallSpeed, 0.0f);
    }

    mAcch.CrrPos(dComIfG_Bgsp());

    if (mAcch.ChkGroundLanding() || mAcch.ChkGroundHit()) {
        clrFlag(FLAG_UNK_2_e);
        shape_angle.z = 0;
        fopAcM_SetSpeed(this, 0.0f, -1.0f, 0.0f);
        fopAcM_SetSpeedF(this, 0.0f);
    } else if (var_f31 < 0.0f) {
        var_f31 = getData().mHeartAmplitude;
        fopAcM_SetSpeedF(this, var_f31 * cM_ssin(m_timer * getData().mHeartFallCycleTime));
    }

    RotateYBase();
    return 1;
}

/* 8015D688-8015D700 157FC8 0078+00 1/1 0/0 0/0 .text            itemActionForArrow__8daItem_cFv */
int daItem_c::itemActionForArrow() {
    mAcch.CrrPos(dComIfG_Bgsp());
    bg_check();

    if (mAcch.ChkGroundHit() && !mAcch.ChkGroundLanding()) {
        fopAcM_SetSpeedF(this, 0.0f);
        RotateYBase();
    }

    return 1;
}

/* 8015D700-8015D734 158040 0034+00 1/1 0/0 0/0 .text            itemActionForBoomerang__8daItem_cFv
 */
int daItem_c::itemActionForBoomerang() {
    mAcch.CrrPos(dComIfG_Bgsp());
    return 1;
}

/* 8015D734-8015D834 158074 0100+00 2/2 0/0 0/0 .text            bg_check__8daItem_cFv */
void daItem_c::bg_check() {
    if (mAcch.ChkWallHit()) {
        if (speedF > 5.0f) {
            Reflect(&speed, mAcchCir, 1.0f);
        }

        current.angle.y = cM_atan2s(speed.x, speed.z);
    }

    if (mAcch.ChkGroundLanding()) {
        cXyz vec(speed);

        if (speedF > 5.0f) {
            Reflect(&vec, mAcchCir, getData().mGroundReflect);
        }

        speed.y = -field_0x950.y * getData().mGroundReflect;
        if (speed.y < 3.0f) {
            speedF = 0.0f;
        }

        if (field_0x94b < 100) {
            field_0x94b++;
        }

        set_bound_se();
    }
}

/* 8015D834-8015D95C 158174 0128+00 1/1 0/0 0/0 .text            set_bound_se__8daItem_cFv */
void daItem_c::set_bound_se() {
    if (m_get_timer < 10) {
        return;
    }

    u32 var_r31 = fabsf(field_0x950.y) * 2.0f;
    if (var_r31 > 100) {
        var_r31 = 100;
    }

    switch (m_itemNo) {
    case fpcNm_ITEM_GREEN_RUPEE:
    case fpcNm_ITEM_BLUE_RUPEE:
    case fpcNm_ITEM_YELLOW_RUPEE:
    case fpcNm_ITEM_RED_RUPEE:
    case fpcNm_ITEM_PURPLE_RUPEE:
    case fpcNm_ITEM_ORANGE_RUPEE:
        fopAcM_seStart(this, Z2SE_OBJ_LUPY_BOUND, var_r31);
        break;
    case fpcNm_ITEM_ARROW_10:
    case fpcNm_ITEM_ARROW_20:
    case fpcNm_ITEM_ARROW_30:
    case fpcNm_ITEM_ARROW_1:
    case fpcNm_ITEM_LIGHT_ARROW:
        fopAcM_seStart(this, Z2SE_OBJ_ARROW_BOUND, var_r31);
        break;
    }
}

/* 804506A8-804506B0 000128 0004+04 1/1 0/0 0/0 .sdata           m_timer_max__8daItem_c */
s32 daItem_c::m_timer_max = 10000;

/* 8015D95C-8015D9F0 15829C 0094+00 1/1 0/0 0/0 .text            CountTimer__8daItem_cFv */
int daItem_c::CountTimer() {
    m_timer++;

    if (m_get_timer < m_timer_max) {
        m_get_timer++;
    }

    if (checkCountTimer()) {
        if (mWaitTimer > 0) {
            mWaitTimer--;
        } else if (mDisappearTimer > 0) {
            mDisappearTimer--;
        }
    }

    func_80141AE8(&mBoomWindTgTimer);
    return 1;
}

/* 8015D9F0-8015DAAC 158330 00BC+00 1/1 0/0 0/0 .text            initAction__8daItem_cFv */
int daItem_c::initAction() {
    initFlag();
    initScale();
    initSpeed(FALSE);
    initAngle();

    if (isHeart(m_itemNo)) {
        speedF = (cM_rndF(5.0f) + 20.0f) - 15.0f;
        shape_angle.z = cM_rndFX(getData().mHeartTilt);
    }

    mMode = MODE_WAIT_e;
    return 1;
}

/* 8015DAAC-8015DBF0 1583EC 0144+00 2/1 0/0 0/0 .text            initFlag__8daItem_cFv */
void daItem_c::initFlag() {
    u8 type = daItem_prm::getType(this);

    switch (type) {
    default:
        // "Item: Set Type<%d>\n"
        OS_REPORT("アイテム：セットタイプ<%d>\n", type);
        JUT_ASSERT(0, 0);
    case TYPE_LAUNCH_e:
    case TYPE_LAUNCH_SMALL_e:
    case TYPE_LAUNCH_FROM_PLAYER_e:
        clrFlag(FLAG_NO_MOVE_e);
        clrFlag(FLAG_NO_TIMER_e);
        setFlag(FLAG_UNK_2_e);
        break;
    case TYPE_FIXED_PLACE_e:
        setFlag(FLAG_NO_MOVE_e);
        setFlag(FLAG_NO_TIMER_e);
        clrFlag(FLAG_UNK_2_e);
        break;
    case TYPE_WAIT_e:
        clrFlag(FLAG_NO_MOVE_e);
        setFlag(FLAG_NO_TIMER_e);
        clrFlag(FLAG_UNK_2_e);
        break;
    case TYPE_BOOM_HIT_e:
        setFlag(FLAG_NO_MOVE_e);
        setFlag(FLAG_NO_TIMER_e);
        clrFlag(FLAG_UNK_2_e);
        break;
    case TYPE_LAUNCH_NO_RND_e:
        clrFlag(FLAG_NO_MOVE_e);
        clrFlag(FLAG_NO_TIMER_e);
        setFlag(FLAG_UNK_2_e);
        break;
    case TYPE_FORCE_GET_e:
        setFlag(FLAG_NO_MOVE_e);
        setFlag(FLAG_NO_TIMER_e);
        clrFlag(FLAG_UNK_2_e);
        break;
    case TYPE_SIMPLE_GET_e:
        break;
    }

    if (dItem_data::chkFlag(m_itemNo, 1)) {
        setFlag(FLAG_NO_TIMER_e);
    }
}

/* 8015DBF0-8015DC40 158530 0050+00 2/1 0/0 0/0 .text            initScale__8daItem_cFv */
void daItem_c::initScale() {
    switch (daItem_prm::getType(this)) {
    case TYPE_LAUNCH_e:
    case TYPE_BOOM_HIT_e:
    case TYPE_LAUNCH_SMALL_e:
        scale.setall(0.0f);
        break;
    default:
        JUT_ASSERT(0, 0);
    case TYPE_FIXED_PLACE_e:
    case TYPE_WAIT_e:
    case TYPE_SIMPLE_GET_e:
    case TYPE_LAUNCH_NO_RND_e:
    case TYPE_FORCE_GET_e:
    case TYPE_LAUNCH_FROM_PLAYER_e:
        scale.setall(1.0f);
        break;
    }
}

/* 803B9E98-803B9F10 016FB8 0078+00 1/2 0/0 0/0 .data            mFuncPtr__8daItem_c */
procFunc daItem_c::mFuncPtr[] = {
    &daItem_c::procMainNormal,        &daItem_c::procMainEnemyCarry,
    &daItem_c::procMainSimpleGetDemo, &daItem_c::procWaitGetDemoEvent,
    &daItem_c::procMainGetDemoEvent,  &daItem_c::procMainBoomerangCarry,
    &daItem_c::procMainSwOnWait,      &daItem_c::procMainBoomHitWait,
    &daItem_c::procMainForceGet,      NULL,
};

/* 803B9F10-803B9F54 017030 0044+00 1/1 0/0 0/0 .data            m_cyl_src__8daItem_c */
dCcD_SrcCyl daItem_c::m_cyl_src = {
    {
        {0, {{0, 0, 0}, {0xFFFFFFFF, 17}, 0x59}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {4}},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        10.0f,
        50.0f,
    },
};

/* 8015DC40-8015DE38 158580 01F8+00 2/2 0/0 0/0 .text            initSpeed__8daItem_cFi */
void daItem_c::initSpeed(BOOL i_noTypeChk) {
    daPy_py_c* player = daPy_getPlayerActorClass();

    f32 y_speed = getData().mLaunchSpeed + cM_rndFX(5.0f);
    f32 speedf = getData().mSpeedH;
    u8 type = daItem_prm::getType(this);

    if (!i_noTypeChk) {
        if (type == TYPE_WAIT_e || type == TYPE_BOOM_HIT_e || m_itemNo == fpcNm_ITEM_BOOMERANG) {
            y_speed = 0.0f;
            speedf = 0.0f;
        } else if (type == TYPE_LAUNCH_NO_RND_e || type == TYPE_FIXED_PLACE_e) {
            y_speed = getData().mLaunchSpeed;
            speedf = getData().mSpeedH;
        } else if (type == TYPE_LAUNCH_SMALL_e) {
            y_speed = getData().mLaunchSpeed * 0.7f;
            speedf = getData().mSpeedH * 0.7f;

            current.angle.y = (f32)player->shape_angle.y + cM_rndFX(16383.0f);
        } else if (type == TYPE_LAUNCH_FROM_PLAYER_e) {
            y_speed = getData().mLaunchSpeed * 1.2f;
            speedf = getData().mSpeedH * 0.55f;

            cXyz launch_pos(0.0f, 0.0f, KREG_F(1) + 50.0f);
            mDoMtx_stack_c::YrotS(player->shape_angle.y);
            mDoMtx_stack_c::multVec(&launch_pos, &launch_pos);
            current.pos += launch_pos;
        }
    }

    fopAcM_SetGravity(this, getData().mGravity);
    fopAcM_SetSpeed(this, 0.0f, y_speed, 0.0f);
    fopAcM_SetSpeedF(this, speedf);
}

/* 8015DE38-8015DE50 158778 0018+00 1/1 0/0 0/0 .text            initAngle__8daItem_cFv */
void daItem_c::initAngle() {
    current.angle.z = 0;
    current.angle.x = 0;
    shape_angle.z = 0;
    shape_angle.x = 0;
}

/* 8015DE50-8015DE70 158790 0020+00 1/0 0/0 0/0 .text            daItem_Draw__FP8daItem_c */
static int daItem_Draw(daItem_c* i_this) {
    return i_this->_daItem_draw();
}

/* 8015DE70-8015DE90 1587B0 0020+00 1/0 0/0 0/0 .text            daItem_Execute__FP8daItem_c */
static int daItem_Execute(daItem_c* i_this) {
    return i_this->_daItem_execute();
}

/* 8015DE90-8015DEB0 1587D0 0020+00 1/0 0/0 0/0 .text            daItem_Delete__FP8daItem_c */
static int daItem_Delete(daItem_c* i_this) {
    return i_this->_daItem_delete();
}

/* 8015DEB0-8015DED0 1587F0 0020+00 1/0 0/0 0/0 .text            daItem_Create__FP10fopAc_ac_c */
static int daItem_Create(fopAc_ac_c* i_this) {
    return static_cast<daItem_c*>(i_this)->_daItem_create();
}

/* 803B9F54-803B9F74 -00001 0020+00 1/0 0/0 0/0 .data            l_daItem_Method */
static actor_method_class l_daItem_Method = {
    (process_method_func)daItem_Create,  (process_method_func)daItem_Delete,
    (process_method_func)daItem_Execute, (process_method_func)NULL,
    (process_method_func)daItem_Draw,
};

/* 803B9F74-803B9FA4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_ITEM */
extern actor_process_profile_definition g_profile_ITEM = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_ITEM,
    &g_fpcLf_Method.base,
    sizeof(daItem_c),
    0,
    0,
    &g_fopAc_Method.base,
    236,
    &l_daItem_Method,
    0xC0100,
    fopAc_ACTOR_e,
    fopAc_CULLSPHERE_0_e,
};
