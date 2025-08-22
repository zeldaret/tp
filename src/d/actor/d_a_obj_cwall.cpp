/**
 * @file d_a_obj_cwall.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_cwall.h"
#include "SSystem/SComponent/c_math.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/actor/d_a_player.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "cmath.h"

// NONMATCHING - getRightHandPos is not generated at the end of the TU 

/* 80BD6A4C-80BD6A88 0000EC 003C+00 1/1 0/0 0/0 .text            initBaseMtx__12daObjCwall_cFv */
void daObjCwall_c::initBaseMtx() {
    mWallModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80BD6A88-80BD6AEC 000128 0064+00 2/2 0/0 0/0 .text            setBaseMtx__12daObjCwall_cFv */
void daObjCwall_c::setBaseMtx() {
    mDoMtx_stack_c::transS(field_0xf38);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mWallModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BD9FA4-80BD9FAC 000000 0008+00 11/11 0/0 0/0 .rodata          l_wallBmd */
static u32 const l_wallBmd[2] = {
    5, 5,
};

/* 80BD9FAC-80BD9FB4 000008 0008+00 0/1 0/0 0/0 .rodata          l_chainBmd */
static u32 const l_chainBmd[2] = {
    4, 4,
};

/* 80BD9FB4-80BD9FBC 000010 0008+00 0/1 0/0 0/0 .rodata          l_handleBmd */
static u32 const l_handleBmd[2] = {
    6, 6,
};

/* 80BD9FBC-80BD9FC4 000018 0008+00 1/1 0/0 0/0 .rodata          l_dzb */
static u32 const l_dzb[2] = {
    9, 9,
};

/* 80BD9FC4-80BD9FCC 000020 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
static u32 const l_heap_size[2] = {
    0x4600, 0x5F00,
};

/* 80BD9FCC-80BD9FD8 000028 000C+00 0/1 0/0 0/0 .rodata          l_top_co_offset */
static Vec const l_top_co_offset = {
    0.0f, 0.0f, -600.0f,
};

/* 80BD9FD8-80BD9FE4 000034 000C+00 0/1 0/0 0/0 .rodata          l_check_min */
static Vec const l_check_min = {
    -120.0f, 0.0f, -20.0f,
};

/* 80BD9FE4-80BD9FF0 000040 000C+00 0/1 0/0 0/0 .rodata          l_check_max */
static Vec const l_check_max = {
    120.0f, 0.0f, 80.0f,
};

/* 80BD9FF0-80BD9FFC 00004C 000C+00 0/1 0/0 0/0 .rodata          l_check_min_wolf */
static Vec const l_check_min_wolf = {
    -120.0f, 0.0f, 50.0f,
};

/* 80BD9FFC-80BDA008 000058 000C+00 0/1 0/0 0/0 .rodata          l_check_max_wolf */
static Vec const l_check_max_wolf = {
    120.0f, 0.0f, 160.0f,
};

/* 80BDA0E0-80BDA0E8 -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {
    "P_Cwall",
    "P_L4Cwall",
};

/* 80BDA0E8-80BDA100 000028 0018+00 0/1 0/0 0/0 .data            l_cull_box */
static Vec l_cull_box[2] = {
    {-300.0f, -100.0f, -650.0f},
    {300.0f, 500.0f, 300.0f},
};

/* 80BDA100-80BDA130 000040 0030+00 1/1 0/0 0/0 .data            l_side_co_offset */
static Vec l_side_co_offset[4] = {
    {-255.0f, 0.0f, -30.0f},
    {-135.0f, 0.0f, -30.0f},
    {135.0f, 0.0f, -30.0f},
    {255.0f, 0.0f, -30.0f},
};

/* 80BDA130-80BDA174 000070 0044+00 0/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        70.0f, // mRadius
        450.0f // mHeight
    } // mCyl
};

/* 80BDA174-80BDA1B8 0000B4 0044+00 0/1 0/0 0/0 .data            l_cyl_src2 */
static dCcD_SrcCyl l_cyl_src2 = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x0}, 0x19}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        60.0f, // mRadius
        300.0f // mHeight
    } // mCyl
};

/* 80BDA1B8-80BDA1F8 0000F8 0040+00 0/1 0/0 0/0 .data            l_sph_src */
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x4000, 0x11}, 0x58}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f} // mSph
    } // mSphAttr
};

