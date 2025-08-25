/**
 * d_a_b_gos.cpp
 * Combined Goron Child
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_b_gos.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_b_go.h"

enum Action {
    /* 0x00 */ ACTION_WAIT,
    /* 0x01 */ ACTION_WALK,
    /* 0x02 */ ACTION_BALL,
    /* 0x03 */ ACTION_STICK,
};

enum B_GOS_RES_FILE_ID {
    /* BCK */
    /* 0x04 */ BCK_GRA_WAIT_AGRA_RUN_A = 4,
    /* 0x05 */ BCK_GRA_WAIT_AGRA_TO_STONE_NORMAL,
    /* 0x06 */ BCK_GRA_WAIT_AGRA_WAIT_A,

    /* BMDR */
    /* 0x09 */ BMDR_GRA_A = 9,
};

/* 8060541C-80605514 000000 00F8+00 1/1 0/0 0/0 .data            j_info */
static b_gos_j_info j_info[] = {
    {0x000E, 1.0f},   {0x000D, 1.0f},   {0x0F0D, 0.333f}, {0x0F0D, 0.666f}, {0x000F, 1.0f},
    {0x0003, 1.0f},   {0x0304, 0.5f},   {0x0004, 1.0f},   {0x0405, 0.5f},   {0x0005, 1.0f},
    {0x0008, 1.0f},   {0x0809, 0.5f},   {0x0009, 1.0f},   {0x090A, 0.5f},   {0x000A, 1.0f},
    {0x0010, 1.0f},   {0x1011, 0.5f},   {0x0011, 1.0f},   {0x1112, 0.5f},   {0x0012, 1.0f},
    {0x0013, 1.0f},   {0x1314, 0.5f},   {0x0014, 1.0f},   {0x1415, 0.5f},   {0x0015, 1.0f},
    {0x0310, 0.333f}, {0x0310, 0.666f}, {0x0813, 0.333f}, {0x0813, 0.666f}, {0x0D03, 0.5f},
    {0x0D08, 0.5f},
};

/* 8060426C-8060429C 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__13daB_GOS_HIO_cFv */
daB_GOS_HIO_c::daB_GOS_HIO_c() {
    field_0x4 = -1;
    mSize = 1.0f;
    mNormalSpeed = 10.0f;
}

/* 8060429C-80604370 00011C 00D4+00 1/0 0/0 0/0 .text            daB_GOS_Draw__FP11b_gos_class */
static int daB_GOS_Draw(b_gos_class* i_this) {
    J3DModel* model = i_this->mpMorf->getModel();

    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    i_this->mpMorf->entryDL();

    cXyz sp28;
    sp28.set(i_this->current.pos.x, i_this->current.pos.y + 50.0f, i_this->current.pos.z);
    i_this->mShadowKey =
        dComIfGd_setShadow(i_this->mShadowKey, 1, model, &sp28, 800.0f, 0.0f, i_this->current.pos.y,
                           i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd, &i_this->tevStr, 0,
                           1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 80604370-8060441C 0001F0 00AC+00 3/3 0/0 0/0 .text            anm_init__FP11b_gos_classifUcf */
static void anm_init(b_gos_class* i_this, int i_anmID, f32 i_morf, u8 i_attribute, f32 i_speed) {
    J3DAnmTransform* bck = (J3DAnmTransform*)dComIfG_getObjectRes("B_gos", i_anmID);
    i_this->mpMorf->setAnm(bck, i_attribute, i_morf, i_speed, 0.0f, -1.0f);
    i_this->mAnmID = i_anmID;
}

/* 8060441C-80604420 00029C 0004+00 1/1 0/0 0/0 .text            damage_check__FP11b_gos_class */
static void damage_check(b_gos_class* i_this) {}

/* 80604420-806044D8 0002A0 00B8+00 1/1 0/0 0/0 .text            wait__FP11b_gos_class */
static void wait(b_gos_class* i_this) {
    i_this->speedF = 0.0f;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, BCK_GRA_WAIT_AGRA_WAIT_A, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
        i_this->mMode = 1;
        i_this->mTimers[0] = cM_rndF(30) + 30.0f;
        break;
    case 1:
        if (i_this->mTimers[0] == 0) {
            i_this->mAction = ACTION_WALK;
            i_this->mMode = 0;
        }
        break;
    }
}

/* 80605608-8060560C 000008 0004+00 3/3 0/0 0/0 .bss             boss */
static b_go_class* boss;

/* 8060560C-80605610 00000C 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_8060560C;

/* 8060561C-8060562C 00001C 0010+00 5/5 0/0 0/0 .bss             l_HIO */
static daB_GOS_HIO_c l_HIO;

/* 806044D8-806045E4 000358 010C+00 1/1 0/0 0/0 .text            walk__FP11b_gos_class */
static void walk(b_gos_class* i_this) {
    f32 speed = 0.0f;

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, BCK_GRA_WAIT_AGRA_RUN_A, 5.0f, J3DFrameCtrl::EMode_LOOP, 1.0f);
        i_this->mMode = 1;
        i_this->mTimers[0] = cM_rndF(60) + 60.0f;
        i_this->mWalkDirection = cM_rndF(0x10000);
        break;
    case 1:
        speed = l_HIO.mNormalSpeed;
        if (i_this->mTimers[0] == 0) {
            i_this->mAction = ACTION_WAIT;
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalc2(&i_this->speedF, speed, 1.0f, 1.0f);
    cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->mWalkDirection, 1, 0x800);
}

