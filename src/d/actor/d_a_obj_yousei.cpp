/**
 * @file d_a_obj_yousei.cpp
 * 
*/

#include "d/actor/d_a_obj_yousei.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"
#include "d/d_item.h"
#include "Z2AudioLib/Z2Instances.h"

/* 804CE738-804CE7A4 000078 006C+00 1/1 0/0 0/0 .text            InitCcSph__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::InitCcSph() {
    const static dCcD_SrcSph ccSphSrc = {
        {
            {0x0, {{0x0, 0x0, 0x0}, {0x14002, 0x11}, 0x75}}, // mObj
            {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
            {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
            {0x0}, // mGObjCo
        }, // mObjInf
        {
            {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
        } // mSphAttr
    };

    mCcStts.Init(1, 0, this);
    mCcSph.Set(ccSphSrc);
    mCcSph.SetStts(&mCcStts);
    mCcSph.SetC(current.pos);
    mCcSph.OnTgNoHitMark();
}

/* 804CE7A4-804CE7FC 0000E4 0058+00 1/1 0/0 0/0 .text            SetCcSph__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::SetCcSph() {
    mCcSph.SetC(current.pos);
    mCcSph.SetR(40.0f);
    dComIfG_Ccsp()->Set(&mCcSph);
}

int daObjYOUSEI_c::CreateHeap() {
    void* modelData = dComIfG_getObjectRes("Always", 0x21);
    JUT_ASSERT(177, modelData != 0);

    mpModelMorf = new mDoExt_McaMorfSO((J3DModelData*)modelData, NULL, NULL, (J3DAnmTransform*)dComIfG_getObjectRes("Always", 0xF), 2, 0.4f, 0, -1, &mSound, 0x80000, 0x11000084);
    if (mpModelMorf == NULL) {
        return 0;
    }

    return 1;
}

/* 804CE7FC-804CE8DC 00013C 00E0+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    daObjYOUSEI_c* a_this = (daObjYOUSEI_c*)i_this;
    return a_this->CreateHeap();
}

/* 804CE8DC-804CE8FC 00021C 0020+00 1/0 0/0 0/0 .text            daObjYOUSEI_Create__FP10fopAc_ac_c
 */
static int daObjYOUSEI_Create(fopAc_ac_c* i_this) {
    daObjYOUSEI_c* a_this = (daObjYOUSEI_c*)i_this;
    fpc_ProcID id = fopAcM_GetID(i_this);
    return a_this->create();
}

/* 804CE8FC-804CE920 00023C 0024+00 1/0 0/0 0/0 .text daObjYOUSEI_Delete__FP13daObjYOUSEI_c */
static int daObjYOUSEI_Delete(daObjYOUSEI_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    i_this->Delete();
    return 1;
}

/* 804CE920-804CE9D0 000260 00B0+00 1/1 0/0 0/0 .text            SpeedSet__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::SpeedSet() {
    speed.y += gravity;
    current.pos.y += speed.y;

    cXyz mae(0.0f, 0.0f, speedF);
    cXyz ato(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::YrotS(current.angle.y);
    mDoMtx_stack_c::multVec(&mae, &ato);
    current.pos.x += ato.x;
    current.pos.z += ato.z;
}

UNK_REL_BSS

/* 804D1828-804D182C 000040 0004+00 0/0 0/0 0/0 .bss             s_dis */
static f32 s_dis;

/* 804D182C-804D1830 000044 0004+00 4/5 0/0 0/0 .bss             sLink_Pos */
static cXyz* sLink_Pos;

