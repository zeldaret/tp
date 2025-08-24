/**
 * @file d_a_obj_tombo.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_tombo.h"
#include "d/actor/d_a_player.h"
#include "d/d_menu_insect.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "f_pc/f_pc_name.h"
#include "m_Do/m_Do_lib.h"

class daObj_TomHIO_c : public JORReflexible {
public:
    /* 80D191CC */ daObj_TomHIO_c();
    /* 80D1B618 */ virtual ~daObj_TomHIO_c() {}

    #ifdef DEBUG
    void genMessage(JORMContext* context) {
        // Golden dragonfly
        context->genLabel("黄金蟲(トンボ)", 0x80000001, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
        // Model Scale (male)
        context->genSlider("モデルスケール(オス)", &mFemaleModelScale, 0.1f, 4.0f, 0, NULL, 0xffff, 0xffff,
                           0x200, 0x18);
        // Model Scale (female)
        context->genSlider("モデルスケール(メス)", &mMaleModelScale, 0.1f, 4.0f, 0, NULL, 0xffff, 0xffff,
                           0x200, 0x18);
        // btk speed
        context->genSlider("btkスピード", &mBtkSpeed, 0.0f, 4.0f, 0, NULL, 0xffff, 0xffff, 0x200,
                           0x18);
    }
    #endif

    /* 0x04 */ s8 mId;
    /* 0x08 */ f32 mFemaleModelScale;
    /* 0x0C */ f32 mMaleModelScale;
    /* 0x10 */ f32 mBtkSpeed;
};

/* 80D191CC-80D19200 0000EC 0034+00 1/1 0/0 0/0 .text            __ct__14daObj_TomHIO_cFv */
daObj_TomHIO_c::daObj_TomHIO_c() {
    mId = -1;
    mMaleModelScale = 0.9f;
    mFemaleModelScale = 0.9f;
    mBtkSpeed = 1.0f;
}

/* ############################################################################################## */
/* 80D1B6E0-80D1B6E4 000008 0002+02 1/2 0/0 0/0 .rodata          l_tom_itemno */
static u8 const l_tom_itemno[2] = {
    fpcNm_ITEM_M_DRAGONFLY, fpcNm_ITEM_F_DRAGONFLY,
};

/* 80D19200-80D1926C 000120 006C+00 1/1 0/0 0/0 .text            InitCcSph__12daObjTOMBO_cFv */
void daObjTOMBO_c::InitCcSph() {
    const static dCcD_SrcSph ccSphSrc = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0x14002, 0x11}, 0x0}},  // mObj
            {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0},             // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},              // mGObjTg
            {0x0},                                           // mGObjCo
        },                                                   // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
        }  // mSphAttr
    };

    mStts.Init(1, 0, this);
    mSph.Set(ccSphSrc);
    mSph.SetStts(&mStts);
    mSph.SetC(current.pos);
    mSph.OnTgNoHitMark();
}

/* 80D1926C-80D192C4 00018C 0058+00 1/1 0/0 0/0 .text            SetCcSph__12daObjTOMBO_cFv */
void daObjTOMBO_c::SetCcSph() {
    mSph.SetC(current.pos);
    mSph.SetR(20.0f);
    dComIfG_Ccsp()->Set(&mSph);
}