/* 80BD6AEC-80BD6CCC 00018C 01E0+00 1/0 0/0 0/0 .text            Create__12daObjCwall_cFv */
int daObjCwall_c::Create() {
    field_0xf38 = current.pos;
    field_0xf0c = getArg0();
    initBaseMtx();
    fopAcM_SetMtx(this, mWallModel->getBaseTRMtx());
    mStts.Init(0xff, 0xff, this);
    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);
    for (int i = 0; i < 4; i++) {
        mCyls[i].Set(l_cyl_src2);
        mCyls[i].SetStts(&mStts);
    }
    mCyl2.Set(l_cyl_src2);
    mCyl2.SetStts(&mStts);
    mSph.Set(l_sph_src);
    mSph.SetStts(&mStts);
    fopAcM_setCullSizeBox(this, l_cull_box[0].x, l_cull_box[0].y, l_cull_box[0].z, l_cull_box[1].x,
                          l_cull_box[1].y, l_cull_box[1].z);
    cXyz cStack_30(0.0f, 0.0f, 50.0f);
    mDoMtx_stack_c::YrotS(current.angle.y);
    mDoMtx_stack_c::multVec(&cStack_30, &cStack_30);
    chain_s* pChain = mChains;
    cXyz* pPos = field_0xe94;
    getChainBasePos(&pChain->mPos);
    cXyz cStack_3c(pChain->mPos);
    for (int i = 0; i < 7; i++, pPos++) {
        *pPos = cStack_3c + cStack_30;
        cStack_3c = *pPos;
    }
    calcSePos();
    MoveBGExecute();
    return 1;
}

/* 80BD6D08-80BD6E94 0003A8 018C+00 1/0 0/0 0/0 .text            CreateHeap__12daObjCwall_cFv */
int daObjCwall_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_wallBmd[mType]);
    JUT_ASSERT(573, modelData != 0);
    mWallModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mWallModel == NULL) {
        return 0;
    }
    mChains = new chain_s[6];
    if (mChains == NULL) {
        return 0;
    }
    modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_chainBmd[mType]);
    JUT_ASSERT(592, modelData != 0);
    chain_s* pChain = mChains;
    for (int i = 0; i < 6; i++, pChain++) {
        pChain->mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (pChain->mModel == NULL) {
            return 0;
        }
    }
    modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName[mType], l_handleBmd[mType]);
    JUT_ASSERT(609, modelData != 0);
    mHandleModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mHandleModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80BD6E94-80BD6ED0 000534 003C+00 1/1 0/0 0/0 .text            __dt__Q212daObjCwall_c7chain_sFv */
daObjCwall_c::chain_s::~chain_s() {
}

/* 80BD6ED0-80BD6ED4 000570 0004+00 1/1 0/0 0/0 .text            __ct__Q212daObjCwall_c7chain_sFv */
daObjCwall_c::chain_s::chain_s() {
}

/* 80BD6ED4-80BD6F80 000574 00AC+00 1/1 0/0 0/0 .text            create1st__12daObjCwall_cFv */
int daObjCwall_c::create1st() {
    mType = getType();
    int rv = dComIfG_resLoad(&mPhase, l_arcName[mType]);
    if (rv == cPhs_COMPLEATE_e) {
        rv = MoveBGCreate(l_arcName[mType], l_dzb[mType], NULL, l_heap_size[mType], NULL);
        if (rv == cPhs_ERROR_e) {
            return rv;
        }
    }
    return rv;
}

/* 80BD6F80-80BD7288 000620 0308+00 1/0 0/0 0/0 .text            Execute__12daObjCwall_cFPPA3_A4_f
 */
