/**
 * @file d_a_obj_smallkey.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_smallkey.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_item_data.h"
#include "d/d_tresure.h"

/* 80CDB7F4-80CDB838 000000 0044+00 6/6 0/0 0/0 .rodata          l_cyl_src */
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

/* 80CD97B8-80CD9B40 000078 0388+00 1/1 0/0 0/0 .text            searchParentSub__FPvPv */
static void* searchParentSub(void* i_actor, void* i_data) {
    fopAc_ac_c* a_actor = (fopAc_ac_c*)i_actor;
    fopAc_ac_c* a_other = (fopAc_ac_c*)i_data;

    if (a_actor != NULL && fopAcM_IsActor(a_actor)) {
        if (fopAcM_GetProfName(a_actor) == PROC_OBJ_GM) {
            if (a_other->home.pos.abs(a_actor->home.pos) < 1.0f) {
                return a_actor;
            }
        } else if (fopAcM_GetProfName(a_actor) == PROC_E_GB) {
            if (a_other->home.pos.abs(a_actor->home.pos) < 50.0f) {
                return a_actor;
            }

            // “Small Key: position isn't synced with Big Baba!\n”
            OS_REPORT("\x1b[43;30m小さい鍵：デカババと位置がずれています！\n\x1b[m");
        } else if (fopAcM_GetProfName(a_actor) == PROC_E_ZM) {
            f32 other_dist = a_other->home.pos.abs(a_actor->home.pos);
            u8 temp_r27 = fopAcM_GetParamBit(a_actor, 0, 8);
            if (other_dist < 10.0f && temp_r27 < 10) {
                return a_actor;
            }
        }
    }

    return NULL;
}

/* 80CD9B40-80CD9E3C 000400 02FC+00 1/1 0/0 0/0 .text            Reflect__FP4cXyzRC13cBgS_PolyInfof
 */
static f32 Reflect(cXyz* i_vec, cBgS_PolyInfo const& i_polyinfo, f32 i_scale) {
    cM3dGPla plane;

    if (dComIfG_Bgsp().GetTriPla(i_polyinfo, &plane)) {
        cXyz reflect_vec;
        f32 mag = i_vec->absXZ();

        VECReflect(i_vec, &plane.mNormal, &reflect_vec);
        *i_vec = (reflect_vec * mag) * i_scale;
        return i_vec->absXZ();
    }

    return 0.0f;
}

/* 80CD9E84-80CD9EE0 000744 005C+00 1/1 0/0 0/0 .text
 * keyGetTgCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void keyGetTgCallBack(fopAc_ac_c* i_tgActor, dCcD_GObjInf* i_tgObjInf,
                             fopAc_ac_c* i_atActor, dCcD_GObjInf* i_atObjInf) {
    daKey_c* a_tgActor = (daKey_c*)i_tgActor;

    if (a_tgActor != NULL) {
        if ((i_atObjInf->ChkAtType(AT_TYPE_40) || i_atObjInf->ChkAtType(AT_TYPE_BOOMERANG)) && !dComIfGp_event_runCheck() && !a_tgActor->chkStatus(6)) {
            a_tgActor->actionInitBoomerangCarry();
        }
    }
}

/* 80CD9EE0-80CD9F2C 0007A0 004C+00 1/1 0/0 0/0 .text
 * keyGetCoCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void keyGetCoCallBack(fopAc_ac_c* i_coActorA, dCcD_GObjInf* i_coObjInfA,
                             fopAc_ac_c* i_coActorB, dCcD_GObjInf* i_coObjInfB) {
    daKey_c* a_coActorA = (daKey_c*)i_coActorA;

    if (a_coActorA != NULL && i_coActorB != NULL) {
        if (fopAcM_GetName(i_coActorB) == fopAcM_GetName(dComIfGp_getLinkPlayer())) {
            a_coActorA->initActionOrderGetDemo();
        }
    }
}

/* 80CD9F2C-80CD9F68 0007EC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__7daKey_cFv */
void daKey_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CD9F68-80CD9FDC 000828 0074+00 2/2 0/0 0/0 .text            setBaseMtx__7daKey_cFv */
void daKey_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(0.0f, 5.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::XrotM(-0x4000);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CD9FDC-80CDA15C 00089C 0180+00 1/1 0/0 0/0 .text            Create__7daKey_cFv */
int daKey_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);

    mCcStts.Init(0, 0xFF, this);
    mCcCyl.Set(l_cyl_src);
    mCcCyl.SetStts(&mCcStts);
    mCcCyl.SetCoHitCallback(keyGetCoCallBack);
    mCcCyl.SetTgHitCallback(keyGetTgCallBack);
    mCcCyl.SetR(dItem_data::getR(m_itemNo));
    mCcCyl.SetH(dItem_data::getH(m_itemNo));
    
    fopAcM_SetCullSize(this, fopAc_CULLSPHERE_0_e);

    if (getSwNo() == 0xFF) {
        actionInitInit();
    } else {
        actionInitSwOnWait();
    }

    fopAcM_SetGravity(this, -6.0f);
    fopAcM_OnCarryType(this, fopAcM_CARRY(fopAcM_CARRY_ITEM | fopAcM_CARRY_LIGHT));
    execute();
    return 1;
}

