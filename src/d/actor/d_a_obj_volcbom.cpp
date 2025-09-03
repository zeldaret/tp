/**
 * @file d_a_obj_volcbom.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_volcbom.h"
#include "d/actor/d_a_midna.h"
#include "d/actor/d_a_player.h"
#include "d/d_bg_w.h"
#include "d/d_s_play.h"
#include "d/d_debug_viewer.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "d/d_meter2_info.h"

#ifdef DEBUG
daObjVolcBom_HIO_c::daObjVolcBom_HIO_c() {

}

void daObjVolcBom_HIO_c::genMessage(JORMContext* ctx) {

}

static daObjVolcBom_HIO_c l_HIO;
#endif

/* 80D24198-80D241E0 000078 0048+00 1/1 0/0 0/0 .text            eventCallBack__FPvi */
static int eventCallBack(void* param_1, int param_2) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (param_1 != 0) {
        player->skipPortalObjWarp();
    }
    return 1;
}

/* 80D241E0-80D24238 0000C0 0058+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjVolcBom_cFv */
void daObjVolcBom_c::initBaseMtx() {
    mModel1->setBaseScale(scale);
    mModel2->setBaseScale(scale);
    setBaseMtx();
}

/* 80D24238-80D242A8 000118 0070+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjVolcBom_cFv */
void daObjVolcBom_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mModel1->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    mModel2->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D26B5C-80D26B68 000000 000C+00 9/9 0/0 0/0 .rodata          l_midna_offset */
static Vec const l_midna_offset = {
    0.0f, 1000.0f, 0.0f,
};

/* 80D26B68-80D26B6C 00000C 0002+02 0/1 0/0 0/0 .rodata          l_disapp_eff */
static u16 const l_disapp_eff[1] = { 0x8B30 };

/* 80D26B6C-80D26B74 000010 0006+02 0/1 0/0 0/0 .rodata          l_start_eff */
static u16 const l_start_eff[3] = {
    0x8B31,
    0x8B32,
    0x8B33,
};

/* 80D26B74-80D26B7C 000018 0008+00 1/1 0/0 0/0 .rodata          l_bind_eff */
static u16 const l_bind_eff[4] = {
    0x8B47, 0x8B48, 0x8B49, 0x8B4A,
};

/* 80D26C74-80D26C78 -00001 0004+00 5/6 0/0 0/0 .data            l_arcName */
static char* l_arcName = "M_VolcBom";

/* 80D26C78-80D26C7C -00001 0004+00 0/1 0/0 0/0 .data            l_portal_warp_name */
static char* l_portal_warp_name = "PORTAL_WARP_BIGVOLC";

/* 80D26C7C-80D26C80 -00001 0004+00 2/2 0/0 0/0 .data            l_staff_name */
static char* l_staff_name = "BigVolc";

/* 80D26C80-80D26CC4 00002C 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{AT_TYPE_CSTATUE_SWING, 0x1, 0x1f}, {0x0, 0x10}, 0x78}}, // mObj
        {dCcD_SE_NONE, 0x0, 0xc, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        350.0f, // mRadius
        1500.0f // mHeight
    } // mCyl
};

/* 80D242A8-80D244E0 000188 0238+00 1/0 0/0 0/0 .text            Create__14daObjVolcBom_cFv */
int daObjVolcBom_c::Create() {
    int swbit = getSwbit();
    if (fopAcM_isSwitch(this, swbit)) {
        mBaseScale = 1.0f;
        setSmoke();
        init_modeWait();
    } else {
        init_modeWaitAppear();
    }
    initBaseMtx();
    fopAcM_SetMtx(this, mModel1->getBaseTRMtx());
    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                    &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
    mStts.Init(0xff, 0xff, this);
    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);
    fopAcM_setCullSizeBox2(this, mModel1->getModelData());
    fopAcM_SetGravity(this, -6.0f);
    fopAcM_setCullSizeFar(this, 10.0f);
    attention_info.distances[fopAc_attn_TALK_e] = 0x36;
    attention_info.distances[fopAc_attn_SPEAK_e] = 0x36;
    eventInfo.setArchiveName(l_arcName);
    mEventId = dComIfGp_getEventManager().getEventIdx(this, l_portal_warp_name, 0xff);
    JUTNameTab* nameTab = mModel1->getModelData()->getJointTree().getJointName();
    mEffectJntNo = 0xffff;
    for (u16 i = 0; i < mModel1->getModelData()->getJointNum(); i++) {
        if (strcmp(nameTab->getName(i), "effect_p") == 0) {
            mEffectJntNo = i;
            break;
        }
    }

    #ifdef DEBUG
    if (mEffectJntNo != 0xffff) {
        mBtk1->entry(mModel1->getModelData());
        mModel1->calcMaterial();
        mBtk1->init(mModel1->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 20), 0, 2, 1.0f, 0, -1);
    } else {
        // Large volcanic bombs; joint effect_p was not found!
        OS_REPORT_ERROR("大火山弾；ジョイント effect_p が見つかりませんでした\n");
    }
    return mEffectJntNo != 0xffff;
    #else
    mBtk1->entry(mModel1->getModelData());
    mModel1->calcMaterial();
    mBtk1->init(mModel1->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 20), 0, 2, 1.0f, 0, -1);
    return 1;
    #endif
}