int daObjCwall_c::Execute(Mtx** param_1) {
    field_0xf44 = field_0xf38;
    field_0xf54 = field_0xf50;
    chain_control();
    chain_s* pChain = mChains;
    if (daPy_py_c::setFmChainPos(this, &mChains[5].mPos, field_0xf0c)) {
        field_0xe90 = 1;
        eyePos = home.pos;
    } else {
        field_0xe90 = 0;
        eyePos = mChains[5].mPos;
        if (fopAcM_checkHookCarryNow(this)) {
            field_0xf58 = 1;
        } else {
            field_0xf58 = 0;
            current.pos = eyePos;
        }
    }
    if ((field_0xe93 == 0 && field_0xe90 != 0) || (field_0xe93 != 0 && field_0xe90 == 0)) {
        daPy_py_c::setPlayerSe(Z2SE_AL_GRAB_CHAIN);
    }
    chain_control2();
    if (field_0xe91 != 0) {
        field_0xf1c = 1000;
    } else {
        field_0xf1c = 7000;
    }
    setTension();
    block_mode_proc_call();
    setChainMtx();
    if (field_0xe90 != 0) {
        for (int i = 0; i < 4; i++) {
            cXyz acStack_30(l_side_co_offset[i]);
            mDoMtx_stack_c::transS(field_0xf38);
            mDoMtx_stack_c::YrotM(home.angle.y);
            mDoMtx_stack_c::multVec(&acStack_30, &acStack_30);
            mCyls[i].SetC(acStack_30);
            dComIfG_Ccsp()->Set(&mCyls[i]);
        }
    }
    cXyz cStack_3c(cXyz::Zero);
    mDoMtx_stack_c::transS(field_0xf38);
    mDoMtx_stack_c::YrotM(home.angle.y);
    mDoMtx_stack_c::multVec(&cStack_3c, &cStack_3c);
    mCyl2.SetC(cStack_3c);
    dComIfG_Ccsp()->Set(&mCyl2);
    *param_1 = &mBgMtx;
    setBaseMtx();
    calcSePos();
    field_0xe93 = field_0xe90;
    cXyz cStack_48 = daPy_getPlayerActorClass()->current.pos - current.pos;
    s16 angleDiff = cStack_48.atan2sX_Z() - shape_angle.y;
    if (abs(angleDiff) < 0x2000) {
        mSph.SetC(pChain[5].mPos);
        dComIfG_Ccsp()->Set(&mSph);
    }
    return 1;
}

/* 80BD7288-80BD7718 000928 0490+00 1/1 0/0 0/0 .text            setTension__12daObjCwall_cFv */
void daObjCwall_c::setTension() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 dVar9 = field_0xf54;
    field_0xe91 = 0;
    if (field_0xe90 == 0) {
        field_0xf50 = 0;
    }
    cXyz acStack_80;
    cXyz cStack_8c;
    getChainBasePos(&acStack_80);
    cStack_8c = field_0xe94[6];
    f32 dVar7 = cStack_8c.abs(acStack_80);
    f32 dVar10 = 188.0f;
    if (field_0xf58 != 0) {
        if (current.pos.abs(acStack_80) > dVar10 + 150.0f) {
            fopAcM_cancelHookCarryNow(this);
        }
    } else {
        if (field_0xe90 != 0) {
            daPy_getPlayerActorClass()->checkBootsOrArmorHeavy();
            if ((dVar9 == 0.0f && dVar7 > dVar10 + 20.0f) ||
                (dVar9 != 0.0f && dVar7 > dVar10 - 20.0f))
            {
                field_0xe91 = 1;
                if (checkPull()) {
                    cXyz local_98;
                    local_98.x = player->getSpeedF() * cM_ssin(player->current.angle.y);
                    local_98.z = player->getSpeedF() * cM_scos(player->current.angle.y);
                    field_0xf50 = local_98.absXZ();
                } else {
                    field_0xf50 = 0.0f;
                }
            } else {
                field_0xf50 = 0.0f;
                field_0xe91 = 0;
            }
            if (dVar7 > dVar10 - 20.0f) {
                field_0xf12 = 0;
            } else {
                field_0xf12 = 1;
            }
        }
    }
}

/* 80BD7718-80BD7788 000DB8 0070+00 2/2 0/0 0/0 .text            calcSePos__12daObjCwall_cFv */
void daObjCwall_c::calcSePos() {
    field_0xf2c.set(0.0f, 0.0f, 300.0f);
    mDoMtx_stack_c::transS(field_0xf38);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::multVec(&field_0xf2c, &field_0xf2c);
}

/* 80BDA34C-80BDA358 000054 000C+00 1/2 0/0 0/0 .bss             l_chainOffset */
static cXyz l_chainOffset(0.0f, 105.0f, 30.0f);

/* 80BD7788-80BD7804 000E28 007C+00 5/5 0/0 0/0 .text getChainBasePos__12daObjCwall_cFP4cXyz */
void daObjCwall_c::getChainBasePos(cXyz* pBasePos) {
    *pBasePos = l_chainOffset;
    mDoMtx_stack_c::transS(field_0xf38);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(pBasePos, pBasePos);
}