/* 80CDA15C-80CDA164 000A1C 0008+00 1/0 0/0 0/0 .text            __CreateHeap__7daKey_cFv */
int daKey_c::__CreateHeap() {
    return 1;
}

/* 80CDA164-80CDA404 000A24 02A0+00 1/1 0/0 0/0 .text            create__7daKey_cFv */
int daKey_c::create() {
    fopAcM_SetupActor(this, daKey_c);

    if (!mIsPrmInit) {
        field_0x938 = home.angle.x;
        field_0x93a = home.angle.z;
        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
        mIsPrmInit = TRUE;
    }

    m_itemNo = fpcNm_ITEM_SMALL_KEY;

    if (strcmp(dComIfGp_getStartStageName(), "F_SP118") == 0) {
        OS_REPORT(" SMKEY 0\n");
        if (dComIfGs_isTbox(getSaveBitNo())) {
            OS_REPORT(" SMKEY 1\n");
            dComIfGp_setItemKeyNumCount(-dComIfGs_getKeyNum());
            dComIfGs_offTbox(getSaveBitNo());
        }
    }

    if (dComIfGs_isTbox(getSaveBitNo())) {
        return cPhs_ERROR_e;
    }

    int phase_state = dComIfG_resLoad(&mPhase, dItem_data::getFieldArc(m_itemNo));
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckFieldItemCreateHeap, 0x840)) {
            return cPhs_ERROR_e;
        }

        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }

    return phase_state;
}

/* 80CDA680-80CDA7E8 000F40 0168+00 1/1 0/0 0/0 .text            bg_check__7daKey_cFv */
void daKey_c::bg_check() {
    f32 temp_f31 = 0.7f;

    if (mAcch.ChkWallHit() != 0) {
        if (speedF > 5.0f) {
            Reflect(&speed, mAcchCir, 1.0f);
        }
        current.angle.y = cM_atan2s(speed.x, speed.z);
    }

    if (mAcch.ChkGroundLanding()) {
        cXyz sp8(speed);
        if (speedF > 5.0f) {
            Reflect(&sp8, mAcchCir, temp_f31);
        }

        speed.y = -mPrevSpeed.y * temp_f31;
        if (speed.y < 3.0f) {
            fopAcM_SetSpeedF(this, 0.0f);
        }

        field_0x936++;
        fopAcM_seStart(this, Z2SE_OBJ_KEY_BOUND, 2.0f * fabsf(mPrevSpeed.y));
    }
}

/* 80CDA7E8-80CDA81C 0010A8 0034+00 1/1 0/0 0/0 .text            actionInitInit__7daKey_cFv */
int daKey_c::actionInitInit() {
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    setStatus(STATUS_INIT_e);
    return 1;
}

/* 80CDA81C-80CDA8C8 0010DC 00AC+00 1/0 0/0 0/0 .text            actionInit__7daKey_cFv */
int daKey_c::actionInit() {
    void* pparent = fpcM_Search(searchParentSub, this);
    if (pparent != NULL) {
        parentActorID = fopAcM_GetID(pparent);
        if (fopAcM_GetProfName(pparent) == PROC_OBJ_GM || fopAcM_GetProfName(pparent) == PROC_E_ZM) {
            hide();
            actionParentWaitInit();
        } else if (fopAcM_GetProfName(pparent) == PROC_E_GB) {
            show();
            actionInitE_GB();
        }
    } else {
        show();
        actionWaitInit();
    }

    return 1;
}

