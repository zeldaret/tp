/**
 * d_a_obj_wind_stone.cpp
 * Object - Wind Stone
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_wind_stone.h"
#include "d/actor/d_a_alink.h"
#include "d/d_meter2_info.h"
#include "dol2asm.h"
#include "dolphin/types.h"

/* 80D379F8-80D37A18 000078 0020+00 1/1 0/0 0/0 .text daWindStone_c_createHeap__FP10fopAc_ac_c */
static int daWindStone_c_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daWindStone_c*>(i_this)->createHeap();
}

/* 80D38634-80D38638 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "WindStone";

/* 80D37A18-80D37A68 000098 0050+00 2/2 0/0 0/0 .text            __ct__13daWindStone_cFv */
daWindStone_c::daWindStone_c() : mpBgW(NULL), field_0x5c4(0) {}

/* 80D37A68-80D37AF4 0000E8 008C+00 1/0 0/0 0/0 .text            __dt__13daWindStone_cFv */
daWindStone_c::~daWindStone_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80D37AF4-80D37C20 000174 012C+00 1/1 0/0 0/0 .text            createHeap__13daWindStone_cFv */
int daWindStone_c::createHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    mpBgW = new dBgW();
    if (mpBgW == NULL) {
        return 0;
    }
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), field_0x58c);
    cBgD_t* res = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 7);
    int bgWBase_set = mpBgW->Set(res, 1, &field_0x58c);
    if (bgWBase_set == 1) {
        return 0;
    }
    return 1;
}

/* ############################################################################################## */
/* 80D38608-80D38614 000000 000C+00 1/1 0/0 0/0 .rodata          @3760 */
SECTION_RODATA static u8 const lit_3760[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80D38608, &lit_3760);

/* 80D37C20-80D37E2C 0002A0 020C+00 1/1 0/0 0/0 .text            create__13daWindStone_cFv */
int daWindStone_c::create() {
    fopAcM_SetupActor(this, daWindStone_c);

    int phase = dComIfG_resLoad(this, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, daWindStone_c_createHeap, 0x1000)) {
            return cPhs_ERROR_e;
        }
        if (dComIfG_Bgsp().Regist(mpBgW, this)) {
            return cPhs_ERROR_e;
        }
        init();
        setModelMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

        dBgS_AcchCir acchCir;
        dBgS_ObjAcch objAcch;
        acchCir.SetWall(0.0f, 10.0f);
        objAcch.Set(&current.pos, &old.pos, this, 1, &acchCir, fopAcM_GetSpeed_p(this), NULL,
                    NULL);
        objAcch.CrrPos(dComIfG_Bgsp());
        field_0x5bc = objAcch.GetGroundH();
        mPolyInfo = objAcch.m_gnd;

        if (field_0x5c4 == 0) {
            fopAcM_onSwitch(this, getSwBit1());
        }
    }
    return phase;
}

/* 80D37F0C-80D37F6C 00058C 0060+00 1/1 0/0 0/0 .text            execute__13daWindStone_cFv */
int daWindStone_c::execute() {
    switch (field_0x5c4) {
    case 0:
        exeModeHowl();
        break;
    case 1:
        exeModeMapDisp();
        break;
    case 2:
        break;
    }
    setModelMtx();
    return 1;
}

/* 80D37F6C-80D3806C 0005EC 0100+00 1/1 0/0 0/0 .text            draw__13daWindStone_cFv */
int daWindStone_c::draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    cXyz shadowPos(current.pos.x, current.pos.y, current.pos.z);
    field_0x5c0 = dComIfGd_setShadow(field_0x5c0, 1, mpModel, &shadowPos, 500.0f, 0.0f,
                                     current.pos.y, field_0x5bc, mPolyInfo, &tevStr, 0, 1.0f,
                                     dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 80D3806C-80D3811C 0006EC 00B0+00 1/1 0/0 0/0 .text            Delete__13daWindStone_cFv */
int daWindStone_c::Delete() {
    if (fopAcM_isSwitch(this, getSwBit1())) {
        fopAcM_offSwitch(this, getSwBit1());
    }
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    this->~daWindStone_c();
    return 1;
}

/* 80D3811C-80D38180 00079C 0064+00 2/2 0/0 0/0 .text            setModelMtx__13daWindStone_cFv */
void daWindStone_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D38180-80D381EC 000800 006C+00 1/1 0/0 0/0 .text            init__13daWindStone_cFv */
void daWindStone_c::init() {
    if (!chkEveOccur()) {
        if (chkMapDispMode()) {
            field_0x5c4 = 1;
        } else {
            field_0x5c4 = 2;
        }
    } else {
        field_0x5c4 = 0;
    }
    field_0x5c0 = 0;
}

/* 80D381EC-80D38278 00086C 008C+00 1/1 0/0 0/0 .text            chkWlfInRange__13daWindStone_cFv */
bool daWindStone_c::chkWlfInRange() {
    if (dComIfGp_getPlayer(0) == NULL) {
        return false;
    }
    if (daPy_py_c::checkNowWolf()) {
        cXyz player_pos = dComIfGp_getPlayer(0)->current.pos;
        if (player_pos.abs2(current.pos) < 40000.0f) {
            return true;
        }
    }
    return false;
}

/* 80D38278-80D382C4 0008F8 004C+00 2/2 0/0 0/0 .text            chkEveOccur__13daWindStone_cFv */
bool daWindStone_c::chkEveOccur() {
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[getDelEveFlgId()]) == false) {
        return true;
    }
    return false;
}