/* 806045E4-806046E0 000464 00FC+00 1/1 0/0 0/0 .text            ball__FP11b_gos_class */
static void ball(b_gos_class* i_this) {
    switch (i_this->mMode) {
    case 0:
        i_this->mTimers[0] = cM_rndF(20);
        i_this->mMode = 1;
        // fallthrough
    case 1:
        if (i_this->mTimers[0] == 0) {
            anm_init(i_this, BCK_GRA_WAIT_AGRA_TO_STONE_NORMAL, 5.0f, J3DFrameCtrl::EMode_NONE, 1.0f);
            i_this->mMode = 2;
            i_this->mTimers[0] = cM_rndF(30) + 60.0f;
        }
        break;
    case 2:
        if (i_this->mTimers[0] == 0) {
            i_this->mAction = ACTION_STICK;
            i_this->mMode = 0;
        }
        break;
    }

    cLib_addCalc0(&i_this->speedF, 1.0f, 1.0f);
}

/* 806046E0-806048E0 000560 0200+00 1/1 0/0 0/0 .text            stick__FP11b_gos_class */
static void stick(b_gos_class* i_this) {
    cXyz offset;
    cXyz move_pos;

    switch (i_this->mMode) {
    case 0:
        i_this->mMode = 1;
        i_this->speedF = 0.0f;
        i_this->mAngleOffset = cM_rndF(0x10000);
        break;
    case 1:
        break;
    }

    cLib_addCalc2(&i_this->speedF, 200, 1, 1);

    J3DModel* boss_model = boss->mpMorf->getModel();
    MTXCopy(boss_model->getAnmMtx(j_info[i_this->mJointIndex].joint_no & 0xFF), *calc_mtx);

    offset.x = 0.0f;
    offset.y = 0.0f;
    offset.z = 0.0f;
    MtxPosition(&offset, &move_pos);

    if (j_info[i_this->mJointIndex].field_0x4 < 1.0f) {
        cXyz sp60;
        MTXCopy(boss_model->getAnmMtx((j_info[i_this->mJointIndex].joint_no >> 8) & 0xFF),
                *calc_mtx);

        offset.x = 0.0f;
        offset.y = 0.0f;
        offset.z = 0.0f;
        MtxPosition(&offset, &sp60);

        move_pos += (sp60 - move_pos) * j_info[i_this->mJointIndex].field_0x4;
    }

    cLib_addCalc2(&i_this->current.pos.x, move_pos.x, 1.0f, i_this->speedF);
    cLib_addCalc2(&i_this->current.pos.y, move_pos.y, 1.0f, i_this->speedF);
    cLib_addCalc2(&i_this->current.pos.z, move_pos.z, 1.0f, i_this->speedF);
    cLib_addCalcAngleS2(&i_this->current.angle.y, boss->shape_angle.y + i_this->mAngleOffset, 1,
                        0x400);
}