/* 80D244E0-80D248AC 0003C0 03CC+00 1/0 0/0 0/0 .text            CreateHeap__14daObjVolcBom_cFv */
int daObjVolcBom_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 12);
    JUT_ASSERT(389, modelData != 0);
    mModel1 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mModel1 == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 16);
    JUT_ASSERT(403, pbrk != 0);
    mBrk1 = new mDoExt_brkAnm();
    if (mBrk1 == NULL || !mBrk1->init(modelData, pbrk, 1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 21);
    JUT_ASSERT(416, pbtk != 0);
    mBtk1 = new mDoExt_btkAnm();
    if (mBtk1 == NULL || !mBtk1->init(modelData, pbtk, 1, 2, 1.0f, 0, -1)) {
        return 0;
    }

    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 8);
    JUT_ASSERT(428, pbck != 0);
    mBck1 = new mDoExt_bckAnm();
    if (mBck1 == NULL || !mBck1->init(pbck, 1, 0, 1.0f, 0, -1, false)) {
        return 0;
    }

    field_0x5cb = false;
    modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 11);
    JUT_ASSERT(443, modelData != 0);
    mModel2 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mModel2 == NULL) {
        return 0;
    }

    pbrk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(l_arcName, 15);
    JUT_ASSERT(457, pbrk != 0);
    mBrk2 = new mDoExt_brkAnm();
    if (mBrk2 == NULL || !mBrk2->init(modelData, pbrk, 1, 0, 1.0f, 0, -1)) {
        return 0;
    }

    mBrk2->setPlaySpeed(0.0f);
    pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 19);
    JUT_ASSERT(471, pbtk != 0);
    mBtk2 = new mDoExt_btkAnm();
    if (mBtk2 == NULL || !mBtk2->init(modelData, pbtk, 1, 2, 1.0f, 0, -1)) {
        return 0;
    }
    mBtk2->setPlaySpeed(0.0f);
    return 1;
}

/* 80D248F4-80D249D0 0007D4 00DC+00 1/1 0/0 0/0 .text            create1st__14daObjVolcBom_cFv */
int daObjVolcBom_c::create1st() {
        /* dSv_event_flag_c::M_032 - Main Event - Melted Zora river ice with magma rock */
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[65])) {
        return cPhs_ERROR_e;
    }
    if (!mIsMsgIDInit) {
        mMsgID = current.angle.z;
        current.angle.z = 0;
        home.angle.z = 0;
        shape_angle.z = 0;
        mIsMsgIDInit = true;
    }

    int rv = dComIfG_resLoad(&mPhase, l_arcName);
    if (rv == cPhs_COMPLEATE_e) {
        rv = MoveBGCreate(l_arcName, 24, dBgS_MoveBGProc_TypicalRotY, 0x4000, NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }

        #ifdef DEBUG
        // The Great Lava Bombs
        l_HIO.entryHIO("大溶岩弾");
        #endif
    }

    return rv;
}

/* 80D249D0-80D24A2C 0008B0 005C+00 1/0 0/0 0/0 .text            Execute__14daObjVolcBom_cFPPA3_A4_f
 */
int daObjVolcBom_c::Execute(Mtx** i_mtx) {
    mode_proc_call();
    *i_mtx = &mBgMtx;
    setBaseMtx();
    mBtk1->play();
    mBrk1->play();

    #ifdef DEBUG
    if (l_HIO.field_0x14 != 0) {
        switch (mMode) {
        case MODE_WAIT_APPEAR:
            dDbVw_Report(0x1e, 0x50, "Mode_WaitAppear");
            break;
        case MODE_FALL:
            dDbVw_Report(0x1e, 0x50, "Mode_Fall");
            break;
        case MODE_WAIT_END_FALL_DEMO:
            dDbVw_Report(0x1e, 0x50, "Mode_Wait");
            break;
        default:
            dDbVw_Report(0x1e, 0x50, "Mode_????");
            break;
        }
    }
    #endif
    return 1;
}

