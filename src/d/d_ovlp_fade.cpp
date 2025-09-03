/**
 * d_ovlp_fade.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_ovlp_fade.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_overlap_mng.h"
#include "m_Do/m_Do_audio.h"
#include "m_Do/m_Do_graphic.h"

class overlap1_class : public overlap_task_class {
public:
    /* 0xCC */ int field_0xcc;
    /* 0xCC */ int field_0xd0;
    /* 0xCC */ int field_0xd4;
};

/* 8025217C-80252184 24CABC 0008+00 1/0 0/0 0/0 .text            dOvlpFd_Draw__FP14overlap1_class */
static int dOvlpFd_Draw(overlap1_class* i_this) {
    return 1;
}

/* 80252184-802521F4 24CAC4 0070+00 1/1 0/0 0/0 .text            dOvlpFd_startFadeIn__Fi */
static void dOvlpFd_startFadeIn(int param_0) {
    JUTFader* fader = JFWDisplay::getManager()->getFader();
    JUT_ASSERT(0, fader != 0);

    fader->setStatus(JUTFader::UNKSTATUS_0, 0);
    fader->setStatus(JUTFader::UNKSTATUS_0, -1);
    fader->startFadeIn(param_0);
}

/* 802521F4-802522C8 24CB34 00D4+00 1/1 0/0 0/0 .text            dOvlpFd_FadeOut__FP14overlap1_class
 */
static int dOvlpFd_FadeOut(overlap1_class* i_this) {
    int var_r31 = i_this->field_0xd4;

    if (i_this->field_0xcc == 0) {
        mDoAud_setFadeInStart(0);

        if (fpcM_GetProfName(i_this) == PROC_OVERLAP11) {
            i_this->field_0xcc = 10;
        } else if (fpcM_GetProfName(i_this) != PROC_OVERLAP6) {
            dOvlpFd_startFadeIn(var_r31);
            i_this->field_0xcc = var_r31;
        } else {
            dOvlpFd_startFadeIn(0);
            i_this->field_0xcc = 1;
        }
    }

    if (fpcM_GetProfName(i_this) == PROC_OVERLAP11 && i_this->field_0xcc == 7) {
        dOvlpFd_startFadeIn(7);
    }

    fopOvlpM_SceneIsStart();

    if (--i_this->field_0xcc == 0) {
        fopOvlpM_Done(i_this);
        i_this->field_0xcc++;
    }

    return 1;
}

/* 804510E0-804510E8 0005E0 0004+04 4/4 0/0 0/0 .sbss            dOvlpFd_execute_f */
static int (*dOvlpFd_execute_f)(overlap1_class*);

/* 802522C8-80252300 24CC08 0038+00 1/1 0/0 0/0 .text            dOvlpFd_Wait__FP14overlap1_class */
static int dOvlpFd_Wait(overlap1_class* i_this) {
    if (fopOvlpM_IsOutReq(i_this)) {
        dOvlpFd_execute_f = dOvlpFd_FadeOut;
    }

    return 1;
}

/* 80252300-8025242C 24CC40 012C+00 1/1 0/0 0/0 .text            dOvlpFd_FadeIn__FP14overlap1_class
 */
static int dOvlpFd_FadeIn(overlap1_class* i_this) {
    int var_r30 = 30;

    if (i_this->field_0xd0 == 0) {
        if (fpcM_GetProfName(i_this) == PROC_OVERLAP0 || fpcM_GetProfName(i_this) == PROC_OVERLAP7)
        {
            if (dComIfGp_isEnableNextStage() == 1) {
                var_r30 = dComIfGp_getNextStageWipeSpeed();
            }

            if (!JFWDisplay::getManager()->startFadeOut(var_r30)) {
                return 1;
            }

            i_this->field_0xd0 = var_r30;
        } else if (fpcM_GetProfName(i_this) == PROC_OVERLAP10 ||
                   fpcM_GetProfName(i_this) == PROC_OVERLAP11)
        {
            i_this->field_0xd0 = 1;
        } else {
            i_this->field_0xd0 = 30;
        }

        i_this->field_0xd4 = var_r30;
        mDoAud_setFadeOutStart(0);
    }

    if (--i_this->field_0xd0 == 0) {
        dOvlpFd_execute_f = dOvlpFd_Wait;
        mDoGph_gInf_c::startFadeOut(0);
        fopOvlpM_Done(i_this);
    }

    return 1;
}

/* 8025242C-80252458 24CD6C 002C+00 1/0 0/0 0/0 .text            dOvlpFd_Execute__FP14overlap1_class
 */
static int dOvlpFd_Execute(overlap1_class* i_this) {
    dOvlpFd_execute_f(i_this);
    return 1;
}

/* 80252458-80252460 24CD98 0008+00 1/0 0/0 0/0 .text dOvlpFd_IsDelete__FP14overlap1_class */
static int dOvlpFd_IsDelete(overlap1_class* i_this) {
    return 1;
}

/* 80252460-80252468 24CDA0 0008+00 1/0 0/0 0/0 .text            dOvlpFd_Delete__FP14overlap1_class
 */