/* 80D192C4-80D192E4 0001E4 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return ((daObjTOMBO_c*)i_this)->CreateHeap();
}

/* 80D192E4-80D195CC 000204 02E8+00 1/1 0/0 0/0 .text            CreateHeap__12daObjTOMBO_cFv */
int daObjTOMBO_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Tombo", 9);
    JUT_ASSERT(259, modelData != 0);
    mpMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                  (J3DAnmTransform*)dComIfG_getObjectRes("Tombo", 6), 2, 1.0, 0, -1,
                                  &mCreature, 0, 0x11000284);
    if (mpMorf == NULL || mpMorf->getModel() == NULL) {
        return 0;
    }

    J3DModel* morfModel = mpMorf->getModel();
    mBrk = new mDoExt_brkAnm();
    if (mBrk == NULL) {
        return 0;
    }

    if (mSex == SEX_FEMALE) {
        if (!mBrk->init(morfModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("Tombo", 12), 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    } else {
        if (!mBrk->init(morfModel->getModelData(), (J3DAnmTevRegKey*)dComIfG_getObjectRes("Tombo", 13), 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }
    mBtk = new mDoExt_btkAnm();
    if (mBtk == NULL) {
        return 0;
    }

    if (mSex == SEX_FEMALE) {
        if (!mBtk->init(morfModel->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Tombo", 16), 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    } else {
        if (!mBtk->init(morfModel->getModelData(), (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("Tombo", 17), 1, 2, 1.0f, 0, -1)) {
            return 0;
        }
    }
    return 1;
}

/* 80D19614-80D19634 000534 0020+00 1/0 0/0 0/0 .text            daObjTOMBO_Create__FP10fopAc_ac_c
 */
static int daObjTOMBO_Create(fopAc_ac_c* i_this) {
    return ((daObjTOMBO_c*)i_this)->create();
}

/* 80D19634-80D19658 000554 0024+00 1/0 0/0 0/0 .text            daObjTOMBO_Delete__FP12daObjTOMBO_c
 */
static int daObjTOMBO_Delete(daObjTOMBO_c* i_this) {
    i_this->Delete();
    return 1;
}

/* 80D19658-80D19744 000578 00EC+00 2/2 0/0 0/0 .text            WaitAction__12daObjTOMBO_cFv */
void daObjTOMBO_c::WaitAction() {
    cXyz cStack_28;
    switch (field_0x712) {
    case 0:
        field_0x71c = field_0x71c * 0.2f;
        field_0x720 = 1.0f * field_0x720;
        field_0x714[0] = cM_rndF(10.0f) + 20.0f;
        field_0x712++;
        break;
    case 1:
        if (field_0x714[0] == 0) {
            mAction = ACTION_MOVE;
            field_0x712 = 0;
            field_0x714[0] = cM_rndF(10.0f) + 10.0f;
            if (field_0x714[1] == 0) {
                SearchLink();
            }
        }
        break;
    }
    SpeedSet();
}

/* 80D19744-80D19834 000664 00F0+00 2/2 0/0 0/0 .text            SpeedSet__12daObjTOMBO_cFv */
void daObjTOMBO_c::SpeedSet() {
    current.pos.y += speed.y;
    cXyz cStack_1c(0.0f, 0.0f, speedF);
    cXyz local_28(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::YrotS(current.angle.y);
    mDoMtx_stack_c::multVec(&cStack_1c, &local_28);
    current.pos.x += local_28.x;
    current.pos.z += local_28.z;
    cLib_addCalc2(&speedF, field_0x71c, 0.1f, 10.0f);
    cLib_addCalc2(&speed.y, field_0x720, 0.1f, 10.0f);
    cLib_addCalcAngleS2(&current.angle.y, field_0x724, 0x10, 0x1000);
    shape_angle.y = current.angle.y;
}

/* 80D19834-80D1997C 000754 0148+00 1/1 0/0 0/0 .text            CheckWater__12daObjTOMBO_cFv */
bool daObjTOMBO_c::CheckWater() {
    dBgS_ObjGndChk_All adStack_6c;
    cXyz gndPos(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    adStack_6c.SetPos(&gndPos);
    gndPos.y = dComIfG_Bgsp().GroundCross(&adStack_6c);
    if (gndPos.y != -1e9f) {
        if (dComIfG_Bgsp().GetPolyAtt0(adStack_6c) == 7 && current.pos.y - gndPos.y < 50.0f) {
            return TRUE;
        }
    }
    return FALSE;
}

/* 80D199F4-80D19B48 000914 0154+00 1/1 0/0 0/0 .text            CheckGround__12daObjTOMBO_cFv */
void daObjTOMBO_c::CheckGround() {
    dBgS_ObjGndChk_All adStack_6c;
    cXyz gndPos(current.pos.x, current.pos.y + 100.0f, current.pos.z);
    adStack_6c.SetPos(&gndPos);
    gndPos.y = dComIfG_Bgsp().GroundCross(&adStack_6c);
    if (gndPos.y != -1e9f) {
        if (current.pos.y - gndPos.y < 100.0f) {
            field_0x720 = 3.0f;
        } else if (current.pos.y - gndPos.y > 300.0f) {
            field_0x720 = -3.0f;
        }

        if (current.pos.y - gndPos.y < 10.0f) {
            speed.y = 0.0f;
        }
    }
}

/* 80D19B48-80D19C34 000A68 00EC+00 1/1 0/0 0/0 .text            CheckWall__12daObjTOMBO_cFv */
void daObjTOMBO_c::CheckWall() {
    dBgS_LinChk linChk;
    cXyz cStack_8c(0.0f, 0.0f, 200.0f);
    cXyz cStack_98;
    cMtx_YrotS(*calc_mtx, current.angle.y);
    MtxPosition(&cStack_8c, &cStack_98);
    cStack_98 += current.pos;
    linChk.Set(&current.pos, &cStack_98, this);
    if (dComIfG_Bgsp().LineCross(&linChk)) {
        field_0x724 += 0x1000;
        field_0x714[0] = cM_rndF(10.0f) + 10.0f;
    }
}

/* 80D19C34-80D19E48 000B54 0214+00 1/1 0/0 0/0 .text            SearchLink__12daObjTOMBO_cFv */
void daObjTOMBO_c::SearchLink() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz& playerPos = fopAcM_GetPosition(player);
    if (current.pos.absXZ(playerPos) < 400.0f && current.pos.y - playerPos.y < 150.0f &&
        fopAcM_GetSpeedF(player) == 0.0f && player->checkItemSwordEquip())
    {
        mAction = ACTION_LINK;
        field_0x712 = 0;
        cXyz cStack_28(30.0f, 70.0f, 0.0f);
        MTXCopy(daPy_getLinkPlayerActorClass()->getModelJointMtx(9), *calc_mtx);
        MtxPosition(&cStack_28, &field_0x73c);
    }
}

/* 80D19E48-80D1A138 000D68 02F0+00 2/2 0/0 0/0 .text            LinkAction__12daObjTOMBO_cFv */
void daObjTOMBO_c::LinkAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    fopAcM_GetPosition(player);
    cXyz cStack_1c(30.0f, 70.0f, 0.0f);
    cXyz cStack_28;
    MTXCopy(daPy_getLinkPlayerActorClass()->getModelJointMtx(9), *calc_mtx);
    MtxPosition(&cStack_1c, &cStack_28);
    switch (field_0x712) {
    case 0:
        if (cLib_addCalcPos(&current.pos, cStack_28, 0.05f, 5.0f, 0.0f) < 10.0f) {
            field_0x712++;
            field_0x714[0] = 200;
            mpMorf->setPlaySpeed(0.0f);
        }
        field_0x724 = cLib_targetAngleY(&current.pos, &cStack_28);
        cLib_addCalcAngleS2(&current.angle.y, field_0x724, 8, 0x1000);
        shape_angle.y = current.angle.y;
        break;
    case 1:
        cLib_chasePos(&current.pos, cStack_28, 3.0f);
        if (field_0x714[0] == 0) {
            mAction = ACTION_WAIT;
            field_0x712 = 1;
            field_0x714[1] = 100;
            speedF = 0.0f;
            speed.y = 0.0f;
            field_0x714[0] = 0;
            mpMorf->setPlaySpeed(1.0f);
        }
        break;
    }

    if ((!player->checkItemSwordEquip() || cStack_28.abs(field_0x73c) > 2.0f) &&
        !player->checkCutCharge())
    {
        mAction = ACTION_WAIT;
        field_0x712 = 1;
        field_0x714[1] = 100;
        speedF = 0.0f;
        speed.y = 0.0f;
        field_0x714[0] = 0;
        mpMorf->setPlaySpeed(1.0f);
    }
    field_0x73c = cStack_28;
}

/* 80D1A138-80D1A280 001058 0148+00 2/2 0/0 0/0 .text            MoveAction__12daObjTOMBO_cFv */
void daObjTOMBO_c::MoveAction() {
    cXyz local_1c;
    daPy_py_c* player = daPy_getPlayerActorClass();
    switch (field_0x712) {
    case 0: {
        field_0x71c = cM_rndF(10.0f) + 4.0f;
        field_0x720 = cM_rndFX(3.0f);
        speedF = 4.0f;
        cXyz local_1c = home.pos - current.pos;
        local_1c.x += cM_rndFX(1000.0f);
        local_1c.z += cM_rndFX(1000.0f);
        field_0x724 = cM_atan2s(local_1c.x, local_1c.z);
        CheckGround();
        field_0x712++;
        break;
    }
    case 1:
        SpeedSet();
        cXyz* flamePos = player->getKandelaarFlamePos();
        if (flamePos != NULL) {
            field_0x724 = cLib_targetAngleY(&current.pos, flamePos);
        }
        if (field_0x714[0] == 0) {
            mAction = ACTION_WAIT;
            field_0x712 = 0;
            CheckWall();
        }
        break;
    }
}

/* 80D1A280-80D1A3EC 0011A0 016C+00 1/1 0/0 0/0 .text            Action__12daObjTOMBO_cFv */
void daObjTOMBO_c::Action() {
    if (fopAcM_checkHookCarryNow(this)) {
        if (CheckWater()) {
            fopAcM_cancelHookCarryNow(this);
        }
        home.pos = current.pos;
    }
    for (int i = 0; i < 3; i++) {
        field_0x714[i]--;
        if (field_0x714[i] <= 0) {
            field_0x714[i] = 0;
        }
    }

    switch (mAction) {
    case ACTION_WAIT:
        WaitAction();
        break;
    case ACTION_MOVE: {
        MoveAction();
        cLib_addCalcAngleS2(
            &shape_angle.x,
            cM_atan2s(field_0x720, JMAFastSqrt(speed.x * speed.x + speed.z * speed.z)) * -0.001f, 2,
            0x600);
        break;
    }
    case ACTION_LINK:
        LinkAction();
        break;
    }

    Insect_GetDemoMain();
}

/* 80D1A3EC-80D1A514 00130C 0128+00 1/1 0/0 0/0 .text            ShopAction__12daObjTOMBO_cFv */
void daObjTOMBO_c::ShopAction() {
    for (int i = 0; i < 3; i++) {
        field_0x714[i]--;
        if (field_0x714[i] <= 0) {
            field_0x714[i] = 0;
        }
    }
    switch (mAction) {
    case ACTION_WAIT:
        WaitAction();
        break;
    case ACTION_MOVE: {
        MoveAction();
        cLib_addCalcAngleS2(
            &shape_angle.x,
            cM_atan2s(field_0x720, JMAFastSqrt(speed.x * speed.x + speed.z * speed.z)) * -0.001f, 2,
            0x600);
        break;
    }
    case ACTION_LINK:
        LinkAction();
        break;
    }
}

/* 80D1A514-80D1A524 001434 0010+00 1/0 0/0 0/0 .text            Insect_Release__12daObjTOMBO_cFv */
void daObjTOMBO_c::Insect_Release() {
    field_0x56c = 1;
    mAction = ACTION_MOVE;
}

static f32 dummyLiteral1() { return 3.5f; }
static f32 dummyLiteral2() { return 12000.0f; }
static f32 dummyLiteral3() { return 4096.0f; }
static f32 dummyLiteral4() { return 0.5f; }
static f32 dummyLiteral5() { return 0.7f; }
static f32 dummyLiteral6() { return 0.25f; }

/* 80D1A524-80D1A648 001444 0124+00 1/1 0/0 0/0 .text            ParticleSet__12daObjTOMBO_cFv */
void daObjTOMBO_c::ParticleSet() {
    if (field_0x750 > field_0x754) {
        cLib_addCalc2(&mParticleScale, 0.0f, 1.0f, 1.0f);
    } else {
        cLib_addCalc2(&mParticleScale, 1.0f, 1.0f, 1.0f);
    }
    mParticleKey1 = dComIfGp_particle_set(mParticleKey1, 0xa1b, &current.pos, &tevStr, &shape_angle,
                                          0, 0xff, 0, -1, 0, 0, 0);
    f32 scale = mParticleScale;
    JPABaseEmitter* pEmitter = dComIfGp_particle_getEmitter(mParticleKey1);
    if (pEmitter != NULL) {
        pEmitter->setGlobalParticleScale(scale, scale);
    }
}

/* 80D1A648-80D1A8BC 001568 0274+00 1/1 0/0 0/0 .text            BoomChk__12daObjTOMBO_cFv */
void daObjTOMBO_c::BoomChk() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (mIsHitByBoomerang) {
        cXyz& playerPos = fopAcM_GetPosition(player);
        cXyz cStack_a8(playerPos);
        cStack_a8.y += 100.0f;
        if (mBoomerangMove.posMove(&current.pos, &shape_angle.y, NULL, 0x1c00)) {
            mBoomerangMove.bgCheckAfterOffset(&current.pos);
            current.pos.y += 0.5f;
        } else {
            dBgS_LinChk linChk;
            linChk.Set(&cStack_a8, &current.pos, NULL);
            if (dComIfG_Bgsp().LineCross(&linChk)) {
                cM3dGPla pla;
                dComIfG_Bgsp().GetTriPla(linChk, &pla);
                current.pos = old.pos = linChk.GetCross();
                mAction = ACTION_MOVE;
                field_0x712 = 0;
                speedF = 5.0f;
                field_0x71c = 5.0f;
                mIsHitByBoomerang = false;
                field_0x718 = 100;
                mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("Tombo", 6), 2, 5.0f, 1.0f,
                               0.0f, -1.0f);
                home.pos = current.pos;
            } else {
                home.pos = current.pos;
                mAction = ACTION_MOVE;
                field_0x712 = 0;
                mIsHitByBoomerang = false;
                speedF = 5.0f;
                field_0x71c = 5.0f;
                field_0x718 = 100;
                mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("Tombo", 6), 2, 5.0f, 1.0f,
                                         0.0f, -1.0f);
                current.pos.y = old.pos.y = playerPos.y + 100.0f;
            }
        }
    }
}

/* 80D1B8F0-80D1B8F4 000008 0004+00 2/2 0/0 0/0 .bss             None */
static bool l_HIOInit;

/* 80D1B900-80D1B914 000018 0014+00 3/3 0/0 0/0 .bss             l_HIO */
static daObj_TomHIO_c l_HIO;

/* 80D1A904-80D1AB20 001824 021C+00 1/1 0/0 0/0 .text            Execute__12daObjTOMBO_cFv */
int daObjTOMBO_c::Execute() {
    if (ChkGetDemo()) {
        field_0x750 = field_0x754 + 10000.0f;
        mCreature.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
        Insect_GetDemoMain();
        ParticleSet();
        return 1;
    }

    attention_info.position = current.pos;
    eyePos = current.pos;
    eyePos.y += 10.0f;
    switch (field_0x75c) {
    case 0:
        Action();
        mParticleKey2 = dComIfGp_particle_set(mParticleKey2, 0xa1c,
        &current.pos, &tevStr, &shape_angle, 0,
        0xff, 0, -1, 0, 0, 0);
        SetCcSph();
        ObjHit();
        BoomChk();
        ParticleSet();
        break;
    case 1:
        ShopAction();
        break;
    }

    mCreature.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
    mAcch.CrrPos(dComIfG_Bgsp());
    mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mBtk->setPlaySpeed(l_HIO.mBtkSpeed);
    mBtk->play();
    mBrk->play();
    setBaseMtx();
    return 1;
}

/* 80D1AB20-80D1AC84 001A40 0164+00 1/1 0/0 0/0 .text            ObjHit__12daObjTOMBO_cFv */
void daObjTOMBO_c::ObjHit() {
    if (mSph.ChkTgHit()) {
        cCcD_Obj* tgHitObj = mSph.GetTgHitObj();
        if (tgHitObj->ChkAtType(AT_TYPE_BOOMERANG)) {
            if (!mIsHitByBoomerang) {
                mIsHitByBoomerang = true;
                dCcD_GObjInf* tgHitObj = (dCcD_GObjInf*)mSph.GetTgHitGObj();
                mBoomerangMove.initOffset(&current.pos, tgHitObj);
            }
        } else if (!tgHitObj->ChkAtType(AT_TYPE_NORMAL_SWORD) &&
                   tgHitObj->ChkAtType(AT_TYPE_HOOKSHOT))
        {
            cXyz cStack_28(0.0f, 0.0f, 0.0f);
            daPy_getPlayerActorClass()->setHookshotCarryOffset(fopAcM_GetID(this), &cStack_28);
            mAction = ACTION_MOVE;
            field_0x712 = 0;
            mIsHitByBoomerang = false;
            mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("Tombo", 6), 2, 5.0f, 1.0f, 0.0f,
                           -1.0f);
            speedF = 8.0f;
            field_0x71c = cM_rndF(5.0f) + 8.0f;
        }
        mSph.ClrTgHit();
    }
}

/* 80D1AC84-80D1AE00 001BA4 017C+00 1/1 0/0 0/0 .text            Z_BufferChk__12daObjTOMBO_cFv */
void daObjTOMBO_c::Z_BufferChk() {
    cXyz local_5c;
    cXyz cStack_68;
    cStack_68 = current.pos;
    cStack_68.y += 20.0f;
    mDoLib_project(&cStack_68, &local_5c);
    camera_class* pCamera = dComIfGp_getCamera(0);
    f32 trimHeight;
    if (pCamera != NULL) {
        trimHeight = pCamera->mCamera.TrimHeight();
    } else {
        trimHeight = 0.0f;
    }
    if (local_5c.x > 0.0f && local_5c.x < 608.0f && local_5c.y > trimHeight &&
        local_5c.y < 448.0f - trimHeight)
    {
        dComIfGd_peekZ(local_5c.x, local_5c.y, &field_0x754);
    }
    f32 near = dComIfGd_getView()->near;
    f32 far = dComIfGd_getView()->far;
    mDoLib_pos2camera(&cStack_68, &local_5c);
    local_5c.z += 50.0f;
    if (local_5c.z > 0.0f) {
        local_5c.z = 0.0f;
    }
    field_0x750 =
        ((near + ((far * near) / local_5c.z)) / (far - near) + 1.0f) * 16777215.0f;
}

/* 80D1AE00-80D1AE68 001D20 0068+00 1/1 0/0 0/0 .text            Delete__12daObjTOMBO_cFv */
int daObjTOMBO_c::Delete() {
    dComIfG_resDelete(&mPhase, "Tombo");
    if (mIsHIOOwner) {
        l_HIOInit = false;
        mDoHIO_DELETE_CHILD(l_HIO.mId);
    }
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
    return 1;
}

/* 80D1AE68-80D1AEC8 001D88 0060+00 1/1 0/0 0/0 .text            setBaseMtx__12daObjTOMBO_cFv */
void daObjTOMBO_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
}

inline int daObjTOMBO_c::Draw() {
    if (mDraw) {
        Z_BufferChk();
        J3DModel* morfModel = mpMorf->getModel();
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(morfModel, &tevStr);
        mBtk->entry(morfModel->getModelData());
        mBrk->entry(morfModel->getModelData());
        mpMorf->entryDL();
        if (!field_0x75c) {
            dComIfGd_setSimpleShadow(&current.pos, mAcch.GetGroundH(), 15.0f, mAcch.m_gnd, 0, -0.6f,
                                     dDlst_shadowControl_c::getSimpleTex());
        }
    }
    return 1;
}

/* 80D1AEC8-80D1AFA8 001DE8 00E0+00 1/0 0/0 0/0 .text            daObjTOMBO_Draw__FP12daObjTOMBO_c
 */
static int daObjTOMBO_Draw(daObjTOMBO_c* i_this) {
    return i_this->Draw();
}

/* 80D1AFA8-80D1AFC8 001EC8 0020+00 2/1 0/0 0/0 .text daObjTOMBO_Execute__FP12daObjTOMBO_c */
static int daObjTOMBO_Execute(daObjTOMBO_c* i_this) {
    return i_this->Execute();
}

/* 80D1B7E0-80D1B7E4 000108 0004+00 1/2 0/0 0/0 .rodata          l_musiya_num */
static u16 const l_musiya_num[2] = {
    0x01A3, /* dSv_event_flag_c::F_0419 - Misc. - Dragonfly (M) */
    0x01A4, /* dSv_event_flag_c::F_0420 - Misc. - Dragonfly (F) */
};

/* 80D1AFC8-80D1B174 001EE8 01AC+00 1/1 0/0 0/0 .text            CreateChk__12daObjTOMBO_cFv */
bool daObjTOMBO_c::CreateChk() {
    u8 uVar4 = (fopAcM_GetParam(this) & 0xf00) >> 8;
    if (uVar4 == 0xf) {
        uVar4 = 0;
    }

    if (field_0x75c != 2) {
        if (uVar4 != 0) {
            if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[0]]) || !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[1]])) {
                return 0;
            }
        } else if (strcmp("R_SP160", dComIfGp_getStartStageName()) == 0 &&
            dComIfGp_getStartStageRoomNo() == 3)
        {
            if (dMenu_Insect_c::isCatchNotGiveInsect(l_tom_itemno[mSex])) {
                return 0;
            }
            
            if ((mSex == SEX_MALE &&
                    !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[mSex]])) ||
                (mSex == SEX_FEMALE &&
                    !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[mSex]])))
            {
                return 0;
            }
        }
    }
    return 1;
}