/* 80D24A2C-80D24B18 00090C 00EC+00 1/1 0/0 0/0 .text            mode_proc_call__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::mode_proc_call() {
    static daObjVolcBom_c::modeFunc mode_proc[4] = {
        &daObjVolcBom_c::modeWaitAppear,
        &daObjVolcBom_c::modeFall,
        &daObjVolcBom_c::modeWaitEndFallDemo,
        &daObjVolcBom_c::modeWait,
    };

    (this->*mode_proc[mMode])();
    cXyz scale(mBaseScale, mBaseScale, mBaseScale);
    mModel1->setBaseScale(scale);

    #ifdef DEBUG
    if (l_HIO.field_0x15 != 0) {
        fopAc_ac_c* player = dComIfGp_getPlayer(0);
        current.pos.x = player->current.pos.x;
        current.pos.y = l_HIO.field_0x18;
        current.pos.z = player->current.pos.z;
        mLightPosWorld.x = player->current.pos.x;
        mLightPosWorld.y = l_HIO.field_0x1c;
        mLightPosWorld.z = player->current.pos.z;
        mBaseScale = l_HIO.field_0x20;
        field_0x978 = l_HIO.field_0x24;
        mAcch.CrrPos(dComIfG_Bgsp());
        return;
    }
    #endif
}

/* 80D24B18-80D24B6C 0009F8 0054+00 1/1 0/0 0/0 .text init_modeWaitAppear__14daObjVolcBom_cFv */
void daObjVolcBom_c::init_modeWaitAppear() {
    disappear();
    clrDzb();
    current.pos.y += 2000.0f;
    mWaitAppearState = 0;
    mMode = MODE_WAIT_APPEAR;
}

/* 80D24B6C-80D24D80 000A4C 0214+00 1/0 0/0 0/0 .text            modeWaitAppear__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::modeWaitAppear() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    J3DJoint* root_jnt = mModel1->getModelData()->getJointNodePointer(0);
    JUT_ASSERT(623, root_jnt != 0);
    
    switch (mWaitAppearState) {
    case 0:
         if (field_0x960) {
            mWaitAppearState = 1;
        }
        break;
    case 1:
        cLib_addCalc(&field_0x978, 1.0f, 0.02f, 0.1f, 0.01f);
        cLib_addCalc(&mBaseScale, 1.0f, 0.02f, 0.1f, 0.01f);
        mLightPosWorld.x = player->current.pos.x;
        mLightPosWorld.y = current.pos.y + root_jnt->getMin()->y;
        mLightPosWorld.z = player->current.pos.z;
        current.pos.x = player->current.pos.x;
        current.pos.y = player->current.pos.y + 2000.0f;
        current.pos.z = player->current.pos.z;
        appear();
        mWaitSEPos = current.pos;
        mWaitSEPos.y = mAcch.GetGroundH();
        mDoAud_seStartLevel(Z2SE_OBJ_VOLC_WAIT, &mWaitSEPos, 0, 0);
        if (field_0x95f == 0) {
            break;
        }
        field_0x960 = false;
        mWaitAppearState = 2;
        // fallthrough
    case 2:
        field_0x978 = 1.0f;
        mBaseScale = 1.0f;
        current.pos.x = home.pos.x;
        current.pos.z = home.pos.z;
        current.pos.y = mAcch.GetGroundH() + 15000.0f;
        mLightPosWorld = current.pos;
        mLightPosWorld.y = mAcch.GetGroundH() + 2000.0f + root_jnt->getMin()->y;
        fopAcM_SetMaxFallSpeed(this, -250.0f);
        init_modeFall();
        break;
    }

    if (field_0x95f == 0) {
        mAcch.CrrPos(dComIfG_Bgsp());
    }
}

/* 80D24D80-80D24E50 000C60 00D0+00 1/1 0/0 0/0 .text            init_modeFall__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::init_modeFall() {
    mBrk2->setPlaySpeed(1.0f);
    mBtk2->setPlaySpeed(1.0f);
    field_0x95e = true;
    field_0x960 = false;
    field_0x978 = 0.5f;
    eyePos = current.pos;
    fopAcM_seStart(this, Z2SE_OBJ_VOLC_FALL, 0);
    OS_REPORT("大火山弾：落下ＳＥ(%.2f,%.2f,%.2f)\n", eyePos.x, eyePos.y, eyePos.z);
    mMode = MODE_FALL;
}

/* 80D26BB0-80D26BC0 000054 000E+02 0/1 0/0 0/0 .rodata          l_effect_id$4032 */
static u16 const l_effect_id[7] = {
    0x85F7,
    0x85F8,
    0x85F9,
    0x85FA,
    0x85FB,
    0x85FC,
    0x85FD,
};

