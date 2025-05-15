/**
 * @file d_a_e_md.cpp
 * 
*/

#include "d/actor/d_a_e_md.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "c/c_damagereaction.h"

enum daE_MD_TYPE {
    TYPE_DUMMY,
    TYPE_REAL,
    TYPE_LV9,
};

enum daE_MD_ACTION {
    ACTION_WAIT,
    ACTION_HALF_BREAK,
    ACTION_BREAK,
    ACTION_UNK_3,
    ACTION_VIB,
};

/* 80708DF8-80708E70 000078 0078+00 1/1 0/0 0/0 .text            initCcCylinder__8daE_MD_cFv */
void daE_MD_c::initCcCylinder() {
    const static dCcD_SrcCyl ccCylSrc = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x51}, 0x75}}, // mObj
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {0.0f, 0.0f, 0.0f}, // mCenter
            60.0f, // mRadius
            350.0f // mHeight
        } // mCyl
    };

    mCcStts.Init(200, 0xFF, this);
    mCyl.Set(ccCylSrc);
    mCyl.SetStts(&mCcStts);
    mCyl.SetC(current.pos);
    mCyl.OnTgShield();
    mCyl.OnTgIronBallRebound();
}

/* 80708E70-80708EE8 0000F0 0078+00 3/3 0/0 0/0 .text            setCcCylinder__8daE_MD_cFf */
void daE_MD_c::setCcCylinder(f32 i_height) {
    mCyl.SetC(current.pos);
    mCyl.SetR(80.0f);
    mCyl.SetH(i_height);
    dComIfG_Ccsp()->Set(&mCyl);
}

int daE_MD_c::CreateHeap() {
    void* modelData;
    if (mType != TYPE_LV9) {
        modelData = dComIfG_getObjectRes("E_MD", 0xB);
    } else if (mType == TYPE_LV9) {
        modelData = dComIfG_getObjectRes("E_MD", 9);
    } else {
        modelData = dComIfG_getObjectRes("E_MD", 9);
    }

    JUT_ASSERT(180, modelData != 0);

    mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)modelData, NULL, NULL, NULL, 2, 1.0f, 0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf == NULL || mpModelMorf->getModel() == NULL) {
        return 0;
    }

    if (mType == TYPE_DUMMY) {
        modelData = dComIfG_getObjectRes("E_MD", 0xD);
        mpYariModelMorf = new mDoExt_McaMorfSO((J3DModelData*)modelData, NULL, NULL, NULL, 2, 1.0f, 0, -1, NULL, 0x80000, 0x11000084);
        if (mpYariModelMorf == NULL || mpYariModelMorf->getModel() == NULL) {
            return 0;
        }
    } else if (mType == TYPE_LV9) {
        modelData = dComIfG_getObjectRes("E_MD", 0xA);
        mpYariModelMorf = new mDoExt_McaMorfSO((J3DModelData*)modelData, NULL, NULL, NULL, 2, 1.0f, 0, -1, NULL, 0x80000, 0x11000084);
        if (mpYariModelMorf == NULL || mpYariModelMorf->getModel() == NULL) {
            return 0;
        }
    } else {
        mpTbModel = mDoExt_J3DModel__create((J3DModelData*)dComIfG_getObjectRes("E_MD", 0xC), 0x80000, 0x11000084);
        if (mpTbModel == NULL) {
            return 0;
        }
    }

    return 1;
}

/* 80708EE8-807091D0 000168 02E8+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    daE_MD_c* a_this = (daE_MD_c*)i_this;
    return a_this->CreateHeap();
}

/* 807091D0-807091F0 000450 0020+00 1/0 0/0 0/0 .text            daE_MD_Create__FP10fopAc_ac_c */
static int daE_MD_Create(fopAc_ac_c* i_this) {
    daE_MD_c* a_this = (daE_MD_c*)i_this;
    fpc_ProcID id = fopAcM_GetID(a_this);
    return a_this->create();
}

/* 807091F0-807092A4 000470 00B4+00 1/1 0/0 0/0 .text SetAnm__8daE_MD_cFP16mDoExt_McaMorfSOiiff */
void daE_MD_c::SetAnm(mDoExt_McaMorfSO* i_modelMorf, int i_anm, int i_mode, f32 i_morf,
                      f32 i_speed) {
    i_modelMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_MD", i_anm), i_mode, i_morf, i_speed, 0.0f, -1.0f);
    mAnm = i_anm;
}

/* 807092A4-807092C8 000524 0024+00 1/0 0/0 0/0 .text            daE_MD_Delete__FP8daE_MD_c */
static int daE_MD_Delete(daE_MD_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    i_this->Delete();
    return 1;
}

