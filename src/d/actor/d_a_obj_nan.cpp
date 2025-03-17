/**
 * @file d_a_obj_nan.cpp
 * 
*/

#include "d/actor/d_a_obj_nan.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/d_menu_insect.h"
#include "d/d_cc_uty.h"
#include "d/d_com_inf_game.h"

UNK_REL_DATA

/* 80CA32D0-80CA3310 000020 0040+00 0/1 0/0 0/0 .data cc_sph_src__25@unnamed@d_a_obj_nan_cpp@ */
static dCcD_SrcSph cc_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x014040, 0x43}, 0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 20.0f} // mSph
    } // mSphAttr
};

/* 80CA05AC-80CA05D4 0000EC 0028+00 1/1 0/0 0/0 .text            __ct__14daObj_NanHIO_cFv */
daObj_NanHIO_c::daObj_NanHIO_c() {
    field_0x4 = -1;
    field_0xc = 1.2f;
    field_0x8 = 1.2f;
}

/* 80CA05D4-80CA0678 000114 00A4+00 9/9 0/0 0/0 .text
 * setAction__10daObjNAN_cFM10daObjNAN_cFPCvPv_v                */
void daObjNAN_c::setAction(actionFunc action) {
    if (mAction != NULL) {
        field_0x7d0 = -1;
        (this->*mAction)();
    }
    mPrevAction = mAction;
    mAction = action;
    field_0x7d0 = 0;
    (this->*mAction)();
}

/* ############################################################################################## */
/* 80CA31C0-80CA31C8 000004 0008+00 0/1 0/0 0/0 .rodata          l_nan_brk_index */
static int const l_nan_brk_index[2] = {
    13, 12,
};

/* 80CA31C8-80CA31D0 00000C 0008+00 0/1 0/0 0/0 .rodata          l_nan_btk_index */
static int const l_nan_btk_index[2] = {
    17, 16,
};

inline int daObjNAN_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("I_Nan", 9);
    JUT_ASSERT(254, modelData != 0);
    mMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                       (J3DAnmTransform*)dComIfG_getObjectRes("I_Nan", 6), 2, 1.0f,
                                       0, -1, &mCreatureSound, 0, 0x11000284);
    if (mMorf == NULL || mMorf->getModel() == NULL) {
        return 0;
    }
    J3DModel* model = mMorf->getModel();
    mBrk = new mDoExt_brkAnm();
    if (mBrk == NULL) {
        return 0;
    }
    J3DAnmTevRegKey* anmRegKey =
        (J3DAnmTevRegKey*)dComIfG_getObjectRes("I_Nan", l_nan_brk_index[field_0x7fb]);
    if (mBrk->init(model->getModelData(), anmRegKey, 1, 2, 1.0f, 0, -1) == 0) {
        return 0;
    }
    mBtk = new mDoExt_btkAnm();
    if (mBtk == NULL) {
        return 0;
    }
    J3DAnmTextureSRTKey* anmTexture =
        (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("I_Nan", l_nan_btk_index[field_0x7fb]);
    if (mBtk->init(model->getModelData(), anmTexture, 1, 2, 1.0f, 0, -1) == 0) {
        return 0;
    }
    mMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("I_Nan", 6), 2, 5.0f, 1.0f, 0.0f, -1.0f);
    return 1;
}

/* 80CA0678-80CA08EC 0001B8 0274+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    return static_cast<daObjNAN_c*>(i_this)->CreateHeap();
}

/* 80CA0934-80CA0954 000474 0020+00 1/0 0/0 0/0 .text            daObjNAN_Create__FP10fopAc_ac_c */
static int daObjNAN_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daObjNAN_c*>(i_this)->create();
}

/* 80CA0954-80CA0978 000494 0024+00 1/0 0/0 0/0 .text            daObjNAN_Delete__FP10daObjNAN_c */
static int daObjNAN_Delete(daObjNAN_c* i_this) {
    fopAcM_GetID(i_this);
    static_cast<daObjNAN_c*>(i_this)->_delete();
    return 1;
}