/* 80D24E50-80D25024 000D30 01D4+00 1/0 0/0 0/0 .text            modeFall__14daObjVolcBom_cFv */
void daObjVolcBom_c::modeFall() {
    bool isHomeHeight = false;
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    fopAcM_posMoveF(this, NULL);
    if (home.pos.y > current.pos.y) {
        isHomeHeight = true;
       current.pos.y = home.pos.y;
    }
    eyePos = current.pos;
    mBtk2->play();
    if (mBrk2->play()) {
        field_0x95e = false;
    }
    mDoAud_seStartLevel(Z2SE_OBJ_VOLC_WAIT, &mWaitSEPos, 0, 0);
    if (isHomeHeight) {
        dComIfGp_getVibration().StartShock(8, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
        cXyz cStack_28(current.pos);
        if (fopAcM_gc_c::gndCheck(&cStack_28)) {
            cStack_28.y = fopAcM_gc_c::getGroundY();
        }
        for (int i = 0; i < 7; i++) {
            dComIfGp_particle_setColor(l_effect_id[i],
                &cStack_28, &tevStr, NULL, NULL, 0.0f, 0xff);
        }

        fopAcM_onSwitch(this, getSwbit());
        setDzb();
        // Large volcanic bombs drop bit ON
        OS_REPORT("大火山弾落下ビットＯＮ\n");
        init_modeWaitEndFallDemo();
    }
}

/* 80D25024-80D25038 000F04 0014+00 1/1 0/0 0/0 .text init_modeWaitEndFallDemo__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::init_modeWaitEndFallDemo() {
    mSmokeTimer = 5;
    mMode = MODE_WAIT_END_FALL_DEMO;
}

/* 80D25038-80D25094 000F18 005C+00 1/0 0/0 0/0 .text modeWaitEndFallDemo__14daObjVolcBom_cFv */
void daObjVolcBom_c::modeWaitEndFallDemo() {
    if (cLib_calcTimer(&mSmokeTimer) == 0) {
        setSmoke();
    }

    if (!dComIfGp_event_runCheck()) {
        init_modeWait();
    }
}

/* 80D25094-80D25100 000F74 006C+00 2/2 0/0 0/0 .text            init_modeWait__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::init_modeWait() {
    eyePos = current.pos;
    attention_info.position = current.pos;
    calcMidnaWaitPos();
    appear();
    mMode = MODE_WAIT;
}

/* 80D25100-80D25178 000FE0 0078+00 1/0 0/0 0/0 .text            modeWait__14daObjVolcBom_cFv */
void daObjVolcBom_c::modeWait() {
    cXyz cStack_18(current.pos);
    cStack_18.y -= 750.0f;
    mCyl.SetC(cStack_18);
    dComIfG_Ccsp()->Set(&mCyl);
    event_proc_call();
}

/* 80D25178-80D251CC 001058 0054+00 1/1 0/0 0/0 .text            clrDzb__14daObjVolcBom_cFv */
void daObjVolcBom_c::clrDzb() {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
}

/* 80D251CC-80D25224 0010AC 0058+00 1/1 0/0 0/0 .text            setDzb__14daObjVolcBom_cFv */
void daObjVolcBom_c::setDzb() {
    if (mpBgW != NULL && !mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Regist(mpBgW, this);
    }
}

/* 80D25224-80D25230 001104 000C+00 2/2 0/0 0/0 .text            appear__14daObjVolcBom_cFv */
void daObjVolcBom_c::appear() {
    misAppearing = false;
}

/* 80D25230-80D2523C 001110 000C+00 1/1 0/0 0/0 .text            disappear__14daObjVolcBom_cFv */
void daObjVolcBom_c::disappear() {
    misAppearing = true;
}

/* 80D2523C-80D252C8 00111C 008C+00 2/2 0/0 0/0 .text            setSmoke__14daObjVolcBom_cFv */
void daObjVolcBom_c::setSmoke() {
    if (mSmokeEmitter == NULL) {
        mSmokeEmitter =
            dComIfGp_particle_set(0x8608, &current.pos, &home.angle, &scale, 0xff, 0, -1, 0, 0, 0);
    }

    if (mSmokeEmitter == NULL) {
        // Large volcanic bombs: smoke effects could not be set
        OS_REPORT("大火山弾：煙エフェクトセットできませんでした\n");
    }
}

/* 80D252C8-80D25364 0011A8 009C+00 3/3 0/0 0/0 .text checkTalkDistance__14daObjVolcBom_cFv */
bool daObjVolcBom_c::checkTalkDistance() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    f32 playerDist = fopAcM_searchPlayerDistanceXZ(this);
    if ((getArg0() != 0xff && playerDist < getArg0() * 10.0f) ||
        (getArg0() == 0xff && playerDist < 500.0f))
    {
        return true;
    }
    return false;
}