/* 80BD7804-80BD7AD4 000EA4 02D0+00 1/1 0/0 0/0 .text            setChainMtx__12daObjCwall_cFv */
void daObjCwall_c::setChainMtx() {
    chain_s* pChain = mChains;
    s16 sVar7 = home.angle.y;
    if (sVar7 == 0x4000 || sVar7 == 0xc000) {
        sVar7 += 0x4000;
    }
    daPy_py_c* player = daPy_getPlayerActorClass();
    for (int i = 0; i < 6; pChain++, i++) {
        cXyz local_34 = field_0xe94[i + 1] - field_0xe94[i];
        s16 sVar3 = cM_atan2s(local_34.x, local_34.z);
        if (field_0xe90 != 0 && i == 5) {
            sVar3 = player->shape_angle.y + 0x7fff;
        }
        s16 sVar4 = -cM_atan2s(local_34.y, local_34.absXZ());
        sVar7 += 0x4000;
        mDoMtx_stack_c::transS(pChain->mPos);
        mDoMtx_stack_c::ZXYrotM(sVar4, sVar3, sVar7);
        if (i == 5) {
            if (field_0xe90 != 0) {
                sVar3 = player->shape_angle.y + 0x7fff;
                mDoMtx_stack_c::transS(field_0xf20);
                mDoMtx_stack_c::YrotM(sVar3);
                mDoMtx_stack_c::XrotM(-field_0xf1a);
                mDoMtx_stack_c::ZrotM(0);
            }
            mHandleModel->setBaseTRMtx(mDoMtx_stack_c::get());
        } else {
            pChain->mModel->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    }
    cLib_addCalcAngleS2(&field_0xf1a, field_0xf1c, 5, 0x800);
}

/* 80BD7AD4-80BD7ED8 001174 0404+00 1/1 0/0 0/0 .text            chain_control__12daObjCwall_cFv */
void daObjCwall_c::chain_control() {
    cXyz* nextPos;
    cXyz* pos;
    nextPos = field_0xe94;
    chain_s* pChain = mChains;
    getChainBasePos(field_0xe94);
    pos = nextPos;
    f32 dVar10 = -6.0f;
    nextPos++;
    for (int i = 1; i < 7; i = i + 1) {
        if (field_0xe90 != 0) {
            if (!daPy_getPlayerActorClass()->checkBootsOrArmorHeavy()) {
                if (field_0xf50 > 5.0f || field_0xf58 != 0) {
                    dVar10 *= 0.1f;
                } else {
                    dVar10 = -6.0f;
                }
            }
        }
        field_0xee8[i] = dVar10;
        f32 dVar9 = nextPos->y;
        nextPos->y += field_0xee8[i];
        cXyz acStack_80(*nextPos);
        acStack_80.y += 100.0f;
        field_0xf04[i] = 0;
        if (fopAcM_gc_c::gndCheck(&acStack_80)) {
            f32 dVar8 = 15.0f + fopAcM_gc_c::getGroundY();
            if (dVar8 > nextPos->y) {
                nextPos->y = dVar8;
                field_0xee8[i] = 0;
                field_0xf04[i] = 1;
            }
        }
        if (field_0xf04[i] == 0) {
            if (field_0xf04[i - 1] != 0) {
                if (pos->y >= nextPos->y) {
                    nextPos->y = dVar9;
                }
            }
            if (i < 6 && field_0xf04[i + 1] != 0) {
                if (pChain[1].mPos.y >= nextPos->y) {
                    nextPos->y = dVar9;
                }
            }
        }
        cXyz cStack_8c = *nextPos - *pos;
        f32 dVar8 = cStack_8c.abs();
        cStack_8c.normalizeZP();
        f32 fVar1 = 38.0f;
        if (i == 6) {
            fVar1 = 5.0f;
        }
        if (dVar8 <= fVar1 - 8.0f) {
            dVar8 = fVar1 - 8.0f;
        }
        if (dVar8 > fVar1) {
            dVar8 = fVar1;
        }
        cStack_8c = cStack_8c * dVar8;
        *nextPos = *pos + cStack_8c;
        pChain->mPos.x = (pos->x + nextPos->x) * 0.5f;
        pChain->mPos.y = (pos->y + nextPos->y) * 0.5f;
        pChain->mPos.z = (pos->z + nextPos->z) * 0.5f;
        pChain++;
        pos = nextPos;
        nextPos++;
    }
}

/* 80BD7ED8-80BD84C0 001578 05E8+00 1/1 0/0 0/0 .text            chain_control2__12daObjCwall_cFv */
void daObjCwall_c::chain_control2() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    chain_s* local_130 = &mChains[5];
    cXyz* local_134 = &field_0xe94[6];
    field_0xf50 = 0.0f;
    if ((field_0xe90 == 0) && (field_0xf58 == 0)) {
        field_0xf1c = 0;
        current.pos = local_130->mPos;
    } else {
        cXyz acStack_98;
        cXyz cStack_a4;
        if (field_0xe90 != 0) {
            if (daPy_py_c::checkNowWolf()) {
                mDoMtx_stack_c::copy(player->getWolfMouthMatrix());
                mDoMtx_stack_c::multVecZero(&acStack_98);
                cXyz cStack_b0(0.0f, 0.0f, 60.0f);
                mDoMtx_stack_c::YrotS(player->shape_angle.y);
                mDoMtx_stack_c::XrotM(field_0xf1a);
                mDoMtx_stack_c::multVec(&cStack_b0, &cStack_b0);
                *local_134 = cStack_b0 + acStack_98;
                field_0xf20 = *local_134;
                acStack_98.set(0.0f, 0.0f, -10.0f);
            } else {
                acStack_98 = player->getRightHandPos();
                cXyz cStack_bc(25.0f, 10.0f, 60.0f);
                mDoMtx_stack_c::YrotS(player->shape_angle.y);
                mDoMtx_stack_c::XrotM(field_0xf1a);
                mDoMtx_stack_c::multVec(&cStack_bc, &cStack_bc);
                cStack_bc += acStack_98;
                *local_134 = cStack_bc;
                field_0xf20 = *local_134;
                acStack_98.set(0.0f, 0.0f, -10.0f);
            }
            mDoMtx_stack_c::YrotS(player->shape_angle.y + 0x7fff);
            mDoMtx_stack_c::XrotM(-field_0xf1a);
            mDoMtx_stack_c::multVec(&acStack_98, &cStack_a4);
            cStack_a4 += field_0xf20;
            *local_134 = cStack_a4;
        } else {
            if (field_0xf58 != 0) {
                field_0xf20 = current.pos;
                *local_134 = current.pos;
                ;
            }
        }
        f32 dVar12 = 0.0f;
        cXyz cStack_c8;
        cXyz cStack_d4;
        getChainBasePos(&cStack_c8);
        cStack_d4 = field_0xe94[6];
        f32 dVar10 = cStack_d4.abs(cStack_c8);
        f32 dVar11 = 188.0f;
        if (dVar10 > dVar11) {
            dVar12 = (dVar10 - dVar11) / 6.0f;
        }
        cXyz* pPos = local_134;
        int i = 5;
        dVar12 = 38.0f + dVar12;
        local_134--;
        for (; i >= 1; i--) {
            dVar10 = local_134->y;
            cXyz cStack_e0(*local_134);
            cStack_e0.y += 100.0f;
            if (fopAcM_gc_c::gndCheck(&cStack_e0)) {
                f32 gnd = fopAcM_gc_c::getGroundY() + 15.0f;
                if (gnd > local_134->y) {
                    local_134->y = gnd;
                    field_0xee8[i] = 0;
                }
            }
            if (field_0xf04[i + 1] != 0) {
                local_134->y = dVar10;
            }
            cXyz cStack_ec = *local_134 - *pPos;
            cStack_ec.normalizeZP();
            f32 fVar5 = dVar12;
            if (i == 5) {
                fVar5 = 5.0f;
            }
            cStack_ec = cStack_ec * fVar5;
            *local_134 = *pPos + cStack_ec;
            local_130->mPos.x = (pPos->x + local_134->x) * 0.5f;
            local_130->mPos.y = (pPos->y + local_134->y) * 0.5f;
            local_130->mPos.z = (pPos->z + local_134->z) * 0.5f;
            local_130--;
            pPos = local_134;
            local_134--;
        }
    }
}

