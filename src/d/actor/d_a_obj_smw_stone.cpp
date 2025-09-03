/**
 * @file d_a_obj_smw_stone.cpp
 * Object - Sacred Meadow Howling Stone
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_smw_stone.h"
#include "d/actor/d_a_alink.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"

/* 80CDEF1C-80CDEF20 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "WStoneF";

/* 80CDE518-80CDE538 000078 0020+00 1/1 0/0 0/0 .text daSmWStone_c_createHeap__FP10fopAc_ac_c */
static int daSmWStone_c_createHeap(fopAc_ac_c* i_this) {
    return static_cast<daSmWStone_c*>(i_this)->createHeap();
}

/* 80CDE538-80CDE588 000098 0050+00 2/2 0/0 0/0 .text            __ct__12daSmWStone_cFv */
daSmWStone_c::daSmWStone_c() {
    mpBgW = NULL;
    mMode = 0;
}

/* 80CDE588-80CDE614 0000E8 008C+00 1/0 0/0 0/0 .text            __dt__12daSmWStone_cFv */
daSmWStone_c::~daSmWStone_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80CDEEF4-80CDEF00 000000 000C+00 1/1 0/0 0/0 .rodata          @3776 */
static u8 const lit_3776[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CDE614-80CDE7F8 000174 01E4+00 1/1 0/0 0/0 .text            create__12daSmWStone_cFv */
cPhs__Step daSmWStone_c::create() {
    fopAcM_SetupActor(this, daSmWStone_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(this, l_arcName);

    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, daSmWStone_c_createHeap, 0x1000)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(mpBgW, this)) {
            return cPhs_ERROR_e;
        }

        init();
        setModelMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());

        dBgS_AcchCir acch_cir;
        dBgS_ObjAcch acch;
        acch_cir.SetWall(0.0f, 10.0f);
        acch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                 &acch_cir, fopAcM_GetSpeed_p(this), NULL, NULL);
        acch.CrrPos(dComIfG_Bgsp());
        mGroundH = acch.GetGroundH();
        mPolyInfo = acch.m_gnd;
    }

    return step;
}

/* 80CDE8D8-80CDE92C 000438 0054+00 1/1 0/0 0/0 .text            execute__12daSmWStone_cFv */
int daSmWStone_c::execute() {
    switch (mMode) {
    case 0:
        exeModeHowl();
        // fallthrough
    case 1:
    default:
        setModelMtx();
        break;
    }

    return 1;
}

/* 80CDE92C-80CDEA2C 00048C 0100+00 1/1 0/0 0/0 .text            draw__12daSmWStone_cFv */
int daSmWStone_c::draw() {
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    cXyz pos(current.pos.x, current.pos.y, current.pos.z);
    mShadowKey = dComIfGd_setShadow(mShadowKey, 1, mpModel, &pos, 500.0f, 0.0f, pos.y,
                                    mGroundH, mPolyInfo, &tevStr, 0, 1.0f,
                                    dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 80CDEA2C-80CDEAA4 00058C 0078+00 1/1 0/0 0/0 .text            Delete__12daSmWStone_cFv */
int daSmWStone_c::Delete() {
    attention_info.flags = 0;
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    this->~daSmWStone_c();
    return 1;
}

/* 80CDEAA4-80CDEBA0 000604 00FC+00 1/1 0/0 0/0 .text            exeModeHowl__12daSmWStone_cFv */
void daSmWStone_c::exeModeHowl() {
    u8 swbit;
    if (mDelete || (swbit = getSwBit0(), fopAcM_isSwitch(this, swbit))) {
        attention_info.flags = 0;
        mMode = 1;
    } else {
        if (!dComIfGp_event_runCheck()) {
            daAlink_getAlinkActorClass()->startWindStoneSound(2, &current.pos);
        }
        attention_info.flags = 0;
        if (chkWlfInRange()) {
            attention_info.flags |= 0x80;
            attention_info.distances[fopAc_attn_ETC_e] = 0x41;
            daAlink_c* link = daAlink_getAlinkActorClass();
            if (link != NULL && link->checkWolfHowlSuccessAnime()) {
                attention_info.flags = 0;
                mMode = 1;
            }
        }
    }
}

/* 80CDEBA0-80CDEC04 000700 0064+00 2/2 0/0 0/0 .text            setModelMtx__12daSmWStone_cFv */
void daSmWStone_c::setModelMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CDEC04-80CDED30 000764 012C+00 1/1 0/0 0/0 .text            createHeap__12daSmWStone_cFv */
int daSmWStone_c::createHeap() {
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
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes(l_arcName, 7);
    if (mpBgW->Set(dzb, 1, &mBgMtx) == 1) {
        return 0;
    }

    return 1;
}

/* 80CDED30-80CDED9C 000890 006C+00 1/1 0/0 0/0 .text            init__12daSmWStone_cFv */
void daSmWStone_c::init() {
    u8 swbit = getSwBit0();
    if (fopAcM_isSwitch(this, swbit)) {
        mMode = 1;
    } else {
        mMode = 0;
    }
    mDelete = false;
    mShadowKey = 0;
}

/* 80CDED9C-80CDEE28 0008FC 008C+00 1/1 0/0 0/0 .text            chkWlfInRange__12daSmWStone_cFv */
bool daSmWStone_c::chkWlfInRange() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    if (player == NULL) {
        return false;
    }
    if (daPy_py_c::checkNowWolf()) {
        cXyz pos = player->current.pos;
        if (pos.abs2(current.pos) < 40000.0f) {
            return true;
        }
    }
    return false;
}

/* 80CDEE28-80CDEE7C 000988 0054+00 1/0 0/0 0/0 .text            daSmWStone_create__FP12daSmWStone_c
 */
static cPhs__Step daSmWStone_create(daSmWStone_c* i_this) {
    fopAcM_SetupActor(i_this, daSmWStone_c);
    return i_this->create();
}

/* 80CDEE7C-80CDEE9C 0009DC 0020+00 1/0 0/0 0/0 .text            daSmWStone_Delete__FP12daSmWStone_c
 */
static int daSmWStone_Delete(daSmWStone_c* i_this) {
    return i_this->Delete();
}

/* 80CDEE9C-80CDEEBC 0009FC 0020+00 1/0 0/0 0/0 .text daSmWStone_execute__FP12daSmWStone_c */
static int daSmWStone_execute(daSmWStone_c* i_this) {
    return i_this->execute();
}

/* 80CDEEBC-80CDEEDC 000A1C 0020+00 1/0 0/0 0/0 .text            daSmWStone_draw__FP12daSmWStone_c
 */
static int daSmWStone_draw(daSmWStone_c* i_this) {
    return i_this->draw();
}

/* 80CDEF20-80CDEF40 -00001 0020+00 1/0 0/0 0/0 .data            daSmWStone_METHODS */
static actor_method_class daSmWStone_METHODS = {
    (process_method_func)daSmWStone_create,
    (process_method_func)daSmWStone_Delete,
    (process_method_func)daSmWStone_execute,
    NULL,
    (process_method_func)daSmWStone_draw,
};

/* 80CDEF40-80CDEF70 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SmWStone */
extern actor_process_profile_definition g_profile_Obj_SmWStone = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_Obj_SmWStone,     // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daSmWStone_c),  // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  735,                   // mPriority
  &daSmWStone_METHODS,   // sub_method
  0x00044100,            // mStatus
  fopAc_ENV_e,           // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};