/* 80CDA8C8-80CDA8FC 001188 0034+00 1/1 0/0 0/0 .text            actionParentWaitInit__7daKey_cFv */
int daKey_c::actionParentWaitInit() {
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    setStatus(STATUS_PARENT_WAIT_e);
    return 1;
}

/* 80CDA8FC-80CDA9AC 0011BC 00B0+00 1/0 0/0 0/0 .text            actionParentWait__7daKey_cFv */
int daKey_c::actionParentWait() {
    fopAc_ac_c* pparent = (fopAc_ac_c*)fopAcM_SearchByID(parentActorID);
    if (pparent == NULL) {
        show();
        actionWaitInit();
    } else if (fopAcM_GetProfName(pparent) == PROC_E_ZM) {
        current.pos = pparent->home.pos;
    } else {
        current.pos = pparent->current.pos;
    }

    seStartTwinkle_private(Z2SE_OBJ_KEY_TWINKLE_HIDDEN);
    return 1;
}

/* 80CDA9AC-80CDAA28 00126C 007C+00 3/3 0/0 1/1 .text            actionWaitInit__7daKey_cFv */
int daKey_c::actionWaitInit() {
    mCcCyl.OnTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    cLib_offBit<u32>(attention_info.flags, 0x10);
    attention_info.distances[fopAc_attn_CARRY_e] = 16;
    attention_info.position = current.pos;

    effectSet();
    setStatus(STATUS_WAIT_e);
    return 1;
}

/* 80CDAA28-80CDAB74 0012E8 014C+00 1/0 0/0 0/0 .text            actionWait__7daKey_cFv */
int daKey_c::actionWait() {
    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());
    bg_check();

    if (mAcch.ChkGroundHit()) {
        cLib_onBit<u32>(attention_info.flags, 0x10);

        speedF *= 0.9f;
        if (speedF < 1.0f) {
            speedF = 0.0f;
        }
    } else {
        cLib_offBit<u32>(attention_info.flags, 0x10);
    }

    daPy_py_c* player = daPy_getPlayerActorClass();
    if (fopAcM_checkCarryNow(this)) {
        cLib_offBit<u32>(attention_info.flags, 0x10);
        if (player->getGrabUpStart()) {
            fopAcM_cancelCarryNow(this);
            initActionOrderGetDemo();
        }
    } else {
        cLib_onBit<u32>(attention_info.flags, 0x10);
    }

    if (field_0x936 == 0) {
        shape_angle.x += 4000;
    } else {
        shape_angle.x = 0;
    }

    attention_info.position = current.pos;
    seStartTwinkle_private(Z2SE_OBJ_KEY_TWINKLE);
    return 1;
}

/* 80CDAB74-80CDAC18 001434 00A4+00 2/2 0/0 0/0 .text            initActionOrderGetDemo__7daKey_cFv
 */
int daKey_c::initActionOrderGetDemo() {
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    hide();
    effectStop();

    fopAcM_orderItemEvent(this, 0, 0);
    eventInfo.onCondition(8);

    mItemId = fopAcM_createItemForTrBoxDemo(&current.pos, m_itemNo, -1, fopAcM_GetRoomNo(this), NULL, NULL);
    JUT_ASSERT(699, mItemId != fpcM_ERROR_PROCESS_ID_e);

    setStatus(STATUS_ORDER_GET_DEMO_e);
    return 1;
}

/* 80CDAC18-80CDAC94 0014D8 007C+00 1/0 0/0 0/0 .text            actionOrderGetDemo__7daKey_cFv */
int daKey_c::actionOrderGetDemo() {
    if (eventInfo.checkCommandItem()) {
        setStatus(STATUS_GET_DEMO_e);
        if (mItemId != fpcM_ERROR_PROCESS_ID_e) {
            dComIfGp_event_setItemPartnerId(mItemId);
        }
    } else {
        fopAcM_orderItemEvent(this, 0, 0);
        eventInfo.onCondition(8);
    }

    return 1;
}

/* 80CDAC94-80CDAD28 001554 0094+00 1/0 0/0 0/0 .text            actionGetDemo__7daKey_cFv */
int daKey_c::actionGetDemo() {
    if (dComIfGp_evmng_endCheck("DEFAULT_GETITEM")) {
        dComIfGs_onTbox(getSaveBitNo());
        dTres_c::offStatus(getSaveBitNo(), 1);
        dComIfGp_event_reset();
        fopAcM_delete(this);
    }

    return 1;
}

