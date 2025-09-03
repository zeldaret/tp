/**
* @file d_a_obj_glowSphere.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_glowSphere.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"

/* 80BF934C-80BF938C 0000EC 0040+00 1/1 0/0 0/0 .text            __ct__14daGlwSph_HIO_cFv */
daGlwSph_HIO_c::daGlwSph_HIO_c() {
    speed = 50.0f;
    speed2 = 4.0f;
}

/* 80BFABF4-80BFAC00 000054 000C+00 2/3 0/0 0/0 .bss             l_HIO */
static daGlwSph_HIO_c l_HIO;

/* 80BFA9F0-80BFAA08 000020 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static cull_box l_cull_box = {
    {-30.0f, -10.0f, -30.0f},
    {30.0f, 60.0f, 30.0f}
};

/* 80BFA978-80BFA9A8 000008 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__10daGlwSph_c */
const dCcD_SrcGObjInf daGlwSph_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0x10000, 0x11}, {0x19}}},
    {dCcD_SE_SWORD, 0, 0, 0, 0x0},
    {dCcD_SE_STONE, 0, 0, 0, 0x2},
    {0},
};

/* 80BFAA08-80BFAA48 000038 0040+00 2/2 0/0 0/0 .data            mCcDSph__10daGlwSph_c */
dCcD_SrcSph daGlwSph_c::mCcDSph = {
    daGlwSph_c::mCcDObjInfo,
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f}  // mSph
    }  // mSphAttr
};

/* 80BFAA48-80BFAA4C 000078 0004+00 1/2 0/0 0/0 .data            l_prmColor */
static GXColor l_prmColor = {0xFF, 0xFF, 0xFF, 0xFF};

/* 80BFAA4C-80BFAA5C 00007C 0010+00 1/3 0/0 0/0 .data            l_envColor */
static GXColor l_envColor[] = {
    /* Gray   */ {0x3C, 0x1E, 0x3C, 0xFF},
    /* Red    */ {0xFF, 0x00, 0x32, 0xFF},
    /* Yellow */ {0xC8, 0x78, 0x00, 0xFF},
    /* Blue   */ {0x00, 0x32, 0xFF, 0xFF},
};

/* 80BFAC0C-80BFAFD0 00006C 03C4+00 3/4 0/0 0/0 .bss             mSphMng__10daGlwSph_c */
_GlSph_Mng_c daGlwSph_c::mSphMng;

/* 80BF9430-80BF943C 0001D0 000C+00 0/0 0/0 1/1 .text            getSphMng__10daGlwSph_cFv */
_GlSph_Mng_c& daGlwSph_c::getSphMng() {
    return mSphMng;
}

/* 80BF943C-80BF94AC 0001DC 0070+00 2/2 0/0 0/0 .text            setBaseMtx__10daGlwSph_cFv */
void daGlwSph_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80BF94AC-80BF94CC 00024C 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daGlwSph_cFP10fopAc_ac_c               */
int daGlwSph_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return ((daGlwSph_c*)i_this)->CreateHeap();
}

/* 80BF94CC-80BF95D4 00026C 0108+00 1/1 0/0 0/0 .text            CreateHeap__10daGlwSph_cFv */
int daGlwSph_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("glwSphere", 5);
    JUT_ASSERT(0xF4, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mpModel == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)dComIfG_getObjectRes("glwSphere", 8);
    int res = mBrk.init(modelData, brk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1);
    JUT_ASSERT(0x106, res == 1);

    J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("glwSphere", 11);
    res = mBtk.init(modelData, btk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1);
    JUT_ASSERT(0x10F, res == 1);

    return 1;
}

