/**
 * d_a_obj_cho.cpp
 * Object - Golden Butterfly
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_cho.h"
#include "SSystem/SComponent/c_math.h"
#include "m_Do/m_Do_lib.h"
#include "d/d_com_inf_game.h"
#include "d/d_menu_insect.h"
#include "d/d_procname.h"

/* 80BCC750-80BCC754 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool hioInit;

/* 80BCC760-80BCC770 000018 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static daObj_ChoHIO_c l_HIO;

/* 80BCA30C-80BCA334 0000EC 0028+00 1/1 0/0 0/0 .text            __ct__14daObj_ChoHIO_cFv */
daObj_ChoHIO_c::daObj_ChoHIO_c() {
    field_0x4 = -1;
    mScaleMale = 0.8f;
    mScaleFemale = 0.8f;
}

/* 80BCA334-80BCA3A0 000114 006C+00 1/1 0/0 0/0 .text            InitCcSph__10daObjCHO_cFv */
void daObjCHO_c::InitCcSph() {
    mCcStts.Init(1, 0, this);
    const static dCcD_SrcSph ccSphSrc = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0x14002, 0x11}, 0x0}}, // mObj
            {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };
    mCcSph.Set(ccSphSrc);
    mCcSph.SetStts(&mCcStts);
    mCcSph.SetC(current.pos);
    mCcSph.OnTgNoHitMark();
}

/* 80BCA3A0-80BCA3F8 000180 0058+00 1/1 0/0 0/0 .text            SetCcSph__10daObjCHO_cFv */
void daObjCHO_c::SetCcSph() {
    mCcSph.SetC(current.pos);
    mCcSph.SetR(20.0f);
    dComIfG_Ccsp()->Set(&mCcSph);
}

