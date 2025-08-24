/**
* @file d_a_obj_kamakiri.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_kamakiri.h"
#include "d/actor/d_a_player.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "d/d_menu_insect.h"
#include "d/d_s_play.h"
#include "dol2asm.h"
#include "m_Do/m_Do_lib.h"

static u8 l_initHIO;

static daObj_KamHIO_c l_HIO;

/* 80C3518C-80C351BC 0000EC 0030+00 1/1 0/0 0/0 .text            __ct__14daObj_KamHIO_cFv */
daObj_KamHIO_c::daObj_KamHIO_c() {
    field_0x4 = -1;
    mModelScaleMale = 1.5f;
    mModelScaleFemale = 1.2f;
}

/* 80C351BC-80C35228 00011C 006C+00 1/1 0/0 0/0 .text            InitCcSph__10daObjKAM_cFv */
void daObjKAM_c::InitCcSph() {
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
    mSphere.Set(ccSphSrc);
    mSphere.SetStts(&mStts);
    mSphere.SetC(current.pos);
    mSphere.OnTgNoHitMark();
}

/* 80C35228-80C35280 000188 0058+00 1/1 0/0 0/0 .text            SetCcSph__10daObjKAM_cFv */
void daObjKAM_c::SetCcSph() {
    mSphere.SetC(current.pos);
    mSphere.SetR(20.0f);
    dComIfG_Ccsp()->Set(&mSphere);
}

/* 80C35280-80C352A0 0001E0 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* param_0) {
    daObjKAM_c* i_this = (daObjKAM_c*)param_0;
    return i_this->CreateHeap();
}

/* 80C352A0-80C355F8 000200 0358+00 1/1 0/0 0/0 .text            CreateHeap__10daObjKAM_cFv */
int daObjKAM_c::CreateHeap() {
    J3DModelData* modelData;
    if (mSex == SEX_FEMALE) {
        modelData = (J3DModelData*)dComIfG_getObjectRes("I_Kam", 10);
        JUT_ASSERT(0xff, modelData != 0);
    } else {
        modelData = (J3DModelData*)dComIfG_getObjectRes("I_Kam", 10);
        JUT_ASSERT(0x103, modelData != 0);
    }
    mpMorfSO = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                    (J3DAnmTransform*)dComIfG_getObjectRes("I_Kam", 7), 2, 1.0f, 0,
                                    -1, &mCreatureSound, 0, 0x11000284);
    if (mpMorfSO == NULL || mpMorfSO->getModel() == NULL) {
        return 0;
    }
    J3DModel* model = mpMorfSO->getModel();
    mpBrkAnm = new mDoExt_brkAnm();
    if (mpBrkAnm == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* anmRegKey;
    if (mSex == SEX_FEMALE) {
        anmRegKey = (J3DAnmTevRegKey*)dComIfG_getObjectRes("I_Kam", 13);
        modelData = model->getModelData();
        if (mpBrkAnm->init(modelData, anmRegKey, 1, 2, 1.0f, 0, -1) == 0) {
            return 0;
        }
    } else {
        anmRegKey = (J3DAnmTevRegKey*)dComIfG_getObjectRes("I_Kam", 14);
        modelData = model->getModelData();
        if (mpBrkAnm->init(modelData, anmRegKey, 1, 2, 1.0f, 0, -1) == 0) {
            return 0;
        }
    }

    mpBtkAnm = new mDoExt_btkAnm();
    if (mpBtkAnm == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* anmTexKey;
    if (mSex == SEX_FEMALE) {
        anmTexKey = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("I_Kam", 17);
        modelData = model->getModelData();
        if (mpBtkAnm->init(modelData, anmTexKey, 1, 2, 1.0f, 0, -1) == 0) {
            return 0;
        }
    } else {
        anmTexKey = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes("I_Kam", 0x12);
        modelData = model->getModelData();
        if (mpBtkAnm->init(modelData, anmTexKey, 1, 2, 1.0f, 0, -1) == 0) {
            return 0;
        }
    }
    return 1;
}

/* 80C35640-80C35660 0005A0 0020+00 1/0 0/0 0/0 .text            daObjKAM_Create__FP10fopAc_ac_c */
static int daObjKAM_Create(fopAc_ac_c* param_0) {
    daObjKAM_c* i_this = (daObjKAM_c*)param_0;
    fpc_ProcID unused = fopAcM_GetID(param_0);
    return i_this->create();
}

/* 80C35660-80C35684 0005C0 0024+00 1/0 0/0 0/0 .text            daObjKAM_Delete__FP10daObjKAM_c */
static int daObjKAM_Delete(daObjKAM_c* param_0) {
    fpc_ProcID unused = fopAcM_GetID(param_0);
    param_0->Delete();
    return 1;
}

/* 80C35684-80C357EC 0005E4 0168+00 1/1 0/0 0/0 .text            ShopWaitAction__10daObjKAM_cFv */
void daObjKAM_c::ShopWaitAction() {
    switch (field_0x981) {
    case 0:
        speedF = 0.0f;
        mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("I_Kam", 7), 2, 5.0f, 0.0f, 0.0f,
                         -1.0f);
        field_0x981++;
        field_0x982[0] = cM_rndF(50.0f) + 50.0f;
        break;
    case 1:
        field_0x982[0]--;
        if (field_0x982[0] <= 0) {
            field_0x982[0] = 0;
        }

        if (field_0x982[0] == 0) {
            s32 unkInt = cM_rndF(100.0f);
            if (unkInt < 40) {
                field_0x980 = 2;
                field_0x981 = 0;
            } else if (unkInt < 70) {
                field_0x980 = 1;
                field_0x981 = 0;
            } else {
                field_0x982[0] = cM_rndF(50.0f) + 50.0f;
            }
        }

        break;
    }
    return;
}

