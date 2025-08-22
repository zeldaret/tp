/**
 * d_a_obj_mirror_screw.cpp
 * Mirror Chamber Statue
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_mirror_screw.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"

/* 80C997C0-80C997C4 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char const* l_arcName = "MR-Screw";

/* 80C9975C-80C99774 000000 0018+00 3/3 0/0 0/0 .rodata          M_attr__18daObjMirrorScrew_c */
daObjMirrorScrew_c::attr const daObjMirrorScrew_c::M_attr = {
    -2710.0f,  // mDownDist
    0.6f,      // mRotSpeedThreshold
    45,        // mSpinCount
    0,         // mResetSpinCount
    5.0f,      // mSpedStep
    -3.375f,   // mDownSpeed
};

/* 80C997F4-80C99824 000054 0030+00 2/3 0/0 0/0 .data            ActionTable__18daObjMirrorScrew_c
 */
daObjMirrorScrew_actionFunc daObjMirrorScrew_c::ActionTable[2][2] = {
    {
        &initWait,
        &executeWait,
    },
    {
        &initDown,
        &executeDown,
    },
};

/* 80C98AD8-80C98AE4 000078 000C+00 1/0 0/0 0/0 .text            initWait__18daObjMirrorScrew_cFv */
void daObjMirrorScrew_c::initWait() {
    mSpinCount = 0;
}

/* 80C98AE4-80C98C00 000084 011C+00 1/0 0/0 0/0 .text            executeWait__18daObjMirrorScrew_cFv
 */
void daObjMirrorScrew_c::executeWait() {
    if (mpSwSpinner != NULL) {
        if (mpSwSpinner->GetRotSpeedY() / (f32)0x1000 > M_attr.mRotSpeedThreshold) {
            mSpinCount++;
            dComIfGp_getVibration().StartQuake(4, 0xf, cXyz(0.0f, 1.0f, 0.0f));

            if (mSpinCount > M_attr.mSpinCount) {
                setAction(ACT_DOWN);
            }
        } else {
            mSpinCount = 0;
            dComIfGp_getVibration().StopQuake(0x1f);
        }
    }
}

/* 80C98C00-80C98F04 0001A0 0304+00 1/0 0/0 0/0 .text            initDown__18daObjMirrorScrew_cFv */
void daObjMirrorScrew_c::initDown() {
    speedF = 0.0f;
    mSpinCount = M_attr.mResetSpinCount;

    /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
    dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[361]);

    dComIfGp_getVibration().StartShock(8, 0xf, cXyz(0.0f, 1.0f, 0.0f));
    dComIfGp_getVibration().StartQuake(6, 0xf, cXyz(0.0f, 1.0f, 0.0f));
    Z2GetAudioMgr()->seStart(Z2SE_OBJ_MR_SCRW_ON, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

    fopAcM_orderMapToolEvent(this, getEventID(), 0xFF, 0xFFFF, 1, 0);

    cXyz pos(0.0f, 0.0f, 0.0f);
    csXyz angle(0, 0, 0);
    dComIfGp_particle_set(0x8ACA, &pos, &angle, NULL);
    dComIfGp_particle_set(0x8ACB, &pos, &angle, NULL);
    dComIfGp_particle_set(0x8ACE, &pos, &angle, NULL);
    dComIfGp_particle_set(0x8ACF, &pos, &angle, NULL);
    dComIfGp_particle_set(0x8AD0, &pos, &angle, NULL);
    dComIfGp_particle_set(0x8AD1, &pos, &angle, NULL);
}

/* 80C98F04-80C99154 0004A4 0250+00 1/0 0/0 0/0 .text            executeDown__18daObjMirrorScrew_cFv
 */
void daObjMirrorScrew_c::executeDown() {
    dComIfG_inf_c* gameinfo = &g_dComIfG_gameInfo;
    if (dComIfGp_event_runCheck()) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        player->changeOriginalDemo();
        player->changeDemoMode(14, 1, 0, 0);
    }

    if (mSpinCount >= 0) {
        mSpinCount--;
        if (mSpinCount <= 0) {
            if (mpChain != NULL) {
                mpChain->setAnmSpeed(1.0f);
            }

            if (mpTable != NULL) {
                mpTable->setAnmSpeed(1.0f);
            }

            if (mp6Pole != NULL) {
                mp6Pole->setAnmSpeed(1.0f);
            }

            if (mpSand != NULL) {
                mpSand->setAnmSpeed(1.0f);
            }
        }
    }

    cLib_chaseF(&speedF, M_attr.mDownSpeed, M_attr.mSpeedStep);
    current.pos.y += speedF;
    mpSwSpinner->current.pos = cXyz(current.pos.x, current.pos.y + 2636.121f, current.pos.z);
    Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_MR_SCRW_MV, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                  0);

    if (current.pos.y <= home.pos.y + M_attr.mDownDist) {
        current.pos.y = home.pos.y + M_attr.mDownDist;

        // fake match: these should be dComIfGp_getVibration()
        gameinfo->play.getVibration().StartShock(8, 0xf, cXyz(0.0f, 1.0f, 0.0f));
        gameinfo->play.getVibration().StopQuake(0x1f);
        Z2GetAudioMgr()->seStart(Z2SE_OBJ_MR_SCRW_OFF, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                 0);

        u8 sw = getSwitchNo();
        if (sw != 0xFF) {
            fopAcM_onSwitch(this, sw);
        }

        fopAcM_delete(this);
    }
}

/* 80C99154-80C99180 0006F4 002C+00 1/0 0/0 0/0 .text
 * daObjMirrorScrew_Draw__FP18daObjMirrorScrew_c                */