/* 804CE9D0-804CEE50 000310 0480+00 1/1 0/0 0/0 .text            MoveAction__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::MoveAction() {
    switch (mMode) {
    case 0:
        mMode++;
        field_0x5dc = -0x1CB8;
        mSpeedVTarget = 0.0f;
        field_0x5d6 = 120.0f + yREG_F(18);
        mAngleTarget = yREG_F(17) + (f32)(cLib_targetAngleY(sLink_Pos, &current.pos) - 0x3000);
        break;
    case 1:
        if (field_0x5d6 == 100 && mPrm != 0) {
            execItemGet(fpcNm_ITEM_RECOVERY_FAILY);
        }

        f32 var_f31 = (25.0f + yREG_F(16)) / field_0x5d6;
        if (var_f31 > 1.0f) {
            var_f31 = 1.0f;
        }

        cXyz sp30;
        cXyz sp24;
        f32 temp_f30 = field_0x5d6 / 120.0f;

        if ((fopAcM_GetParam(this) & 0xFF) == 0 && field_0x5d6 > 110) {
            if (field_0x5d6 > 115) {
                var_f31 = 0.03f + BREG_F(1);
                sp30.set(0.0f, 600.0f + BREG_F(3), (10.0f / field_0x5e8) + (130.0f * temp_f30));
            } else if (field_0x5d6 > 110) {
                var_f31 = 0.06f + BREG_F(2);
                sp30.set(0.0f, BREG_F(4), (10.0f / field_0x5e8) + (130.0f * temp_f30));
            }

            cXyz sp18(1.0f, 1.0f, 1.0f);
            cLib_addCalcPos2(&scale, sp18, 0.2f + nREG_F(16), 10.0f);
            mpModelMorf->setPlaySpeed(0.6f);
        } else {
            mAngleTarget += field_0x5dc * var_f31;
            sp30.set(0.0f, mSpeedVTarget, (10.0f / field_0x5e8) + (130.0f * temp_f30));
            mpModelMorf->setPlaySpeed((3.0f + yREG_F(9)) * field_0x5ec);
        }

        current.angle.y = mAngleTarget - 0x4000;
        cLib_addCalc2(&field_0x5ec, var_f31, 0.2f + BREG_F(5), 10.0f);

        mDoMtx_stack_c::transS(*sLink_Pos);
        mDoMtx_stack_c::YrotM(mAngleTarget);
        mDoMtx_stack_c::multVec(&sp30, &sp24);
        mSpeedVTarget += (2.0f + yREG_F(19)) * field_0x5e8;

        cLib_addCalc(&current.pos.x, sp24.x, field_0x5ec, 100.0f, 0.0f);
        cLib_addCalc(&current.pos.y, sp24.y, field_0x5ec * (0.3f + yREG_F(10)), 30.0f, 0.0f);
        cLib_addCalc(&current.pos.z, sp24.z, field_0x5ec, 100.0f, 0.0f);
        break;
    }

    if (mpModelMorf->checkFrame(7.0f)) {
        mpModelMorf->setFrame(0.0f);
    }

    if (field_0x5d6 == 0) {
        fopAcM_delete(this);
    }

    field_0x604 = dComIfGp_particle_set(field_0x604, 0x72F, &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
    field_0x60c = dComIfGp_particle_set(field_0x60c, 0x730, &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
    field_0x610 = dComIfGp_particle_set(field_0x610, 0x732, &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
}

/* 804CEE50-804CF098 000790 0248+00 1/1 0/0 0/0 .text            BinAction__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::BinAction() {
    switch (mMode) {
    case 0:
        mAngleTarget = yREG_F(17) + (f32)(cLib_targetAngleY(sLink_Pos, &current.pos) - 0x3000);
        mSpeedVTarget = 1.5f + nREG_F(18);
        speedF = 2.0f;
        mSpeedFTarget = 10.0f;
        mMode++;
        mpModelMorf->setPlaySpeed(0.4f);
        mTimers[0] = 7.0f + nREG_F(12);
        break;
    case 1:
        if (mpModelMorf->checkFrame(7.0f)) {
            mpModelMorf->setFrame(0.0f);
            mSpeedVTarget = 1.0f;
        }

        if (mpModelMorf->checkFrame(4.5f + yREG_F(12))) {
            mSpeedVTarget = -2.0f + BREG_F(6);
        }

        if (mTimers[0] == 0) {
            CareAction();
        }
        break;
    }

    cXyz sp18(1.0f, 1.0f, 1.0f);
    cLib_addCalcPos2(&scale, sp18, 0.05f + nREG_F(16), 10.0f);
    cLib_addCalc(&speed.y, mSpeedVTarget, 0.2f, 25.0f + yREG_F(11), 0.0f);
    cLib_addCalc(&speedF, mSpeedFTarget, 0.02f + yREG_F(7), 5.0f, 0.0f);
    cLib_addCalcAngleS2(&current.angle.y, mAngleTarget, 3, 0x1000);

    field_0x604 = dComIfGp_particle_set(field_0x604, 0x72F, &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
    field_0x608 = dComIfGp_particle_set(field_0x608, 0x731, &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
}

/* 804D1830-804D1834 -00001 0004+00 2/3 0/0 0/0 .bss             None */
/* 804D1830 0001+00 data_804D1830 None */
static u8 data_804D1830;