/* 80C357EC-80C35970 00074C 0184+00 1/1 0/0 0/0 .text            WaitAction__10daObjKAM_cFv */
void daObjKAM_c::WaitAction() {
    switch (field_0x981) {
    case 0:
        speedF = 0.0f;
        mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("I_Kam", 7), 2, 5.0f, 0.0f, 0.0f,
                         -1.0f);
        field_0x981++;
        field_0x982[0] = cM_rndF(50.0f) + 50.0f;
        break;
    case 1:
        if (fopAcM_searchPlayerDistance(this) < 1500.0f) {
            field_0x982[0]--;
            if (field_0x982[0] <= 0) {
                field_0x982[0] = 0;
            }
            if (field_0x982[0] == 0) {
                s32 unkInt = cM_rndF(100.0f);
                if (unkInt < 40) {
                    field_0x980 = 2;
                    field_0x981 = 0;
                } else if (unkInt < 70) {
                    field_0x980 = 1;
                    field_0x981 = 0;
                } else {
                    field_0x982[0] = cM_rndF(50.0f) + 50.0f;
                }
            }
        }
        break;
    }
}

/* 80C35970-80C35B9C 0008D0 022C+00 1/1 0/0 0/0 .text            WallCheck__10daObjKAM_cFv */
int daObjKAM_c::WallCheck() {
    dBgS_LinChk linChk;
    linChk.SetObj();
    linChk.Set(&old.pos, &current.pos, NULL);

    if (dComIfG_Bgsp().LineCross(&linChk) != 0) {
        cM3dGPla plane;
        dComIfG_Bgsp().GetTriPla(linChk, &plane);

        cXyz* normal = plane.GetNP();
        current.pos = linChk.GetCross();

        cXyz origin(0.0f, 0.0f, 0.0f);
        cXyz normYz(0.0f, normal->y, normal->z);

        f32 normYzMag = origin.abs(normYz);
        field_0x99a.z = -cM_atan2s(normal->x, normYzMag);
        field_0x99a.x = cM_atan2s(normal->z, normal->y);
        mNormalYaw = cM_atan2s(normal->x, normal->z);
        return 1;
    }

    return 0;
}

/* 80C35BE4-80C35CF0 000B44 010C+00 1/1 0/0 0/0 .text            SpeedSet__10daObjKAM_cFv */
void daObjKAM_c::SpeedSet() {
    speed.y += gravity;
    cXyz unkXyz1(0.0f, speed.y, speedF);
    cXyz unkXyz2(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotS(field_0x99a);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&unkXyz1, &unkXyz2);
    current.pos.x = current.pos.x + unkXyz2.x;
    current.pos.y = current.pos.y + unkXyz2.y;
    current.pos.z = current.pos.z + unkXyz2.z;
    cLib_addCalc2(&speedF, field_0x988, 0.4f, 10.0f);
    cLib_addCalc2(&speed.y, field_0x98c, 0.1f, 0.5f);
    cLib_addCalcAngleS2(&current.angle.y, field_0x990, 0x10, 0x100);
    shape_angle.y = current.angle.y;
}