/* 80CA0978-80CA0A2C 0004B8 00B4+00 1/1 0/0 0/0 .text            nan_posMove__10daObjNAN_cFv */
void daObjNAN_c::nan_posMove() {
    if (field_0x7fc == 0) {
        cLib_chaseAngleS(&field_0x7d4.x, field_0x7da.x, 0x100);
        cLib_chaseAngleS(&field_0x7d4.z, field_0x7da.z, 0x100);
    }
    cXyz zSpeed(0.0f, 0.0f, speedF);
    cXyz posOffset(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(field_0x7d4);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::multVec(&zSpeed, &posOffset);
    current.pos += posOffset;
}

/* 80CA0A2C-80CA0D54 00056C 0328+00 4/0 0/0 0/0 .text            turn__10daObjNAN_cFv */
void daObjNAN_c::turn() {
    if (field_0x7d0 == 0) {
        speedF = 0.0f;
        field_0x7d0++;
    } else if (field_0x7d0 != -1) {
        dBgS_LinChk linChk;
        cXyz cStack_b8(0.0f, 20.0f, 0.0f);
        cXyz cStack_c4(0.0f, -20.0f, 0.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(field_0x7d4);
        mDoMtx_stack_c::YrotM(current.angle.y);
        mDoMtx_stack_c::multVec(&cStack_b8, &cStack_b8);
        mDoMtx_stack_c::multVec(&cStack_c4, &cStack_c4);
        linChk.SetObj();
        linChk.Set(&cStack_b8, &cStack_c4, NULL);
        if (dComIfG_Bgsp().LineCross(&linChk)) {
            cM3dGPla plane;
            dComIfG_Bgsp().GetTriPla(linChk, &plane);
            const cXyz* normal = plane.GetNP();
            cXyz cStack_d0(0.0f, 0.0f, 0.0f);
            cXyz cStack_dc(0.0f, normal->y, normal->z);
            f32 uVar9 = cStack_d0.abs(cStack_dc);
            current.pos = linChk.GetCross();
            s16 uVar6 = cM_atan2s(normal->z, normal->y);
            field_0x7da.x = uVar6;
            field_0x7d4.x = uVar6;
            s16 sVar7 = -cM_atan2s(normal->x, uVar9);
            field_0x7da.z = sVar7;
            field_0x7d4.z = sVar7;
        }
        field_0x7fc = nan_WalkAnm();
        if (field_0x7fc == 0 &&
            cLib_chaseAngleS(&current.angle.y, field_0x7e4, 0x40) != 0)
        {
            setAction(&daObjNAN_c::walk);
        }
        if (mDraw) {
            nan_setParticle();
        }
    }
}

/* 80CA0D9C-80CA0E7C 0008DC 00E0+00 2/2 0/0 0/0 .text            nan_WalkAnm__10daObjNAN_cFv */
u8 daObjNAN_c::nan_WalkAnm() {
    if (mMorf->getFrame() == 39.0f ||
        mMorf->getFrame() == 79.0f)
    {
        if (field_0x7e2 != 0) {
            field_0x7e2--;
            mMorf->setPlaySpeed(0.0f);
            return 1;
        }
        field_0x7e2 = (u8)(cM_rndF(30.0f) + 18.0f);
        mMorf->setPlaySpeed(1.0f);
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KSKS, 0, -1);
    }
    return 0;
}

/* 80CA0E7C-80CA1184 0009BC 0308+00 1/0 0/0 0/0 .text            wait__10daObjNAN_cFv */
void daObjNAN_c::wait() {
    if (field_0x7d0 == 0) {
        field_0x7d0++;
    } else if (field_0x7d0 == -1) {
        home.pos = current.pos;
    } else {
        dBgS_LinChk linChk;
        cXyz cStack_b8;
        cXyz cStack_c4;
        cStack_b8.set(0.0f, 20.0f, 0.0f);
        cStack_c4.set(0.0f, -1000.0f, 0.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(current.angle);
        mDoMtx_stack_c::multVec(&cStack_b8, &cStack_b8);
        mDoMtx_stack_c::multVec(&cStack_c4, &cStack_c4);
        linChk.SetObj();
        linChk.Set(&cStack_b8, &cStack_c4, NULL);
        if (dComIfG_Bgsp().LineCross(&linChk)) {
            cM3dGPla plane;
            dComIfG_Bgsp().GetTriPla(linChk, &plane);
            const cXyz* normal = plane.GetNP();
            cXyz cStack_d0(0.0f, 0.0f, 0.0f);
            cXyz cStack_dc(0.0f, normal->y, normal->z);
            f32 uVar8 = cStack_d0.abs(cStack_dc);
            current.pos = old.pos = linChk.GetCross();
            s16 uVar6 = cM_atan2s(normal->z, normal->y);
            field_0x7da.x = uVar6;
            field_0x7d4.x = uVar6;
            s16 sVar7 = -cM_atan2s(normal->x, uVar8);
            field_0x7da.z = sVar7;
            field_0x7d4.z = sVar7;
            current.angle.z = 0;
            current.angle.x = 0;
            setAction(&daObjNAN_c::walk);
        }
    }
}

/* 80CA1184-80CA1904 000CC4 0780+00 4/0 0/0 0/0 .text            walk__10daObjNAN_cFv */
void daObjNAN_c::walk() {
    if (field_0x7d0 == 0) {
        field_0x7e0 = 180;
        field_0x7e2 = (u8)(cM_rndF(30.0f) + 18.0f);
        field_0x7f8 = 600;
        field_0x7fc = 0;
        speedF = 0.0f;
        field_0x7d0++;
    } else if (field_0x7d0 == -1) {
        speedF = 0.0f;
    } else {
        field_0x7fc = nan_WalkAnm();
        f32 dVar15;
        if (field_0x7fc != 0) {
            dVar15 = 0.0f;
            speedF = 0;
        } else {
            dVar15 = 0.2f;
            if (60.0f < mMorf->getFrame() ||
                (30.0f < mMorf->getFrame() && mMorf->getFrame() < 40.0f))
            {
                dVar15 = 0.0f;
            }
        }
        if (field_0x7da.x != field_0x7d4.x ||
            field_0x7da.z != field_0x7d4.z)
        {
            dVar15 = 0.0f;
            speedF = 0;
        }
        cLib_chaseF(&speedF, dVar15, 0.02f);
        nan_posMove();
        if (mDraw) {
            nan_setParticle();
        }
        dBgS_LinChk adStack_c8;
        dBgS_LinChk adStack_138;
        cXyz cStack_170(0.0f, 20.0f, 0.0f);
        cXyz cStack_17c(0.0f, -20.0f, 0.0f);
        cXyz cStack_188(0.0f, 20.0f, 12.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(field_0x7d4);
        mDoMtx_stack_c::YrotM(current.angle.y);
        mDoMtx_stack_c::multVec(&cStack_170, &cStack_170);
        mDoMtx_stack_c::multVec(&cStack_17c, &cStack_17c);
        mDoMtx_stack_c::multVec(&cStack_188, &cStack_188);
        adStack_c8.SetObj();
        adStack_138.SetObj();
        adStack_c8.Set(&cStack_170, &cStack_17c, NULL);
        adStack_138.Set(&cStack_170, &cStack_188, NULL);
        if (dComIfG_Bgsp().LineCross(&adStack_c8)) {
            cM3dGPla plane1;
            dComIfG_Bgsp().GetTriPla(adStack_c8, &plane1);
            const cXyz* normal = plane1.GetNP();
            cXyz cStack_194(0.0f, 0.0f, 0.0f);
            cXyz cStack_1a0(0.0f, normal->y, normal->z);
            f32 uVar14 = cStack_194.abs(cStack_1a0);
            current.pos = adStack_c8.GetCross();
            field_0x7da.x = cM_atan2s(normal->z, normal->y);
            field_0x7da.z = -cM_atan2s(normal->x, uVar14);
            if (dComIfG_Bgsp().LineCross(&adStack_138)) {
                cM3dGPla plane2;
                dComIfG_Bgsp().GetTriPla(adStack_138, &plane2);
                normal = plane2.GetNP();
                current.pos = old.pos;
                field_0x7e4 = cM_atan2s(normal->x, normal->z) + cM_rndFX(6144.0f);
                setAction(&daObjNAN_c::turn);
                return;
            } else {
                
            }
        } else {
            current.pos = old.pos;
            field_0x7e4 = current.angle.y - 0x8000 + cM_rndFX(6144.0f);
            setAction(&daObjNAN_c::turn);
            return;
        }

        if (field_0x7f8 == 0) {
            field_0x7e4 = cM_rndFX(32768.0f);
            setAction(&daObjNAN_c::turn);
            return;
        } else if (field_0x7e0 == 0 && home.pos.abs(current.pos) > 200.0f) {
            cXyz local_1ac;
            local_1ac = home.pos - current.pos;
            local_1ac.x += cM_rndFX(1050.0f);
            local_1ac.z += cM_rndFX(1050.0f);
            field_0x7e4 = cM_atan2s(local_1ac.x, local_1ac.z);
            setAction(&daObjNAN_c::turn);
            return;
        } else {
            return;
        }
    }
}

/* 80CA1904-80CA1A20 001444 011C+00 1/0 0/0 0/0 .text            bin_wait__10daObjNAN_cFv */
void daObjNAN_c::bin_wait() {
    if (field_0x7d0 == 0) {
        fopAcM_OnStatus(this, 0x4000);
        mDraw = false;
        field_0x7d0++;
    } else if (field_0x7d0 != -1 && field_0x56C != 0) {
        current.angle.y = daPy_getPlayerActorClass()->current.angle.y - 0x4000;
        if (strcmp("R_SP160", dComIfGp_getStartStageName()) == 0 &&
            dComIfGp_getStartStageRoomNo() == 3)
        {
            field_0x7fa = 1;
            mDraw = true;
            setAction(&daObjNAN_c::drop);
        } else {
            setAction(&daObjNAN_c::bin_action);
        }
    }
}

/* 80CA1A20-80CA1B50 001560 0130+00 1/0 0/0 0/0 .text            bin_action__10daObjNAN_cFv */
void daObjNAN_c::bin_action() {
    if (field_0x7d0 == 0) {
        mDraw = true;
        gravity = -2.0f;
        maxFallSpeed = gravity;
        scale.setall(0.4f);
        field_0x7e0 = 10.0f;
        field_0x7d0++;
    } else if (field_0x7d0 == -1) {
        gravity = 0.0f;
        maxFallSpeed = 0.0f;
    } else {
        f32 newScale = scale.x;
        if (mDraw) {
            nan_setParticle();
        }
        fopAcM_posMoveF(this, 0);
        if (field_0x7e0 != 0) {
            cLib_chaseF(&newScale, 0.6f, 0.1f);
        } else {
            cLib_addCalc2(&newScale, 0.0f, 62.0f, 0.05f);
            scale.setall(newScale);
            if (newScale < 0.1) {
                fopAcM_delete(this);
                return;
            }
        }
        scale.setall(newScale);
    }
}

/* 80CA1B50-80CA1D5C 001690 020C+00 6/6 0/0 0/0 .text            nan_setParticle__10daObjNAN_cFv */
void daObjNAN_c::nan_setParticle() {
    if (CheckZ()) {
        cLib_chaseF(&field_0x7e8, 0.0f, 1.0f);
    } else {
        cLib_chaseF(&field_0x7e8, 1.0f, 1.0f);
    }
    if (field_0x7fa != 2) {
        if (strcmp("R_SP160", dComIfGp_getStartStageName()) == 0) {
            if (strcmp("R_SP160", dComIfGp_getStartStageName()) != 0) {
                return;
            }
            if (dComIfGp_getStartStageRoomNo() == 3) {
                return;
            }
        }
        mParticleKey1 = dComIfGp_particle_set(mParticleKey1, 0xa1b, &current.pos, &tevStr,
                                              &shape_angle, 0, 0xff, 0, -1, 0, 0, 0);
        JPABaseEmitter* pEmitter = (JPABaseEmitter*)dComIfGp_particle_getEmitter(mParticleKey1);
        if (pEmitter != NULL) {
            pEmitter->setGlobalParticleScale(field_0x7e8 * scale.x, field_0x7e8 * scale.x);
        }
        mParticleKey2 = dComIfGp_particle_set(mParticleKey2, 0xa1c, &current.pos, &tevStr,
                                              &shape_angle, 0, 0xff, 0, -1, 0, 0, 0);
        pEmitter = dComIfGp_particle_getEmitter(mParticleKey2);
        if (pEmitter != NULL) {
            pEmitter->setGlobalParticleScale(field_0x7e8 * scale.x, field_0x7e8 * scale.x);
        }
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
    }
}

/* 80CA1D5C-80CA1F60 00189C 0204+00 1/0 0/0 0/0 .text            hook__10daObjNAN_cFv */
void daObjNAN_c::hook() {
    if (field_0x7d0 == 0) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        cXyz cStack_b0(0.0f, -5.0f, 0.0f);
        mSph.SetTgType(0);
        player->setHookshotCarryOffset(fopAcM_GetID(this), &cStack_b0);
        field_0x7d0++;
    } else if (field_0x7d0 == -1) {
        mSph.SetTgType(0x14040);
        home.pos = current.pos;
    } else {
        if (mDraw) {
            nan_setParticle();
        }
        if (!fopAcM_checkStatus(this, 0x100000)) {
            setAction(&daObjNAN_c::drop);
        }
        dBgS_LinChk linkChk;
        linkChk.SetObj();
        linkChk.Set(&old.pos, &current.pos, NULL);
        if (dComIfG_Bgsp().LineCross(&linkChk)) {
            cM3dGPla plane;
            cXyz local_bc;
            dComIfG_Bgsp().GetTriPla(linkChk, &plane);
            const cXyz* normal = plane.GetNP();
            local_bc = linkChk.GetCross();
            local_bc.x += normal->x * 20.0f;
            local_bc.y += normal->y * 20.0f;
            local_bc.z += normal->z * 20.0f;
            current.pos = old.pos = local_bc;
        }
    }
}

/* 80CA1F60-80CA2368 001AA0 0408+00 1/0 0/0 0/0 .text            boomerang__10daObjNAN_cFv */
void daObjNAN_c::boomerang() {
    if (field_0x7d0 == 0) {
        mSph.SetTgType(0);
        mSph.GetTgHitGObj();
        mBoomerangMove.initOffset(&current.pos);
        field_0x7d4.setall(0);
        field_0x7da.setall(0);
        field_0x7d0++;
    } else if (field_0x7d0 == -1) {
        mSph.SetTgType(0x14040);
        home.pos = current.pos;
    } else {
        daPy_getPlayerActorClass();
        if (mDraw) {
            nan_setParticle();
        }
        if (mBoomerangMove.posMove(&current.pos, &current.angle.y, NULL, 0x1c00) == 0) {
            daPy_py_c* player = daPy_getPlayerActorClass();
            dBgS_LinChk linChk;
            cXyz cStack_cc;
            cXyz cStack_d8(0.0f, 0.0f, 100.0f);
            cStack_cc = player->current.pos;
            cStack_cc.y += 200.0f;
            mDoMtx_stack_c::transS(cStack_cc);
            mDoMtx_stack_c::YrotM(cM_rndFX(32768.0f));
            mDoMtx_stack_c::multVec(&cStack_d8, &cStack_d8);
            linChk.SetObj();
            linChk.Set(&cStack_cc, &cStack_d8, NULL);
            if (dComIfG_Bgsp().LineCross(&linChk)) {
                cM3dGPla plane;
                dComIfG_Bgsp().GetTriPla(linChk, &plane);
                const cXyz* normal = plane.GetNP();
                cXyz cStack_e4(0.0f, 0.0f, 0.0f);
                cXyz cStack_f0(0.0f, normal->y, normal->z);
                f32 uVar11 = cStack_e4.abs(cStack_f0);
                current.pos = old.pos = linChk.GetCross();
                s16 uVar7 = cM_atan2s(normal->z, normal->y);
                field_0x7da.x = uVar7;
                field_0x7d4.x = uVar7;
                s16 sVar8 = -cM_atan2s(normal->x, uVar11);
                field_0x7da.z = sVar8;
                field_0x7d4.z = sVar8;
                setAction(&daObjNAN_c::walk);
            } else {
                current.pos = old.pos = cStack_cc;
                setAction(&daObjNAN_c::drop);
            }
        } else {
            mBoomerangMove.bgCheckAfterOffset(&current.pos);
        }
    }
}

/* 80CA2368-80CA2658 001EA8 02F0+00 3/0 0/0 0/0 .text            drop__10daObjNAN_cFv */
void daObjNAN_c::drop() {
    if (field_0x7d0 == 0) {
        speedF = 0.0f;
        gravity = -5.0f;
        maxFallSpeed = -30.0f;
        field_0x7d4.setall(0);
        field_0x7da.setall(0);
        field_0x7d0++;
    } else if (field_0x7d0 == -1) {
        gravity = 0.0f;
        maxFallSpeed = 0.0f;
        home.pos = current.pos;
    } else {
        dBgS_LinChk linChk;
        fopAcM_posMoveF(this, NULL);
        linChk.SetObj();
        linChk.Set(&old.pos, &current.pos, NULL);
        if (dComIfG_Bgsp().LineCross(&linChk)) {
            cM3dGPla plane;
            dComIfG_Bgsp().GetTriPla(linChk, &plane);
            const cXyz* normal = plane.GetNP();
            cXyz cStack_e4(0.0f, 0.0f, 0.0f);
            cXyz cStack_f0(0.0f, normal->y, normal->z);
            f32 uVar11 = cStack_e4.abs(cStack_f0);
            current.pos = old.pos = linChk.GetCross();
            s16 uVar7 = cM_atan2s(normal->z, normal->y);
            field_0x7da.x = uVar7;
            field_0x7d4.x = uVar7;
            s16 sVar8 = -cM_atan2s(normal->x, uVar11);
            field_0x7da.z = sVar8;
            field_0x7d4.z = sVar8;
            setAction(&daObjNAN_c::walk);
        }

    }
}

/* 80CA2658-80CA270C 002198 00B4+00 1/1 0/0 0/0 .text            hit_check__10daObjNAN_cFv */
void daObjNAN_c::hit_check() {
    dCcU_AtInfo local_40;
    mStts.Move();
    if (mSph.ChkTgHit()) {
        local_40.mpCollider = mSph.GetTgHitObj();
        if (local_40.mpCollider->ChkAtType(AT_TYPE_HOOKSHOT)) {
            setAction(&daObjNAN_c::hook);
        } else {
            setAction(&daObjNAN_c::boomerang);
        }
    }
}

/* 80CA270C-80CA276C 00224C 0060+00 1/1 0/0 0/0 .text            action__10daObjNAN_cFv */
void daObjNAN_c::action() {
    (this->*mAction)();
    shape_angle = current.angle;
    if (field_0x7fa == 0) {
        Insect_GetDemoMain();
    }
}

/* ############################################################################################## */
/* 80CA3270-80CA3274 0000B4 0002+02 0/1 0/0 0/0 .rodata          l_nan_itemno */
static u8 const l_nan_itemno[2] = {
    0xC8, 0xC9,
};

/* 80CA276C-80CA2904 0022AC 0198+00 1/1 0/0 0/0 .text            execute__10daObjNAN_cFv */
int daObjNAN_c::execute() {
    if (ChkGetDemo()) {
        field_0x57C = field_0x578 + 10000.0f;
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
        Insect_GetDemoMain();
        nan_setParticle();
        return 1;
    }
    if (field_0x7e0 != 0) {
        field_0x7e0--;
    }
    if (field_0x7f8 != 0) {
        field_0x7f8--;
    }

    if (field_0x7fa == 0) {
        hit_check();
    }
    action();
    mBrk->play();
    mBtk->play();
    mMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setBaseMtx();
    if (field_0x7fa == 0) {
        mSph.SetC(current.pos);
        mSph.SetR(scale.x * 20.0f);
        dComIfG_Ccsp()->Set(&mSph);
        eyePos = current.pos;
        attention_info.position = eyePos;
    }
    return 1;
}

/* ############################################################################################## */
/* 80CA3498-80CA349C 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 l_hio_init;

/* 80CA2904-80CA296C 002444 0068+00 1/1 0/0 0/0 .text            _delete__10daObjNAN_cFv */
int daObjNAN_c::_delete() {
    dComIfG_resDelete(&mPhase, "I_Nan");
    if (field_0x7fd != 0) {
        l_hio_init = 0;
    }
    if (heap != NULL) {
        mMorf->stopZelAnime();
    }
    return 1;
}

/* 80CA296C-80CA29EC 0024AC 0080+00 1/1 0/0 0/0 .text            setBaseMtx__10daObjNAN_cFv */
void daObjNAN_c::setBaseMtx() {
    J3DModel* model = mMorf->getModel();
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(field_0x7d4);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    model->setBaseScale(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mMorf->modelCalc();
}

inline int daObjNAN_c::draw() {
    if (mDraw) {
        CalcZBuffer(50.0f);
        J3DModel* model = mMorf->getModel();
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);
        mBtk->entry(model->getModelData());
        mBrk->entry(model->getModelData());
        if (field_0x7fa != 2) {
            fopAcM_setEffectMtx(this, model->getModelData());
            mMorf->entryDL();
            if (field_0x7fa != 1) {
                dBgS_GndChk gndChk;
                cXyz cStack_88(current.pos);
                cStack_88.y += 20.0f;
                gndChk.SetPos(&cStack_88);
                f32 groundCross = dComIfG_Bgsp().GroundCross(&gndChk);
                if (groundCross != 1000000000.0f) {
                    dComIfGd_setSimpleShadow(&current.pos, groundCross, 15.0f, gndChk, 0, -0.6f, 
                                             dDlst_shadowControl_c::getSimpleTex());
                }
            }
        }
    }
    return 1;
}

/* 80CA29EC-80CA2B48 00252C 015C+00 1/0 0/0 0/0 .text            daObjNAN_Draw__FP10daObjNAN_c */
static int daObjNAN_Draw(daObjNAN_c* i_this) {
    return i_this->draw();
}

/* 80CA2B48-80CA2B68 002688 0020+00 2/1 0/0 0/0 .text            daObjNAN_Execute__FP10daObjNAN_c */
static int daObjNAN_Execute(daObjNAN_c* i_this) {
    return i_this->execute();
}

/* ############################################################################################## */
/* 80CA3294-80CA3298 0000D8 0004+00 0/1 0/0 0/0 .rodata          l_musiya_num */
static u16 const l_musiya_num[2] = {0x0199, 0x019A};

/* 80CA3298-80CA329C 0000DC 0004+00 0/1 0/0 0/0 .rodata          l_heapsize */
static u16 const l_heapsize[2] = {0x0EE0, 0x0EC0};

/* 80CA34A8-80CA34B8 000018 0010+00 2/2 0/0 0/0 .bss             l_HIO */
static daObj_NanHIO_c l_HIO;

/* 80CA2B68-80CA2FDC 0026A8 0474+00 1/1 0/0 0/0 .text            create__10daObjNAN_cFv */
int daObjNAN_c::create() {
    u8 uVar6 = (fopAcM_GetParam(this) & 0xf00) >> 8;
    fopAcM_SetupActor(this, daObjNAN_c);
    int rv = dComIfG_resLoad(&mPhase, "I_Nan");
    if (rv == cPhs_COMPLEATE_e) {
        OS_REPORT("NAN PARAM %x\n", fopAcM_GetParam(this));
        field_0x7fa = fopAcM_GetParam(this) & 3;
        if (field_0x7fa == 3) {
            field_0x7fa = 0;
        }
        field_0x7fb = (fopAcM_GetParam(this) & 0x10) >> 4;
        if (field_0x7fb != 0) {
            scale.setall(l_HIO.field_0x8);
        } else {
            scale.setall(l_HIO.field_0xc);
        }
        if (uVar6 == 15) {
            uVar6 = 0;
        }
        setItemNo(l_nan_itemno[field_0x7fb]);
        setSaveBitNo(l_musiya_num[field_0x7fb]);
        if (field_0x7fa != 2) {
            if (uVar6 != 0) {
                if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[0]]) || !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[1]])) {
                    return cPhs_ERROR_e;
                }
            } else {
                if (strcmp("R_SP160", dComIfGp_getStartStageName()) == 0 &&
                    dComIfGp_getStartStageRoomNo() == 3)
                {
                    if (dMenu_Insect_c::isCatchNotGiveInsect(m_itemNo)) {
                        return cPhs_ERROR_e;
                    }
                    if ((field_0x7fb == 0 && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[0]])) ||
                        (field_0x7fb != 0 && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[l_musiya_num[1]])))
                    {
                        return cPhs_ERROR_e;
                    }
                }
            }
        }
        OS_REPORT("/////////////// I_NAN /////////////////\n");
        if (fopAcM_entrySolidHeap(this, useHeapInit, l_heapsize[field_0x7fb]) == 0) {
            return cPhs_ERROR_e;
        }
        OS_REPORT("/////////////// I_NAN SET OK //////////\n");
        if (l_hio_init == 0) {
            l_hio_init = 1;
            field_0x7fd = 1;
            l_HIO.field_0x4 = -1;
        }
        gravity = 0.0f;
        fopAcM_SetMtx(this, mMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -50.0f, -50.0f, -50.0f);
        fopAcM_SetMax(this, 50.0f, 50.0f, 50.0f);
        attention_info.flags = 0;
        health = 10;
        field_0x560 = 10;
        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
        if (field_0x7fa == 0) {
            attention_info.distances[fopAc_attn_CARRY_e] = 93;
            mStts.Init(100, 0, this);
            mSph.Set(cc_sph_src);
            mSph.SetStts(&mStts);
        }
        if (field_0x7fa == 2) {
            setAction(&daObjNAN_c::bin_wait);
        } else {
            setAction(&daObjNAN_c::wait);
        }
        daObjNAN_Execute(this);
    }
    return rv;
}

/* 80CA30C8-80CA30D0 002C08 0008+00 1/0 0/0 0/0 .text            daObjNAN_IsDelete__FP10daObjNAN_c
 */
static int daObjNAN_IsDelete(daObjNAN_c* i_this) {
    return 1;
}

/* 80CA33D0-80CA33F0 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjNAN_Method */
static actor_method_class l_daObjNAN_Method = {
    (process_method_func)daObjNAN_Create,
    (process_method_func)daObjNAN_Delete,
    (process_method_func)daObjNAN_Execute,
    (process_method_func)daObjNAN_IsDelete,
    (process_method_func)daObjNAN_Draw,
};

/* 80CA33F0-80CA3420 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Nan */
extern actor_process_profile_definition g_profile_Obj_Nan = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Nan,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjNAN_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  480,                    // mPriority
  &l_daObjNAN_Method,     // sub_method
  0x000C0120,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80CA32A0-80CA32A0 0000E4 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
