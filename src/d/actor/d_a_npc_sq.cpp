/**
 * d_a_npc_sq.cpp
 * NPC - Squirrel
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_sq.h"
#include "SSystem/SComponent/c_math.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"

/* 80AF75C0-80AF75C4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool hioInit;

/* 80AF75D0-80AF75DC 000018 000C+00 4/4 0/0 0/0 .bss             l_HIO */
static daNpc_Sq_HIO_c l_HIO;

/* 80AF5FEC-80AF6010 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__14daNpc_Sq_HIO_cFv */
daNpc_Sq_HIO_c::daNpc_Sq_HIO_c() {
    field_0x4 = -1;
    mScale = 2.0f;
}

/* 80AF6010-80AF60B8 000110 00A8+00 2/2 0/0 0/0 .text            anm_init__FP12npc_sq_classifUcf */
static void anm_init(npc_sq_class* i_this, int i_bck, f32 i_morf, u8 i_mode, f32 i_speed) {
    i_this->mpMorf->setAnm(static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Sq", i_bck)),
                           i_mode, i_morf, i_speed, 0.0f, -1.0f, NULL);
}

/* 80AF60B8-80AF61B0 0001B8 00F8+00 1/0 0/0 0/0 .text            daNpc_Sq_Draw__FP12npc_sq_class */
static int daNpc_Sq_Draw(npc_sq_class* i_this) {
    J3DModel* model = i_this->mpMorf->getModel();
    g_env_light.settingTevStruct(0, &i_this->current.pos, &i_this->tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &i_this->tevStr);
    i_this->mpBtkAnm->entry(model->getModelData());
    i_this->mpMorf->entryDL();
    cXyz shadow_pos;
    shadow_pos.set(i_this->current.pos.x, i_this->current.pos.y + 100.0f, i_this->current.pos.z);
    i_this->mShadowKey =
        dComIfGd_setShadow(i_this->mShadowKey, 1, model, &shadow_pos, 600.0f, 10.0f * l_HIO.mScale,
                           i_this->current.pos.y, i_this->mAcch.GetGroundH(), i_this->mAcch.m_gnd,
                           &i_this->tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 80AF61B0-80AF63C0 0002B0 0210+00 1/1 0/0 0/0 .text            npc_sq_normal__FP12npc_sq_class */
static void npc_sq_normal(npc_sq_class* i_this) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);

    switch (i_this->mMode) {
    case 0:
        anm_init(i_this, 9, 3.0f, 2, 1.0f);
        i_this->mMode = 1;
        break;

    case 1:
        break;

    case 2:
        cLib_addCalcAngleS2(&i_this->current.angle.y, i_this->home.angle.y + 0x4000, 2, 0x3000);
        if (i_this->mTimer[0] == 1) {
            anm_init(i_this, 7, 2.0f, 2, 1.0f);
            i_this->speedF = 15.0f;
        }
    }

    cXyz vec;
    vec.x = 210.0f;
    vec.y = 800.0f;
    vec.z = -375.0f;
    vec -= player->current.pos;
    vec.y = 0.0f;
    if (i_this->mDemoMode == 0 && vec.abs() < 250.0f) {
        i_this->mDemoMode = 1;
    }
}

/* 80AF63C0-80AF6518 0004C0 0158+00 1/1 0/0 0/0 .text            action__FP12npc_sq_class */
static void action(npc_sq_class* i_this) {
    i_this->mPlayerDist = fopAcM_searchPlayerDistance(i_this);
    
    switch (i_this->mAction) {
    case npc_sq_class::ACT_NORMAL:
        npc_sq_normal(i_this);
    }

    cXyz vec1, vec2;
    cMtx_YrotS(*calc_mtx, i_this->current.angle.y);
    vec1.x = 0.0f;
    vec1.y = 0.0f;
    vec1.z = i_this->speedF;
    MtxPosition(&vec1, &vec2);
    i_this->speed.x = vec2.x;
    i_this->speed.z = vec2.z;
    i_this->speed.y += -5.0f;
    i_this->current.pos += i_this->speed;
    if (i_this->speed.y < -80.0f) {
        i_this->speed.y = -80.0f;
    }

    cXyz* move_p = i_this->mCcStts.GetCCMoveP();
    if (move_p != NULL) {
        i_this->current.pos.x += move_p->x;
        i_this->current.pos.y += move_p->y;
        i_this->current.pos.z += move_p->z;
    }
    i_this->mAcch.CrrPos(dComIfG_Bgsp());

    cLib_addCalcAngleS2(&i_this->shape_angle.y, i_this->current.angle.y, 2, 0x4000);
    cLib_addCalcAngleS2(&i_this->shape_angle.x, i_this->current.angle.x, 2, 0x4000);
    i_this->shape_angle.z = i_this->current.angle.z;
}