/* 806048E0-80604B7C 000760 029C+00 1/1 0/0 0/0 .text            action__FP11b_gos_class */
static void action(b_gos_class* i_this) {
    u8 var_r29;
    bool on_cyl_co;
    bool update_pos;

    cXyz speed_offset;
    cXyz move_speed;

    i_this->mAngleToPlayer = fopAcM_searchPlayerAngleY(i_this);
    i_this->mDistToPlayer = fopAcM_searchPlayerDistance(i_this);

    fopAcM_OffStatus(i_this, 0);
    i_this->attention_info.flags = 0;

    on_cyl_co = true;
    update_pos = true;
    var_r29 = 0;

    switch (i_this->mAction) {
    case ACTION_WAIT:
        wait(i_this);
        break;
    case ACTION_WALK:
        walk(i_this);
        break;
    case ACTION_BALL:
        ball(i_this);
        var_r29 = 1;
        break;
    case ACTION_STICK:
        stick(i_this);
        on_cyl_co = false;
        update_pos = false;
        var_r29 = 2;
        break;
    }

    if (on_cyl_co) {
        i_this->mCyl.OnCoSetBit();
        cXyz* cc_move = i_this->mCcStts.GetCCMoveP();

        if (cc_move != NULL) {
            i_this->current.pos += *cc_move * 0.5f;
        }
    } else {
        i_this->mCyl.OffCoSetBit();
    }

    cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->current.angle.y, 2, 0x2000);

    if (update_pos == true) {
        cMtx_YrotS(*calc_mtx, i_this->current.angle.y);

        speed_offset.x = 0.0f;
        speed_offset.y = 0.0f;
        speed_offset.z = i_this->speedF * l_HIO.mSize;

        MtxPosition(&speed_offset, &move_speed);
        i_this->speed.x = move_speed.x;
        i_this->speed.z = move_speed.z;

        i_this->current.pos += i_this->speed;
        i_this->speed.y += i_this->gravity;

        i_this->mAcch.CrrPos(dComIfG_Bgsp());
    }

    if (var_r29 != 0) {
        if (var_r29 == 2) {
            cLib_addCalc2(&i_this->field_0x698, -60, 1, 2);
            cLib_addCalc2(&i_this->field_0x69c, -30, 1, 1);
        }

        if (boss->field_0x692 == 1) {
            i_this->mAction = ACTION_WAIT;
            i_this->mMode = 0;
            i_this->speedF = cM_rndF(10);
            i_this->speed.y = cM_rndF(10);
        }
    } else {
        cLib_addCalc0(&i_this->field_0x698, 1.0f, 5.0f);
        cLib_addCalc0(&i_this->field_0x69c, 1.0f, 2.5f);

        if (boss->field_0x692 == 2) {
            i_this->mAction = ACTION_BALL;
            i_this->mMode = 0;
            i_this->speedF = 0.0f;
        }
    }
}

/* 80604B7C-80604CF4 0009FC 0178+00 2/1 0/0 0/0 .text            daB_GOS_Execute__FP11b_gos_class */
static int daB_GOS_Execute(b_gos_class* i_this) {
    i_this->field_0x66c++;

    boss = (b_go_class*)fopAcM_SearchByID(i_this->parentActorID);

    for (int i = 0; i < 4; i++) {
        if (i_this->mTimers[i] != 0) {
            i_this->mTimers[i]--;
        }
    }

    if (i_this->field_0x694 != 0) {
        i_this->field_0x694--;
    }

    action(i_this);
    damage_check(i_this);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    mDoMtx_stack_c::scaleM(l_HIO.mSize, l_HIO.mSize, l_HIO.mSize);
    mDoMtx_stack_c::transM(0.0f, i_this->field_0x698, i_this->field_0x69c);
    i_this->mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());

    i_this->mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(i_this)));
    i_this->mpMorf->modelCalc();

    i_this->mCyl.SetR(60.0f);
    i_this->mCyl.SetC(i_this->current.pos);
    dComIfG_Ccsp()->Set(&i_this->mCyl);
    return 1;
}

/* 80604CF4-80604CFC 000B74 0008+00 1/0 0/0 0/0 .text            daB_GOS_IsDelete__FP11b_gos_class
 */
static int daB_GOS_IsDelete(b_gos_class* i_this) {
    return 1;
}

/* 80604CFC-80604D64 000B7C 0068+00 1/0 0/0 0/0 .text            daB_GOS_Delete__FP11b_gos_class */
static int daB_GOS_Delete(b_gos_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "B_gos");

    if (i_this->field_0xcc8) {
        data_8060560C = 0;
    }

    if (i_this->heap != NULL) {
        i_this->mpMorf->stopZelAnime();
    }

    return 1;
}