static int dOvlpFd_Delete(overlap1_class* i_this) {
    return 1;
}

/* 80252468-8025247C 24CDA8 0014+00 1/0 0/0 0/0 .text            dOvlpFd_Create__FPv */
static int dOvlpFd_Create(void* i_this) {
    dOvlpFd_execute_f = dOvlpFd_FadeIn;
    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 803C2B98-803C2BAC -00001 0014+00 8/0 0/0 0/0 .data            l_dOvlpFd_Method */
static leafdraw_method_class l_dOvlpFd_Method = {
    (process_method_func)dOvlpFd_Create,  (process_method_func)dOvlpFd_Delete,
    (process_method_func)dOvlpFd_Execute, (process_method_func)dOvlpFd_IsDelete,
    (process_method_func)dOvlpFd_Draw,
};

/* 803C2BAC-803C2BD4 -00001 0028+00 0/0 0/0 1/0 .data            g_profile_OVERLAP0 */
extern overlap_process_profile_definition g_profile_OVERLAP0 = {
    fpcLy_ROOT_e,
    0,
    fpcPi_CURRENT_e,
    PROC_OVERLAP0,
    &g_fpcLf_Method.base,
    sizeof(overlap1_class),
    0,
    0,
    &g_fopOvlp_Method,
    773,
    &l_dOvlpFd_Method,
};

/* 803C2BD4-803C2BFC -00001 0028+00 0/0 0/0 1/0 .data            g_profile_OVERLAP1 */
extern overlap_process_profile_definition g_profile_OVERLAP1 = {
    fpcLy_ROOT_e,
    0,
    fpcPi_CURRENT_e,
    PROC_OVERLAP1,
    &g_fpcLf_Method.base,
    sizeof(overlap1_class),
    0,
    0,
    &g_fopOvlp_Method,
    774,
    &l_dOvlpFd_Method,
};

/* 803C2BFC-803C2C24 -00001 0028+00 0/0 0/0 1/0 .data            g_profile_OVERLAP6 */
extern overlap_process_profile_definition g_profile_OVERLAP6 = {
    fpcLy_ROOT_e,
    0,
    fpcPi_CURRENT_e,
    PROC_OVERLAP6,
    &g_fpcLf_Method.base,
    sizeof(overlap1_class),
    0,
    0,
    &g_fopOvlp_Method,
    777,
    &l_dOvlpFd_Method,
};

/* 803C2C24-803C2C4C -00001 0028+00 0/0 0/0 1/0 .data            g_profile_OVERLAP7 */
extern overlap_process_profile_definition g_profile_OVERLAP7 = {
    fpcLy_ROOT_e,
    0,
    fpcPi_CURRENT_e,
    PROC_OVERLAP7,
    &g_fpcLf_Method.base,
    sizeof(overlap1_class),
    0,
    0,
    &g_fopOvlp_Method,
    778,
    &l_dOvlpFd_Method,
};

/* 803C2C4C-803C2C74 -00001 0028+00 0/0 0/0 1/0 .data            g_profile_OVERLAP8 */
extern overlap_process_profile_definition g_profile_OVERLAP8 = {
    fpcLy_ROOT_e,
    0,
    fpcPi_CURRENT_e,
    PROC_OVERLAP8,
    &g_fpcLf_Method.base,
    sizeof(overlap1_class),
    0,
    0,
    &g_fopOvlp_Method,
    779,
    &l_dOvlpFd_Method,
};

/* 803C2C74-803C2C9C -00001 0028+00 0/0 0/0 1/0 .data            g_profile_OVERLAP9 */
extern overlap_process_profile_definition g_profile_OVERLAP9 = {
    fpcLy_ROOT_e,
    0,
    fpcPi_CURRENT_e,
    PROC_OVERLAP9,
    &g_fpcLf_Method.base,
    sizeof(overlap1_class),
    0,
    0,
    &g_fopOvlp_Method,
    780,
    &l_dOvlpFd_Method,
};

/* 803C2C9C-803C2CC4 -00001 0028+00 0/0 0/0 1/0 .data            g_profile_OVERLAP10 */
extern overlap_process_profile_definition g_profile_OVERLAP10 = {
    fpcLy_ROOT_e,
    0,
    fpcPi_CURRENT_e,
    PROC_OVERLAP10,
    &g_fpcLf_Method.base,
    sizeof(overlap1_class),
    0,
    0,
    &g_fopOvlp_Method,
    781,
    &l_dOvlpFd_Method,
};

/* 803C2CC4-803C2CF0 -00001 0028+04 0/0 0/0 1/0 .data            g_profile_OVERLAP11 */
extern overlap_process_profile_definition g_profile_OVERLAP11 = {
    fpcLy_ROOT_e,
    0,
    fpcPi_CURRENT_e,
    PROC_OVERLAP11,
    &g_fpcLf_Method.base,
    sizeof(overlap1_class),
    0,
    0,
    &g_fopOvlp_Method,
    782,
    &l_dOvlpFd_Method,
};