/* 80BCA3F8-80BCA418 0001D8 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return static_cast<daObjCHO_c*>(i_this)->CreateHeap();
}

/* 80BCA418-80BCA700 0001F8 02E8+00 1/1 0/0 0/0 .text            CreateHeap__10daObjCHO_cFv */
int daObjCHO_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes("I_Cho", 10);
    mpMorf = new mDoExt_McaMorfSO(model_data, NULL, NULL,
                                  (J3DAnmTransform*)dComIfG_getObjectRes("I_Cho", 6),
                                  2, 1.0f, 0, -1, &mCreatureSound, 0, 0x11000284);
    if (mpMorf == NULL || mpMorf->getModel() == NULL) {
        return 0;
    }
    J3DModel* model = mpMorf->getModel();

    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL) {
        return 0;
    }
    if (mSex == SEX_FEMALE) {
        J3DAnmTevRegKey* tev_anm = (J3DAnmTevRegKey*)dComIfG_getObjectRes("I_Cho", 13);
        if (!mpBrkAnm->init(model->getModelData(), tev_anm, 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    } else {
        J3DAnmTevRegKey* tev_anm = (J3DAnmTevRegKey*)dComIfG_getObjectRes("I_Cho", 14);
        if (!mpBrkAnm->init(model->getModelData(), tev_anm, 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }

    mpBtkAnm = new mDoExt_btkAnm();
    if (mpBtkAnm == NULL) {
        return 0;
    }
    if (mSex == SEX_FEMALE) {
        J3DAnmTextureSRTKey* tex_anm = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("I_Cho", 17);
        if (!mpBtkAnm->init(model->getModelData(), tex_anm, 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    } else {
        J3DAnmTextureSRTKey* tex_anm = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("I_Cho", 18);
        if (!mpBtkAnm->init(model->getModelData(), tex_anm, 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }

    return 1;
}

/* 80BCA748-80BCA768 000528 0020+00 1/0 0/0 0/0 .text            daObjCHO_Create__FP10fopAc_ac_c */
static cPhs__Step daObjCHO_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjCHO_c*>(i_this)->create();
}

/* 80BCA768-80BCA78C 000548 0024+00 1/0 0/0 0/0 .text            daObjCHO_Delete__FP10daObjCHO_c */
static int daObjCHO_Delete(daObjCHO_c* i_this) {
    i_this->Delete();
    return 1;
}

/* 80BCA78C-80BCA88C 00056C 0100+00 1/1 0/0 0/0 .text            SpeedSet__10daObjCHO_cFv */
void daObjCHO_c::SpeedSet() {
    speed.y += gravity;
    current.pos.y += speed.y;
    cXyz vec1(0.0f, 0.0f, speedF);
    cXyz vec2(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::YrotS(current.angle.y);
    mDoMtx_stack_c::multVec(&vec1, &vec2);
    current.pos.x += vec2.x;
    current.pos.z += vec2.z;
    cLib_addCalc2(&speedF, mTargetSpeedXZ, 0.4f, 10.0f);
    cLib_addCalc2(&speed.y, mTargetSpeedY, 0.02f, 10.0f);
    cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 9, 0x1000);
    shape_angle.y = current.angle.y;
}

/* 80BCA88C-80BCA924 00066C 0098+00 1/1 0/0 0/0 .text            WallCheck__10daObjCHO_cFv */
void daObjCHO_c::WallCheck() {
    dBgS_LinChk lin_chk;
    lin_chk.SetObj();
    lin_chk.Set(&old.pos, &current.pos, NULL);
    if (dComIfG_Bgsp().LineCross(&lin_chk)) {
        current.pos = lin_chk.GetCross();
        mTargetAngleY += 0x100;
    }
}

/* 80BCA924-80BCAB50 000704 022C+00 1/1 0/0 0/0 .text            SearchLink__10daObjCHO_cFv */
void daObjCHO_c::SearchLink() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (current.pos.absXZ(player->current.pos) < 200.0f
        && current.pos.y - player->current.pos.y < 100.0f
        && player->speedF == 0.0f
        && !player->checkCutCharge()
        && player->checkItemSwordEquip())
    {
        mAction = ACT_WAIT;
        mMode = 0;
        cXyz vec(30.0f, 70.0f, 0.0f);
        MTXCopy(daPy_getLinkPlayerActorClass()->getModelJointMtx(9), *calc_mtx);
        MtxPosition(&vec, &mTargetPos);
    }
}

/* 80BCAB50-80BCAEDC 000930 038C+00 2/2 0/0 0/0 .text            WaitAction__10daObjCHO_cFv */
void daObjCHO_c::WaitAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz vec1, target;
    vec1.set(30.0f, 70.0f, 0.0f);
    MTXCopy(daPy_getLinkPlayerActorClass()->getModelJointMtx(9), *calc_mtx);
    MtxPosition(&vec1, &target);

    switch (mMode) {
    case 0:
        if (cLib_addCalcPos(&current.pos, target, 0.05f, 10.0f, 0.0f) < 10.0f) {
            mMode++;
            mTimers[0] = 200;
            J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes("I_Cho", 7);
            mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
            home.pos = current.pos;
        }
        mTargetAngleY = cLib_targetAngleY(&current.pos, &target);
        cLib_addCalcAngleS2(&current.angle.y, mTargetAngleY, 0xc, 0x1000);
        shape_angle.y = current.angle.y;
        break;
    
    case 1:
        cLib_chasePos(&current.pos, target, 3.0f);
        if (mTimers[0] == 0) {
            mAction = ACT_MOVE;
            mMode = 0;
            speedF = 0.0f;
            speed.y = 0.0f;
            mTimers[2] = 50;
            J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes("I_Cho", 6);
            mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
        }
    }

    if (!player->checkItemSwordEquip() || target.abs(mTargetPos) > 3.0f) {
        mAction = ACT_MOVE;
        mMode = 0;
        speedF = 0.0f;
        speed.y = 0.0f;
        mTimers[2] = 50;
        J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes("I_Cho", 6);
        mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
    }

    mTargetPos = target;
}

/* 80BCAEDC-80BCB210 000CBC 0334+00 2/2 0/0 0/0 .text            MoveAction__10daObjCHO_cFv */
void daObjCHO_c::MoveAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    SpeedSet();
    
    if (mpMorf->getFrame() > 3.5f) {
        current.pos.y += 2.0f;
    } else {
        current.pos.y -= 2.0f;
    }

    cXyz* flame_pos = player->getKandelaarFlamePos();
    if (flame_pos != NULL) {
        mTargetAngleY = cLib_targetAngleY(&current.pos, flame_pos);
    }

    if (mTimers[0] == 0) {
        cXyz vec = home.pos - current.pos;
        vec.x += cM_rndFX(100.0f);
        vec.z += cM_rndFX(100.0f);
        mTargetAngleY = cM_atan2s(vec.x, vec.z);
        mTimers[0] = cM_rndF(10.0f) + 10.0f;
        mTargetSpeedXZ = cM_rndF(3.0f) + 3.0f;
    }

    if (mTimers[1] == 0) {
        mTargetSpeedY = cM_rndFX(3.0f);
        mTimers[1] = cM_rndF(10.0f) + 10.0f;
    }

    if (current.pos.y < mGroundPos + 50.0f) {
        mTargetSpeedY = cM_rndF(3.0f);
    } else if (current.pos.y > mGroundPos + 150.0f) {
        mTargetSpeedY = -cM_rndF(3.0f);
    }

    if (!field_0x9ac) {
        cLib_addCalcAngleS2(&shape_angle.x, mTargetSpeedY / 2 * 0x1000, 0x10, 0x1000);
    }

    WallCheck();
    cLib_addCalc2(&mPlaySpeed, speed.abs() / 4 + 0.7f, 0.5f, 10.0f);
    mpMorf->setPlaySpeed(mPlaySpeed);
    
    if (mTimers[2] == 0) {
        SearchLink();
    }
}

/* 80BCB210-80BCB268 000FF0 0058+00 1/1 0/0 0/0 .text            Action__10daObjCHO_cFv */
void daObjCHO_c::Action() {
    switch (mAction) {
    case ACT_WAIT:
        WaitAction();
        break;
    case ACT_MOVE:
        MoveAction();
        break;
    }
    Insect_GetDemoMain();
}

/* 80BCB268-80BCB2AC 001048 0044+00 1/1 0/0 0/0 .text            ShopAction__10daObjCHO_cFv */
void daObjCHO_c::ShopAction() {
    switch (mAction) {
    case ACT_WAIT:
        WaitAction();
        break;
    case ACT_MOVE:
        MoveAction();
        break;
    }
}

/* 80BCB2AC-80BCB310 00108C 0064+00 1/1 0/0 0/0 .text            checkGroundPos__10daObjCHO_cFv */
void daObjCHO_c::checkGroundPos() {
    cXyz pos = current.pos;
    mGndChk.SetPos(&pos);
    mGroundPos = dComIfG_Bgsp().GroundCross(&mGndChk);
}

/* 80BCB310-80BCB320 0010F0 0010+00 1/0 0/0 0/0 .text            Insect_Release__10daObjCHO_cFv */
void daObjCHO_c::Insect_Release() {
    field_0x56c = 1;
    mAction = ACT_MOVE;
}

/* 80BCC630-80BCC634 0000B8 0002+02 1/2 0/0 0/0 .rodata          l_cho_itemno */
static u8 const l_cho_itemno[2] = {fpcNm_ITEM_M_BUTTERFLY, fpcNm_ITEM_F_BUTTERFLY};

// Some unused function went here.
// This fake function is here in its place to make the literals match
static f32 fake(f32 param_0, s32 param_1) {
    return param_0 * -2.0f * 4000.0f * param_1;
}

/* 80BCB320-80BCB49C 001100 017C+00 1/1 0/0 0/0 .text            Z_BufferChk__10daObjCHO_cFv */
void daObjCHO_c::Z_BufferChk() {
    cXyz vec2, vec1;
    vec1 = current.pos;
    vec1.y += 20.0f;
    mDoLib_project(&vec1, &vec2);
    f32 trim_height;
    camera_class* camera = dComIfGp_getCamera(0);
    if (camera != NULL) {
        trim_height = camera->mCamera.TrimHeight();
    } else {
        trim_height = 0.0f;
    }
    if (vec2.x > 0.0f && vec2.x < 608.0f && vec2.y > trim_height && vec2.y < 448.0f - trim_height) {
        dComIfGd_peekZ(vec2.x, vec2.y, &mBufferZ);
    }

    f32 near = dComIfGd_getView()->near;
    f32 far = dComIfGd_getView()->far;
    mDoLib_pos2camera(&vec1, &vec2);
    vec2.z += 50.0f;
    if (vec2.z > 0.0f) {
        vec2.z = 0.0f;
    }
    mScreenZ = ((near + far * near / vec2.z) / (far - near) + 1.0f) * 0xffffff;
}

/* 80BCB49C-80BCB5C0 00127C 0124+00 1/1 0/0 0/0 .text            ParticleSet__10daObjCHO_cFv */
void daObjCHO_c::ParticleSet() {
    if (mScreenZ > mBufferZ) {
        cLib_addCalc2(&mParticleScale, 0.0f, 1.0f, 1.0f);
    } else {
        cLib_addCalc2(&mParticleScale, 1.0f, 1.0f, 1.0f);
    }
    mParticleKey1 = dComIfGp_particle_set(mParticleKey1, 0xa1b, &current.pos, &tevStr,
                                          &shape_angle, NULL, 0xff, NULL, -1, NULL, NULL, NULL);
    f32 scale = mParticleScale;
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey1);
    if (emitter != NULL) {
        emitter->setGlobalParticleScale(scale, scale);
    }
}

/* 80BCB5C0-80BCB834 0013A0 0274+00 1/1 0/0 0/0 .text            BoomChk__10daObjCHO_cFv */
void daObjCHO_c::BoomChk() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (mBoomerangHit) {
        cXyz vec = player->current.pos;
        vec.y += 100.0f;
        if (mBoomerangMove.posMove(&current.pos, &shape_angle.y, NULL, 0x1c00)) {
            mBoomerangMove.bgCheckAfterOffset(&current.pos);
            current.pos.y += 0.5f;
        } else {
            dBgS_LinChk lin_chk;
            lin_chk.Set(&vec, &current.pos, NULL);
            if (dComIfG_Bgsp().LineCross(&lin_chk)) {
                cM3dGPla plane;
                dComIfG_Bgsp().GetTriPla(lin_chk, &plane);
                old.pos = lin_chk.GetCross();
                current.pos = old.pos;
                mAction = ACT_MOVE;
                mMode = 0;
                speedF = 5.0f;
                mTargetSpeedXZ = 5.0f;
                mBoomerangHit = false;
                mTimers[2] = 100;
                J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes("I_Cho", 6);
                mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
                home.pos = current.pos;
            } else {
                home.pos = current.pos;
                mAction = ACT_MOVE;
                mMode = 0;
                mBoomerangHit = false;
                speedF = 5.0f;
                mTargetSpeedXZ = 5.0f;
                mTimers[2] = 100;
                J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes("I_Cho", 6);
                mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
                current.pos.y = old.pos.y = player->current.pos.y + 100.0f;
            }
        }
    }
}

/* 80BCB87C-80BCBB40 00165C 02C4+00 1/1 0/0 0/0 .text            Execute__10daObjCHO_cFv */
int daObjCHO_c::Execute() {
    if (ChkGetDemo()) {
        mScreenZ = mBufferZ + 10000.0f;
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
        Insect_GetDemoMain();
        ParticleSet();
        return 1;
    }

    for (int i = 0; i < 3; i++) {
        mTimers[i]--;
        if (mTimers[i] <= 0) {
            mTimers[i] = 0;
        }
    }

    checkGroundPos();
    attention_info.position = current.pos;
    eyePos = current.pos;
    eyePos.y += 10.0f;
    
    switch (mLocation) {
    case LOC_OUTSIDE:
        if (!fopAcM_checkHookCarryNow(this)) {
            Action();
        } else {
            home.pos = current.pos;
        }
        mParticleKey2 = dComIfGp_particle_set(mParticleKey2, 0xa1c, &current.pos, &tevStr,
                                                &shape_angle, NULL, 0xff, NULL, -1,
                                                NULL, NULL, NULL);
        SetCcSph();
        ObjHit();
        BoomChk();
        eyePos = current.pos;
        eyePos.y += 10.0f;
        attention_info.position = eyePos;
        attention_info.position.y += 10.0f;
        ParticleSet();
        break;
    case LOC_AGITHA:
        ShopAction();
        break;
    }
    
    mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
    mAcch.CrrPos(dComIfG_Bgsp());
    mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mpBtkAnm->play();
    mpBrkAnm->play();
    setBaseMtx();
    return 1;
}

/* 80BCBB40-80BCBCA8 001920 0168+00 1/1 0/0 0/0 .text            ObjHit__10daObjCHO_cFv */
void daObjCHO_c::ObjHit() {
    if (mCcSph.ChkTgHit()) {
        cCcD_Obj* hit_obj = mCcSph.GetTgHitObj();
        if (hit_obj->ChkAtType(AT_TYPE_BOOMERANG)) {
            if (!mBoomerangHit) {
                mBoomerangHit = true;
                mCcSph.GetTgHitGObj();
                mBoomerangMove.initOffset(&current.pos);
            }
        } else if (!hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD)
                    && hit_obj->ChkAtType(AT_TYPE_HOOKSHOT)) {
            cXyz offset(0.0f, 0.0f, 0.0f);
            daPy_getPlayerActorClass()->setHookshotCarryOffset(fopAcM_GetID(this), &offset);
            mAction = ACT_MOVE;
            mMode = 2;
            mBoomerangHit = false;
            J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes("I_Cho", 6);
            mpMorf->setAnm(anm, 2, 5.0f, 1.0f, 0.0f, -1.0f);
            speedF = 8.0f;
            mTargetSpeedXZ = cM_rndF(5.0f) + 8.0f;
        }
        mCcSph.ClrTgHit();
    }
}

/* 80BCBCA8-80BCBD10 001A88 0068+00 1/1 0/0 0/0 .text            Delete__10daObjCHO_cFv */
int daObjCHO_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "I_Cho");
    if (mHIOInit) {
        hioInit = false;
    }
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
    return 1;
}

/* 80BCBD10-80BCBD70 001AF0 0060+00 1/1 0/0 0/0 .text            setBaseMtx__10daObjCHO_cFv */
void daObjCHO_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
}

int daObjCHO_c::Draw() {
    if (mDraw) {
        Z_BufferChk();
        J3DModel* model = mpMorf->getModel();
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);
        mpBtkAnm->entry(model->getModelData());
        mpBrkAnm->entry(model->getModelData());
        mpMorf->entryDL();
        if (mLocation == LOC_OUTSIDE) {
            dComIfGd_setSimpleShadow(&current.pos, mAcch.GetGroundH(), 15.0f, mAcch.m_gnd, 0, -0.6f,
                                     dDlst_shadowControl_c::getSimpleTex());
        }
    }
    return 1;
}

/* 80BCBD70-80BCBE50 001B50 00E0+00 1/0 0/0 0/0 .text            daObjCHO_Draw__FP10daObjCHO_c */
static int daObjCHO_Draw(daObjCHO_c* i_this) {
    return i_this->Draw();
}

/* 80BCBE50-80BCBE70 001C30 0020+00 2/1 0/0 0/0 .text            daObjCHO_Execute__FP10daObjCHO_c */
static int daObjCHO_Execute(daObjCHO_c* i_this) {
    return i_this->Execute();
}

/* 80BCC670-80BCC674 0000F8 0004+00 1/2 0/0 0/0 .rodata          l_musiya_num */
static u16 const l_musiya_num[2] = {
    0x0193, /* dSv_event_flag_c::F_0403 - Misc. - Butterfly (M) */
    0x0194, /* dSv_event_flag_c::F_0404 - Misc. - Butterfly (F) */
};

/* 80BCBE70-80BCC01C 001C50 01AC+00 1/1 0/0 0/0 .text            CreateChk__10daObjCHO_cFv */
bool daObjCHO_c::CreateChk() {
    u8 param = (fopAcM_GetParam(this) >> 8) & 0xf;
    if (param == 0xf) {
        param = 0;
    }

    if (mLocation != LOC_UNK_2) {
        if (param != 0) {
            if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[SEX_MALE]])
                || !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[SEX_FEMALE]]))
            {
                return false;
            }
        } else {
            if (!strcmp("R_SP160", dComIfGp_getStartStageName())
                && dComIfGp_getStartStageRoomNo() == 3)
            {
                if (dMenu_Insect_c::isCatchNotGiveInsect(l_cho_itemno[mSex])) {
                    return false;
                }
                if ((mSex == SEX_MALE && !dComIfGs_isEventBit(
                        dSv_event_flag_c::saveBitLabels[l_musiya_num[mSex]]))
                    || (mSex == SEX_FEMALE && !dComIfGs_isEventBit(
                        dSv_event_flag_c::saveBitLabels[l_musiya_num[mSex]])))
                {
                    return false;
                }
            }
        }
    }

    return true;
}