/* 804D1831 0003+00 data_804D1831 None */
static u8 data_804D1831;

/* 804CF098-804CF6C4 0009D8 062C+00 1/1 0/0 0/0 .text            LinkChk__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::LinkChk() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz& player_pos = fopAcM_GetPosition(player);
    cXyz sp20;
    cXyz sp14;

    if (current.pos.abs(player_pos) < 500.0f && 0.0f == fopAcM_GetSpeedF(player)) {
        if (player->checkItemSwordEquip() && current.pos.y - player_pos.y < 130.0f && !player->checkAttentionLock() && (data_804D1830 == 0 || field_0x5ac != 0)) {
            data_804D1830 = 1;
            field_0x5ac = 1;

            sp20.set(30.0f + yREG_F(8), 80.0f + yREG_F(9), yREG_F(10));
            MTXCopy(daPy_getLinkPlayerActorClass()->getModelJointMtx(9), *calc_mtx);
            MtxPosition(&sp20, &sp14);

            mAngleTarget = cLib_targetAngleY(&current.pos, &sp14);
            cLib_addCalcAngleS2(&current.angle.y, mAngleTarget, 10, 0x500);

            if (current.pos.y - sp14.y < 0.0f) {
                mAnmSpeed = 0.58f;
            } else {
                mAnmSpeed = 0.35f;
            }

            if (current.pos.abs(sp14) < 30.0f + TREG_F(2)) {
                mAction = 3;
                mMode = 0;
            }

            field_0x5f8 = sp14;
        } else if ((data_804D1831 == 0 || field_0x5ad != 0) && current.pos.y - player_pos.y > 130.0f && current.pos.y - player_pos.y < 200.0f) {
            data_804D1831 = 1;
            field_0x5ad = 1;
            mAnmSpeed = 0.50999999f;
            sp14 = player->getHeadTopPos();
            mAngleTarget = cLib_targetAngleY(&current.pos, &sp14);
            field_0x61a = -0xE90;

            if (current.pos.y > 5.0f + sp14.y && current.pos.y < 50.0f + sp14.y) {
                cLib_addCalcAngleS2(&current.angle.y, mAngleTarget, 2, 0x600);
            }

            if (current.pos.abs(sp14) < 50.0f + TREG_F(2) && current.pos.y > sp14.y && (current.angle.y - mAngleTarget) < 0x2000 && (current.angle.y - mAngleTarget) > -0x2000) {
                mAction = 3;
                mMode = 2;
            }

            field_0x5f8 = sp14;
        } else if (field_0x5ac != 0) {
            data_804D1830 = 0;
            field_0x5ac = 0;
        } else if (field_0x5ad != 0) {
            data_804D1831 = 0;
            field_0x5ad = 0;
        }
    } else {
        if (field_0x5ac != 0) {
            data_804D1830 = 0;
            field_0x5ac = 0;
        } else if (field_0x5ad != 0) {
            data_804D1831 = 0;
            field_0x5ad = 0;
        }
    }
}

/* 804CF6C4-804CFCE8 001004 0624+00 1/1 0/0 0/0 .text            WaitAction__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::WaitAction() {
    u8 sp18 = 0;
    f32 var_f30 = 0.0f;
    f32 anm_frame = mpModelMorf->getFrame();
    f32 var_f28 = 0.0f;
    f32 var_f29 = 0.0f;
    f32 var_f31 = 0.0f;

    daPy_py_c* player = daPy_getPlayerActorClass();
    if (dComIfGs_getLife() != dComIfGs_getMaxLifeGauge() && 0.0f != fopAcM_GetSpeedF(player) && LinkSearch()) {
        var_f30 = 1.0f + nREG_F(1);
        var_f28 = 50.0f + nREG_F(3);
        mTimers[0] = 150;
        var_f31 = 15.0f;
        var_f29 = 5.0f;
    }

    cXyz sp40;
    cXyz sp34;
    switch (mMode) {
    case 0:
        mMode++;
        mSpeedFTarget = 5.0f;
        mTimers[1] = 30;
        break;
    case 1:
        if (mpModelMorf->checkFrame(7.0f)) {
            mpModelMorf->setFrame(0.0f);

            if (mTimers[0] == 0) {
                mTimers[0] = 30.0f + cM_rndF(40.0f);
                mAnmSpeed = 0.3f + var_f30 + yREG_F(6) + cM_rndF((0.3f - var_f30) + yREG_F(5));
                mpModelMorf->setPlaySpeed(mAnmSpeed);
            }

            mSpeedVTarget = (6.0f + yREG_F(1)) * ((mAnmSpeed - 0.25f) + yREG_F(13));
            mSpeedFTarget = (13.0f + yREG_F(8)) * ((mAnmSpeed - 0.25f) + yREG_F(14));

            if (current.pos.y > 150.0f + home.pos.y + var_f28) {
                mAnmSpeed = 0.35f;
                mTimers[0] = 30;
                mpModelMorf->setPlaySpeed(mAnmSpeed);
            } else if (current.pos.y < 80.0f + home.pos.y) {
                mAnmSpeed = 0.58f;
                mTimers[0] = 30;
                mpModelMorf->setPlaySpeed(mAnmSpeed);
            }
        }

        if (mpModelMorf->checkFrame(4.5f + yREG_F(12))) {
            mSpeedVTarget = -2.0f + yREG_F(3);
        }

        if (field_0x5d6 == 0 && mPrm == 5) {
            mMode++;
            field_0x5d6 = 100;
            mSpeedVTarget = 2.5f;
            mSpeedFTarget = 6.0f;
            mAnmSpeed = 0.90000004f;
            mpModelMorf->setPlaySpeed(mAnmSpeed);
        }
        break;
    case 2:
        if (field_0x5d6 == 0 && current.pos.y - sLink_Pos->y > 250.0f) {
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x604);
            emitter->deleteAllParticle();
            dComIfGp_particle_levelEmitterOnEventMove(field_0x604);
            sp18 = 1;
            fopAcM_delete(this);
        }

        if (mpModelMorf->checkFrame(7.0f)) {
            mpModelMorf->setFrame(0.0f);
            mSpeedVTarget = 3.0f + yREG_F(4);
        }

        if (mpModelMorf->checkFrame(4.5f + yREG_F(12))) {
            mSpeedVTarget = -2.0f + yREG_F(3);
        }
        break;
    }

    if (mTimers[2] > 0) {
        var_f31 = 15.0f;
        var_f29 = 10.0f + TREG_F(0);
        mAnmSpeed = 0.65f + TREG_F(1);
        mpModelMorf->setPlaySpeed(mAnmSpeed);
    }

    if (mTimers[1] == 0) {
        mTimers[1] = (30.0f + nREG_F(2) + cM_rndF(20.0f - var_f31)) - var_f31;

        sp40 = home.pos - current.pos;
        sp40.x += cM_rndFX(200.0f + nREG_F(10));
        sp40.z += cM_rndFX(200.0f + nREG_F(10));
        mAngleTarget = cM_atan2s(sp40.x, sp40.z);
    }

    cLib_addCalc(&speed.y, mSpeedVTarget, 0.2f, 25.0f + yREG_F(11), 0.0f);
    cLib_addCalc(&speedF, mSpeedFTarget, 0.02f + yREG_F(7), 5.0f, 0.0f);

    if (eventInfo.checkCommandCatch()) {
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x604);
        emitter->deleteAllParticle();
        dComIfGp_particle_levelEmitterOnEventMove(field_0x604);

        emitter = dComIfGp_particle_getEmitter(field_0x608);
        emitter->deleteAllParticle();
        dComIfGp_particle_levelEmitterOnEventMove(field_0x608);

        sp18 = 1;
        data_804D1831 = 0;
        data_804D1830 = 0;
        fopAcM_delete(this);
    } else {
        dComIfGp_att_CatchRequest(this, fpcNm_ITEM_FAIRY, 150.0f, 50.0f, -100.0f, 0x5000, 1);
        eventInfo.onCondition(0x40);
    }

    if (sp18 == 0) {
        field_0x604 = dComIfGp_particle_set(field_0x604, 0x72F, &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
        field_0x608 = dComIfGp_particle_set(field_0x608, 0x731, &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
    }

    if (mTimers[3] == 0) {
        if (dComIfGs_getLife() == dComIfGs_getMaxLifeGauge()) {
            if (field_0x5d6 != 0 && mPrm == 5) {
                LinkChk();
            } else {
                LinkChk();
            }
        }
    }

    cLib_addCalcAngleS2(&current.angle.y, mAngleTarget, (26.0f - var_f29) + nREG_S(0), (field_0x61a + 0x1000));
}

/* 804CFCE8-804D057C 001628 0894+00 1/1 0/0 0/0 .text            LinkAction__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::LinkAction() {
    u8 sp18 = 0;
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz& player_pos = fopAcM_GetPosition(player);
    cXyz sp44(30.0f + yREG_F(8), 80.0f + yREG_F(9), yREG_F(10));
    cXyz sp38;

    MTXCopy(daPy_getLinkPlayerActorClass()->getModelJointMtx(9), *calc_mtx);
    MtxPosition(&sp44, &sp38);

    switch (mMode) {
    case 0:
        sp38.y += 5.0f;
        mAngleTarget = cLib_targetAngleY(&current.pos, &sp38);
        mAnmSpeed = 0.5f;

        if (cLib_chasePos(&current.pos, sp38, speedF)) {
            speedF = 0.0f;
            mSpeedFTarget = 0.0f;
            mTimers[0] = 200;
            mMode++;
        }

        if (!player->checkItemSwordEquip() || sp38.abs(field_0x5f8) > 6.0f) {
            mAction = 0;
            mMode = 0;
            mTimers[2] = 80.0f + TREG_F(3);
            mTimers[3] = 100;
            mTimers[1] = 0;
            data_804D1830 = 0;
            field_0x5ac = 0;
        }

        mpModelMorf->setPlaySpeed(mAnmSpeed);
        break;
    case 1:
        sp38.y += 5.0f;

        if (mTimers[0] < 100) {
            if (mpModelMorf->checkFrame(0.0f)) {
                mAnmSpeed = 0.0f;
            }
        } else {
            cLib_addCalc2(&mAnmSpeed, 0.3f, 0.05f, 0.001f);
        }

        mpModelMorf->setPlaySpeed(mAnmSpeed);

        if (mTimers[0] == 0) {
            mAction = 0;
            mMode = 0;
            mTimers[2] = 80.0f + TREG_F(3);
            mTimers[3] = 100;
            mTimers[1] = 0;
            data_804D1830 = 0;
            field_0x5ac = 0;
        }

        cLib_chasePos(&current.pos, sp38, 3.0f);

        if (!player->checkItemSwordEquip() || sp38.abs(field_0x5f8) > 2.0f) {
            mAction = 0;
            mMode = 0;
            mTimers[2] = 80.0f + TREG_F(3);
            mTimers[3] = 100;
            mTimers[1] = 0;
            data_804D1830 = 0;
            field_0x5ac = 0;
        }
        break;
    case 2:
        mAnmSpeed = 0.5f;
        sp38 = player->getHeadTopPos();
        sp38.y += 5.0f;

        mAngleTarget = cLib_targetAngleY(&current.pos, &sp38);
        mSpeedFTarget = 2.0f;
        cLib_addCalc2(&speedF, mSpeedFTarget, 0.2f + yREG_F(7), 5.0f);

        if (cLib_chasePos(&current.pos, sp38, speedF)) {
            speedF = 0.0f;
            mSpeedFTarget = 0.0f;
            mTimers[0] = 200;
            mMode++;
        }

        cLib_addCalcAngleS2(&current.angle.y, mAngleTarget, 2, 0x400);
        mpModelMorf->setPlaySpeed(mAnmSpeed);
        break;
    case 3:
        if (mTimers[0] < 100) {
            if (mpModelMorf->checkFrame(0.0f)) {
                mAnmSpeed = 0.0f;
            }
        } else {
            cLib_addCalc2(&mAnmSpeed, 0.3f, 0.05f, 0.001f);
        }

        sp38 = player->getHeadTopPos();
        sp38.y += 5.0f;
        mpModelMorf->setPlaySpeed(mAnmSpeed);

        if (mTimers[0] == 0) {
            mAction = 0;
            mMode = 0;
            mTimers[2] = 80.0f + TREG_F(3);
            mTimers[3] = 100;
            mTimers[1] = 0;
            data_804D1831 = 0;
            field_0x5ad = 0;
        }

        cLib_chasePos(&current.pos, sp38, 3.0f);

        if (sp38.abs(field_0x5f8) > 2.0f) {
            mAction = 0;
            mMode = 0;
            mTimers[2] = 80.0f + TREG_F(3);
            mTimers[3] = 100;
            mTimers[1] = 0;
            data_804D1831 = 0;
            field_0x5ad = 0;
        }
        break;
    }

    if (eventInfo.checkCommandCatch()) {
        dComIfGp_particle_getEmitter(field_0x604)->deleteAllParticle();
        dComIfGp_particle_levelEmitterOnEventMove(field_0x604);
        dComIfGp_particle_getEmitter(field_0x608)->deleteAllParticle();
        dComIfGp_particle_levelEmitterOnEventMove(field_0x608);
        sp18 = 1;
        data_804D1831 = 0;
        data_804D1830 = 0;
        fopAcM_delete(this);
    } else {
        dComIfGp_att_CatchRequest(this, fpcNm_ITEM_FAIRY, 150.0f, 50.0f, -100.0f, 0x5000, 1);
        eventInfo.onCondition(0x40);
    }

    if (sp18 == 0) {
        field_0x604 = dComIfGp_particle_set(field_0x604, 0x72F, &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
        field_0x608 = dComIfGp_particle_set(field_0x608, 0x731, &current.pos, &tevStr, &shape_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
    }

    field_0x5f8 = sp38;
}

/* 804D057C-804D065C 001EBC 00E0+00 1/1 0/0 0/0 .text            LinkSearch__13daObjYOUSEI_cFv */
bool daObjYOUSEI_c::LinkSearch() {
    if (mDistToPlayer < 200.0f) {
        f32 var_f31;
        if (WayBgCheck(200.0f, 100.0f, mAngleToPlayer + 0x8000)) {
            var_f31 = -200.0f;
        } else {
            var_f31 = 100.0f;
        }

        cXyz sp14(0.0f, 0.0f, var_f31);
        mDoMtx_stack_c::YrotS(mAngleToPlayer + 0x8000);
        cXyz sp8;
        mDoMtx_stack_c::multVec(&sp14, &sp8);
        home.pos.set(current.pos.x + sp8.x, home.pos.y, current.pos.z + sp8.z);
        return true;
    }

    return false;
}