/* 807092C8-80709378 000548 00B0+00 1/1 0/0 0/0 .text            At_Check__8daE_MD_cFv */
void daE_MD_c::At_Check() {
    mAtInfo.mpCollider = mCyl.GetTgHitObj();
    mAtInfo.mpActor = at_power_check(&mAtInfo);

    if (mAtInfo.mpActor != NULL) {
        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
            mAtInfo.mAttackPower = 0;
        }
        
        u8 at_se = ((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSe();
        if (mAtInfo.mpSound != NULL && mAtInfo.field_0x18 != 0) {
            mAtInfo.mpSound->startCollisionSE(dCcD_GObjInf::getHitSeID(at_se, 0), mAtInfo.field_0x18);
        }
    }
}

/* 80709378-8070992C 0005F8 05B4+00 4/4 0/0 0/0 .text            CheckHit__8daE_MD_cFv */
void daE_MD_c::CheckHit() {
    if (mInvulnerabilityTimer > 0) {
        mCyl.ClrTgHit();
        return;
    }

    if (mCyl.ChkTgHit()) {
        mInvulnerabilityTimer = 3;
        mAtInfo.field_0x18 = 40;
        mAtInfo.mpCollider = mCyl.GetTgHitObj();
        At_Check();

        cCcD_Obj* hit_obj = mCyl.GetTgHitObj();
        fopAc_ac_c* hit_actor = dCc_GetAc(hit_obj->GetAc());
        if ((hit_obj->ChkAtType(AT_TYPE_IRON_BALL) || fopAcM_GetName(hit_actor) == PROC_E_TH_BALL || fopAcM_GetName(hit_actor) == PROC_B_TN) && (mType == TYPE_DUMMY || mType == TYPE_LV9)) {
            if (mAction == ACTION_WAIT) {
                mCyl.OffTgIronBallRebound();
                mAction = ACTION_HALF_BREAK;
                field_0x5c8 = fopAcM_searchPlayerAngleY(this);

                csXyz eff_rot(0, field_0x5c8 + 0x8000, 0);
                field_0x5ca = 380.0f + nREG_F(0);
                field_0x5cc = 11280.0f + nREG_F(4);
                dComIfGp_particle_set(0x8772, &current.pos, &tevStr, &eff_rot, NULL);
                dComIfGp_particle_set(0x8773, &current.pos, &tevStr, &eff_rot, NULL);
                dComIfGp_particle_set(0x8774, &current.pos, &tevStr, &eff_rot, NULL);
                dComIfGp_particle_set(0x8775, &current.pos, &tevStr, &eff_rot, NULL);

                mBreakTimer = 10;
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_ARMOR_HIT, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                
                u32 bu_params = (mSwbit << 0x18) | 0xFF0000 | 0x2FFF;
                if (mCanCreateBu && mType == TYPE_DUMMY) {
                    fopAcM_create(PROC_E_BU, bu_params, &current.pos, fopAcM_GetRoomNo(this), &shape_angle, NULL, -1);
                }
            } else if (mAction == ACTION_HALF_BREAK) {
                mCyl.OffTgSetBit();
                mAction = ACTION_BREAK;
                field_0x5c8 = fopAcM_searchPlayerAngleY(this);

                csXyz eff_rot(0, field_0x5c8 + 0x8000, 0);
                dComIfGp_particle_set(0x8776, &current.pos, &tevStr, &eff_rot, NULL);
                dComIfGp_particle_set(0x8777, &current.pos, &tevStr, &eff_rot, NULL);
                dComIfGp_particle_set(0x8778, &current.pos, &tevStr, &eff_rot, NULL);
                dComIfGp_particle_set(0x8779, &current.pos, &tevStr, &eff_rot, NULL);
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_ARMOR_BREAK, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);

                //! @bug this switch may be set before E_BU actor creation finishes which causes E_BU to cancel creation
                if (mSwbit != 0xFF && !dComIfGs_isSwitch(mSwbit, fopAcM_GetRoomNo(this))) {
                    dComIfGs_onSwitch(mSwbit, fopAcM_GetRoomNo(this));
                }

                mBreakTimer = 1;
            }
        } else if (mAction == ACTION_WAIT || mAction == ACTION_VIB) {
            mAction = ACTION_VIB;
            field_0x5c8 = fopAcM_searchPlayerAngleY(this);
            field_0x5ca = 380.0f + nREG_F(0);
            field_0x5cc = 11280.0f + nREG_F(4);

            Z2GetAudioMgr()->seStart(Z2SE_OBJ_ARMOR_SWING, &current.pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    }
}

/* 8070992C-8070994C 000BAC 0020+00 2/2 0/0 0/0 .text            WaitAction__8daE_MD_cFv */
void daE_MD_c::WaitAction() {
    CheckHit();
}

/* 8070994C-80709A04 000BCC 00B8+00 1/1 0/0 0/0 .text            HalfBreakAction__8daE_MD_cFv */
void daE_MD_c::HalfBreakAction() {
    CheckHit();

    switch (mHalfBreakMode) {
    case 0:
        mBreakTimer--;
        VibAction();

        if (mBreakTimer < 0) {
            SetAnm(mpModelMorf, 4, 0, 5.0f, 1.0f);
            SetAnm(mpYariModelMorf, 6, 0, 5.0f, 1.0f);
            mHalfBreakMode = 1;
        }
        break;
    case 1:
        mpModelMorf->isStop();
        break;
    }
}

/* 80709A04-80709ABC 000C84 00B8+00 3/3 0/0 0/0 .text            VibAction__8daE_MD_cFv */
bool daE_MD_c::VibAction() {
    shape_angle.x = field_0x5ca * cM_ssin(field_0x5ce);
    cLib_addCalcAngleS(&field_0x5cc, 0x10, 3.0f + nREG_F(3), 0x100, 0);
    field_0x5ce += field_0x5cc;

    if (cLib_chaseAngleS(&field_0x5ca, 0, 0x10)) {
        return 1;
    }

    return 0;
}

/* 80709ABC-80709BB4 000D3C 00F8+00 1/1 0/0 0/0 .text            DummyAction__8daE_MD_cFv */
void daE_MD_c::DummyAction() {
    switch (mAction) {
    case ACTION_WAIT:
        WaitAction();
        setCcCylinder(350.0f);
        break;
    case ACTION_HALF_BREAK:
        HalfBreakAction();
        setCcCylinder(100.0f);
        break;
    case ACTION_BREAK:
        mBreakTimer--;
        if (mBreakTimer < 0) {
            if (mType == TYPE_LV9) {
                fopAcM_delete(this);
            } else {
                fopAcM_delete(this);
            }
        }
        break;
    case ACTION_UNK_3:
        setCcCylinder(350.0f);
        break;
    case ACTION_VIB:
        CheckHit();
        if (VibAction()) {
            mAction = ACTION_WAIT;
        }

        setCcCylinder(350.0f);
        break;
    }
}

/* 80709BB4-80709C3C 000E34 0088+00 1/1 0/0 0/0 .text            RealAction__8daE_MD_cFv */
void daE_MD_c::RealAction() {
    switch (mAction) {
    case ACTION_WAIT:
        WaitAction();
        setCcCylinder(350.0f);
        break;
    case ACTION_VIB:
        CheckHit();
        if (VibAction()) {
            mAction = ACTION_WAIT;
        }

        setCcCylinder(350.0f);
        break;
    }
}

/* 80709C3C-80709CFC 000EBC 00C0+00 1/1 0/0 0/0 .text            Action__8daE_MD_cFv */
void daE_MD_c::Action() {
    switch (mType) {
    case TYPE_DUMMY:
    case TYPE_LV9:
        DummyAction();
        mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        mpYariModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        break;
    case TYPE_REAL:
        RealAction();
        mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        setCcCylinder(350.0f);
        break;
    }
}

/* 80709CFC-80709D58 000F7C 005C+00 1/1 0/0 0/0 .text            Execute__8daE_MD_cFv */
int daE_MD_c::Execute() {
    mInvulnerabilityTimer--;
    if (mInvulnerabilityTimer <= 0) {
        mInvulnerabilityTimer = 0;
    }

    Action();
    setBaseMtx();
    return 1;
}

/* 80709D58-80709DA8 000FD8 0050+00 1/1 0/0 0/0 .text            Delete__8daE_MD_cFv */
int daE_MD_c::Delete() {
    dComIfG_resDelete(&mPhase, "E_MD");
    if (heap != NULL) {
        mpModelMorf->stopZelAnime();
    }

    return 1;
}

/* 80709DA8-80709E6C 001028 00C4+00 1/1 0/0 0/0 .text            setBaseMtx__8daE_MD_cFv */
void daE_MD_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(field_0x5c8);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::YrotM(-field_0x5c8);
    mpModelMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf->modelCalc();

    if (mType != TYPE_REAL) {
        mpYariModelMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
        mpYariModelMorf->modelCalc();
    } else {
        mpTbModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

int daE_MD_c::Draw() {
    J3DShape* mesh_shape = mpModelMorf->getModel()->getModelData()->getMaterialNodePointer(1)->getShape();
    if (mesh_shape != NULL) {
        if (mAction == ACTION_HALF_BREAK || mAction == ACTION_BREAK) {
            mesh_shape->hide();
        } else {
            mesh_shape->show();
        }
    }

    J3DModel* model = mpModelMorf->getModel();
    g_env_light.settingTevStruct(8, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpModelMorf->entryDL();

    J3DModel* yari_model = NULL;
    if (mType != TYPE_REAL) {
        yari_model = mpYariModelMorf->getModel();
        g_env_light.setLightTevColorType_MAJI(yari_model, &tevStr);
        mpYariModelMorf->entryDL();
    } else {
        g_env_light.setLightTevColorType_MAJI(mpTbModel, &tevStr);
        mDoExt_modelUpdateDL(mpTbModel);
    }

    cXyz sp8;
    sp8.set(current.pos.x, 100.0f + current.pos.y + yREG_F(0), current.pos.z);
    mShadowId = dComIfGd_setShadow(mShadowId, 1, model, &sp8, 1000.0f + BREG_F(19), BREG_F(18), current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());

    if (yari_model != NULL) {
        dComIfGd_addRealShadow(mShadowId, yari_model);
    } else {
        dComIfGd_addRealShadow(mShadowId, mpTbModel);
    }

    return 1;
}

/* 80709E6C-8070A024 0010EC 01B8+00 1/0 0/0 0/0 .text            daE_MD_Draw__FP8daE_MD_c */
static int daE_MD_Draw(daE_MD_c* i_this) {
    return i_this->Draw();
}

/* 8070A024-8070A044 0012A4 0020+00 2/1 0/0 0/0 .text            daE_MD_Execute__FP8daE_MD_c */
static int daE_MD_Execute(daE_MD_c* i_this) {
    return i_this->Execute();
}

/* 8070A044-8070A3CC 0012C4 0388+00 1/1 0/0 0/0 .text            create__8daE_MD_cFv */
int daE_MD_c::create() {
    fopAcM_SetupActor(this, daE_MD_c);

    int phase_state = dComIfG_resLoad(&mPhase, "E_MD");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("E_MD PARAM %x\n", fopAcM_GetParam(this));
        if (cDmr_SkipInfo != 0 && current.pos.z > -1500.0f) {
            return cPhs_ERROR_e;
        }

        mSwbit = (fopAcM_GetParam(this) & 0xFF00) >> 8;

        u8 type = fopAcM_GetParam(this) & 0xFF;
        if (type == 1) {
            mType = TYPE_DUMMY;
            mCanCreateBu = TRUE;
        } else if (type == 0) {
            mType = TYPE_REAL;
        } else if (type == 2) {
            mType = TYPE_LV9;
        } else {
            mType = TYPE_DUMMY;
        }

        if (mSwbit != 0xFF && dComIfGs_isSwitch(mSwbit, fopAcM_GetRoomNo(this))) {
            return cPhs_ERROR_e;
        }
        if (dComIfGs_isStageMiddleBoss() && (-950.0f == current.pos.z || 560.0f == current.pos.z)) {
            return cPhs_ERROR_e;
        }
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x2490)) {
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
        if (mType != TYPE_REAL) {
            fopAcM_SetMtx(this, mpYariModelMorf->getModel()->getBaseTRMtx());
        } else {
            fopAcM_SetMtx(this, mpTbModel->getBaseTRMtx());
        }

        mAcchCir.SetWall(100.0f, 10.0f);
        fopAcM_setCullSizeBox(this, -1500.0f, 0.0f, -1500.0f, 1000.0f, 1500.0f, 1500.0f);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
        
        cXyz sp1C(current.pos.x, 100.0f + current.pos.y, current.pos.z);
        if (fopAcM_gc_c::gndCheck(&sp1C)) {
            field_0x5bc = fopAcM_gc_c::getGroundY();
        }

        cXyz sp10(current.pos.x, 200.0f + current.pos.y, current.pos.z);
        mSound.init(&current.pos, &sp10, 3, 1);
        mAtInfo.mpSound = &mSound;

        initCcCylinder();
        daE_MD_Execute(this);
    }

    return phase_state;
}

/* 8070A4CC-8070A4D4 00174C 0008+00 1/0 0/0 0/0 .text            daE_MD_IsDelete__FP8daE_MD_c */
static int daE_MD_IsDelete(daE_MD_c* i_this) {
    return 1;
}

/* 8070A578-8070A598 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_MD_Method */
static actor_method_class l_daE_MD_Method = {
    (process_method_func)daE_MD_Create,
    (process_method_func)daE_MD_Delete,
    (process_method_func)daE_MD_Execute,
    (process_method_func)daE_MD_IsDelete,
    (process_method_func)daE_MD_Draw,
};

/* 8070A598-8070A5C8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_MD */
extern actor_process_profile_definition g_profile_E_MD = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_MD,              // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daE_MD_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  132,                    // mPriority
  &l_daE_MD_Method,       // sub_method
  0x00044100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