static int daObjMirrorScrew_Draw(daObjMirrorScrew_c* i_this) {
    return i_this->Draw();
}

/* 80C99180-80C991A0 000720 0020+00 1/0 0/0 0/0 .text
 * daObjMirrorScrew_Execute__FP18daObjMirrorScrew_c             */
static int daObjMirrorScrew_Execute(daObjMirrorScrew_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C991A0-80C991A8 000740 0008+00 1/0 0/0 0/0 .text
 * daObjMirrorScrew_IsDelete__FP18daObjMirrorScrew_c            */
static int daObjMirrorScrew_IsDelete(daObjMirrorScrew_c* i_this) {
    return 1;
}

/* 80C991A8-80C991CC 000748 0024+00 1/0 0/0 0/0 .text
 * daObjMirrorScrew_Delete__FP18daObjMirrorScrew_c              */
static int daObjMirrorScrew_Delete(daObjMirrorScrew_c* i_this) {
    i_this->MoveBGDelete();
    return 1;
}

cPhs__Step daObjMirrorScrew_c::create() {
    fopAcM_SetupActor(this, daObjMirrorScrew_c);
    if (fopAcM_isSwitch(this, getSwitchNo()) ||
        /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
        dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361])
           /* dSv_event_flag_c::F_0354 - Cutscene - [cutscene] Mirror complete */
        || dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[354]))
    {
        return cPhs_ERROR_e;
    }

    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (step == cPhs_COMPLEATE_e) {
        step = (cPhs__Step)MoveBGCreate(l_arcName, 7, dBgS_MoveBGProc_TypicalRotY, 0xc760, NULL);
        if (step == cPhs_ERROR_e) {
            return step;
        }
    }

    return step;
}

/* 80C991CC-80C992F4 00076C 0128+00 1/0 0/0 0/0 .text daObjMirrorScrew_Create__FP10fopAc_ac_c */
static cPhs__Step daObjMirrorScrew_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daObjMirrorScrew_c*>(i_this)->create();
}

/* 80C992F4-80C99364 000894 0070+00 1/0 0/0 0/0 .text            CreateHeap__18daObjMirrorScrew_cFv
 */
int daObjMirrorScrew_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    return mpModel == NULL ? 0 : 1;
}

void daObjMirrorScrew_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

void daObjMirrorScrew_c::initBaseMtx() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    setBaseMtx();
}

/* 80C99364-80C99490 000904 012C+00 1/0 0/0 0/0 .text            Create__18daObjMirrorScrew_cFv */
int daObjMirrorScrew_c::Create() {
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    initBaseMtx();

    cXyz sw_pos(current.pos.x, current.pos.y + 2636.121f, current.pos.z);
    fopAcM_createChild(PROC_Obj_SwSpinner, fopAcM_GetID(this), getSwitchNo() << 8, &sw_pos,
                       fopAcM_GetRoomNo(this), NULL, NULL, -1, NULL);

    mpSwSpinner = NULL;
    mpSpPath = NULL;
    mpChain = NULL;
    mpTable = NULL;
    mp6Pole = NULL;
    mpSand = NULL;

    setAction(ACT_WAIT);
    return cPhs_COMPLEATE_e;
}

/* 80C99490-80C99608 000A30 0178+00 1/0 0/0 0/0 .text Execute__18daObjMirrorScrew_cFPPA3_A4_f */
int daObjMirrorScrew_c::Execute(Mtx** i_mtxP) {
    if (mpSwSpinner == NULL) {
        mpSwSpinner = static_cast<daObjSwSpinner_c*>(fopAcM_SearchByName(PROC_Obj_SwSpinner));
    }

    if (mpSpPath == NULL) {
        mpSpPath = static_cast<daTagSppath_c*>(fopAcM_SearchByName(PROC_Tag_Sppath));
    }

    if (mpChain == NULL) {
        mpChain = static_cast<daObjMirrorChain_c*>(fopAcM_SearchByName(PROC_Obj_MirrorChain));
    }

    if (mpTable == NULL) {
        mpTable = static_cast<daObjMirrorTable_c*>(fopAcM_SearchByName(PROC_Obj_MirrorTable));
    }

    if (mp6Pole == NULL) {
        mp6Pole = static_cast<daObjMirror6Pole_c*>(fopAcM_SearchByName(PROC_Obj_Mirror6Pole));
    }

    if (mpSand == NULL) {
        mpSand = static_cast<daObjMirrorSand_c*>(fopAcM_SearchByName(PROC_Obj_MirrorSand));
    }

    callExecute();
    setBaseMtx();
    *i_mtxP = &mBgMtx;
    return 1;
}

/* 80C99608-80C996AC 000BA8 00A4+00 1/0 0/0 0/0 .text            Draw__18daObjMirrorScrew_cFv */
int daObjMirrorScrew_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C996AC-80C996E0 000C4C 0034+00 1/0 0/0 0/0 .text            Delete__18daObjMirrorScrew_cFv */
int daObjMirrorScrew_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80C99824-80C99844 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjMirrorScrew_Method */
static actor_method_class l_daObjMirrorScrew_Method = {
    (process_method_func)daObjMirrorScrew_Create,  (process_method_func)daObjMirrorScrew_Delete,
    (process_method_func)daObjMirrorScrew_Execute, (process_method_func)daObjMirrorScrew_IsDelete,
    (process_method_func)daObjMirrorScrew_Draw,
};

/* 80C99844-80C99874 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_MirrorScrew */
extern actor_process_profile_definition g_profile_Obj_MirrorScrew = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_MirrorScrew,
    &g_fpcLf_Method.base,
    sizeof(daObjMirrorScrew_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x2A6,
    &l_daObjMirrorScrew_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