/* 804D065C-804D0780 001F9C 0124+00 1/1 0/0 0/0 .text            WayBgCheck__13daObjYOUSEI_cFffs */
bool daObjYOUSEI_c::WayBgCheck(f32 param_0, f32 param_1, s16 param_2) {
    dBgS_LinChk line_chk;
    cXyz sp2C;
    cXyz sp20;
    cXyz sp14;

    sp20 = current.pos;
    sp20.y += param_1;
    cMtx_YrotS(*calc_mtx, param_2);
    sp2C.x = 0.0f;
    sp2C.y = 50.0f;
    sp2C.z = param_0;
    MtxPosition(&sp2C, &sp14);
    sp14 += current.pos;
    line_chk.Set(&sp20, &sp14, NULL);

    if (dComIfG_Bgsp().LineCross(&line_chk)) {
        return true;
    }

    return false;
}

/* 804D0780-804D080C 0020C0 008C+00 4/4 0/0 0/0 .text            CareAction__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::CareAction() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    if (player->checkNowWolf()) {
        field_0x5e8 = 0.7f + yREG_F(18);
    } else {
        field_0x5e8 = 1.0f;
    }

    mAction = 1;
    mMode = 0;
    field_0x5ae = 1;
    mSound.startCreatureSound(Z2SE_FAIRY_S_FLY_RTT, 0, -1);
}

/* 804D080C-804D0910 00214C 0104+00 2/2 0/0 0/0 .text            CheckGround__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::CheckGround() {
    dBgS_ObjGndChk_All gnd_chk;
    cXyz pos(current.pos.x, 100.0f + current.pos.y, current.pos.z);
    gnd_chk.SetPos(&pos);

    pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);
    if (pos.y != -1000000000.0f) {
        home.pos.y = pos.y;
    }
}

/* 804D0988-804D0AD0 0022C8 0148+00 1/1 0/0 0/0 .text            CheckWater__13daObjYOUSEI_cFv */
bool daObjYOUSEI_c::CheckWater() {
    dBgS_ObjGndChk_All gnd_chk;
    cXyz pos(current.pos.x, 100.0f + current.pos.y, current.pos.z);
    gnd_chk.SetPos(&pos);
    pos.y = dComIfG_Bgsp().GroundCross(&gnd_chk);

    if (-1000000000.0f != pos.y && dComIfG_Bgsp().GetPolyAtt0(gnd_chk) == 7 && current.pos.y - pos.y < 50.0f+ yREG_F(0)) {
        return true;
    }

    return false;
}

