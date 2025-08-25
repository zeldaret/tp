/**
 * @file d_a_obj_kantera.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kantera.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_a_itembase_static.h"
#include "d/d_com_inf_game.h"
#include "d/d_item.h"
#include "d/d_item_data.h"
#include "d/d_procname.h"
#include "f_op/f_op_actor_mng.h"

/* 80C39648-80C3968C 000000 0044+00 4/4 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xffffffff, 0x11}, 0x59}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                  // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        20.0f,               // mRadius
        40.0f                // mHeight
    }                        // mCyl
};

/* 80C38678-80C38974 000078 02FC+00 1/1 0/0 0/0 .text            Reflect__FP4cXyzRC13cBgS_PolyInfof
 */
static f32 Reflect(cXyz* i_xyz, cBgS_PolyInfo const& param_2, f32 param_3) {
    cM3dGPla acStack_3c;
    if (dComIfG_Bgsp().GetTriPla(param_2, &acStack_3c) != 0) {
        cXyz cStack_48;
        f32 dVar5 = i_xyz->absXZ();
        C_VECReflect(i_xyz, &acStack_3c.mNormal, &cStack_48);
        *i_xyz = (cStack_48 * dVar5) * param_3;
       return i_xyz->absXZ();
    }

    return 0.0f;
}

/* 80C389BC-80C389F8 0003BC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__15daItemKantera_cFv */
void daItemKantera_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80C389F8-80C38A64 0003F8 006C+00 2/2 0/0 0/0 .text            setBaseMtx__15daItemKantera_cFv */
void daItemKantera_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    MTXCopy(mDoMtx_stack_c::get(), mpModel->mBaseTransformMtx);
}

/* 80C38A64-80C38BA8 000464 0144+00 1/1 0/0 0/0 .text            Create__15daItemKantera_cFv */
int daItemKantera_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), NULL, NULL);
    mCcStts.Init(0, 0xff, this);
    mCcCyl.Set(l_cyl_src);
    mCcCyl.SetStts(&mCcStts);
    mCcCyl.SetR(dItem_data::getR(m_itemNo));
    mCcCyl.SetH(dItem_data::getH(m_itemNo));
    fopAcM_SetCullSize(this, fopAc_CULLSPHERE_0_e);
    actionWaitInit();
    fopAcM_SetGravity(this, -6.0f);
    fopAcM_OnCarryType(this, fopAcM_CARRY_ITEM);
    return 1;
}

/* 80C38BA8-80C38BB0 0005A8 0008+00 1/0 0/0 0/0 .text            __CreateHeap__15daItemKantera_cFv
 */
int daItemKantera_c::__CreateHeap() {
    return 1;
}

/* 80C38BB0-80C38DAC 0005B0 01FC+00 1/1 0/0 0/0 .text            create__15daItemKantera_cFv */
int daItemKantera_c::create() {
    fopAcM_SetupActor(this, daItemKantera_c);

    if (field_0x937 == 0) {
        field_0x938 = home.angle.x;
        field_0x93a = home.angle.z;
        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
        field_0x937 = 1;
    }
    m_itemNo = 0x48;
    if (checkItemGet(m_itemNo, 1)) {
        return cPhs_ERROR_e;
    }
    int phase = dComIfG_resLoad(&mPhase, dItem_data::getFieldArc(m_itemNo));
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckFieldItemCreateHeap, 0x1940)) {
            return cPhs_ERROR_e;
        }
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }
    return phase;
}

/* 80C38F78-80C39068 000978 00F0+00 1/1 0/0 0/0 .text            bg_check__15daItemKantera_cFv */
void daItemKantera_c::bg_check() {
    f32 dVar6 = 0.7f;
    if (mAcch.ChkWallHit()) {
        if (speedF > 5.0f) {
            Reflect(&speed, mAcchCir, 1.0f);
        }
        current.angle.y = cM_atan2s(speed.x, speed.z);
    }
    if (mAcch.ChkGroundLanding()) {
        cXyz l_speed = speed;
        if (speedF > 5.0f) {
            Reflect(&l_speed, mAcchCir, 0.7f);
        }
        f32 tmp = field_0x93c.y;
        tmp = -tmp;
        speed.y = tmp * dVar6;
        if (speed.y < 3.0f) {
            fopAcM_SetSpeedF(this, 0.0f);
        }
        field_0x936++;
    }
}

/* 80C39068-80C390A0 000A68 0038+00 1/0 0/0 0/0 .text            actionInit__15daItemKantera_cFv */
int daItemKantera_c::actionInit() {
    show();
    actionWaitInit();
    return 1;
}

/* 80C390A0-80C3911C 000AA0 007C+00 2/2 0/0 0/0 .text            actionWaitInit__15daItemKantera_cFv
 */
int daItemKantera_c::actionWaitInit() {
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    cLib_offBit<u32>(attention_info.flags, 0x10);
    attention_info.distances[fopAc_attn_CARRY_e] = 16;
    attention_info.position = current.pos;
    show();
    setStatus(1);
    return 1;
}