/* 80D1B174-80D1B510 002094 039C+00 1/1 0/0 0/0 .text            create__12daObjTOMBO_cFv */
int daObjTOMBO_c::create() {
    fopAcM_SetupActor(this, daObjTOMBO_c);
    int phase = dComIfG_resLoad(&mPhase, "Tombo");
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("TOMBO PARAM %x\n", fopAcM_GetParam(this));
        field_0x75c = fopAcM_GetParam(this) & 0xf;
        if (field_0x75c == 2) {
            field_0x56c = 0;
            shape_angle.x -= 0x2000;
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
        } else {
            mDraw = true;
        }
        attention_info.distances[fopAc_attn_CARRY_e] = 0x5d;
        mSex = (fopAcM_GetParam(this) & 0x10) >> 4;
        setItemNo(l_tom_itemno[mSex]);
        setSaveBitNo(l_musiya_num[mSex]);
        if (mSex == SEX_FEMALE) {
            scale.set(l_HIO.mFemaleModelScale, l_HIO.mFemaleModelScale, l_HIO.mFemaleModelScale);
        } else if (mSex == SEX_MALE) {
            scale.set(l_HIO.mMaleModelScale, l_HIO.mMaleModelScale, l_HIO.mMaleModelScale);
        }
        if (!CreateChk()) {
            return cPhs_ERROR_e;
        }
        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0xaa0)) {
            return cPhs_ERROR_e;
        }
        if (!l_HIOInit) {
            l_HIOInit = true;
            mIsHIOOwner = true;
            // Golden Dragonfly
            l_HIO.mId = mDoHIO_CREATE_CHILD("黄金蟲(トンボ)", &l_HIO);
        }
        mAcchCir.SetWall(30.0f, 50.0f);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);
        mAcch.ClrWaterNone();
        if (field_0x75c == 0) {
            attention_info.flags = 0;
            InitCcSph();
        }
        if (field_0x75c == 2) {
            if (strcmp("R_SP160", dComIfGp_getStartStageName()) == 0 &&
                dComIfGp_getStartStageRoomNo() == 3)
            {
                field_0x75c = 3;
            }
        }
        mAction = ACTION_WAIT;
        field_0x712 = 0;
        gravity = 0.0f;
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -50.0f, -50.0f, -50.0f);
        fopAcM_SetMax(this, 50.0f, 50.0f, 50.0f);
        mCreature.init(&current.pos, &eyePos, 3, 1);
        daObjTOMBO_Execute(this);
    }
    return phase;
}

/* 80D1B610-80D1B618 002530 0008+00 1/0 0/0 0/0 .text daObjTOMBO_IsDelete__FP12daObjTOMBO_c */
static int daObjTOMBO_IsDelete(daObjTOMBO_c* param_0) {
    return 1;
}

/* 80D1B7F8-80D1B818 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjTOMBO_Method */
static actor_method_class l_daObjTOMBO_Method = {
    (process_method_func)daObjTOMBO_Create,
    (process_method_func)daObjTOMBO_Delete,
    (process_method_func)daObjTOMBO_Execute,
    (process_method_func)daObjTOMBO_IsDelete,
    (process_method_func)daObjTOMBO_Draw,
};

/* 80D1B818-80D1B848 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Tombo */
extern actor_process_profile_definition g_profile_Obj_Tombo = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Tombo,         // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjTOMBO_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  487,                    // mPriority
  &l_daObjTOMBO_Method,   // sub_method
  0x000C0100,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80D1B7E8-80D1B7E8 000110 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