/* 804D0AD0-804D0CCC 002410 01FC+00 1/1 0/0 0/0 .text            Action__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::Action() {
    switch (mAction) {
    case 0:
        field_0x61a = 0;
        WaitAction();
        SpeedSet();
        SetCcSph();
        ObjHit();

        if (field_0x5af != 0) {
            if (mBoomerangMove.posMove(&current.pos, &shape_angle.y, NULL, 0x1C00)) {
                mBoomerangMove.bgCheckAfterOffset(&current.pos);
            } else {
                field_0x5af = 0;
                if (dComIfGs_getLife() != dComIfGs_getMaxLifeGauge()) {
                    CareAction();
                }
                home.pos = current.pos;
                CheckGround();
            }
        }

        mAcch.CrrPos(dComIfG_Bgsp());

        if (mDistToPlayer < 50.0f && current.pos.y - sLink_Pos->y < 200.0f) {
            if (dComIfGs_getLife() != dComIfGs_getMaxLifeGauge()) {
                CareAction();
                field_0x5af = 0;
            }
        }

        if (fopAcM_checkHookCarryNow(this)) {
            if (CheckWater()) {
                fopAcM_cancelHookCarryNow(this);
            }
            home.pos = current.pos;
            CheckGround();
        }
        break;
    case 1:
        MoveAction();
        break;
    case 2:
        BinAction();
        SpeedSet();
        break;
    case 3:
        LinkAction();
        break;
    }

    shape_angle.y = current.angle.y;
}

/* 804D0CCC-804D0DF0 00260C 0124+00 1/1 0/0 0/0 .text            ObjHit__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::ObjHit() {
    if (mCcSph.ChkTgHit()) {
        cCcD_Obj* hit_obj = mCcSph.GetTgHitObj();
        if (hit_obj->ChkAtType(AT_TYPE_BOOMERANG)) {
            if (field_0x5af == 0) {
                field_0x5af = 1;
                mAcch.ClrMoveBGOnly();
                mAcch.ClrGrndNone();
                mCcSph.GetTgHitGObj();
                mBoomerangMove.initOffset(&current.pos);
            }
        } else if (hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
            if (mDistToPlayer < 130.0f + TREG_F(5) && dComIfGs_getLife() != dComIfGs_getMaxLifeGauge()) {
                CareAction();
            } else {
                mTimers[2] = 80.0f + TREG_F(3);
            }
        } else {
            if (dComIfGs_getLife() != dComIfGs_getMaxLifeGauge()) {
                CareAction();
            }
        }

        mCcSph.ClrTgHit();
    }
}

/* 804D0DF0-804D0F98 002730 01A8+00 1/1 0/0 0/0 .text            Execute__13daObjYOUSEI_cFv */
int daObjYOUSEI_c::Execute() {
    sLink_Pos = &fopAcM_GetPosition(daPy_getPlayerActorClass());
    mDistToPlayer = fopAcM_searchPlayerDistanceXZ(this);
    mAngleToPlayer = fopAcM_searchPlayerAngleY(this);
    attention_info.position = current.pos;
    eyePos = current.pos;
    eyePos.y += 10.0f;

    mSound.startCreatureSoundLevel(Z2SE_FAIRY_S_LV, 0, -1);

    if (mpModelMorf->checkFrame(1.0f) && mAnmSpeed > 0.0f) {
        mSound.startCreatureSound(Z2SE_FAIRY_S_FLY, 100.0f * mAnmSpeed, -1);
    }

    for (int i = 0; i < 4; i++) {
        if (mTimers[i] != 0) {
            mTimers[i]--;
        }
    }

    if (field_0x5d6 != 0) {
        field_0x5d6--;
    }

    Action();
    mpModelMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setBaseMtx();
    return 1;
}