/* 80C3911C-80C39234 000B1C 0118+00 1/0 0/0 0/0 .text            actionWait__15daItemKantera_cFv */
int daItemKantera_c::actionWait() {
    fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());
    bg_check();
    if (mAcch.ChkGroundHit()) {
        cLib_onBit(attention_info.flags, 0x10UL);
        speedF *= 0.9f;
        if (speedF < 1.0f) {
            speedF = 0.0f;
        }
    } else {
        cLib_offBit(attention_info.flags, 0x10UL);
    }
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (fopAcM_checkCarryNow(this)) {
        cLib_offBit(attention_info.flags, 0x10UL);
        if (player->getGrabUpStart()) {
            fopAcM_cancelCarryNow(this);
            initActionOrderGetDemo();
        }
    } else {
        cLib_onBit(attention_info.flags, 0x10UL);
    }
    attention_info.position = current.pos;
    return 1;
}

/* 80C39234-80C392D0 000C34 009C+00 1/1 0/0 0/0 .text initActionOrderGetDemo__15daItemKantera_cFv
 */
int daItemKantera_c::initActionOrderGetDemo() {
    cLib_offBit<u32>(attention_info.flags, 0x10);
    mCcCyl.OffTgSPrmBit(1);
    mCcCyl.OffCoSPrmBit(1);
    hide();
    fopAcM_orderItemEvent(this, 0, 0);
    eventInfo.onCondition(8);
    field_0x92c = fopAcM_createItemForTrBoxDemo(&current.pos, m_itemNo, -1, fopAcM_GetRoomNo(this),
                                                NULL, NULL);
    setStatus(2);
    return 1;
}

/* 80C392D0-80C3934C 000CD0 007C+00 1/0 0/0 0/0 .text actionOrderGetDemo__15daItemKantera_cFv */
int daItemKantera_c::actionOrderGetDemo() {
    if (eventInfo.checkCommandItem()) {
        setStatus(3);
        if (field_0x92c != -1) {
            dComIfGp_event_setItemPartnerId(field_0x92c);
        }
    } else {
        fopAcM_orderItemEvent(this, 0, 0);
        eventInfo.onCondition(8);
    }
    return 1;
}

/* 80C3934C-80C393B0 000D4C 0064+00 1/0 0/0 0/0 .text            actionGetDemo__15daItemKantera_cFv
 */
int daItemKantera_c::actionGetDemo() {
    if (dComIfGp_evmng_endCheck("DEFAULT_GETITEM")) {
        dComIfGp_event_reset();
        fopAcM_delete(this);
    }
    return 1;
}

/* 80C393B0-80C394DC 000DB0 012C+00 1/1 0/0 0/0 .text            execute__15daItemKantera_cFv */
int daItemKantera_c::execute() {
    static daItemKantera_c::actionFunc l_demoFunc[4] = {
        &daItemKantera_c::actionInit,
        &daItemKantera_c::actionWait,
        &daItemKantera_c::actionOrderGetDemo,
        &daItemKantera_c::actionGetDemo,
    };
    field_0x93c = speed;
    field_0x930++;
    (this->*(l_demoFunc[mStatus]))();
    eyePos = current.pos;
    attention_info.position = current.pos;
    setBaseMtx();
    return 1;
}

/* 80C394DC-80C39530 000EDC 0054+00 1/1 0/0 0/0 .text            draw__15daItemKantera_cFv */
int daItemKantera_c::draw() {
    if (!chkDraw()) {
        return 1;
    }
    DrawBase();
    return 1;
}

/* 80C39530-80C39568 000F30 0038+00 1/1 0/0 0/0 .text            _delete__15daItemKantera_cFv */
int daItemKantera_c::_delete() {
    DeleteBase(dItem_data::getFieldArc(m_itemNo));
    return 1;
}

/* 80C39568-80C39588 000F68 0020+00 1/0 0/0 0/0 .text daItemKantera_Draw__FP15daItemKantera_c */
static int daItemKantera_Draw(daItemKantera_c* i_this) {
    return i_this->draw();
}

/* 80C39588-80C395A8 000F88 0020+00 1/0 0/0 0/0 .text daItemKantera_Execute__FP15daItemKantera_c
 */
static int daItemKantera_Execute(daItemKantera_c* i_this) {
    return i_this->execute();
}

/* 80C395A8-80C395C8 000FA8 0020+00 1/0 0/0 0/0 .text daItemKantera_Delete__FP15daItemKantera_c */
static int daItemKantera_Delete(daItemKantera_c* i_this) {
    return i_this->_delete();
}

/* 80C395C8-80C395E8 000FC8 0020+00 1/0 0/0 0/0 .text daItemKantera_Create__FP10fopAc_ac_c */
static int daItemKantera_Create(fopAc_ac_c* i_this) {
    return static_cast<daItemKantera_c*>(i_this)->create();
}


/* 80C3975C-80C3977C -00001 0020+00 1/0 0/0 0/0 .data            l_daItemKantera_Method */
static actor_method_class l_daItemKantera_Method = {
    (process_method_func)daItemKantera_Create,
    (process_method_func)daItemKantera_Delete,
    (process_method_func)daItemKantera_Execute,
    NULL,
    (process_method_func)daItemKantera_Draw,
};

/* 80C3977C-80C397AC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kantera */
extern actor_process_profile_definition g_profile_Obj_Kantera = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Kantera,        // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daItemKantera_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  238,                     // mPriority
  &l_daItemKantera_Method, // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
