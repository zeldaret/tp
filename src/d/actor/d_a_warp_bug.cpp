/**
 * d_a_warp_bug.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_warp_bug.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80D67E38-80D67E3C 000078 0004+00 1/1 0/0 0/0 .text            create_init__11daWarpBug_cFv */
void daWarpBug_c::create_init() {}

/* 80D68208-80D6820C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "WarpBug";

int daWarpBug_c::createHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "kisei.bmd");
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);

    J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, "kisei.brk");
    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, "kisei.btk");

    if (pbrk != NULL) {
        mpBrk = new mDoExt_brkAnm();

        if (!mpBrk->init(modelData, pbrk, TRUE, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }

    if (pbtk != NULL) {
        mpBtk = new mDoExt_btkAnm();

        if (!mpBtk->init(modelData, pbtk, TRUE, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }

    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80D67E3C-80D68000 00007C 01C4+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daWarpBug_c*>(i_this)->createHeap();
}

/* 80D68048-80D68068 000288 0020+00 1/0 0/0 0/0 .text            daWarpBug_Draw__FP11daWarpBug_c */
static int daWarpBug_Draw(daWarpBug_c* i_this) {
    return i_this->draw();
}

/* 80D68068-80D68078 0002A8 0010+00 1/1 0/0 0/0 .text            draw__11daWarpBug_cFv */
int daWarpBug_c::draw() {
#ifdef DEBUG
    daPy_py_c* player_p = (daPy_py_c*)dComIfGp_getPlayer(0);
    if (!player_p->checkMidnaWarp()) {
#endif

        field_0x57c = 0;
        return 1;

#ifdef DEBUG
    }

    cLib_chaseS(&field_0x57c, 255, 25);
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    J3DModelData* modelData = mpModel->getModelData();
    for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
        GXColorS10* color = modelData->getMaterialNodePointer(i)->getTevColor(1);

        if (field_0x57e != 0) {
            color->r = 0;
            color->g = 255;
            color->b = 0;
        } else {
            color->r = 250;
            color->g = 50;
            color->b = 50;
        }

        color->a = field_0x57c;
    }

    if (field_0x57e != 0) {
        field_0x57e = 0;
    }

    dComIfGd_setListDarkBG();
    mpBrk->entry(modelData);
    mpBtk->entry(modelData);
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return 1;
#endif
}

int daWarpBug_c::execute() {
#ifdef DEBUG
    daPy_py_c* player_p = (daPy_py_c*)dComIfGp_getPlayer(0);
#endif

    mDoMtx_stack_c::copy(mpModel->getBaseTRMtx());
    mDoMtx_stack_c::multVecZero(&current.pos);

#ifdef DEBUG
    if (player_p->checkMidnaWarp()) {
        mpBrk->play();
        mpBtk->play();
        Z2GetAudioMgr()->seStartLevel(Z2SE_EN_YM_WAIT, &current.pos, NULL, 0, 1.0f, 1.0f, -1.0f,
                                      -1.0f, 0);
    }
#endif
    return 1;
}

/* 80D68078-80D680D8 0002B8 0060+00 1/0 0/0 0/0 .text            daWarpBug_Execute__FP11daWarpBug_c
 */
static int daWarpBug_Execute(daWarpBug_c* i_this) {
    return i_this->execute();
}

/* 80D680D8-80D680E0 000318 0008+00 1/0 0/0 0/0 .text            daWarpBug_IsDelete__FP11daWarpBug_c
 */
static int daWarpBug_IsDelete(daWarpBug_c* i_this) {
    return 1;
}

daWarpBug_c::~daWarpBug_c() {
    dComIfG_resDelete(&mPhase, l_arcName);
}

/* 80D680E0-80D68130 000320 0050+00 1/0 0/0 0/0 .text            daWarpBug_Delete__FP11daWarpBug_c
 */
static int daWarpBug_Delete(daWarpBug_c* i_this) {
    i_this->~daWarpBug_c();
    return 1;
}

int daWarpBug_c::create() {
    fopAcM_SetupActor(this, daWarpBug_c);

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x4000)) {
            return cPhs_ERROR_e;
        }

        create_init();
    }

    return phase;
}

/* 80D68130-80D681D4 000370 00A4+00 1/0 0/0 0/0 .text            daWarpBug_Create__FP10fopAc_ac_c */
static int daWarpBug_Create(fopAc_ac_c* i_this) {
    return static_cast<daWarpBug_c*>(i_this)->create();
}

/* 80D6820C-80D6822C -00001 0020+00 1/0 0/0 0/0 .data            l_daWarpBug_Method */
static actor_method_class l_daWarpBug_Method = {
    (process_method_func)daWarpBug_Create,  (process_method_func)daWarpBug_Delete,
    (process_method_func)daWarpBug_Execute, (process_method_func)daWarpBug_IsDelete,
    (process_method_func)daWarpBug_Draw,
};

/* 80D6822C-80D6825C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_WarpBug */
extern actor_process_profile_definition g_profile_WarpBug = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_WarpBug,
    &g_fpcLf_Method.base,
    sizeof(daWarpBug_c),
    0,
    0,
    &g_fopAc_Method.base,
    726,
    &l_daWarpBug_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