/* 80C35CF0-80C36138 000C50 0448+00 1/1 0/0 0/0 .text            WallWalk__10daObjKAM_cFv */
void daObjKAM_c::WallWalk() {
    cXyz unkXyz1(0.0f, -100.0f, (yREG_F(6) + 3.0f) * speedF);
    cXyz unkXyz2(0.0f, yREG_F(5) + 40.0f, 0.0f);
    cXyz unkXyz3(0.0f, 20.0f, 100.0f);
    cXyz cross;

    dBgS_LinChk linChk1;
    dBgS_LinChk linChk2;

    linChk1.SetObj();
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(field_0x99a);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&unkXyz1, &unkXyz1);
    mDoMtx_stack_c::multVec(&unkXyz2, &unkXyz2);
    linChk1.Set(&unkXyz2, &unkXyz1, NULL);

    if (dComIfG_Bgsp().LineCross(&linChk1) != 0) {
        speedF = TREG_F(1) + 0.3f;

        cM3dGPla plane;
        dComIfG_Bgsp().GetTriPla(linChk1, &plane);

        cXyz* normal = plane.GetNP();
        s16 normalYaw = cM_atan2s(normal->x, normal->z);
        f32 normalY = normal->y;

        cXyz origin(0.0f, 0.0f, 0.0f);
        cXyz normYz(0.0f, normal->y, normal->z);
        f32 normYzMag = origin.abs(normYz);

        cross = linChk1.GetCross();
        if (normalYaw - mNormalYaw < 0x1000 && normalYaw - mNormalYaw > -0x1000 &&
            cross.abs(old.pos) < speedF * (TREG_F(0) + 3.0f))
        {
            current.pos = cross;

            mNormalYaw = normalYaw;

            field_0x99a.z = -cM_atan2s(normal->x, normYzMag);
            field_0x99a.x = cM_atan2s(normal->z, normal->y);
        } else {
            field_0x990 += (s16)0x100;
        }
    } else {
        field_0x990 += (s16)0x100;
    }

    cLib_addCalcAngleS2(&current.angle.y, field_0x990, 0x10, 0x50);
    shape_angle.y = current.angle.y;
}

/* 80C36138-80C36338 001098 0200+00 2/2 0/0 0/0 .text            WalkAction__10daObjKAM_cFv */
void daObjKAM_c::WalkAction() {
    for (s32 i = 0; i < 3; i++) {
        field_0x982[i]--;
        if (field_0x982[i] <= 0) {
            field_0x982[i] = 0;
        }
    }

    switch (field_0x981) {
    case 0: {
        mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("I_Kam", 7), 2, 5.0f, 1.0f, 0.0f,
                         -1.0f);
        field_0x988 = 0.5f;
        speed.y = 0.0f;
        field_0x98c = 0.0f;
        field_0x981++;
        field_0x982[1] = cM_rndF(50.0f) + 50.0f;
        break;
    }
    case 1: {
        if (field_0x982[0] == 0) {
            cXyz unkXyz1(cM_rndFX(nREG_F(10) + 100.0f), 0.0f, cM_rndFX(nREG_F(10) + 100.0f));
            s16 unkShort1 = (s16)cM_atan2s(unkXyz1.x, unkXyz1.z);
            field_0x990 = unkShort1;
            field_0x982[0] = cM_rndF(50.0f) + 50.0f;
        }

        if (field_0x982[1] == 0) {
            s32 unkInt1 = cM_rndF(100.0f);
            if (unkInt1 < 30) {
                field_0x980 = 1;
                field_0x981 = 0;
            } else if (unkInt1 < 60) {
                field_0x980 = 0;
                field_0x981 = 0;
            } else {
                field_0x982[1] = cM_rndF(50.0f) + 50.0f;
            }
        }
        break;
    }
    }

    WallWalk();
}