/* 80BDA364-80BDA370 00006C 000C+00 0/1 0/0 0/0 .bss             l_smokeSetOffset */
static cXyz l_smokeSetOffset(0.0f,0.0f,-200.0f);

/* 80BD84C0-80BD8594 001B60 00D4+00 1/1 0/0 0/0 .text block_mode_proc_call__12daObjCwall_cFv */
void daObjCwall_c::block_mode_proc_call() {
    static daObjCwall_c::modeFunc l_func[3] = {
        &daObjCwall_c::modeWait,
        &daObjCwall_c::modeWalk,
        &daObjCwall_c::modeClose,
    };
    (this->*(l_func[field_0xe92]))();
    if (field_0xf50 != 0.0f) {
        setPower(field_0xf50, NULL);
    }
}

/* 80BD8594-80BD85C0 001C34 002C+00 2/2 0/0 0/0 .text            initWait__12daObjCwall_cFv */
void daObjCwall_c::initWait() {
    speed.setall(0.0f);
    field_0xf0e = 0;
    field_0xf10 = 20;
    field_0xe92 = 0;
}

/* 80BD85C0-80BD8748 001C60 0188+00 1/0 0/0 0/0 .text            modeWait__12daObjCwall_cFv */
void daObjCwall_c::modeWait() {
    u8 bVar2;
    daPy_py_c* player = static_cast<daPy_py_c*>(daPy_getPlayerActorClass());
    u8 dVar1 = field_0xf0e;
    if (field_0xe90 != 0) {
        bVar2 = true;
        if (player->checkBootsOrArmorHeavy() && field_0xf12 == 0) {
            bVar2 = false;
        }
        if (checkPullNow()) {
            field_0xf0e++;
            if (field_0xf50 != 0.0f && !checkWall() && player->getBaseAnimeFrame() > 6.0f &&
                player->getBaseAnimeFrame() < 8.0f && field_0xf0e > 8)
            {
                initWalk();
            }
        } else {
            if (bVar2 && cLib_calcTimer(&field_0xf10) == 0 && field_0xf0d != 0) {
                field_0xf59 = field_0xf0d;
                initClose();
            }
        }
    } else {
        field_0xf0e = 0;
        if (field_0xf0d != 0) {
            field_0xf59 = field_0xf0d;
            initClose();
        }
    }
    if (field_0xf0d == 9 || dVar1 == field_0xf0e) {
        field_0xf0e = 0;
    }
}