/* 80AF6518-80AF65FC 000618 00E4+00 1/1 0/0 0/0 .text            cam_3d_morf__FP12npc_sq_classf */
static void cam_3d_morf(npc_sq_class* i_this, f32 i_scale) {
    cLib_addCalc2(&i_this->mCameraCenter.x, i_this->mCameraTargetCenter.x, i_scale,
                  i_this->mCameraCenterDist.x * i_this->mCameraSpeed);
    cLib_addCalc2(&i_this->mCameraCenter.y, i_this->mCameraTargetCenter.y, i_scale,
                  i_this->mCameraCenterDist.y * i_this->mCameraSpeed);
    cLib_addCalc2(&i_this->mCameraCenter.z, i_this->mCameraTargetCenter.z, i_scale,
                  i_this->mCameraCenterDist.z * i_this->mCameraSpeed);
    cLib_addCalc2(&i_this->mCameraEye.x, i_this->mCameraTargetEye.x, i_scale,
                  i_this->mCameraEyeDist.x * i_this->mCameraSpeed);
    cLib_addCalc2(&i_this->mCameraEye.y, i_this->mCameraTargetEye.y, i_scale,
                  i_this->mCameraEyeDist.y * i_this->mCameraSpeed);
    cLib_addCalc2(&i_this->mCameraEye.z, i_this->mCameraTargetEye.z, i_scale,
                  i_this->mCameraEyeDist.z * i_this->mCameraSpeed);
}

/* 80AF65FC-80AF6B74 0006FC 0578+00 2/1 0/0 0/0 .text            demo_camera__FP12npc_sq_class */
static void demo_camera(npc_sq_class* i_this) {
    fopAc_ac_c* _this = static_cast<fopAc_ac_c*>(i_this);
    camera_class* player_camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    camera_class* camera = dComIfGp_getCamera(0);
    cXyz vec;
    s8 end = 0;

    switch (i_this->mDemoMode) {
    case 1:
        if (!_this->eventInfo.checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(_this, 2, 0xffff, 0);
            _this->eventInfo.onCondition(2);
            return;
        }
        player_camera->mCamera.Stop();
        i_this->mDemoMode = 2;
        i_this->mDemoTimer = 0;
        i_this->mCameraFovY = 55.0f;
        player_camera->mCamera.SetTrimSize(3);
        i_this->mMsgFlow.init(_this, i_this->mFlowID, 0, NULL);
        i_this->mCameraEye = camera->lookat.eye;
        i_this->mCameraCenter = camera->lookat.center;
        daPy_getPlayerActorClass()->changeOriginalDemo();
        // no break

    case 2:
        if (i_this->mDemoTimer == 10) {
            daPy_getPlayerActorClass()->changeDemoMode(23, 0, 0, 0);
        }
        if (i_this->mMsgFlow.doFlow(_this, NULL, 0)) {
            i_this->mDemoMode = 3;
            i_this->mDemoTimer = 0;
            mDoMtx_stack_c::YrotS(_this->shape_angle.y);
            vec.x = -30.0f;
            vec.y = 100.0f;
            vec.z = -150.0f;
            mDoMtx_stack_c::multVec(&vec, &i_this->mCameraTargetEye);
            i_this->mCameraTargetEye += _this->current.pos;
            i_this->mCameraTargetCenter = _this->current.pos;
            i_this->mCameraTargetCenter.y += 63.0f;
            i_this->mCameraEyeDist.x = fabsf(i_this->mCameraTargetEye.x - i_this->mCameraEye.x);
            i_this->mCameraEyeDist.y = fabsf(i_this->mCameraTargetEye.y - i_this->mCameraEye.y);
            i_this->mCameraEyeDist.z = fabsf(i_this->mCameraTargetEye.z - i_this->mCameraEye.z);
            i_this->mCameraCenterDist.x =
                fabsf(i_this->mCameraTargetCenter.x - i_this->mCameraCenter.x);
            i_this->mCameraCenterDist.y =
                fabsf(i_this->mCameraTargetCenter.y - i_this->mCameraCenter.y);
            i_this->mCameraCenterDist.z =
                fabsf(i_this->mCameraTargetCenter.z - i_this->mCameraCenter.z);
            i_this->mCameraSpeed = 0.0f;
        }
        break;

    case 3:
        cam_3d_morf(i_this, 0.2f);
        cLib_addCalc2(&i_this->mCameraSpeed, 0.1f, 1.0f, 0.01f);
        if (i_this->mDemoTimer == 80) {
            i_this->mMsgFlow.init(_this, i_this->mFlowID, 0, NULL);
            i_this->mDemoMode = 4;
        }
        break;

    case 4:
        i_this->mMsgFlow.doFlow(_this, NULL, 0);
        if (i_this->mMsgFlow.getNowMsgNo() == 0x2747 || i_this->mMsgFlow.getNowMsgNo() == 0x273E) {
            i_this->mDemoMode = 5;
            anm_init(i_this, 5, 0.0f, 2, 1.0f);
        }
        break;

    case 5:
        mDoMtx_stack_c::YrotS(_this->shape_angle.y);
        vec.x = 0.0f;
        vec.y = 0.0f;
        vec.z = 150.0f;
        mDoMtx_stack_c::multVec(&vec, &i_this->mCameraEye);
        i_this->mCameraEye += _this->current.pos;
        i_this->mCameraCenter = _this->current.pos;
        i_this->mCameraCenter.y += 20.0f;
        i_this->mMsgFlow.doFlow(_this, NULL, 0);
        if (i_this->mMsgFlow.getNowMsgNo() == 0x2749 || i_this->mMsgFlow.getNowMsgNo() == 0x2740) {
            i_this->mDemoMode = 6;
        }
        break;

    case 6:
        mDoMtx_stack_c::YrotS(_this->shape_angle.y);
        vec.x = 100.0f;
        vec.y = 50.0f;
        vec.z = 35.0f;
        mDoMtx_stack_c::multVec(&vec, &i_this->mCameraEye);
        i_this->mCameraEye += _this->current.pos;
        i_this->mCameraCenter = _this->current.pos;
        i_this->mCameraCenter.y += 13.0f;
        if (i_this->mMsgFlow.doFlow(_this, NULL, 0)) {
            i_this->mMode = 2;
            i_this->mTimer[0] = 5;
            i_this->mDemoTimer = 0;
            i_this->mDemoMode = 9;
        }
        break;

    case 9:
        if (i_this->mDemoTimer >= 30) {
            end = 1;
            fopAcM_delete(_this);
        }
    }

    if (end) {
        player_camera->mCamera.Start();
        player_camera->mCamera.SetTrimSize(0);
        dComIfGp_event_reset();
        daPy_getPlayerActorClass()->cancelOriginalDemo();
        i_this->mDemoMode = 0;
    }

    if (i_this->mDemoMode != 0) {
        player_camera->mCamera.Set(i_this->mCameraCenter, i_this->mCameraEye,
                                   i_this->mCameraFovY, 0);
        i_this->mDemoTimer++;
    }
}