/* 80D382C4-80D3835C 000944 0098+00 1/1 0/0 0/0 .text            exeModeHowl__13daWindStone_cFv */
void daWindStone_c::exeModeHowl() {
    if (!chkEveOccur()) {
        attention_info.flags = 0;
        field_0x5c4 = 2;
    } else {
        s8 tuneId = getTuneId();
        daAlink_getAlinkActorClass()->startWindStoneSound(tuneId, &current.pos);
        attention_info.flags = 0;
        if (chkWlfInRange()) {
            attention_info.flags |= 0x80;
            attention_info.distances[fopAc_attn_ETC_e] = 65;
        }
    }
}

/* 80D3835C-80D383FC 0009DC 00A0+00 1/1 0/0 0/0 .text            exeModeMapDisp__13daWindStone_cFv
 */
void daWindStone_c::exeModeMapDisp() {
    if (dComIfGp_getEvent().isOrderOK() || !dComIfGp_event_runCheck()) {
        dMeter2Info_setGoldWolfMapType(getGoldWolfIdx());
        dMeter2Info_setPauseStatus(5);
        fopAcM_onSwitch(this, getSwBit2());
        field_0x5c4 = 2;
    }
}

/* 80D383FC-80D384C4 000A7C 00C8+00 1/1 0/0 0/0 .text            chkMapDispMode__13daWindStone_cFv
 */
bool daWindStone_c::chkMapDispMode() {
    if (fopAcM_isSwitch(this, getSwBit2())) {
        return false;
    }
    s16 start_point = dComIfGs_getStartPoint();
    switch (getTuneId()) {
    case 3:
    case 5:
    case 7:
    case 8:
        if (start_point == 100) {
            return true;
        }
        break;
    case 4:
    case 6:
        if (start_point == 101) {
            return true;
        }
        break;
    }
    return false;
}

/* 80D384C4-80D3853C 000B44 0078+00 1/1 0/0 0/0 .text            getGoldWolfIdx__13daWindStone_cFv
 */
u8 daWindStone_c::getGoldWolfIdx() {
    switch (getTuneId()) {
    case 3:
        return 2;
    case 4:
        return 3;
    case 5:
        return 4;
    case 6:
        return 5;
    case 7:
        return 6;
    case 8:
        return 7;
    default:
        return 2;
    }
}

/* 80D3853C-80D38590 000BBC 0054+00 1/0 0/0 0/0 .text daWindStone_create__FP13daWindStone_c */
static int daWindStone_create(daWindStone_c* i_this) {
    fopAcM_SetupActor(i_this, daWindStone_c);

    return i_this->create();
}

/* 80D38590-80D385B0 000C10 0020+00 1/0 0/0 0/0 .text daWindStone_Delete__FP13daWindStone_c */
static int daWindStone_Delete(daWindStone_c* i_this) {
    return i_this->Delete();
}

/* 80D385B0-80D385D0 000C30 0020+00 1/0 0/0 0/0 .text daWindStone_execute__FP13daWindStone_c */
static int daWindStone_execute(daWindStone_c* i_this) {
    return i_this->execute();
}

/* 80D385D0-80D385F0 000C50 0020+00 1/0 0/0 0/0 .text            daWindStone_draw__FP13daWindStone_c
 */
static int daWindStone_draw(daWindStone_c* i_this) {
    return i_this->draw();
}

/* 80D38638-80D38658 -00001 0020+00 1/0 0/0 0/0 .data            daWindStone_METHODS */
static actor_method_class daWindStone_METHODS = {
    (process_method_func)daWindStone_create,  (process_method_func)daWindStone_Delete,
    (process_method_func)daWindStone_execute, (process_method_func)NULL,
    (process_method_func)daWindStone_draw,
};

/* 80D38658-80D38688 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WindStone */
extern actor_process_profile_definition g_profile_Obj_WindStone = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Obj_WindStone,     // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daWindStone_c),  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    732,                    // mPriority
    &daWindStone_METHODS,   // sub_method
    0x40100,                // mStatus
    fopAc_ENV_e,            // mActorType
    fopAc_CULLBOX_0_e,      // cullType
};