/* 80BD8748-80BD8778 001DE8 0030+00 2/2 0/0 0/0 .text            initWalk__12daObjCwall_cFv */
void daObjCwall_c::initWalk() {
    speed.setall(0.0f);
    field_0xf14 = 13;
    field_0xf16 = 0x9d8;
    field_0xe92 = 1;
}

/* 80BD8778-80BD8BC8 001E18 0450+00 1/0 0/0 0/0 .text            modeWalk__12daObjCwall_cFv */
void daObjCwall_c::modeWalk() {
    s16 bVar1 = 13;
    f32 dVar7 = 75.0f;
    cLib_calcTimer(&field_0xf14);
    f32 dVar6 = cM_scos(
        field_0xf16 * (bVar1 - field_0xf14));
    dVar6 = (1.0f - dVar6) * 0.5f;
    cXyz local_78(0.0f, 0.0f, 1.0f);
    mDoMtx_stack_c::YrotS(home.angle.y);
    mDoMtx_stack_c::multVec(&local_78, &local_78);
    field_0xf38.x = home.pos.x + local_78.x * (dVar7 * (field_0xf0d + dVar6));
    field_0xf38.z = home.pos.z + local_78.z * (dVar7 * (field_0xf0d + dVar6));
    speed.z = std::fabs(field_0xf38.absXZ(field_0xf44));
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 local_88 = player->current.angle.y + 0x7fff;
    cXyz local_84;
    local_84.x = player->getSpeedF() * cM_ssin(player->current.angle.y);
    local_84.z = (player->getSpeedF() * cM_scos(player->current.angle.y));
    setPower(std::sqrt(local_84.x * local_84.x + local_84.z * local_84.z), &local_88);
    setPower(speed.z, &shape_angle.y);
    field_0xf50 = 0;
    mDoAud_seStartLevel(Z2SE_OBJ_CWALL_MOVE, &field_0xf2c, 0, 0);
    if (field_0xf14 == 0) {
        initWait();
        field_0xf0d++;
        if (field_0xf0d == 9) {
            mDoAud_seStart(Z2SE_OBJ_CWALL_MOVE_STOP, &field_0xf2c, 0, 0);
        }
    }
}

/* 80BD8BC8-80BD8BF0 002268 0028+00 1/1 0/0 0/0 .text            initClose__12daObjCwall_cFv */
void daObjCwall_c::initClose() {
    speed.setall(0.0f);
    field_0xf0e = 0;
    field_0xe92 = 2;
}