/* 80C36338-80C36B20 001298 07E8+00 2/2 0/0 0/0 .text            MoveAction__10daObjKAM_cFv */
void daObjKAM_c::MoveAction() {
    cXyz* unkXyzP1;

    for (s32 i = 0; i < 3; i++) {
        field_0x982[i]--;
        if (field_0x982[i] <= 0) {
            field_0x982[i] = 0;
        }
    }

    cXyz unkXyz1;
    cXyz unkXyz2(0.0f, 1.0f, 0.0f);
    dBgS_LinChk linChk;
    daPy_py_c* player = daPy_getPlayerActorClass();
    linChk.SetObj();
    cXyz unkXyz3;
    cXyz unkXyz4;
    s16 unusedInt1 = 0;

    switch (field_0x981) {
    case 0:
        mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("I_Kam", 6), 2, 5.0f, 0.0f, 0.0f,
                         -1.0f);
        field_0x981++;
        field_0x982[0] = 20;
        break;
    case 1:
        if (field_0x982[0] == 10) {
            mpMorfSO->setPlaySpeed(1.0f);
        }
        if (field_0x982[0] == 0) {
            field_0x981++;
            mDoMtx_stack_c::ZXYrotS(field_0x99a);
            mDoMtx_stack_c::multVec(&unkXyz2, &unkXyz2);
            field_0x982[0] = cM_rndF(10.0f) + 30.0f;
            if (field_0x9c0 == 0) {
                field_0x982[1] = cM_rndF(40.0f) + 40.0f;
            } else {
                field_0x982[1] = cM_rndF(40.0f) + 40.0f;
            }
            field_0x988 = cM_rndF(5.0f) + 8.0f;
            field_0x990 = mNormalYaw;
            field_0x98c = 3.0f;
            speed.y = 5.0f;
        }
        break;
    case 2:
        unkXyzP1 = player->getKandelaarFlamePos();
        if (unkXyzP1 != NULL) {
            field_0x990 = cLib_targetAngleY(&current.pos, unkXyzP1);
            if (unkXyzP1->abs(current.pos) < yREG_F(4) + 200.0f && speed.y < 0.0f) {
                cLib_addCalcAngleS2(&current.angle.y, field_0x990, 2, 0x500);
            } else {
                cLib_addCalcAngleS2(&current.angle.y, field_0x990, 0x10, 0x200);
            }
            if (unkXyzP1->abs(current.pos) < 11.0f && fopAcM_GetSpeedF(player) < 1.0f) {
                unkXyz3.set(0.0f, 0.0f, 10.0f);
                if (field_0x9c2 == 0) {
                    mNormalYaw = cLib_targetAngleY(&current.pos, unkXyzP1);
                }
                cLib_offsetPos(&unkXyz4, unkXyzP1, mNormalYaw, &unkXyz3);
                current.pos = unkXyz4;
                shape_angle.x = 0x4000;
                shape_angle.y = mNormalYaw;
                speedF = 0.0f;
                field_0x988 = 0.0f;
                speed.y = 0.0f;
                field_0x98c = 0.0f;
                mpMorfSO->setPlaySpeed(0.0f);
                field_0x990 = 0;
                current.angle.y = mNormalYaw;
                field_0x9c2 = 1;
                mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("I_Kam", 7), 2, 5.0f, 1.0f,
                                 0.0f, -1.0f);
            } else {
                if (field_0x9c2 != 0) {
                    field_0x9c2 = 0;
                    field_0x98c = 3.0f;
                    speed.y = 3.0f;
                    speedF = 8.0f;
                    field_0x988 = 8.0f;
                    mpMorfSO->setPlaySpeed(1.0f);
                    mNormalYaw = 0;
                    mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("I_Kam", 6), 2, 5.0f,
                                     1.0f, 0.0f, -1.0f);
                }
            }
        }
        if (field_0x982[0] == 0) {
            if (unkXyzP1 == NULL) {
                unkXyz3 = home.pos - current.pos;
                unkXyz3.x += cM_rndFX(yREG_F(10) + 1050.0f);
                unkXyz3.z += cM_rndFX(yREG_F(10) + 1050.0f);
                field_0x990 = (s16)cM_atan2s(unkXyz3.x, unkXyz3.z);
            }
            field_0x982[0] = cM_rndF(20.0f) + 20.0f;
            field_0x988 = cM_rndF(5.0f) + 8.0f;
        }
        if (field_0x982[1] == 0) {
            field_0x98c = -cM_rndF(nREG_F(10) + 3.0f);
            field_0x982[1] = cM_rndF(20.0f) + 20.0f;
        }
        f32 unusedFloat1 = mpMorfSO->getFrame();
        s16 unusedShort1 = current.angle.y;
        SpeedSet();
        if (WallCheck()) {
            field_0x980 = 0;
            field_0x981 = 0;
            speedF = 0.0f;
            speed.y = 0.0f;
            shape_angle.x = 0;
            shape_angle.z = 0;
        }
        if (field_0x9c0 == 0) {
            cLib_addCalcAngleS2(&field_0x99a.x, 0, 0x10, 0x1000);
            cLib_addCalcAngleS2(&field_0x99a.z, 0, 0x10, 0x1000);
        } else {
            cLib_addCalcAngleS2(&field_0x99a.x, 0, 0x10, 0x100);
            cLib_addCalcAngleS2(&field_0x99a.z, 0, 0x10, 0x100);
        }
        if (field_0x9c0 == 1) {
            cLib_addCalcAngleS2(&current.angle.y, field_0x990, 0x10, 0x100);
        }
        if (field_0x9c2 == 0) {
            cLib_chaseAngleS(&shape_angle.x, 0, 0x400);
        }
        break;
    }

    if (mpMorfSO->getPlaySpeed() == 1.0f) {
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_BTBT, 0, -1);
    }
}

/* 80C36B20-80C36BE4 001A80 00C4+00 1/1 0/0 0/0 .text            Action__10daObjKAM_cFv */
void daObjKAM_c::Action() {
    switch (field_0x980) {
    case 0:
        WaitAction();
        break;
    case 2:
        WalkAction();
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KSKS, 0, -1);
        break;
    case 1:
        MoveAction();
        break;
    }

    Insect_GetDemoMain();

    mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
}