/* 80BCC01C-80BCC3C8 001DFC 03AC+00 1/1 0/0 0/0 .text            create__10daObjCHO_cFv */
cPhs__Step daObjCHO_c::create() {
    fopAcM_SetupActor(this, daObjCHO_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, "I_Cho");

    if (step == cPhs_COMPLEATE_e) {
        mLocation = fopAcM_GetParam(this) & 0xf;
        if (mLocation == LOC_UNK_2) {
            field_0x56c = 0;
            shape_angle.x -= 0x2000;
            fopAcM_OnStatus(this, 0x4000);
            mTargetSpeedY = -2.0f;
            mTimers[1] = 20;
            mTimers[2] = 100;
            scale.set(0.0f, 0.0f, 0.0f);
        } else {
            mDraw = true;
            mAction = ACT_MOVE;
        }
        attention_info.distances[fopAc_attn_CARRY_e] = 0x5D;

        mSex = (fopAcM_GetParam(this) >> 4) & 1;
        setItemNo(l_cho_itemno[mSex]);
        setSaveBitNo(l_musiya_num[mSex]);
        if (mSex == SEX_FEMALE) {
            scale.set(l_HIO.mScaleFemale, l_HIO.mScaleFemale, l_HIO.mScaleFemale);
        } else if (mSex == SEX_MALE) {
            scale.set(l_HIO.mScaleMale, l_HIO.mScaleMale, l_HIO.mScaleMale);
        }

        if (!CreateChk()) {
            return cPhs_ERROR_e;
        }

        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xaa0)) {
            return cPhs_ERROR_e;
        }

        if (!hioInit) {
            hioInit = true;
            mHIOInit = true;
            l_HIO.field_0x4 = -1;
        }

        mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
        gravity = 0.0f;
        if (mLocation == LOC_OUTSIDE) {
            InitCcSph();
        }
        if (mLocation == LOC_UNK_2 && !strcmp("R_SP160", dComIfGp_getStartStageName())
            && dComIfGp_getStartStageRoomNo() == 3)
        {
            mLocation |= LOC_UNK_3;
            mAction = ACT_WAIT;
        }
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -50.0f, -50.0f, -50.0f);
        fopAcM_SetMax(this, 50.0f, 50.0f, 50.0f);
        mCreatureSound.init(&current.pos, &eyePos, 3, 1);

        daObjCHO_Execute(this);
    }

    return step;
}

/* 80BCC4C8-80BCC4D0 0022A8 0008+00 1/0 0/0 0/0 .text            daObjCHO_IsDelete__FP10daObjCHO_c
 */
static int daObjCHO_IsDelete(daObjCHO_c* i_this) {
    return 1;
}

/* 80BCC688-80BCC6A8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCHO_Method */
static actor_method_class l_daObjCHO_Method = {
    (process_method_func)daObjCHO_Create,
    (process_method_func)daObjCHO_Delete,
    (process_method_func)daObjCHO_Execute,
    (process_method_func)daObjCHO_IsDelete,
    (process_method_func)daObjCHO_Draw,
};

/* 80BCC6A8-80BCC6D8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Cho */
extern actor_process_profile_definition g_profile_Obj_Cho = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Obj_Cho,
    &g_fpcLf_Method.base,
    sizeof(daObjCHO_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x1DE,
    &l_daObjCHO_Method,
    0xC0120,
    fopAc_ENV_e,
    fopAc_CULLBOX_CUSTOM_e,
};