/* 80BF95D4-80BF9908 000374 0334+00 1/1 0/0 0/0 .text            create__10daGlwSph_cFv */
int daGlwSph_c::create() {
    fopAcM_SetupActor(this, daGlwSph_c);

    int phase_state = dComIfG_resLoad(&mPhase, "glwSphere");
    if (phase_state != cPhs_COMPLEATE_e) {
        return phase_state;
    }

    int sw = getSw();

    u8 arg0 = getArg0();
    if (arg0 == 0xFF) {
        arg0 = 0;
    }

    if ((fopAcM_isSwitch(this, sw) == TRUE && arg0 == 1) || (!fopAcM_isSwitch(this, sw) && arg0 == 0)) {
        return cPhs_ERROR_e;
    }

    if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x9E0)) {
        return cPhs_ERROR_e;
    }

    mColliderStts.Init(10, 0xFF, this);
    mSphCollider.Set(mCcDSph);
    mSphCollider.SetStts(&mColliderStts);

    fopAcM_setCullSizeBox(this, l_cull_box.min.x, l_cull_box.min.y, l_cull_box.min.z, l_cull_box.max.x, l_cull_box.max.y, l_cull_box.max.z);
    
    mAcchCir.SetWall(25.0f, 25.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);

    mColor = getColor();
    if (mColor == COLOR_DEFAULT_e) {
        mColor = COLOR_GRAY_e;
    }

    mMoveTimer = 0;
    mIsNoMoveHome = false;
    field_0x968 = current.pos;
    mEmitterIDs[0] = fpcM_ERROR_PROCESS_ID_e;
    mEmitterIDs[1] = fpcM_ERROR_PROCESS_ID_e;

    offGetFlag();
    saveGetFlag();

    mSphMng.entry(this);
    field_0x980 = -1;

    setBaseMtx();
    actionWaitInit();

    return phase_state;
}

/* 80BF9B1C-80BF9BC0 0008BC 00A4+00 1/1 0/0 0/0 .text            execute__10daGlwSph_cFv */
int daGlwSph_c::execute() {
    if (is_getted()) {
        saveGetFlag();
        return 1;
    }

    mBrk.play();
    mBtk.play();
    
    actionMain();

    mColliderStts.Move();
    mSphCollider.SetR(50.0f);
    mSphCollider.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mSphCollider);

    setBaseMtx();
    saveGetFlag();
    return 1;
}

/* 80BF9BC0-80BF9DF0 000960 0230+00 1/1 0/0 0/0 .text            actionMain__10daGlwSph_cFv */
void daGlwSph_c::actionMain() {
    static void (daGlwSph_c::*l_func[])() = {
        &daGlwSph_c::actionWait,
        &daGlwSph_c::actionGet,
        &daGlwSph_c::actionMove,
    };

    if (mSphCollider.ChkTgHit()) {
        OS_REPORT("");
        fopAc_ac_c* hit_actor = mSphCollider.GetTgHitAc();
        cXyz vec = current.pos - hit_actor->current.pos;
        mMoveVec = vec.normalizeZP();
        actionMoveInit();
    }

    if (mSphCollider.ChkCoHit()) {
        mSphCollider.OffCoSetBit();
        mSphCollider.ClrCoHit();
        actionGetInit();
    } else {
        effectSet();
        mLight.mPosition = current.pos;
        mLight.mColor.r = l_envColor[mColor].r;
        mLight.mColor.g = l_envColor[mColor].g;
        mLight.mColor.b = l_envColor[mColor].b;
        mLight.mPow = 400.0f;
        dKy_mock_light_every_set(&mLight);
    }

    if (mMoveTimer != 0) {
        mMoveTimer--;
        if (mMoveTimer == 0) {
            mIsNoMoveHome = false;
        }
    }

    if (!mIsNoMoveHome) {
        cLib_addCalcPos(&current.pos, home.pos, 0.5f, l_HIO.speed2, 0.5f);
    }

    (this->*l_func[mAction])();
}

/* 80BF9DF0-80BF9F30 000B90 0140+00 1/1 0/0 0/0 .text            effectSet__10daGlwSph_cFv */
void daGlwSph_c::effectSet() {
    field_0x974 = current.pos - field_0x968;

    for (int i = 0; i < 2; i++) {
        static u16 l_eff[] = {0x874F, 0x8750};
        mEmitterIDs[i] = dComIfGp_particle_setColor(mEmitterIDs[i], l_eff[i], &current.pos, &tevStr, &l_prmColor, &l_envColor[mColor], 0.0f, 0xFF, NULL, NULL, NULL, -1, NULL);

        JPABaseEmitter* emitterp = dComIfGp_particle_getEmitter(mEmitterIDs[i]);
        if (emitterp != NULL) {
            emitterp->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
            emitterp->setUserWork((u32)&field_0x974);
        }
    }

    field_0x968 = current.pos;
}