/* 80BD8BF0-80BD935C 002290 076C+00 1/0 0/0 0/0 .text            modeClose__12daObjCwall_cFv */
void daObjCwall_c::modeClose() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    f32 dVar11 = field_0xf38.absXZ(home.pos);
    bool bVar6 = false;
    u8 dVar1 = field_0xf0e;
    if (field_0xe90 != 0) {
        cXyz cStack_a4;
        cXyz cStack_b0;
        getChainBasePos(&cStack_a4);
        cStack_b0 = field_0xe94[6];
        if (cStack_b0.abs(cStack_a4) > 188.0f) {
            field_0xe91 = 1;
            if (player->getSpeedF() == 0.0f) {
                field_0xf50 = speed.z;
            } else {
                if (checkPull()) {
                    field_0xf50 = std::fabs(player->getSpeedF()) + std::fabs(speed.z);
                } else {
                    field_0xf50 = 0.0f;
                }
            }
        } else {
            field_0xe91 = 0;
        }
        if (field_0xe91 != 0 && checkPullNow()) {
            field_0xf0e++;
        } else {
            field_0xf0e = 0;
        }
        if (field_0xf0e >= 8) {
            bVar6 = true;
        }
    }
    if (dVar1 == field_0xf0e) {
        field_0xf0e = 0;
    }
    speed.z += 0.01f;
    if (speed.z > 1.5f) {
        speed.z = 1.5f;
    }
    int iVar7 = cLib_chasePos(&field_0xf38, home.pos, std::fabs(speed.z));
    f32 dVar12 = field_0xf38.absXZ(home.pos);
    if (iVar7 != 0) {
        if (bVar6) {
            field_0xf0d = 0;
            initWalk();
        } else {
            OS_REPORT("引き戸：閉じました！\n");
            dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            field_0xf0d = 0;
            mDoAud_seStart(Z2SE_OBJ_CWALL_BACK_STOP, &field_0xf2c, 0, 0);
            initWait();
            if (field_0xf59 >= 5 && getSwbit() != 0xff) {
                fopAcM_onSwitch(this, getSwbit());
            }
        }
        field_0xf59 = 0;
    } else {
        s32 iVar7 = (int)dVar11 / 75;
        int temp = (int)dVar12 / 75;
        if (temp != iVar7) {
            if (bVar6) {
                field_0xf0d = iVar7;
                initWait();
                field_0xf0e = 8;
            } else {
                if (daPy_getPlayerActorClass()->checkBootsOrArmorHeavy()) {
                    mDoAud_seStart(Z2SE_OBJ_CWALL_CHAIN_TENSION, &mChains[0].mPos, 0, 0);
                    field_0xf0d = iVar7;
                    initWait();
                }
            }
        }
        if (daPy_getPlayerActorClass()->checkBootsOrArmorHeavy()) {
            mDoAud_seStartLevel(Z2SE_OBJ_CWALL_BACK_SLOW, &field_0xf2c, 0, 0);
        } else {
            mDoAud_seStartLevel(Z2SE_OBJ_CWALL_BACK, &field_0xf2c, 0, 0);
        }
    }
    cXyz cStack_bc(l_top_co_offset);
    mDoMtx_stack_c::transS(field_0xf38);
    mDoMtx_stack_c::YrotM(home.angle.y);
    mDoMtx_stack_c::multVec(&cStack_bc,&cStack_bc);
    mCyl.SetC(cStack_bc);
    dComIfG_Ccsp()->Set(&mCyl);
}

/* 80BD935C-80BD9414 0029FC 00B8+00 2/2 0/0 0/0 .text            setPower__12daObjCwall_cFfPs */
void daObjCwall_c::setPower(f32 param_1, s16* param_2) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 sVar3;
    if (param_2 == NULL) {
        chain_s* pChain = mChains;
        cXyz local_28;
        local_28 = pChain[4].mPos - pChain[5].mPos;
        sVar3 = cM_atan2s(local_28.x, local_28.z);
    } else {
        sVar3 = *param_2;
    }
    player->setOutPower(param_1, sVar3, 0);
    field_0xf0f = 1;
}

/* 80BD9414-80BD95A0 002AB4 018C+00 1/1 0/0 0/0 .text            checkWall__12daObjCwall_cFv */
BOOL daObjCwall_c::checkWall() {
    cXyz acStack_30[2] = {cXyz(-95.0f, 5.0f, 1.0f), cXyz(95.0f, 5.0f, 1.0f)};
    cXyz cStack_40(0.0f, 0.0f, 1.0f);
    cStack_40.z = 75.0f;
    BOOL rv = FALSE;
    mDoMtx_stack_c::YrotS(current.angle.y);
    for (int i = 0; i < 2; i = i + 1) {
        cXyz cStack_4c(acStack_30[i]);
        cXyz cStack_58(cStack_40);
        mDoMtx_stack_c::multVec(&cStack_4c, &cStack_4c);
        cStack_4c += field_0xf38;
        mDoMtx_stack_c::multVec(&cStack_58, &cStack_58);
        cStack_58 += cStack_4c;
        if (fopAcM_lc_c::lineCheck(&cStack_4c, &cStack_58, this)) {
            rv = TRUE;
        }
    }
    return rv;
}