/* 80D25364-80D253FC 001244 0098+00 1/1 0/0 0/0 .text calcMidnaWaitPos__14daObjVolcBom_cFv */
void daObjVolcBom_c::calcMidnaWaitPos() {
    cXyz cStack_18(0.0f, 1000.0f, 0.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(&cStack_18, &mMidnaWaitPos);
    attention_info.position = mMidnaWaitPos;
    attention_info.position.y += 250.0f;
}

/* 80D253FC-80D25528 0012DC 012C+00 1/1 0/0 0/0 .text            setSrcEffect__14daObjVolcBom_cFv */
void daObjVolcBom_c::setSrcEffect() {
    for (int i = 0; i < 1; i++) {
        mDisappearEmitters[i] = dComIfGp_particle_set(l_disapp_eff[i], &current.pos, &home.angle, &scale,
                                               0xff, 0, -1, 0, 0, 0);
        if (mDisappearEmitters[i] != NULL) {
            mDisappearEmitters[i]->becomeImmortalEmitter();
        }
    }

    for (int i = 0; i < 3; i++) {
        mStartEmitters[i] = dComIfGp_particle_set(l_start_eff[i], &current.pos, &home.angle, &scale,
                                               0xff, 0, -1, 0, 0, 0);
        if (mStartEmitters[i] != NULL) {
            mStartEmitters[i]->becomeImmortalEmitter();
        }
    }
}

/* 80D25528-80D255F4 001408 00CC+00 1/1 0/0 0/0 .text            setBindEffect__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::setBindEffect() {
    for (int i = 0; i < 4; i++) {
        mBindEmitters[i] = dComIfGp_particle_set(l_bind_eff[i], &current.pos, &home.angle, &scale,
                                               0xff, 0, -1, 0, 0, 0);
        if (mBindEmitters[i] != NULL) {
            mBindEmitters[i]->becomeImmortalEmitter();
        }
    }
}

/* 80D255F4-80D25664 0014D4 0070+00 1/1 0/0 0/0 .text followBindEffect__14daObjVolcBom_cFv */
void daObjVolcBom_c::followBindEffect() {
    for (int i = 0; i < 4; i++) {
        if (mBindEmitters[i] != NULL) {
            mBindEmitters[i]->setGlobalRTMatrix(mModel1->getAnmMtx(0));
        }
    }
}

/* 80D25664-80D256B8 001544 0054+00 1/1 0/0 0/0 .text            endBindEffect__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::endBindEffect() {
    for (int i = 0; i < 4; i++) {
        if (mBindEmitters[i] != NULL) {
            mBindEmitters[i]->becomeInvalidEmitter();
            mBindEmitters[i]->quitImmortalEmitter();
            mBindEmitters[i] = NULL;
        }
    }
}

/* 80D256B8-80D25758 001598 00A0+00 1/1 0/0 0/0 .text            followSrcEffect__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::followSrcEffect() {
    for (int i = 0; i < 1; i++) {
        if (mDisappearEmitters[i] != NULL) {
            mDisappearEmitters[i]->setGlobalRTMatrix(mModel1->getAnmMtx(mEffectJntNo));
        }
    }

    for (int i = 0; i < 3; i++) {
        if (mStartEmitters[i] != NULL) {
            mStartEmitters[i]->setGlobalRTMatrix(mModel1->getAnmMtx(0));
        }
    }
}

/* 80D25758-80D257E4 001638 008C+00 1/1 0/0 0/0 .text            endSrcEffect__14daObjVolcBom_cFv */
void daObjVolcBom_c::endSrcEffect() {
    for (int i = 0; i < 1; i++) {
        if (mDisappearEmitters[i] != NULL) {
            mDisappearEmitters[i]->becomeInvalidEmitter();
            mDisappearEmitters[i]->quitImmortalEmitter();
            mDisappearEmitters[i] = NULL;
        }
    }

    for (int i = 0; i < 3; i++) {
        if (mStartEmitters[i] != NULL) {
            mStartEmitters[i]->becomeInvalidEmitter();
            mStartEmitters[i]->quitImmortalEmitter();
            mStartEmitters[i] = NULL;
        }
    }
}

/* 80D257E4-80D25914 0016C4 0130+00 1/1 0/0 0/0 .text            event_proc_call__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::event_proc_call() {
    static daObjVolcBom_c::actionFunc l_func[6] = {
        &daObjVolcBom_c::actionWait,
        &daObjVolcBom_c::actionOrderEvent,
        &daObjVolcBom_c::actionTalkEvent,
        &daObjVolcBom_c::actionWarpEvent,
        &daObjVolcBom_c::actionOrderATalkEvent,
        &daObjVolcBom_c::actionDead,
    };

    attention_info.flags = 0;
    if (mNaviTimer != 0) {
        mNaviTimer--;
    }

    (this->*l_func[mAction])();
    if (!eventInfo.chkCondition(dEvtCnd_CANTALK_e)) {
        field_0xa1a = false;
    }
}

/* 80D25914-80D25A08 0017F4 00F4+00 1/1 0/0 0/0 .text            orderZHintEvent__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::orderZHintEvent() {
    daMidna_c* midna = daPy_py_c::getMidnaActor();
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (checkTalkDistance()) {
        eventInfo.onCondition(dEvtCnd_CANTALK_e);
        if (!player->checkPlayerFly()) {
            dComIfGp_att_ZHintRequest(this, 0x1ff);
            if (!field_0xa1a) {
                field_0xa1a = true;
                if (mNaviTimer == 0) {
                    mDoAud_seStart(Z2SE_NAVI_CALLVOICE, 0, 0, 0);
                }
                mNaviTimer = 60;
            }
        }
    }
}

/* 80D25A08-80D25B04 0018E8 00FC+00 1/0 0/0 0/0 .text            actionWait__14daObjVolcBom_cFv */
void daObjVolcBom_c::actionWait() {
    if (checkTalkDistance()
           /* dSv_event_flag_c::M_051 - Main Event - Shadow Kargorok (?) (Large) event complete 
                                                     (Horse grass appears in various places) */
        && dComIfGs_isEventBit((u16)dSv_event_flag_c::saveBitLabels[84])) {
        setAction(ACTION_ORDER_EVENT);
        actionOrderEvent();
    }

    daMidna_c* midna = daPy_py_c::getMidnaActor();
    daPy_py_c* player = (daPy_py_c*)daPy_getPlayerActorClass();

    // Probably fake match since ebug calls different manager functions
    dEvent_manager_c& evtMgr = g_dComIfG_gameInfo.play.getEvtManager();
    if (evtMgr.startCheck(mEventId)) {
        if (strcmp(evtMgr.getRunEventName(), "PORTAL_WARP_BIGVOLC") == 0) {
            player->onWarpObjDemo();
            dComIfGp_getEvent().setPt2(this);
            mStaffId = evtMgr.getMyStaffId(l_staff_name, 0, 0);
            setAction(ACTION_WARP_EVENT);
            demoProc();
        }
    }
}

/* 80D25B04-80D25CA0 0019E4 019C+00 2/1 0/0 0/0 .text actionOrderEvent__14daObjVolcBom_cFv */
void daObjVolcBom_c::actionOrderEvent() {
    daMidna_c* midna = daPy_py_c::getMidnaActor();
    if (eventInfo.checkCommandTalk()) {
        midna->onTagWaitPosPortalObj(mMidnaWaitPos);
        if (midna->current.pos.abs(mMidnaWaitPos) < 5.0f) {
            setAction(ACTION_TALK_EVENT);
            mMsgFlow.init(this, getMsgID(), 0, NULL);
            // Conversation demo for message ID
            OS_REPORT("メッセージＩＤ<%d>の会話デモ\n", getMsgID());
        }
    } else {
        orderZHintEvent();
    }
}

/* 80D25CA0-80D25DEC 001B80 014C+00 1/0 0/0 0/0 .text actionOrderATalkEvent__14daObjVolcBom_cFv */
void daObjVolcBom_c::actionOrderATalkEvent() {
    daMidna_c* midna = (daMidna_c*)daPy_py_c::getMidnaActor();
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (eventInfo.checkCommandTalk()) {
        setAction(ACTION_TALK_EVENT);
        mMsgFlow.init(this, getMsgID(), 0, NULL);
    } else {
        if (dComIfGp_evmng_startCheck(mEventId)) {
            player->onWarpObjDemo();
            dComIfGp_getEvent().setPt2(this);
            mStaffId = dComIfGp_evmng_getMyStaffId(l_staff_name, 0, 0);
            setAction(ACTION_WARP_EVENT);
            demoProc();
        } else {
            if (checkTalkDistance()) {
                midna->onTagWaitPosPortalObj(mMidnaWaitPos);
                dComIfGp_TargetWarpPt_set(9);
                eventInfo.onCondition(dEvtCnd_CANTALK_e);
                attention_info.flags = 0xa;
            } else {
                midna->offTagWaitPos();
                setAction(ACTION_WAIT);
            }
        }
    }
}

/* 80D25DEC-80D25E78 001CCC 008C+00 1/0 0/0 0/0 .text            actionTalkEvent__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::actionTalkEvent() {
    if (mMsgFlow.doFlow(this, NULL, 0)) {
        dComIfGp_event_reset();
        field_0x5c9 = true;
        int dummy;
        if (mMsgFlow.getEventId(&dummy) == 11) {
            dMeter2Info_setPauseStatus(6);
        }
        setAction(ACTION_ORDER_A_TALK_EVENT);
    }
}

/* 80D25E78-80D25EE4 001D58 006C+00 1/0 0/0 0/0 .text            actionWarpEvent__14daObjVolcBom_cFv
 */
void daObjVolcBom_c::actionWarpEvent() {
    if (!dComIfGp_evmng_endCheck(mEventId)) {
        dComIfGp_getEvent().setSkipProc(this, eventCallBack, 0);
        demoProc();
    }
}

/* 80D25EE4-80D25EE8 001DC4 0004+00 1/0 0/0 0/0 .text            actionDead__14daObjVolcBom_cFv */
void daObjVolcBom_c::actionDead() {}

/* 80D25EE8-80D26468 001DC8 0580+00 3/3 0/0 0/0 .text            demoProc__14daObjVolcBom_cFv */
void daObjVolcBom_c::demoProc() {
    static const char* action_table[4] = {
        "WAIT",
        "FLY",
        "INIT",
        "BEAM",
    };

    daPy_py_c* player = daPy_getPlayerActorClass();
    daMidna_c* midna = (daMidna_c*)daPy_py_c::getMidnaActor();
    int actIdx = dComIfGp_evmng_getMyActIdx(mStaffId, (char**)action_table, 4, 0, 0);
    int* pTimer;
    if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
        switch (actIdx) {
        case 0:
            pTimer = dComIfGp_evmng_getMyIntegerP(mStaffId, "Timer");
            if (pTimer == NULL) {
                mDemoTimer = 1;
            } else {
                mDemoTimer = *pTimer;
            }
            break;
        case 2:
            mBtk1->setPlayMode(0);
            break;
        case 1:
            shape_angle.setall(0);
            field_0x5cb = true;
            mBck1->setPlaySpeed(1.0f);
            mBtk1->init(mModel1->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 21), 0, 2, 1.0f, 0, -1);
            mBtk1->setFrame(0.0f);
            mBtk1->setPlaySpeed(1.0f);
            mBtk1->setPlayMode(J3DFrameCtrl::EMode_NONE);
            setSrcEffect();
            fopAcM_seStart(this, Z2SE_OBJ_VOLC_LIFT_UP, 0);
            break;
        case 3:
            fopAcM_seStart(this, Z2SE_MDN_WARP_MAGIC, 0);
            setBindEffect();
            break;
            
        }
    }

    cXyz cStack_4c;
    cXyz cStack_58;
    csXyz local_60;
    switch (actIdx) {
    case 0:
        if (cLib_calcTimer(&mDemoTimer) == 0) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
     case 2:
        if (mBtk1->isStop()) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        break;
    case 1:
        if (mBck1->getFrame() == 222.0f) {
            calcObjPos();
            mDoAud_seStart(Z2SE_OBJ_VOLC_WARP_IN, &mWarpSEPos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            // Large volcanic bombs: warp SE
            OS_REPORT("大火山弾：ワープＳＥ\n");
        }
        if (mBck1->play()) {
            dComIfGp_evmng_cutEnd(mStaffId);
        }
        followSrcEffect();
        break;
    case 3: {
        mDoMtx_stack_c::copy(midna->getMtxHairTop());
        mDoMtx_stack_c::transM(-10.0f, -65.0f, 55.0f);
        mDoMtx_stack_c::multVecZero(&cStack_58);
        mDoMtx_stack_c::copy(mModel1->getAnmMtx(0));
        mDoMtx_stack_c::multVecZero(&cStack_4c);
        local_60.y = cLib_targetAngleY(&cStack_4c, &cStack_58);
        local_60.x = cLib_targetAngleX(&cStack_58, &cStack_4c);
        local_60.z = 0;
        f32 emitterScale = cStack_4c.abs(cStack_58);
        JPABaseEmitter* pEmitter =
            dComIfGp_particle_set(0x8b53, &cStack_4c, &local_60, 0, 0xff, 0, -1, 0, 0, 0);
        pEmitter->setGlobalParticleHeightScale(emitterScale * 0.01f);
        followBindEffect();
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    }
    default:
        dComIfGp_evmng_cutEnd(mStaffId);
        break;
    }
}