/* 80BF9F30-80BFA010 000CD0 00E0+00 1/1 0/0 0/0 .text            getSE__10daGlwSph_cFv */
void daGlwSph_c::getSE() {
    static JAISoundID sSeId[] = {
        Z2SE_OBJ_STAR_GAME_HIT_1,
        Z2SE_OBJ_STAR_GAME_HIT_2,
        Z2SE_OBJ_STAR_GAME_HIT_3,
        Z2SE_OBJ_STAR_GAME_HIT_4,
        Z2SE_OBJ_STAR_GAME_HIT_5
    };

    u16 sph_seid = _GlSph_Mng_c::getSphSe();
    cXyz pos(current.pos);
    
    OS_REPORT("---------- sph seid = %d\n", sph_seid);
    Z2GetAudioMgr()->seStart(sSeId[sph_seid], &pos, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
}

/* 80BFA010-80BFA064 000DB0 0054+00 1/1 0/0 0/0 .text            getVibe__10daGlwSph_cFv */
void daGlwSph_c::getVibe() {
    dComIfGp_getVibration().StartShock(VIBMODE_S_POWER4, 1, cXyz(0.0f, 1.0f, 0.0f));
}

/* 80BFA064-80BFA070 000E04 000C+00 2/2 0/0 0/0 .text            actionWaitInit__10daGlwSph_cFv */
void daGlwSph_c::actionWaitInit() {
    mAction = ACTION_WAIT_e;
}

/* 80BFA070-80BFA074 000E10 0004+00 1/0 0/0 0/0 .text            actionWait__10daGlwSph_cFv */
void daGlwSph_c::actionWait() {}

/* 80BFA074-80BFA130 000E14 00BC+00 1/1 0/0 0/0 .text            actionGetInit__10daGlwSph_cFv */
void daGlwSph_c::actionGetInit() {
    field_0x980 = 1;
    dComIfGp_particle_setColor(0x8751, &current.pos, &tevStr, &l_prmColor, &l_envColor[mColor], 0.0f, 0xFF);
    getSE();
    getVibe();

    _GlSph_Mng_c::incSphSe();
    mAction = ACTION_GET_e;
}

/* 80BFA130-80BFA1E0 000ED0 00B0+00 1/0 0/0 0/0 .text            actionGet__10daGlwSph_cFv */
void daGlwSph_c::actionGet() {
    if (field_0x980 > 0) {
        field_0x980--;
        if (field_0x980 == 0) {
            for (int i = 0; i < 2; i++) {
                JPABaseEmitter* emitterp = dComIfGp_particle_getEmitter(mEmitterIDs[i]);
                if (emitterp != NULL) {
                    emitterp->deleteAllParticle();
                    dComIfGp_particle_levelEmitterOnEventMove(mEmitterIDs[i]);
                }
            }

            onGetFlag();
            field_0x980 = -1;
        }
    }
}

/* 80BFA1E0-80BFA204 000F80 0024+00 1/1 0/0 0/0 .text            actionMoveInit__10daGlwSph_cFv */
void daGlwSph_c::actionMoveInit() {
    mIsNoMoveHome = true;
    mMoveSpeed = l_HIO.speed;
    mAction = ACTION_MOVE_e;
}

/* 80BFA204-80BFA2A4 000FA4 00A0+00 1/0 0/0 0/0 .text            actionMove__10daGlwSph_cFv */
void daGlwSph_c::actionMove() {
    f32 dist_to_target = cLib_addCalc(&mMoveSpeed, 0.0f, 0.5f, 10.0f, 1.0f);
    current.pos += mMoveVec * mMoveSpeed;

    if (dist_to_target == 0.0f) {
        mMoveTimer = 10;
        actionWaitInit();
    }
}

/* 80BFA2A4-80BFA3EC 001044 0148+00 1/1 0/0 0/0 .text            draw__10daGlwSph_cFv */
int daGlwSph_c::draw() {
    if (is_getted()) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    J3DModelData* modelData = mpModel->getModelData();
    mBrk.entry(modelData);
    mBtk.entry(modelData);

    J3DMaterial* materialp = modelData->getMaterialNodePointer(0);
    
    static u8 l_colorKR[4] = {0x3C, 0x50, 0x50, 0x00};
    static u8 l_colorKG[4] = {0x32, 0x00, 0x23, 0x14};
    static u8 l_colorKB[4] = {0x3C, 0x23, 0x00, 0x50};

    J3DGXColor* kcolor = materialp->getTevKColor(1);
    kcolor->r = l_colorKR[mColor];
    kcolor->g = l_colorKG[mColor];
    kcolor->b = l_colorKB[mColor];

    static u8 l_colorCR[4] = {0x96, 0xFF, 0xFF, 0x00};
    static u8 l_colorCG[4] = {0x96, 0x64, 0xFF, 0x96};
    static u8 l_colorCB[4] = {0x96, 0x64, 0x00, 0xFF};

    J3DGXColorS10* ccolor = materialp->getTevColor(1);
    ccolor->r = l_colorCR[mColor];
    ccolor->g = l_colorCG[mColor];
    ccolor->b = l_colorCB[mColor];

    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80BFA3EC-80BFA438 00118C 004C+00 1/1 0/0 0/0 .text            _delete__10daGlwSph_cFv */
int daGlwSph_c::_delete() {
    dComIfG_resDelete(&mPhase, "glwSphere");
    mSphMng.remove(this);
    return 1;
}

/* 80BFA438-80BFA458 0011D8 0020+00 1/0 0/0 0/0 .text            daGlwSph_Draw__FP10daGlwSph_c */
static int daGlwSph_Draw(daGlwSph_c* i_this) {
    return i_this->draw();
}

/* 80BFA458-80BFA478 0011F8 0020+00 1/0 0/0 0/0 .text            daGlwSph_Execute__FP10daGlwSph_c */
static int daGlwSph_Execute(daGlwSph_c* i_this) {
    return i_this->execute();
}

/* 80BFA478-80BFA498 001218 0020+00 1/0 0/0 0/0 .text            daGlwSph_Delete__FP10daGlwSph_c */
static int daGlwSph_Delete(daGlwSph_c* i_this) {
    return i_this->_delete();
}

/* 80BFA498-80BFA4B8 001238 0020+00 1/0 0/0 0/0 .text            daGlwSph_Create__FP10fopAc_ac_c */
static int daGlwSph_Create(fopAc_ac_c* i_this) {
    return ((daGlwSph_c*)i_this)->create();
}

/* 80BFA4B8-80BFA4DC 001258 0024+00 1/1 0/0 0/0 .text            _clrLstBuf__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::_clrLstBuf() {
    _GlSph_LstInfo_c* info = mListBuf;

    for (int i = 0; i < 120; i++) {
        info->Remove();
        info++;
    }
}

/* 80BFA4DC-80BFA528 00127C 004C+00 1/1 0/0 0/0 .text            entry__12_GlSph_Mng_cFP10daGlwSph_c
 */
int _GlSph_Mng_c::entry(daGlwSph_c* i_sph) {
    _GlSph_LstInfo_c* info = mListBuf;

    for (int i = 0; i < 120; i++) {
        if (!info->isSet()) {
            info->Set(i_sph);
            return 1;
        }

        info++;
    }

    return 0;
}

/* 80BFA528-80BFA55C 0012C8 0034+00 1/1 0/0 0/0 .text remove__12_GlSph_Mng_cFP10daGlwSph_c */
void _GlSph_Mng_c::remove(daGlwSph_c* i_sph) {
    _GlSph_LstInfo_c* info = mListBuf;

    for (int i = 0; i < 120; i++) {
        if (i_sph == info->getpSph()) {
            info->Remove();
            break;
        }

        info++;
    }
}

/* 80BFA55C-80BFA5C4 0012FC 0068+00 0/0 0/0 1/1 .text            _setting_main__12_GlSph_Mng_cFv */
int _GlSph_Mng_c::_setting_main() {
    _GlSph_LstInfo_c* info = mListBuf;

    for (int i = 0; i < 120; i++) {
        if (info->isSet()) {
            daGlwSph_c* psph = info->getpSph();
            if (psph != NULL) {
                psph->reset();
            }
        }

        info++;
    }

    return 1;
}

/* 80BFA5C4-80BFA60C 001364 0048+00 0/0 0/0 1/1 .text            _chkAllGet_main__12_GlSph_Mng_cFv
 */
bool _GlSph_Mng_c::_chkAllGet_main() {
    _GlSph_LstInfo_c* info = mListBuf;

    for (int i = 0; i < 120; i++) {
        if (info->isSet()) {
            daGlwSph_c* psph = info->getpSph();
            if (psph != NULL && !psph->is_getted()) {
                return false;
            }
        }

        info++;
    }

    return true;
}

/* 80BFAFE8 0002+00 data_80BFAFE8 mSphSe__12_GlSph_Mng_c */
u16 _GlSph_Mng_c::mSphSe;

/* 80BFAFEA 0002+00 data_80BFAFEA mSeClrTmr__12_GlSph_Mng_c */
s16 _GlSph_Mng_c::mSeClrTmr;

/* 80BFA60C-80BFA6D8 0013AC 00CC+00 0/0 0/0 1/1 .text            SphSeProc__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::SphSeProc() {
    if (mSeClrTmr > 0) {
        mSeClrTmr--;
        OS_REPORT("-------- se timer = %d\n", mSeClrTmr);

        if (mSeClrTmr == 0) {
            OS_REPORT("------------ se clr ----------------\n");
            clrSphSe();
        }
    } else if (mSphSe != 0) {
        if (dComIfGp_checkPlayerStatus1(0, 0x10) || daPy_getPlayerActorClass()->checkPlayerFly()) {
            if (dComIfGp_checkPlayerStatus1(0, 0x2000000) || dComIfGp_checkPlayerStatus1(0, 0x10000)) {
                mSeClrTmr = 16;
            }
        } else {
            mSeClrTmr = 16;
        }
    } else {
        mSeClrTmr = 0;
    }
}

/* 80BFA6D8-80BFA6E8 001478 0010+00 1/1 0/0 0/0 .text            clrSphSe__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::clrSphSe() {
    mSphSe = 0;
}

/* 80BFA6E8-80BFA6F8 001488 0010+00 1/1 0/0 0/0 .text            getSphSe__12_GlSph_Mng_cFv */
u16 _GlSph_Mng_c::getSphSe() {
    return mSphSe;
}

/* 80BFA6F8-80BFA724 001498 002C+00 1/1 0/0 0/0 .text            incSphSe__12_GlSph_Mng_cFv */
void _GlSph_Mng_c::incSphSe() {
    mSphSe++;
    if (mSphSe > 4) {
        mSphSe = 4;
    }
}

/* 80BFAAC0-80BFAAE0 -00001 0020+00 1/0 0/0 0/0 .data            l_daGlwSph_Method */
static actor_method_class l_daGlwSph_Method = {
    (process_method_func)daGlwSph_Create,  (process_method_func)daGlwSph_Delete,
    (process_method_func)daGlwSph_Execute, (process_method_func)NULL,
    (process_method_func)daGlwSph_Draw,
};

/* 80BFAAE0-80BFAB10 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_glowSphere */
extern actor_process_profile_definition g_profile_Obj_glowSphere = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_glowSphere,     // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daGlwSph_c),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    651,                     // mPriority
    &l_daGlwSph_Method,      // sub_method
    0x00040000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

AUDIO_INSTANCES