/* 80CDAD28-80CDADD4 0015E8 00AC+00 1/1 0/0 0/0 .text            actionInitSwOnWait__7daKey_cFv */
int daKey_c::actionInitSwOnWait() {
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    hide();

    if (getSwOnWaitTimer() == 63) {
        mSwOnTimer = 15;
    } else {
        mSwOnTimer = getSwOnWaitTimer() + 1;
    }

    if (fopAcM_isSwitch(this, getSwNo())) {
        mSwOnTimer = 0;
    }

    setStatus(STATUS_SW_ON_WAIT_e);
    return 1;
}

/* 80CDADD4-80CDAE54 001694 0080+00 1/0 0/0 0/0 .text            actionSwOnWait__7daKey_cFv */
int daKey_c::actionSwOnWait() {
    if (fopAcM_isSwitch(this, getSwNo()) && cLib_calcTimer<u8>(&mSwOnTimer) == 0) {
        show();
        actionWaitInit();
    }

    seStartTwinkle_private(Z2SE_OBJ_KEY_TWINKLE_HIDDEN);
    return 1;
}

/* 80CDAE54-80CDAF40 001714 00EC+00 1/1 0/0 0/0 .text actionInitBoomerangCarry__7daKey_cFv */
int daKey_c::actionInitBoomerangCarry() {
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCcCyl.OnTgSPrmBit(1);
    mCcCyl.OnCoSPrmBit(1);

    u8 height = dItem_data::getH(m_itemNo);
    u8 radius = dItem_data::getR(m_itemNo);

    mCcCyl.SetR(4.0f * radius);
    mCcCyl.SetH(4.0f * height);
    mCcCyl.OnCoSPrmBit(1);

    setStatus(STATUS_BOOMERANG_CARRY_e);
    return 1;
}

/* 80CDAF40-80CDAFB4 001800 0074+00 1/0 0/0 0/0 .text            actionBoomerangCarry__7daKey_cFv */
int daKey_c::actionBoomerangCarry() {
    fopAc_ac_c* pboomerang = fopAcM_SearchByName(PROC_BOOMERANG);
    if (pboomerang != NULL) {
        current.pos = pboomerang->current.pos;
    } else {
        // "Small Key: can't find boomerang!!!\n"
        OS_REPORT_ERROR("小さいカギ：ブーメランが見つかりません！！！\n");
    }

    seStartTwinkle_private(Z2SE_OBJ_KEY_TWINKLE);
    // "Small Key: carrying\n"
    OS_REPORT("小さい鍵：引き寄せ中\n");
    return 1;
}

/* 80CDAFB4-80CDB0D8 001874 0124+00 2/2 0/0 0/0 .text            effectSet__7daKey_cFv */
void daKey_c::effectSet() {
    if (mEffect[0].getEmitter() == NULL) {
        cXyz eff_scale[] = {  // needs to be an array to match...
            cXyz(1.0f, 1.0f, 1.0f)
        };
        mEffRot = shape_angle;
        mEffRot.x = -0x4000;

        dComIfGp_particle_set(0x82BE, &current.pos, &mEffRot, &eff_scale[0], 0xFF, &mEffect[0], fopAcM_GetRoomNo(this), NULL, NULL, NULL);
        dComIfGp_particle_set(0x82BF, &current.pos, &mEffRot, &eff_scale[0], 0xFF, &mEffect[1], fopAcM_GetRoomNo(this), NULL, NULL, NULL);
    }
}

/* 80CDB0D8-80CDB128 001998 0050+00 2/2 0/0 0/0 .text            effectStop__7daKey_cFv */
void daKey_c::effectStop() {
    mEffect[0].remove();
    mEffect[1].remove();
}

/* 80CDB128-80CDB2E0 0019E8 01B8+00 1/1 0/0 0/0 .text            effectCtrl__7daKey_cFv */
void daKey_c::effectCtrl() {
    cXyz eff_scale;
    f32 cam_dist = current.pos.abs(dComIfGp_getCamera(0)->lookat.eye);
    f32 var_f29 = 1000.0f;
    f32 max_size = 3.0f;
    f32 size = 1.0f;

    if (0.0f != var_f29) {
        size = cam_dist / var_f29;
        if (size < 1.0f) {
            size = 1.0f;
        }
    }

    if (max_size < 1.0f) {
        max_size = 1.0f;
    }

    if (size > max_size) {
        size = max_size;
    }

    eff_scale.setall(size);

    for (int i = 0; i < 2; i++) {
        JPABaseEmitter* pemitter = mEffect[i].getEmitter();
        if (pemitter != NULL) {
            pemitter->setGlobalScale(eff_scale);
        }
    }
}