/* 80C36BE4-80C36CA0 001B44 00BC+00 1/1 0/0 0/0 .text            ShopAction__10daObjKAM_cFv */
void daObjKAM_c::ShopAction() {
    switch (field_0x980) {
    case 0:
        ShopWaitAction();
        break;
    case 2:
        WalkAction();
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KSKS, 0, -1);
        break;
    case 1:
        MoveAction();
        break;
    }

    mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
}

/* 80C36CA0-80C36CB8 001C00 0018+00 1/0 0/0 0/0 .text            Insect_Release__10daObjKAM_cFv */
void daObjKAM_c::Insect_Release() {
    field_0x56c = 1;
    field_0x981 = 0;
    field_0x980 = 1;
}

static u8 const l_kam_itemno[2] = {fpcNm_ITEM_M_MANTIS, fpcNm_ITEM_F_MANTIS};

f32 floatDummy() {
    return -9.0f;
}

/* 80C36CB8-80C36E34 001C18 017C+00 1/1 0/0 0/0 .text            Z_BufferChk__10daObjKAM_cFv */
void daObjKAM_c::Z_BufferChk() {
    cXyz currentProj;
    cXyz currentOffset;
    currentOffset = current.pos;
    currentOffset.y += 20.0f;
    mDoLib_project(&currentOffset, &currentProj);
    camera_class* camera = dComIfGp_getCamera(0);
    f32 cameraHeight;
    if (camera != NULL) {
        cameraHeight = camera->mCamera.TrimHeight();
    } else {
        cameraHeight = 0.0f;
    }
#ifdef DEBUG
#define Z_BUFFERCHK_X_MAX 640.0f
#define Z_BUFFERCHK_Y_MAX 456.0f
#else
#define Z_BUFFERCHK_X_MAX 608.0f
#define Z_BUFFERCHK_Y_MAX 448.0f
#endif
    if (currentProj.x > 0.0f && currentProj.x < Z_BUFFERCHK_X_MAX && currentProj.y > cameraHeight &&
        currentProj.y < Z_BUFFERCHK_Y_MAX - cameraHeight)
    {
        dComIfGd_peekZ(currentProj.x, currentProj.y, &field_0x9bc);
    }
    f32 near = dComIfGd_getView()->near;
    f32 far = dComIfGd_getView()->far;
    mDoLib_pos2camera(&currentOffset, &currentProj);
    currentProj.z += 50.0f;
    if (currentProj.z > 0.0f) {
        currentProj.z = 0.0f;
    }
    field_0x9b8 = ((near + (far * near) / currentProj.z) / (far - near) + 1.0f) * 16777215.0f;
}

/* 80C36E34-80C36F58 001D94 0124+00 1/1 0/0 0/0 .text            ParticleSet__10daObjKAM_cFv */
void daObjKAM_c::ParticleSet() {
    if (field_0x9b8 > field_0x9bc) {
        cLib_addCalc2(&field_0x9a8, 0.0f, yREG_F(11) + 1.0f, 1.0f);
    } else {
        cLib_addCalc2(&field_0x9a8, field_0x9ac, yREG_F(11) + 1.0f, 1.0f);
    }
    mParticleKey1 = dComIfGp_particle_set(mParticleKey1, 0xa1b, &current.pos, &tevStr, &shape_angle,
                                          0, 0xff, 0, -1, 0, 0, 0);
    f32 fVar1 = field_0x9a8;
    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKey1);
    if (emitter != NULL) {
        emitter->setGlobalParticleScale(fVar1, fVar1);
    }
}

/* 80C36F58-80C37324 001EB8 03CC+00 1/1 0/0 0/0 .text            BoomChk__10daObjKAM_cFv */
void daObjKAM_c::BoomChk() {
    if (field_0x9c1 != 0) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        cXyz& playerPos = fopAcM_GetPosition(player);
        home.pos = current.pos;
        cXyz playerPosOffset = playerPos;
        playerPosOffset.y += 100.0f;

        if (mBoomerangMove.posMove(&current.pos, &shape_angle.y, NULL, 0x1c00)) {
            mBoomerangMove.bgCheckAfterOffset(&current.pos);
            current.pos.y += yREG_F(19) + 0.5f;
        } else {
            dBgS_LinChk linChk;
            linChk.SetObj();
            linChk.Set(&playerPosOffset, &current.pos, NULL);
            if (dComIfG_Bgsp().LineCross(&linChk) != 0) {
                cM3dGPla plane;
                dComIfG_Bgsp().GetTriPla(linChk, &plane);

                current.pos = old.pos = linChk.GetCross();

                field_0x980 = 0;
                field_0x981 = 0;

                cXyz* normal = plane.GetNP();
                current.pos = linChk.GetCross();

                cXyz origin(0.0f, 0.0f, 0.0f);
                cXyz normalYz(0.0f, normal->y, normal->z);
                f32 normalYzMag = origin.abs(normalYz);
                field_0x99a.z = -cM_atan2s(normal->x, normalYzMag);
                field_0x99a.x = cM_atan2s(normal->z, normal->y);
                mNormalYaw = cM_atan2s(normal->x, normal->z);
            } else {
                field_0x980 = 1;
                field_0x981 = 2;

                mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("I_Kam", 6), 2, 5.0f, 1.0f,
                                 0.0f, -1.0f);

                speedF = 8.0f;
                field_0x988 = cM_rndF(5.0f) + 8.0f;
                home.pos = current.pos;
                field_0x98c = 5.0f;
                speed.y = 5.0f;
                field_0x982[0] = 50;
                current.pos.y += 50.0f;
                field_0x982[1] = cM_rndF(5.0f) + 5.0f;
                current.pos.y = old.pos.y = playerPos.y + 100.0f;
            }

            field_0x9c1 = 0;
        }
    }
}

/* 80C37324-80C374AC 002284 0188+00 1/1 0/0 0/0 .text            ObjHit__10daObjKAM_cFv */
void daObjKAM_c::ObjHit() {
    if (mSphere.ChkTgHit() != 0) {
        cCcD_ObjHitInf* hitObj = mSphere.GetTgHitObj();
        if (hitObj->ChkAtType(AT_TYPE_BOOMERANG) != 0) {
            if (field_0x9c1 == 0) {
                field_0x9c1 = 1;
                mBoomerangMove.initOffset(&current.pos, mSphere.GetTgHitGObj());
            }
        } else {
            if (hitObj->ChkAtType(AT_TYPE_NORMAL_SWORD) == 0 &&
                hitObj->ChkAtType(AT_TYPE_HOOKSHOT) != 0)
            {
                cXyz offset(0.0f, 0.0f, 0.0f);
                daPy_getPlayerActorClass()->setHookshotCarryOffset(fopAcM_GetID(this), &offset);
                field_0x980 = 1;
                field_0x981 = 2;
                field_0x9c1 = 0;
                mpMorfSO->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("I_Kam", 6), 2, 5.0f, 1.0f,
                                 0.0f, -1.0f);
                speedF = 8.0f;
                field_0x988 = cM_rndF(5.0f) + 8.0f;
                field_0x982[1] = cM_rndF(5.0f) + 5.0f;
            }
        }
        mSphere.ClrTgHit();
    }
}

/* 80C374AC-80C37724 00240C 0278+00 1/1 0/0 0/0 .text            Execute__10daObjKAM_cFv */
int daObjKAM_c::Execute() {
    if (ChkGetDemo() != 0) {
        field_0x9b8 = field_0x9bc + 10000.0f;
        mCreatureSound.startCreatureSoundLevel(Z2SE_INSCT_KIRA, 0, -1);
        Insect_GetDemoMain();
        ParticleSet();
        return 1;
    }

    daPy_py_c* unusedPlayer = daPy_getPlayerActorClass();
    attention_info.position = current.pos;
    eyePos = current.pos;
    eyePos.y += 10.0f;
    switch (field_0x9c0) {
    case 0:
        if (fopAcM_checkHookCarryNow(this) == 0) {
            Action();
        } else {
            home.pos = current.pos;
        }
        mParticleKey2 = dComIfGp_particle_set(mParticleKey2, 0xa1c, &current.pos, &tevStr,
                                              &shape_angle, 0, 0xff, 0, -1, 0, 0, 0);
        SetCcSph();
        ObjHit();
        BoomChk();
        eyePos = current.pos;
        eyePos.y += 10.0f;
        attention_info.position = eyePos;
        attention_info.position.y += 10.0f;
        ParticleSet();
        break;
    case 1:
        ShopAction();
        break;
    }
    if (field_0x980 == 1 && field_0x981 == 2 && speed.y < 0.0f) {
        mObjAcch.CrrPos(dComIfG_Bgsp());
    }
    mpBrkAnm->play();
    mpBtkAnm->play();
    mpMorfSO->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setBaseMtx();
    return 1;
}

/* 80C37724-80C3778C 002684 0068+00 1/1 0/0 0/0 .text            Delete__10daObjKAM_cFv */
int daObjKAM_c::Delete() {
    dComIfG_resDelete(&mPhase, "I_Kam");
    if (field_0xa64 != 0) {
        l_initHIO = FALSE;
        mDoHIO_DELETE_CHILD(l_HIO.field_0x4);
    }
    if (heap != NULL) {
        mpMorfSO->stopZelAnime();
    }
    return 1;
}

/* 80C3778C-80C377F4 0026EC 0068+00 1/1 0/0 0/0 .text            setBaseMtx__10daObjKAM_cFv */
void daObjKAM_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(field_0x99a);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);

    MtxP mtx = mDoMtx_stack_c::get();
    mpMorfSO->getModel()->setBaseTRMtx(mtx);
    mpMorfSO->modelCalc();
}

/* 80C377F4-80C378D4 002754 00E0+00 1/0 0/0 0/0 .text            daObjKAM_Draw__FP10daObjKAM_c */
static int daObjKAM_Draw(daObjKAM_c* i_this) {
    return i_this->Draw();
}

/* 80C378D4-80C378F4 002834 0020+00 2/1 0/0 0/0 .text            daObjKAM_Execute__FP10daObjKAM_c */
static int daObjKAM_Execute(daObjKAM_c* i_this) {
    return i_this->Execute();
}

/* ############################################################################################## */
/* 80C384E4-80C384E8 0000DC 0004+00 1/2 0/0 0/0 .rodata          l_musiya_num */
static u16 const l_musiya_num[2] = {
    0x019D, /* dSv_event_flag_c::F_0413 - Misc. - Mantis (M) */
    0x019E, /* dSv_event_flag_c::F_0414 - Misc. - Mantis (F) */
};

/* 80C378F4-80C37AA0 002854 01AC+00 1/1 0/0 0/0 .text            CreateChk__10daObjKAM_cFv */
u8 daObjKAM_c::CreateChk() {
    u8 unkInt1 = (fopAcM_GetParam(this) & 0xf00) >> 8;
    if (unkInt1 == 0xf) {
        unkInt1 = 0;
    }
    if (field_0x9c0 != 2) {
        if (unkInt1 != 0) {
            if (!dComIfGs_isEventBit(
                    (u16)dSv_event_flag_c::saveBitLabels[l_musiya_num[SEX_MALE]]) ||
                !dComIfGs_isEventBit(
                    (u16)dSv_event_flag_c::saveBitLabels[l_musiya_num[SEX_FEMALE]]))
            {
                return 0;
            }
        } else {
            if (strcmp("R_SP160", dComIfGp_getStartStageName()) == 0 &&
                dComIfGp_getStartStageRoomNo() == 3)
            {
                if (dMenu_Insect_c::isCatchNotGiveInsect(l_kam_itemno[mSex])) {
                    return 0;
                }

                if (mSex == SEX_MALE &&
                        !dComIfGs_isEventBit(
                            (u16)dSv_event_flag_c::saveBitLabels[l_musiya_num[mSex]]) ||
                    mSex == SEX_FEMALE &&
                        !dComIfGs_isEventBit(
                            (u16)dSv_event_flag_c::saveBitLabels[l_musiya_num[mSex]]))
                {
                    return 0;
                }
            }
        }
    }
    return 1;
}

/* 80C37AA0-80C38258 002A00 07B8+00 1/1 0/0 0/0 .text            create__10daObjKAM_cFv */
int daObjKAM_c::create() {
    fopAcM_SetupActor(this, daObjKAM_c);

    s32 loadResult = dComIfG_resLoad(&mPhase, "I_Kam");
    if (loadResult == cPhs_COMPLEATE_e) {
        OS_REPORT("KAM PARAM %x\n", fopAcM_GetParam(this));

        field_0x9c0 = fopAcM_GetParam(this) & 0xf;
        if (field_0x9c0 == 2) {
            field_0x56c = 0;
            shape_angle.x -= (s16)0x2000;
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
        } else {
            mDraw = true;
        }

#ifdef DEBUG
#define DAOBJKAM_C_CREATE_DIST_INDEX fopAc_attn_ETC_e
#else
#define DAOBJKAM_C_CREATE_DIST_INDEX fopAc_attn_CARRY_e
#endif
        attention_info.distances[DAOBJKAM_C_CREATE_DIST_INDEX] = 93;

        mSex = (fopAcM_GetParam(this) & 0x10) >> 4;
        setItemNo(l_kam_itemno[mSex]);
        setSaveBitNo(l_musiya_num[mSex]);
        if (mSex == SEX_FEMALE) {
            scale.set(l_HIO.mModelScaleFemale, l_HIO.mModelScaleFemale, l_HIO.mModelScaleFemale);
            field_0x9ac = 1.0f;
        } else if (mSex == SEX_MALE) {
            scale.set(l_HIO.mModelScaleMale, l_HIO.mModelScaleMale, l_HIO.mModelScaleMale);
            field_0x9ac = 1.1f;
        }

        if (CreateChk() == 0) {
            return cPhs_ERROR_e;
        }

        if (fopAcM_entrySolidHeap(this, useHeapInit, 0xb50) == 0) {
            return cPhs_ERROR_e;
        }

        if (l_initHIO == FALSE) {
            l_initHIO = TRUE;
            field_0xa64 = 1;
            // Golden Mantis
            l_HIO.field_0x4 = mDoHIO_CREATE_CHILD("黄金蟲(カマキリ)", &l_HIO);
        }

        field_0x980 = 0;
        field_0x981 = 1;

        gravity = 0.0f + nREG_F(0);

        bool unkBool1 = false;

        cXyz unkXyz1(0.0f, 0.0f, 500.0f);
        cXyz unkXyz2(0.0f, 0.0f, -200.0f);
        cXyz unkXyz3;
        cXyz unkXyz4;

        dBgS_LinChk linkChk;
        linkChk.SetObj();

        for (s32 i = 0; i < 4; i++) {
            cLib_offsetPos(&unkXyz3, &current.pos, shape_angle.y + (i << 14), &unkXyz1);
            cLib_offsetPos(&unkXyz4, &current.pos, shape_angle.y + (i << 14), &unkXyz2);

            linkChk.Set(&unkXyz4, &unkXyz3, NULL);
            linkChk.SetObj();

            if (dComIfG_Bgsp().LineCross(&linkChk) != 0) {
                cM3dGPla plane;
                dComIfG_Bgsp().GetTriPla(linkChk, &plane);
                cXyz* normal = plane.GetNP();
                current.pos = linkChk.GetCross();
                cXyz origin(0.0f, 0.0f, 0.0f);
                cXyz normalYz(0.0f, normal->y, normal->z);
                f32 normalYzMag = origin.abs(normalYz);
                field_0x99a.z = -cM_atan2s(normal->x, normalYzMag);
                field_0x99a.x = cM_atan2s(normal->z, normal->y);

                unkBool1 = true;

                break;
            }
        }

        if (!unkBool1) {
            unkXyz1.set(0.0f, 500.0f, 0.0f);
            unkXyz3.set(0.0f, -1000.0f, 0.0f);
            linkChk.Set(&unkXyz1, &unkXyz3, NULL);
            linkChk.SetObj();
            if (dComIfG_Bgsp().LineCross(&linkChk) != 0) {
                cM3dGPla plane;
                dComIfG_Bgsp().GetTriPla(linkChk, &plane);
                cXyz* normal = plane.GetNP();
                current.pos = linkChk.GetCross();
                cXyz origin(0.0f, 0.0f, 0.0f);
                cXyz normalYz(0.0f, normal->y, normal->z);
                f32 normalYzMag = origin.abs(normalYz);
                field_0x99a.z = -cM_atan2s(normal->x, normalYzMag);
                field_0x99a.x = cM_atan2s(normal->z, normal->y);
            }
        }
        if (field_0x9c0 == 0) {
            InitCcSph();
        }

        if (field_0x9c0 == 2) {
            if (strcmp("R_SP160", dComIfGp_getStartStageName()) != 0 ||
                dComIfGp_getStartStageRoomNo() != 3)
            {
                InitCcSph();
            }
        }

        mObjAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                     fopAcM_GetSpeed_p(this), NULL, NULL);

        fopAcM_SetMtx(this, mpMorfSO->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -50.0f, -50.0f, -50.0f);
        fopAcM_SetMax(this, 50.0f, 50.0f, 50.0f);
        mCreatureSound.init(&current.pos, &eyePos, 3, 1);
        daObjKAM_Execute(this);
    }

    return loadResult;
}

/* 80C38358-80C38360 0032B8 0008+00 1/0 0/0 0/0 .text            daObjKAM_IsDelete__FP10daObjKAM_c
 */
static bool daObjKAM_IsDelete(daObjKAM_c* param_0) {
    return true;
}

/* 80C3850C-80C3852C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjKAM_Method */
static actor_method_class l_daObjKAM_Method = {
    (process_method_func)daObjKAM_Create,  (process_method_func)daObjKAM_Delete,
    (process_method_func)daObjKAM_Execute, (process_method_func)daObjKAM_IsDelete,
    (process_method_func)daObjKAM_Draw,
};

/* 80C3852C-80C3855C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Kam */
extern actor_process_profile_definition g_profile_Obj_Kam = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Kam,            // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjKAM_c),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    482,                     // mPriority
    &l_daObjKAM_Method,      // sub_method
    0x000C0120,              // mStatus
    fopAc_ENV_e,             // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