/* 80AF6B74-80AF6D54 000C74 01E0+00 2/1 0/0 0/0 .text            daNpc_Sq_Execute__FP12npc_sq_class
 */
static int daNpc_Sq_Execute(npc_sq_class* i_this) {
    cXyz vec(0.0f, 0.0f, 0.0f);
    i_this->mCounter++;
    for (int i = 0; i < 4; i++) {
        if (i_this->mTimer[i] != 0) {
            i_this->mTimer[i]--;
        }
    }

    action(i_this);

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::XrotM(i_this->shape_angle.x);
    mDoMtx_stack_c::ZrotM(i_this->shape_angle.z);
    mDoMtx_stack_c::scaleM(l_HIO.mScale, l_HIO.mScale, l_HIO.mScale);
    J3DModel* model = i_this->mpMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());

    i_this->mpMorf->play(&i_this->eyePos, 0, 0);
    i_this->mpBtkAnm->setFrame(i_this->mBtkFrame);
    i_this->mpMorf->modelCalc();

    MTXCopy(model->getAnmMtx(2), *calc_mtx);
    MtxPosition(&vec, &i_this->eyePos);
    i_this->attention_info.position = i_this->eyePos;
    i_this->attention_info.position.y += 20.0f * l_HIO.mScale;

    i_this->mCcSph.SetC(i_this->eyePos);
    i_this->mCcSph.SetR(10.0f * l_HIO.mScale);
    dComIfG_Ccsp()->Set(&i_this->mCcSph);

    demo_camera(i_this);
    return 1;
}

/* 80AF6D54-80AF6D5C 000E54 0008+00 1/0 0/0 0/0 .text            daNpc_Sq_IsDelete__FP12npc_sq_class
 */
static int daNpc_Sq_IsDelete(npc_sq_class* i_this) {
    return 1;
}

/* 80AF6D5C-80AF6DB0 000E5C 0054+00 1/0 0/0 0/0 .text            daNpc_Sq_Delete__FP12npc_sq_class
 */
static int daNpc_Sq_Delete(npc_sq_class* i_this) {
    dComIfG_resDelete(&i_this->mPhaseReq, "Sq");
    if (i_this->mHIOInit) {
        hioInit = false;
    }
    return 1;
}

/* 80AF6DB0-80AF6F50 000EB0 01A0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    npc_sq_class* _this = static_cast<npc_sq_class*>(i_this);
    
    _this->mpMorf =
        new mDoExt_McaMorf(static_cast<J3DModelData*>(dComIfG_getObjectRes("Sq", 17)), NULL, NULL,
                           static_cast<J3DAnmTransform*>(dComIfG_getObjectRes("Sq", 9)),
                           0, 1.0f, 0, -1, 1, NULL, 0x80000, 0x11000284);
    if (_this->mpMorf == NULL || _this->mpMorf->getModel() == NULL) {
        return 0;
    }

    _this->mpBtkAnm = new mDoExt_btkAnm();
    if (_this->mpBtkAnm == NULL) {
        return 0;
    }
    return _this->mpBtkAnm->init(_this->mpMorf->getModel()->getModelData(),
                                 static_cast<J3DAnmTextureSRTKey*>(dComIfG_getObjectRes("Sq", 20)),
                                 1, 0, 1.0f, 0, -1) ? 1 : 0;
}

/* 80AF6F98-80AF7260 001098 02C8+00 1/0 0/0 0/0 .text            daNpc_Sq_Create__FP10fopAc_ac_c */
static cPhs__Step daNpc_Sq_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, npc_sq_class);
    npc_sq_class* _this = static_cast<npc_sq_class*>(i_this);

    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&_this->mPhaseReq, "Sq");
    if (step == cPhs_COMPLEATE_e) {
            /* dSv_event_flag_c::D_0001 - Ordon Village - Stopped by squirrel in front of house at night */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[25])) {
            return cPhs_ERROR_e;
        }

        _this->mParam0 = (u8)fopAcM_GetParam(_this);
        _this->mParam1 = (u8)(fopAcM_GetParam(_this) >> 8);
        _this->mFlowID = 0xDB;
        _this->shape_angle.z = 0;
        _this->current.angle.z = 0;

        if (!fopAcM_entrySolidHeap(_this, useHeapInit, 0x4b000)) {
            return cPhs_ERROR_e;
        }

        if (!hioInit) {
            _this->mHIOInit = true;
            hioInit = true;
            l_HIO.field_0x4 = -1;
        }

        fopAcM_OnStatus(_this, 0x100);
        _this->attention_info.flags = 0;
        _this->mAction = npc_sq_class::ACT_NORMAL;
        fopAcM_SetMtx(_this, _this->mpMorf->getModel()->getBaseTRMtx());
        _this->mAcch.Set(fopAcM_GetPosition_p(_this), fopAcM_GetOldPosition_p(_this), _this, 1,
                         &_this->mAcchCir, fopAcM_GetSpeed_p(_this), NULL, NULL);
        _this->mAcchCir.SetWall(30.0f, 40.0f);

        _this->mCcStts.Init(100, 0, _this);
        static dCcD_SrcSph cc_sph_src = {
            {
                {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x3}, 0x75}}, // mObj
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
                {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
                {0x0}, // mGObjCo
            }, // mObjInf
            {
                {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
            } // mSphAttr
        };
        _this->mCcSph.Set(cc_sph_src);
        _this->mCcSph.SetStts(&_this->mCcStts);

        if (_this->mParam1 == 0xff) {
            _this->mBtkFrame = cM_rndF(3.999f);
        } else {
            _this->mBtkFrame = _this->mParam1;
            if (_this->mBtkFrame > 3) {
                _this->mBtkFrame = 3;
            }
        }

        daNpc_Sq_Execute(_this);
    }

    return step;
}

/* 80AF7510-80AF7530 -00001 0020+00 1/0 0/0 0/0 .data            l_daNpc_Sq_Method */
static actor_method_class l_daNpc_Sq_Method = {
    (process_method_func)daNpc_Sq_Create,
    (process_method_func)daNpc_Sq_Delete,
    (process_method_func)daNpc_Sq_Execute,
    (process_method_func)daNpc_Sq_IsDelete,
    (process_method_func)daNpc_Sq_Draw,
};

/* 80AF7530-80AF7560 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SQ */
extern actor_process_profile_definition g_profile_NPC_SQ = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_NPC_SQ,
    &g_fpcLf_Method.base,
    sizeof(npc_sq_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x2BA,
    &l_daNpc_Sq_Method,
    0xC0000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};
