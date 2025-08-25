/**
 * d_bg_s_movebg_actor.cpp
 * Non-static BG actor base
 */

#include "d/dolzel.h"

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_mtx.h"

/* 80078624-80078668 072F64 0044+00 0/0 0/0 173/173 .text            __ct__16dBgS_MoveBgActorFv */
dBgS_MoveBgActor::dBgS_MoveBgActor() {
    mpBgW = NULL;
}

/* 80078668-80078688 072FA8 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* p_actor) {
    return static_cast<dBgS_MoveBgActor*>(p_actor)->MoveBGCreateHeap();
}

/* 80078688-80078690 072FC8 0008+00 1/0 0/0 2/0 .text            CreateHeap__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::CreateHeap() {
    return 1;
}

/* 80078690-80078698 072FD0 0008+00 1/0 0/0 60/0 .text            Create__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::Create() {
    return 1;
}

/* 80078698-800786A0 072FD8 0008+00 1/0 0/0 3/0 .text Execute__16dBgS_MoveBgActorFPPA3_A4_f */
int dBgS_MoveBgActor::Execute(Mtx**) {
    return 1;
}

/* 800786A0-800786A8 072FE0 0008+00 1/0 0/0 2/0 .text            Draw__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::Draw() {
    return 1;
}

/* 800786A8-800786B0 072FE8 0008+00 1/0 0/0 6/0 .text            Delete__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::Delete() {
    return 1;
}

/* 800786B0-800786B8 072FF0 0008+00 1/0 0/0 171/0 .text            IsDelete__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::IsDelete() {
    return 1;
}

/* 800786B8-800786C0 072FF8 0008+00 1/0 0/0 171/0 .text            ToFore__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::ToFore() {
    return 1;
}

/* 800786C0-800786C8 073000 0008+00 1/0 0/0 171/0 .text            ToBack__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::ToBack() {
    return 1;
}

/* ############################################################################################## */
/* 80450F70-80450F74 000470 0004+00 2/2 0/0 0/0 .sbss            m_name__16dBgS_MoveBgActor */
const char* dBgS_MoveBgActor::m_name;

/* 80450F74-80450F78 000474 0004+00 2/2 0/0 0/0 .sbss            m_dzb_id__16dBgS_MoveBgActor */
int dBgS_MoveBgActor::m_dzb_id;

/* 80450F78-80450F80 000478 0004+04 2/2 0/0 1/1 .sbss            m_set_func__16dBgS_MoveBgActor */
MoveBGActor_SetFunc dBgS_MoveBgActor::m_set_func;

/* 800786C8-800787BC 073008 00F4+00 1/1 0/0 0/0 .text MoveBGCreateHeap__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::MoveBGCreateHeap() {
    if (!CreateHeap()) {
        return 0;
    }

    if (m_dzb_id == -1) {
        mpBgW = NULL;
        return 1;
    }

    mpBgW = new dBgW();
    if (mpBgW != NULL) {
        cBgD_t* res = (cBgD_t*)dComIfG_getObjectRes(m_name, m_dzb_id);
        if (!mpBgW->Set(res, cBgW::MOVE_BG_e, &mBgMtx)) {
            if (m_set_func != NULL) {
                mpBgW->SetCrrFunc(m_set_func);
            }
        } else {
            goto RET;  // probably fake match, clean up later
        }
    } else {
    RET:
        mpBgW = NULL;
        return 0;
    }

    return 1;
}

/* 800787BC-800788DC 0730FC 0120+00 0/0 0/0 169/169 .text
 * MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
 */
int dBgS_MoveBgActor::MoveBGCreate(char const* i_arcName, int i_dzb_id,
                                   MoveBGActor_SetFunc i_setFunc, u32 i_heapSize, Mtx* i_bgMtx) {
    if (i_bgMtx == NULL) {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.z);
        MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    } else {
        MTXCopy(*i_bgMtx, mBgMtx);
    }

    m_name = i_arcName;
    m_dzb_id = i_dzb_id;
    m_set_func = i_setFunc;

    if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, i_heapSize)) {
        return cPhs_ERROR_e;
    }

    if (mpBgW != NULL && dComIfG_Bgsp().Regist(mpBgW, this)) {
        return cPhs_ERROR_e;
    }

    // return Create() ? cPhs_COMPLEATE_e : cPhs_ERROR_e;  // using enums here changes code gen
    return Create() ? 4 : 5;
}

/* 800788DC-80078950 07321C 0074+00 0/0 0/0 169/169 .text MoveBGDelete__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::MoveBGDelete() {
    int ret = Delete();

    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    return ret;
}

/* 80078950-80078A14 073290 00C4+00 0/0 0/0 183/183 .text MoveBGExecute__16dBgS_MoveBgActorFv */
int dBgS_MoveBgActor::MoveBGExecute() {
    Mtx* new_mtx = NULL;

    int ret = Execute(&new_mtx);
    if (new_mtx == NULL) {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.z);
        MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    } else {
        MTXCopy(*new_mtx, mBgMtx);
    }

    if (mpBgW != NULL) {
        mpBgW->Move();
    }

    return ret;
}