/* 80D26468-80D264E8 002348 0080+00 1/1 0/0 0/0 .text            calcObjPos__14daObjVolcBom_cFv */
void daObjVolcBom_c::calcObjPos() {
    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 8);
    JUT_ASSERT(1459, pbck != 0);
    J3DTransformInfo info;
    pbck->getTransform(0, &info);
    mWarpSEPos.x = info.mTranslate.x;
    mWarpSEPos.y = info.mTranslate.y;
    mWarpSEPos.z = info.mTranslate.z;
}

/* 80D264E8-80D266FC 0023C8 0214+00 1/0 0/0 0/0 .text            Draw__14daObjVolcBom_cFv */
int daObjVolcBom_c::Draw() {
    if (misAppearing) {
        return 1;
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel1, &tevStr);
    dComIfGd_setListBG();
    mBtk1->entry(mModel1->getModelData());
    mBrk1->entry(mModel1->getModelData());
    if (field_0x5cb) {
        mBck1->entry(mModel1->getModelData());
    }

    if (!field_0x960) {
        mDoExt_modelUpdateDL(mModel1);
    } else {
        mModel1->calc();
    }

    #ifdef DEBUG
    if (l_HIO.field_0x34 != 0) 
    {
        cXyz cStack_24;
        mDoMtx_stack_c::copy(mModel1->getAnmMtx(0));
        mDoMtx_stack_c::multVecZero(&cStack_24);
        dDbVw_drawSphereOpa(cStack_24, 30.0f, (GXColor) {0, 0, 0xff, 0xff}, 1);
        field_0x960 = true;
        return 1;
    } 
    else 
    #endif
    {
        mDoExt_bckAnmRemove(mModel1->getModelData());
        mDoExt_btkAnmRemove(mModel1->getModelData());
        dComIfGd_setList();
        tevStr.mLightPosWorld.x = current.pos.x;
        tevStr.mLightPosWorld.y = mLightPosWorld.y + KREG_F(11);
        tevStr.mLightPosWorld.z = current.pos.z;
        tevStr.field_0x344 = field_0x978;
        mShadowID = dComIfGd_setShadow(mShadowID, 0, mModel1, &current.pos,
            4000.0f, 0.0f, mLightPosWorld.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    
        if (field_0x95e) {
            g_env_light.setLightTevColorType_MAJI(mModel2, &tevStr);
            mBtk2->entry(mModel2->getModelData());
            mBrk2->entry(mModel2->getModelData());
            mDoExt_modelUpdateDL(mModel2);
        }
    }

    return 1;
}

/* 80D266FC-80D26774 0025DC 0078+00 1/0 0/0 0/0 .text            Delete__14daObjVolcBom_cFv */
int daObjVolcBom_c::Delete() {
    #ifdef DEBUG
    if (l_HIO.field_0x04 != 0) {
        fopAcM_offSwitch(this, getSwbit());
    }
    #endif

    if (mSmokeEmitter != NULL) {
        mSmokeEmitter->becomeInvalidEmitter();
        mSmokeEmitter = NULL;
    }

    endSrcEffect();
    endBindEffect();
    dComIfG_resDelete(&mPhase, l_arcName);

    #ifdef DEBUG
    l_HIO.removeHIO();
    #endif

    return 1;
}

/* 80D26774-80D268A8 002654 0134+00 1/0 0/0 0/0 .text daObjVolcBom_create1st__FP14daObjVolcBom_c
 */
static int daObjVolcBom_create1st(daObjVolcBom_c* i_this) {
    fopAcM_SetupActor(i_this, daObjVolcBom_c);
    return ((daObjVolcBom_c*)i_this)->create1st();
}

/* 80D26A74-80D26A94 002954 0020+00 1/0 0/0 0/0 .text
 * daObjVolcBom_MoveBGDelete__FP14daObjVolcBom_c                */
static int daObjVolcBom_MoveBGDelete(daObjVolcBom_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80D26A94-80D26AB4 002974 0020+00 1/0 0/0 0/0 .text
 * daObjVolcBom_MoveBGExecute__FP14daObjVolcBom_c               */
static int daObjVolcBom_MoveBGExecute(daObjVolcBom_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80D26AB4-80D26AE0 002994 002C+00 1/0 0/0 0/0 .text daObjVolcBom_MoveBGDraw__FP14daObjVolcBom_c
 */
static int daObjVolcBom_MoveBGDraw(daObjVolcBom_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80D26DC4-80D26DE4 -00001 0020+00 1/0 0/0 0/0 .data            daObjVolcBom_METHODS */
static actor_method_class daObjVolcBom_METHODS = {
    (process_method_func)daObjVolcBom_create1st,
    (process_method_func)daObjVolcBom_MoveBGDelete,
    (process_method_func)daObjVolcBom_MoveBGExecute,
    NULL,
    (process_method_func)daObjVolcBom_MoveBGDraw,
};

/* 80D26DE4-80D26E14 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_VolcanicBomb */
extern actor_process_profile_definition g_profile_Obj_VolcanicBomb = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_VolcanicBomb,  // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjVolcBom_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  594,                    // mPriority
  &daObjVolcBom_METHODS,  // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};


/* 80D26C0C-80D26C0C 0000B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