/* 80604D64-80604E5C 000BE4 00F8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    b_gos_class* a_this = (b_gos_class*)i_this;

    a_this->mpMorf = new mDoExt_McaMorfSO((J3DModelData*)dComIfG_getObjectRes("B_gos", 9), NULL,
                                          NULL, (J3DAnmTransform*)dComIfG_getObjectRes("B_gos", 6),
                                          J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1, &a_this->mSound,
                                          0x80000, 0x11000084);

    if (a_this->mpMorf == NULL || a_this->mpMorf->getModel() == NULL) {
        return false;
    }

    return true;
}

/* 80604E5C-80605024 000CDC 01C8+00 1/0 0/0 0/0 .text            daB_GOS_Create__FP10fopAc_ac_c */
static int daB_GOS_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, b_gos_class);
    b_gos_class* a_this = (b_gos_class*)i_this;

    OS_REPORT("B_GOS//////////////B_GOS SET 0 !!\n");

    int phase_state = dComIfG_resLoad(&a_this->mPhase, "B_gos");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("B_GOS PARAM %x\n", fopAcM_GetParam(a_this));
        a_this->mJointIndex = fopAcM_GetParam(a_this) & 0xFF;

        OS_REPORT("B_GOS//////////////B_GO SET 1 !!\n");

        if (!fopAcM_entrySolidHeap(i_this, useHeapInit, 0x4B000)) {
            OS_REPORT("//////////////B_GOS SET NON !!\n");
            return cPhs_ERROR_e;
        }

        OS_REPORT("//////////////B_GOS SET 2 !!\n");

        if (data_8060560C == 0) {
            a_this->field_0xcc8 = 1;
            data_8060560C = 1;
            l_HIO.field_0x4 = -1;
        }

        a_this->attention_info.flags = 4;
        fopAcM_SetMtx(a_this, a_this->mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(a_this, -200.0f, -200.0f, -200.0f);
        fopAcM_SetMax(a_this, 200.0f, 200.0f, 200.0f);
        a_this->health = 1000;
        a_this->field_0x560 = 1000;

        a_this->mAcch.Set(fopAcM_GetPosition_p(a_this), fopAcM_GetOldPosition_p(a_this), a_this, 1,
                          &a_this->mAcchCir, fopAcM_GetSpeed_p(a_this), NULL, NULL);
        a_this->mAcchCir.SetWall(50.0f, 50.0f);

        a_this->mSound.init(&a_this->current.pos, &a_this->eyePos, 3, 1);
        a_this->mAtInfo.mpSound = &a_this->mSound;

        a_this->gravity = -7.0f;
        a_this->mAction = ACTION_WAIT;

        static dCcD_SrcCyl cc_cyl_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}},  // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                 // mGObjAt
                {dCcD_SE_NONE, 0x5, 0x0, 0x0, 0x2},                 // mGObjTg
                {0x0},                                              // mGObjCo
            },                                                      // mObjInf
            {
                {0.0f, 0.0f, 0.0f},  // mCenter
                150.0f,              // mRadius
                60.0f                // mHeight
            }                        // mCyl
        };

        a_this->mCcStts.Init(0xFA, 0, a_this);
        a_this->mCyl.Set(cc_cyl_src);
        a_this->mCyl.SetStts(&a_this->mCcStts);

        daB_GOS_Execute(a_this);
    }

    return phase_state;
}

/* 80605024-806051D8 000EA4 01B4+00 1/1 0/0 0/0 .text            __ct__11b_gos_classFv */
b_gos_class::b_gos_class() {}

/* 80605558-80605578 -00001 0020+00 1/0 0/0 0/0 .data            l_daB_GOS_Method */
static actor_method_class l_daB_GOS_Method = {
    (process_method_func)daB_GOS_Create,  (process_method_func)daB_GOS_Delete,
    (process_method_func)daB_GOS_Execute, (process_method_func)daB_GOS_IsDelete,
    (process_method_func)daB_GOS_Draw,
};

/* 80605578-806055A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_B_GOS */
extern actor_process_profile_definition g_profile_B_GOS = {
    fpcLy_CURRENT_e,
    8,
    fpcPi_CURRENT_e,
    PROC_B_GOS,
    &g_fpcLf_Method.base,
    sizeof(b_gos_class),
    0,
    0,
    &g_fopAc_Method.base,
    216,
    &l_daB_GOS_Method,
    0x40100,
    fopAc_ENEMY_e,
    fopAc_CULLBOX_CUSTOM_e,
};