/* 80BD95A0-80BD977C 002C40 01DC+00 2/2 0/0 0/0 .text            checkPullNow__12daObjCwall_cFv */
BOOL daObjCwall_c::checkPullNow() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 dummy;
    bool iVar2 = player->getStickAngleFromPlayerShape(&dummy);
    cXyz cStack_20(0.0f, 0.0f, 290.0f);
    mDoMtx_stack_c::transS(field_0xf38);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::multVec(&cStack_20, &cStack_20);
    cXyz local_2c = player->current.pos - cStack_20;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&local_2c, &local_2c);
    cXyz local_38;
    cXyz local_44;
    if (daPy_py_c::checkNowWolf()) {
        local_38 = l_check_min_wolf;
        local_44 = l_check_max_wolf;
    } else {
        local_38 = l_check_min;
        local_44 = l_check_max;
    }
    if (local_38.x <= local_2c.x && local_2c.x <= local_44.x && local_38.z <= local_2c.z &&
        local_2c.z <= local_44.z && iVar2)
    {
        return 1;
    }
    return 0;
}

/* 80BD977C-80BD9848 002E1C 00CC+00 2/2 0/0 0/0 .text            checkPull__12daObjCwall_cFv */
BOOL daObjCwall_c::checkPull() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz local_2c;
    cXyz cStack_38 = mChains[0].mPos - mChains[5].mPos;
    local_2c.x = player->getSpeedF() * cM_ssin(player->current.angle.y);
    local_2c.z = player->getSpeedF() * cM_scos(player->current.angle.y);
    if (field_0xe90 != 0 && cStack_38.inprodXZ(local_2c) < 0.0f) {
        return 1;
    }
    return 0;
}

/* 80BD9848-80BD9948 002EE8 0100+00 1/0 0/0 0/0 .text            Draw__12daObjCwall_cFv */
int daObjCwall_c::Draw() {
    g_env_light.settingTevStruct( 0x10,
                                         &field_0xf38, &tevStr);
    g_env_light.setLightTevColorType_MAJI(
                                                  mWallModel,
                                                  &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mWallModel);
    dComIfGd_setList();

    chain_s* pChain = mChains;
    for (int i = 0; i < 5; pChain++, i++) {
        g_env_light.setLightTevColorType_MAJI(pChain->mModel, &tevStr);
        mDoExt_modelUpdateDL(pChain->mModel);
    }
    g_env_light.setLightTevColorType_MAJI(mHandleModel, &tevStr);
    mDoExt_modelUpdateDL(mHandleModel);
    return 1;
}

/* 80BD9948-80BD9988 002FE8 0040+00 1/0 0/0 0/0 .text            Delete__12daObjCwall_cFv */
int daObjCwall_c::Delete() {
    dComIfG_resDelete(&mPhase, l_arcName[mType]);
    return 1;
}

/* 80BD9988-80BD9B70 003028 01E8+00 1/0 0/0 0/0 .text daObjCwall_create1st__FP12daObjCwall_c */
static int daObjCwall_create1st(daObjCwall_c* i_this) {
    fopAcM_SetupActor(i_this, daObjCwall_c);
    return i_this->create1st();
}

/* 80BD9DF8-80BD9E18 003498 0020+00 1/0 0/0 0/0 .text daObjCwall_MoveBGDelete__FP12daObjCwall_c */
static int daObjCwall_MoveBGDelete(daObjCwall_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BD9E18-80BD9E38 0034B8 0020+00 1/0 0/0 0/0 .text daObjCwall_MoveBGExecute__FP12daObjCwall_c
 */
static int daObjCwall_MoveBGExecute(daObjCwall_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BD9E38-80BD9E64 0034D8 002C+00 1/0 0/0 0/0 .text daObjCwall_MoveBGDraw__FP12daObjCwall_c */
static int daObjCwall_MoveBGDraw(daObjCwall_c* i_this) {
    return i_this->Draw();
}

/* 80BDA240-80BDA260 -00001 0020+00 1/0 0/0 0/0 .data            daObjCwall_METHODS */
static actor_method_class daObjCwall_METHODS = {
    (process_method_func)daObjCwall_create1st,
    (process_method_func)daObjCwall_MoveBGDelete,
    (process_method_func)daObjCwall_MoveBGExecute,
    NULL,
    (process_method_func)daObjCwall_MoveBGDraw,
};

/* 80BDA260-80BDA290 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_ChainWall */
extern actor_process_profile_definition g_profile_Obj_ChainWall = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_ChainWall,     // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjCwall_c),   // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  598,                    // mPriority
  &daObjCwall_METHODS,    // sub_method
  0x000C0000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES

/* 80BDA0AC-80BDA0AC 000108 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
