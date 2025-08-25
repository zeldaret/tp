/**
 * d_bg_s_lin_chk.cpp
 * BG Collision Line Check
 */

#include "d/dolzel.h"

#include "d/d_bg_s_lin_chk.h"
#include "f_op/f_op_actor_mng.h"

/* 80077C68-80077CDC 0725A8 0074+00 8/8 3/3 388/388 .text            __ct__11dBgS_LinChkFv */
dBgS_LinChk::dBgS_LinChk() {
    SetPolyPassChk(GetPolyPassChkInfo());
    SetGrpPassChk(GetGrpPassChkInfo());
}

/* 80077CDC-80077D64 07261C 0088+00 12/11 5/5 378/378 .text            __dt__11dBgS_LinChkFv */
dBgS_LinChk::~dBgS_LinChk() {}

/* 80077D64-80077DA4 0726A4 0040+00 0/0 15/15 307/307 .text
 * Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c              */
void dBgS_LinChk::Set(cXyz const* pi_start, cXyz const* pi_end, fopAc_ac_c const* p_actor) {
    u32 id;

    if (p_actor != NULL) {
        id = fopAcM_GetID(p_actor);
    } else {
        id = 0xFFFFFFFF;
    }
    Set2(pi_start, pi_end, id);
}

/* 80077DA4-80077E00 0726E4 005C+00 1/1 12/12 1/1 .text            __ct__14dBgS_CamLinChkFv */
dBgS_CamLinChk::dBgS_CamLinChk() {
    SetCam();
}

/* 80077E00-80077E78 072740 0078+00 5/4 12/12 1/1 .text            __dt__14dBgS_CamLinChkFv */
dBgS_CamLinChk::~dBgS_CamLinChk() {}

/* 80077E78-80077EE4 0727B8 006C+00 0/0 0/0 1/1 .text            __ct__21dBgS_CamLinChk_NorWtrFv */
dBgS_CamLinChk_NorWtr::dBgS_CamLinChk_NorWtr() {
    OnWaterGrp();
    OnNormalGrp();
}

/* 80077EE4-80077F5C 072824 0078+00 4/3 0/0 1/1 .text            __dt__21dBgS_CamLinChk_NorWtrFv */
dBgS_CamLinChk_NorWtr::~dBgS_CamLinChk_NorWtr() {}

/* 80077F5C-80077FB8 07289C 005C+00 0/0 4/4 9/9 .text            __ct__14dBgS_ObjLinChkFv */
dBgS_ObjLinChk::dBgS_ObjLinChk() {
    SetObj();
}

/* 80077FB8-80078030 0728F8 0078+00 4/3 2/2 11/11 .text            __dt__14dBgS_ObjLinChkFv */
dBgS_ObjLinChk::~dBgS_ObjLinChk() {}

/* 80078030-8007808C 072970 005C+00 0/0 1/1 4/4 .text            __ct__15dBgS_LinkLinChkFv */
dBgS_LinkLinChk::dBgS_LinkLinChk() {
    SetLink();
}

/* 8007808C-80078104 0729CC 0078+00 4/3 1/1 5/5 .text            __dt__15dBgS_LinkLinChkFv */
dBgS_LinkLinChk::~dBgS_LinkLinChk() {}

/* 80078104-80078160 072A44 005C+00 0/0 0/0 1/1 .text            __ct__15dBgS_BombLinChkFv */
dBgS_BombLinChk::dBgS_BombLinChk() {
    SetBomb();
}

/* 80078160-800781D8 072AA0 0078+00 4/3 0/0 1/1 .text            __dt__15dBgS_BombLinChkFv */
dBgS_BombLinChk::~dBgS_BombLinChk() {}

/* 800781D8-80078240 072B18 0068+00 0/0 1/1 2/2 .text            __ct__16dBgS_ArrowLinChkFv */
dBgS_ArrowLinChk::dBgS_ArrowLinChk() {
    SetArrow();
    OnNormalGrp();
}

/* 80078240-800782B8 072B80 0078+00 4/3 1/1 2/2 .text            __dt__16dBgS_ArrowLinChkFv */
dBgS_ArrowLinChk::~dBgS_ArrowLinChk() {}

/* 800782B8-80078314 072BF8 005C+00 0/0 1/1 1/1 .text            __ct__20dBgS_BoomerangLinChkFv */
dBgS_BoomerangLinChk::dBgS_BoomerangLinChk() {
    SetBoomerang();
}

/* 80078314-8007838C 072C54 0078+00 4/3 1/1 1/1 .text            __dt__20dBgS_BoomerangLinChkFv */
dBgS_BoomerangLinChk::~dBgS_BoomerangLinChk() {}

/* 8007838C-800783E8 072CCC 005C+00 0/0 1/1 0/0 .text            __ct__15dBgS_RopeLinChkFv */
dBgS_RopeLinChk::dBgS_RopeLinChk() {
    SetRope();
}

/* 800783E8-80078460 072D28 0078+00 4/3 1/1 0/0 .text            __dt__15dBgS_RopeLinChkFv */
dBgS_RopeLinChk::~dBgS_RopeLinChk() {}

/* 80078460-800784BC 072DA0 005C+00 0/0 0/0 1/1 .text            __ct__16dBgS_HorseLinChkFv */
dBgS_HorseLinChk::dBgS_HorseLinChk() {
    SetHorse();
}

/* 800784BC-80078534 072DFC 0078+00 4/3 0/0 1/1 .text            __dt__16dBgS_HorseLinChkFv */
dBgS_HorseLinChk::~dBgS_HorseLinChk() {}