/* 80CDB2E0-80CDB36C 001BA0 008C+00 5/5 0/0 0/0 .text            seStartTwinkle_private__7daKey_cFUl
 */
void daKey_c::seStartTwinkle_private(u32 i_soundId) {
    if (field_0x984 == 0) {
        fopAcM_seStartLevel(this, i_soundId, 0);
    }
}

/* 80CDB36C-80CDB3D8 001C2C 006C+00 1/1 0/0 0/0 .text            actionInitE_GB__7daKey_cFv */
int daKey_c::actionInitE_GB() {
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    effectSet();
    fopAcM_SetSpeedF(this, 0.0f);
    fopAcM_SetGravity(this, 0.0f);
    setStatus(STATUS_E_GB_e);
    return 1;
}

/* 80CDB3D8-80CDB404 001C98 002C+00 1/0 0/0 0/0 .text            actionE_GB__7daKey_cFv */
int daKey_c::actionE_GB() {
    seStartTwinkle_private(Z2SE_OBJ_KEY_TWINKLE_HIDDEN);
    return 1;
}

/* 80CDB404-80CDB5D4 001CC4 01D0+00 2/2 0/0 0/0 .text            execute__7daKey_cFv */
int daKey_c::execute() {
    static int (daKey_c::*l_demoFunc[])() = {
        &daKey_c::actionInit,
        &daKey_c::actionParentWait,
        &daKey_c::actionWait,
        &daKey_c::actionOrderGetDemo,
        &daKey_c::actionGetDemo,
        &daKey_c::actionSwOnWait,
        &daKey_c::actionBoomerangCarry,
        &daKey_c::actionE_GB,
    };

    mPrevSpeed = speed;
    field_0x930++;

    (this->*l_demoFunc[mStatus])();

    eyePos = current.pos;
    attention_info.position = current.pos;

    effectCtrl();
    setBaseMtx();

    mCcCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCcCyl);

    dTres_c::setPosition(getSaveBitNo(), &current.pos);
    field_0x984 = 0;
    return 1;
}

/* 80CDB5D4-80CDB628 001E94 0054+00 1/1 0/0 0/0 .text            draw__7daKey_cFv */
int daKey_c::draw() {
    if (!chkDraw()) {
        return 1;
    }

    DrawBase();
    return 1;
}

/* 80CDB628-80CDB674 001EE8 004C+00 1/1 0/0 0/0 .text            _delete__7daKey_cFv */
int daKey_c::_delete() {
    effectStop();
    DeleteBase(dItem_data::getFieldArc(m_itemNo));
    return 1;
}

/* 80CDB674-80CDB694 001F34 0020+00 1/0 0/0 0/0 .text            daKey_Draw__FP7daKey_c */
static int daKey_Draw(daKey_c* i_this) {
    return i_this->draw();
}

/* 80CDB694-80CDB6B4 001F54 0020+00 1/0 0/0 0/0 .text            daKey_Execute__FP7daKey_c */
static int daKey_Execute(daKey_c* i_this) {
    return i_this->execute();
}

/* 80CDB6B4-80CDB6D4 001F74 0020+00 1/0 0/0 0/0 .text            daKey_Delete__FP7daKey_c */
static int daKey_Delete(daKey_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    return i_this->_delete();
}

/* 80CDB6D4-80CDB6F4 001F94 0020+00 1/0 0/0 0/0 .text            daKey_Create__FP10fopAc_ac_c */
static int daKey_Create(fopAc_ac_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    return ((daKey_c*)i_this)->create();
}

/* 80CDB988-80CDB9A8 -00001 0020+00 1/0 0/0 0/0 .data            l_daKey_Method */
static actor_method_class l_daKey_Method = {
    (process_method_func)daKey_Create,
    (process_method_func)daKey_Delete,
    (process_method_func)daKey_Execute,
    (process_method_func)NULL,
    (process_method_func)daKey_Draw,
};

/* 80CDB9A8-80CDB9D8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SmallKey */
extern actor_process_profile_definition g_profile_Obj_SmallKey = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Obj_SmallKey,      // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daKey_c),        // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    237,                    // mPriority
    &l_daKey_Method,        // sub_method
    0x00040100,             // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
