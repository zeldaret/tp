/**
 * d_a_obj_cboard.cpp
 * Clear (Invisible) Wall
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_cboard.h"
#include "d/d_bg_w.h"
#include "d/d_procname.h"

/* 8057B958-8057B978 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjBoard_cFv */
void daObjBoard_c::initBaseMtx() {
    setBaseMtx();
}

/* 8057B978-8057B9C8 000098 0050+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjBoard_cFv */
void daObjBoard_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 8057BE20-8057BE24 -00001 0004+00 2/2 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Obj_Board";

/* 8057BE24-8057BE38 -00001 0014+00 1/1 0/0 0/0 .data            l_dzbName */
static char* l_dzbName[5] = {
    "ClearB00.dzb", "ClearB01.dzb", "ClearB02.dzb", "ClearB03.dzb", "ClearB04.dzb",
};

/* 8057BE38-8057BE50 000018 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static Vec l_cull_box[2] = {
    {-100.0f, -10.0f, -100.0f},
    {100.0f, 10.0f, 100.0f},
};

/* 8057B9C8-8057BA70 0000E8 00A8+00 1/0 0/0 0/0 .text            Create__12daObjBoard_cFv */
int daObjBoard_c::Create() {
    if (getNameArg() == 1) {
        scale.x *= 10.0f;
        scale.z *= 10.0f;
    }

    initBaseMtx();
    fopAcM_SetMtx(this, field_0x5a8);
    fopAcM_setCullSizeBox(this, l_cull_box[0].x * scale.x, l_cull_box[0].y,
                          l_cull_box[0].z * scale.z, l_cull_box[1].x * scale.x, l_cull_box[1].y,
                          l_cull_box[1].z * scale.z);
    return 1;
}

/* 8057BA70-8057BA78 000190 0008+00 1/0 0/0 0/0 .text            CreateHeap__12daObjBoard_cFv */
int daObjBoard_c::CreateHeap() {
    return 1;
}

/* 8057BA78-8057BB74 000198 00FC+00 1/1 0/0 0/0 .text            create1st__12daObjBoard_cFv */
int daObjBoard_c::create1st() {
    int ret = dComIfG_resLoad(&mPhase, l_arcName);
    if (ret == cPhs_COMPLEATE_e) {
        int dzb_no;

        switch (getArg0()) {
        case 1:
        case 2:
            dzb_no = 1;
            break;
        case 3:
        case 4:
            dzb_no = 2;
            break;
        case 5:
        case 6:
        case 7:
        case 8:
            dzb_no = 4;
            break;
        default:
            dzb_no = 0;
            break;
        }

        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, l_dzbName[dzb_no]);
        ret = MoveBGCreate(l_arcName, dzb_id, NULL, 0x200, NULL);

        if (ret == cPhs_ERROR_e) {
            return ret;
        }
    }

    return ret;
}

/* 8057BB74-8057BCC0 000294 014C+00 2/0 0/0 0/0 .text            Execute__12daObjBoard_cFPPA3_A4_f
 */
int daObjBoard_c::Execute(Mtx** param_0) {
    switch (getArg0()) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 15:
        if (fopAcM_isSwitch(this, getSwNo())) {
            if (!mpBgW->ChkUsed()) {
                dComIfG_Bgsp().Regist(mpBgW, this);
            }
        } else {
            if (mpBgW->ChkUsed()) {
                dComIfG_Bgsp().Release(mpBgW);
            }
        }
        break;
    case 0:
    case 2:
    case 4:
    case 6:
    case 8:
        if (fopAcM_isSwitch(this, getSwNo())) {
            if (mpBgW->ChkUsed()) {
                dComIfG_Bgsp().Release(mpBgW);
            }
        } else {
            if (!mpBgW->ChkUsed()) {
                dComIfG_Bgsp().Regist(mpBgW, this);
            }
        }
        break;
    }

    *param_0 = &mBgMtx;
    return 1;
}

/* 8057BCC0-8057BCC8 0003E0 0008+00 1/0 0/0 0/0 .text            Draw__12daObjBoard_cFv */
int daObjBoard_c::Draw() {
    return 1;
}

/* 8057BCC8-8057BCFC 0003E8 0034+00 1/0 0/0 0/0 .text            Delete__12daObjBoard_cFv */
int daObjBoard_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 8057BCFC-8057BD5C 00041C 0060+00 1/0 0/0 0/0 .text daObjBoard_create1st__FP12daObjBoard_c */
static int daObjBoard_create1st(daObjBoard_c* i_this) {
    fopAcM_SetupActor(i_this, daObjBoard_c);

    return i_this->create1st();
}

/* 8057BD5C-8057BD7C 00047C 0020+00 1/0 0/0 0/0 .text daObjBoard_MoveBGDelete__FP12daObjBoard_c */
static int daObjBoard_MoveBGDelete(daObjBoard_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 8057BD7C-8057BD9C 00049C 0020+00 1/0 0/0 0/0 .text daObjBoard_MoveBGExecute__FP12daObjBoard_c
 */
static int daObjBoard_MoveBGExecute(daObjBoard_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 8057BD9C-8057BDC8 0004BC 002C+00 1/0 0/0 0/0 .text daObjBoard_MoveBGDraw__FP12daObjBoard_c */
static int daObjBoard_MoveBGDraw(daObjBoard_c* i_this) {
    return i_this->Draw();
}

/* ############################################################################################## */
/* 8057BE90-8057BEB0 -00001 0020+00 1/0 0/0 0/0 .data            daObjBoard_METHODS */
static actor_method_class daObjBoard_METHODS = {
    (process_method_func)daObjBoard_create1st,     (process_method_func)daObjBoard_MoveBGDelete,
    (process_method_func)daObjBoard_MoveBGExecute, (process_method_func)NULL,
    (process_method_func)daObjBoard_MoveBGDraw,
};

/* 8057BEB0-8057BEE0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Cboard */
extern actor_process_profile_definition g_profile_Obj_Cboard = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_Cboard,
    &g_fpcLf_Method.base,
    sizeof(daObjBoard_c),
    0,
    0,
    &g_fopAc_Method.base,
    453,
    &daObjBoard_METHODS,
    0x40000,
    fopAc_CULLBOX_0_e,
    fopAc_CULLBOX_CUSTOM_e,
};