/* 804D0F98-804D0FCC 0028D8 0034+00 1/1 0/0 0/0 .text            Delete__13daObjYOUSEI_cFv */
int daObjYOUSEI_c::Delete() {
    if (heap != NULL) {
        mpModelMorf->stopZelAnime();
    }

    return 1;
}

/* 804D0FCC-804D1040 00290C 0074+00 1/1 0/0 0/0 .text            setBaseMtx__13daObjYOUSEI_cFv */
void daObjYOUSEI_c::setBaseMtx() {
    cXyz sp8(0.2f, 0.2f, 0.2f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    mpModelMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
    mpModelMorf->modelCalc();
}

int daObjYOUSEI_c::Draw() {
    J3DModel* model = mpModelMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    mpModelMorf->entryDL();

    cXyz sp8;
    sp8.set(current.pos.x, 100.0f + current.pos.y, current.pos.z);
    dComIfGd_setSimpleShadow(&current.pos, mAcch.GetGroundH(), 25.0f, mAcch.m_gnd, 0, 0.8f, dDlst_shadowControl_c::getSimpleTex());
    return 1;
}

/* 804D1040-804D10FC 002980 00BC+00 1/0 0/0 0/0 .text            daObjYOUSEI_Draw__FP13daObjYOUSEI_c
 */
static int daObjYOUSEI_Draw(daObjYOUSEI_c* i_this) {
    return i_this->Draw();
}

/* 804D10FC-804D111C 002A3C 0020+00 2/1 0/0 0/0 .text daObjYOUSEI_Execute__FP13daObjYOUSEI_c */
static int daObjYOUSEI_Execute(daObjYOUSEI_c* i_this) {
    return i_this->Execute();
}

/* 804D111C-804D149C 002A5C 0380+00 1/1 0/0 0/0 .text            create__13daObjYOUSEI_cFv */
int daObjYOUSEI_c::create() {
    fopAcM_SetupActor(this, daObjYOUSEI_c);

    OS_REPORT("YOUSEI PARAM %x\n", fopAcM_GetParam());
    if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x1100)) {
        return cPhs_ERROR_e;
    }

    mPrm = fopAcM_GetParam(this);
    switch (mPrm) {
    case 0:
        mPrm = 0;
        break;
    case 1:
        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[501])) {
            return cPhs_ERROR_e;
        }
        mPrm = 1;
        break;
    case 2:
        mPrm = 2;
        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[502])) {
            return cPhs_ERROR_e;
        }
        break;
    case 3:
        mPrm = 3;
        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[503])) {
            return cPhs_ERROR_e;
        }
        break;
    case 4:
        mPrm = 4;
        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[504])) {
            return cPhs_ERROR_e;
        }
        break;
    default:
        mPrm = 5;
        break;
    }

    gravity = nREG_F(0);
    mAction = 0;
    mMode = 0;

    mTimers[2] = 80.0f + TREG_F(3);
    mAcchCir.SetWall(100.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);

    fopAcM_SetMtx(this, mpModelMorf->getModel()->getBaseTRMtx());
    fopAcM_SetMin(this, -50.0f, -50.0f, -50.0f);
    fopAcM_SetMax(this, 50.0f, 50.0f, 50.0f);

    InitCcSph();
    mSound.init(&current.pos, &eyePos, 3, 1);

    if (mPrm == 0) {
        execItemGet(fpcNm_ITEM_RECOVERY_FAILY);
        CareAction();
        scale.set(0.2f, 0.2f, 0.2f);
    } else {
        current.pos.y += 50.0f;
        field_0x5d6 = 1500;
    }

    CheckGround();
    field_0x61a = 0;
    daObjYOUSEI_Execute(this);
    return cPhs_COMPLEATE_e;
}

/* 804D159C-804D15A4 002EDC 0008+00 1/0 0/0 0/0 .text daObjYOUSEI_IsDelete__FP13daObjYOUSEI_c */
static int daObjYOUSEI_IsDelete(daObjYOUSEI_c* i_this) {
    return 1;
}

/* 804D1728-804D1748 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjYOUSEI_Method */
static actor_method_class l_daObjYOUSEI_Method = {
    (process_method_func)daObjYOUSEI_Create,
    (process_method_func)daObjYOUSEI_Delete,
    (process_method_func)daObjYOUSEI_Execute,
    (process_method_func)daObjYOUSEI_IsDelete,
    (process_method_func)daObjYOUSEI_Draw,
};

/* 804D1748-804D1778 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Yousei */
extern actor_process_profile_definition g_profile_Obj_Yousei = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Yousei,        // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjYOUSEI_c),  // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  475,                    // mPriority
  &l_daObjYOUSEI_Method,  // sub_method
  0x000C0100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES
