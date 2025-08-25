/**
* @file d_a_obj_lv3Water.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv3Water.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "d/d_bg_w.h"
#include "d/d_com_inf_game.h"
#include "d/d_procname.h"
#include "f_op/f_op_msg_mng.h"

class daLv3Water_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C587CC */ daLv3Water_HIO_c();
    /* 80C59C34 */ virtual ~daLv3Water_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x00 */ /* vtable */
    /* 0x04 */ u8 field_0x04;
};

/* 80C5A314-80C5A31C 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static daLv3Water_HIO_c l_HIO;

/* 80C5A15C-80C5A1B0 -00001 0054+00 3/3 0/0 0/0 .data            l_resNameIdx */
static char* l_resNameIdx[] = {
    "Kr10water", "Kr10wat01", "Kr02wat00", "Kr03wat00", "Kr03wat01", "Kr03wat02", "Kr03wat03",
    "Kr03wat04", "Kr07wat00", "Kr08wat00", "Kr08wat01", "Kr02wat01", "Kr02wat02", "Kr02wat03",
    "Kr11wat00", "Kr12wat00", "Kr13wat00", "Kr13wat01", "Kr13wat02", "Kr03wat05", "Kr03wat06",
};

static daLv3Water_c::modeFunc l_mode_func[] = {
    &daLv3Water_c::mode_proc_wait,
    &daLv3Water_c::mode_proc_levelCtrl,
};

/* 80C587CC-80C587F0 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__16daLv3Water_HIO_cFv */
daLv3Water_HIO_c::daLv3Water_HIO_c() {
    field_0x04 = NULL;
}

/* 80C58838-80C5891C 000158 00E4+00 2/2 0/0 0/0 .text            setBaseMtx__12daLv3Water_cFv */
void daLv3Water_c::setBaseMtx() {
    if (mpModel2 != NULL) {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
        mDoMtx_stack_c::YrotM(shape_angle.y);

        mpModel2->setBaseScale(scale);
        mpModel2->setBaseTRMtx(mDoMtx_stack_c::get());
    }

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    mpModel1->setBaseScale(scale);
    mpModel1->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C59E70-80C59EC4 000000 0054+00 2/2 0/0 0/0 .rodata          l_bmdIdx */
static const int l_bmdIdx[] = {
    5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
};

/* 80C59EC4-80C59F18 000054 0054+00 1/1 0/0 0/0 .rodata          l_dzbIdx */
static const int l_dzbIdx[] = {
    13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 11, 11,
};

/* 80C59F18-80C59F6C 0000A8 0054+00 0/1 0/0 0/0 .rodata          l_btkIdx */
static const int l_btkIdx[] = {
    9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8,
};

/* 80C59F6C-80C59FC0 0000FC 0054+00 0/1 0/0 0/0 .rodata          l_bmdIdrIdx */
static const int l_bmdIdrIdx[] = {
    6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, -1, -1,
};

/* 80C59FC0-80C5A014 000150 0054+00 0/1 0/0 0/0 .rodata          l_btkIdrIdx */
static const int l_btkIdrIdx[] = {
    10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, -1, -1,
};

/* 80C5891C-80C58ABC 00023C 01A0+00 1/0 0/0 0/0 .text            CreateHeap__12daLv3Water_cFv */
int daLv3Water_c::CreateHeap() {
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_resNameIdx[mType], l_bmdIdx[mType]);

    mpModel1 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);

    if (mpModel1 == NULL) {
        return 0;
    }

    J3DAnmTextureSRTKey* btk =
        (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_resNameIdx[mType], l_btkIdx[mType]);
    mBtk1.init(modelData, btk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1);

    if (l_bmdIdrIdx[mType] != -1) {
        J3DModelData* modelData =
            (J3DModelData*)dComIfG_getObjectRes(l_resNameIdx[mType], l_bmdIdrIdx[mType]);

        mpModel2 = mDoExt_J3DModel__create(modelData, 0x80000, 0x19000284);

        if (mpModel2 == NULL) {
            return 0;
        }

        J3DAnmTextureSRTKey* btk =
            (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_resNameIdx[mType], l_btkIdrIdx[mType]);
        mBtk2.init(modelData, btk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1);
    } else {
        mpModel2 = NULL;
    }

    return 1;
}

/* 80C5A018-80C5A048 0001A8 002A+06 1/1 0/0 0/0 .rodata          estimateSizeTbl$3746 */
static u16 const estimateSizeTbl[] = {
    0x1CE0,
    0x4F90,
    0x1C80,
    0x1C30,
    0x1C30,
    0x1C30,
    0x1C30,
    0x8000,
    0x27D0,
    0x2490,
    0x1E60,
    0x1C80,
    0x1C80,
    0x1C80,
    0x4F90,
    0x2880,
    0x29D0,
    0x2B00,
    0x2040,
    0x1360,
    0x1360,
    /* padding */
    0x0000,
    0x0000,
    0x0000,
};

/* 80C58ABC-80C58D20 0003DC 0264+00 1/1 0/0 0/0 .text            create__12daLv3Water_cFv */
int daLv3Water_c::create() {
    fopAcM_SetupActor(this, daLv3Water_c);

    mType = getParamType();

    int phase = dComIfG_resLoad(&mPhase, l_resNameIdx[mType]);

    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate(l_resNameIdx[mType], l_dzbIdx[mType], NULL, estimateSizeTbl[mType],
                         NULL) == cPhs_ERROR_e)
        {
            return cPhs_ERROR_e;
        }

        field_0x5fc = getParam();
        mSwitch1 = dComIfGs_isSwitch(getParamSw(), fopAcM_GetHomeRoomNo(this));
        field_0x605 = 1;

        if (mType == 1 || mType == 10 || mType == 15 || mType == 17 || mType == 19 || mType == 20) {
            if (mSwitch1 == 0) {
                if (mpBgW != NULL) {
                    dComIfG_Bgsp().Release(mpBgW);
                }
                field_0x605 = 0;
            } else if (mType == 1) {
                current.pos.y = home.pos.y + field_0x5fc;
            }
        } else if (mSwitch1 != 0) {
            current.pos.y = home.pos.y + field_0x5fc;
        }

        fopAcM_SetMtx(this, mpModel1->getBaseTRMtx());
        setBaseMtx();
        mMode = WAIT;
    }

    return phase;
}

/* 80C58D68-80C58E20 000688 00B8+00 1/0 0/0 0/0 .text            Execute__12daLv3Water_cFPPA3_A4_f
 */
int daLv3Water_c::Execute(Mtx** i_mtx) {
    mBtk1.play();

    if (mpModel2 != NULL) {
        mBtk2.play();
    }

    eventUpdate();
    mSwitch2 = dComIfGs_isSwitch(getParamSw(), fopAcM_GetHomeRoomNo(this));
    (this->*l_mode_func[mMode])();
    effectSet();
    *i_mtx = &mpModel1->getBaseTRMtx();
    setBaseMtx();

    return 1;
}

/* 80C58E20-80C596F4 000740 08D4+00 2/1 0/0 0/0 .text            effectSet__12daLv3Water_cFv */
void daLv3Water_c::effectSet() {
    switch (mType) {
    case 8:
        if (fopAcM_isSwitch(this, 8)) {
            mEmitterIDs[0] =
                dComIfGp_particle_set(mEmitterIDs[0], 0X8AB2, &current.pos, NULL, NULL);
            mEmitterIDs[1] =
                dComIfGp_particle_set(mEmitterIDs[1], 0X8AB3, &current.pos, NULL, NULL);
        }
        break;
    case 9:
        if (mSwitch1) {
            mEmitterIDs[0] =
                dComIfGp_particle_set(mEmitterIDs[0], 0X8AB4, &current.pos, NULL, NULL);
            mEmitterIDs[1] =
                dComIfGp_particle_set(mEmitterIDs[1], 0X8AB5, &current.pos, NULL, NULL);
            mEmitterIDs[2] =
                dComIfGp_particle_set(mEmitterIDs[2], 0X8AB6, &current.pos, NULL, NULL);
            mEmitterIDs[3] =
                dComIfGp_particle_set(mEmitterIDs[3], 0X8AB7, &current.pos, NULL, NULL);
        }
        break;
    case 1:
        if (fopAcM_isSwitch(this, 8)) {
            mEmitterIDs[0] =
                dComIfGp_particle_set(mEmitterIDs[0], 0x8AB9, &current.pos, NULL, NULL);
            mEmitterIDs[1] =
                dComIfGp_particle_set(mEmitterIDs[1], 0x8ABA, &current.pos, NULL, NULL);
            mEmitterIDs[2] =
                dComIfGp_particle_set(mEmitterIDs[2], 0x8ABB, &current.pos, NULL, NULL);
            mEmitterIDs[3] =
                dComIfGp_particle_set(mEmitterIDs[3], 0x8ABC, &current.pos, NULL, NULL);
            mEmitterIDs[4] =
                dComIfGp_particle_set(mEmitterIDs[4], 0x8AB8, &current.pos, NULL, NULL);
        }
        break;
    case 14:
        if (fopAcM_isSwitch(this, 9)) {
            mEmitterIDs[0] =
                dComIfGp_particle_set(mEmitterIDs[0], 0X8ABF, &current.pos, NULL, NULL);
            mEmitterIDs[1] =
                dComIfGp_particle_set(mEmitterIDs[1], 0X8AC0, &current.pos, NULL, NULL);
            mEmitterIDs[2] =
                dComIfGp_particle_set(mEmitterIDs[2], 0X8AC1, &current.pos, NULL, NULL);
            mEmitterIDs[3] =
                dComIfGp_particle_set(mEmitterIDs[3], 0X8AC2, &current.pos, NULL, NULL);
        }
        break;
    case 17:
        if (mSwitch1) {
            mEmitterIDs[0] =
                dComIfGp_particle_set(mEmitterIDs[0], 0X8AC4, &current.pos, NULL, NULL);
            mEmitterIDs[1] =
                dComIfGp_particle_set(mEmitterIDs[1], 0X8AC5, &current.pos, NULL, NULL);
            mEmitterIDs[2] =
                dComIfGp_particle_set(mEmitterIDs[2], 0X8AC6, &current.pos, NULL, NULL);
            mEmitterIDs[3] =
                dComIfGp_particle_set(mEmitterIDs[3], 0X8AC7, &current.pos, NULL, NULL);
        }
        break;
    case 16:
        if (mSwitch1) {
            mEmitterIDs[0] =
                dComIfGp_particle_set(mEmitterIDs[0], 0X8AC8, &current.pos, NULL, NULL);
            mEmitterIDs[1] =
                dComIfGp_particle_set(mEmitterIDs[1], 0X8AC9, &current.pos, NULL, NULL);
        }
        if (fopAcM_isSwitch(this, 9)) {
            mEmitterIDs[2] =
                dComIfGp_particle_set(mEmitterIDs[2], 0x8AC3, &current.pos, NULL, NULL);
        }
    }
}

/* 80C596F4-80C59754 001014 0060+00 1/0 0/0 0/0 .text            mode_proc_wait__12daLv3Water_cFv */
void daLv3Water_c::mode_proc_wait() {
    if (mSwitch1 != mSwitch2) {
        int event = getParamEvent();
        if (event != 0xFF) {
            orderEvent(event, 0xFF, 1);
        } else {
            eventStart();
        }
    }
}

/* 80C59754-80C597FC 001074 00A8+00 1/1 0/0 0/0 .text mode_init_levelCtrl__12daLv3Water_cFv */
void daLv3Water_c::mode_init_levelCtrl() {
    field_0x600 = 0;
    field_0x604 = l_HIO.field_0x04;

    if (mType == 9) {
        fopAcM_seStartCurrent(this, Z2SE_ENV_FILL_UP_LV3WTR3, 0);
    }

    mMode = LEVEL_CTRL;
}

/* 80C597FC-80C598BC 00111C 00C0+00 1/0 0/0 0/0 .text mode_proc_levelCtrl__12daLv3Water_cFv */
void daLv3Water_c::mode_proc_levelCtrl() {
    if (field_0x604 != NULL) {
        field_0x604 = field_0x604 - 1;
    } else {
        f32 fVar = fopMsgM_valueIncrease(field_0x601, field_0x600, mSwitch1);

        if (mSwitch1 == 0) {
            fVar = 1.0f - fVar;
        }

        field_0x600 = field_0x600 + 1;
        if (field_0x600 >= field_0x601) {
            fVar = mSwitch1;
            mMode = WAIT;
        }

        current.pos.y = home.pos.y + field_0x5fc * fVar;
    }
}

/* 80C598BC-80C59AA0 0011DC 01E4+00 1/0 0/0 0/0 .text            Draw__12daLv3Water_cFv */
int daLv3Water_c::Draw() {
    if (field_0x605 == NULL) {
        return 0;
    }

    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel1, &tevStr);

    if (mpModel2 != NULL) {
        g_env_light.setLightTevColorType_MAJI(mpModel2, &tevStr);
    }

    mBtk1.entry(mpModel1->getModelData());

    if (mpModel2 != NULL) {
        mBtk2.entry(mpModel2->getModelData());
    }

    dComIfGd_setXluListDarkBG();
    mDoExt_modelUpdateDL(mpModel1);
    dComIfGd_setList();

    if (mpModel2 != NULL) {
        J3DModelData* modelData = mpModel2->getModelData();
        J3DMaterial* material = modelData->getMaterialNodePointer(0);

        dComIfGd_setListInvisisble();

        J3DTexMtx* texMtx = material->getTexGenBlock()->getTexMtx(0);
        if (texMtx != NULL) {
            J3DTexMtxInfo* texMtxInfo = &material->getTexGenBlock()->getTexMtx(0)->getTexMtxInfo();
            if (texMtxInfo != NULL) {
                Mtx lightProjMtx;
                C_MTXLightPerspective(lightProjMtx, dComIfGd_getView()->fovy,
                                      dComIfGd_getView()->aspect, 1.0f, 1.0f, -0.01f, 0.0f);
                texMtxInfo->setEffectMtx(lightProjMtx);
                modelData->simpleCalcMaterial(0, (MtxP)j3dDefaultMtx);
            }
        }

        mDoExt_modelUpdateDL(mpModel2);
        dComIfGd_setList();
    }

    return 1;
}

/* 80C59AA0-80C59AE0 0013C0 0040+00 1/0 0/0 0/0 .text            Delete__12daLv3Water_cFv */
int daLv3Water_c::Delete() {
    dComIfG_resDelete(&mPhase, l_resNameIdx[mType]);
    return 1;
}

/* 80C59AE0-80C59BA8 001400 00C8+00 2/1 0/0 0/0 .text            eventStart__12daLv3Water_cFv */
bool daLv3Water_c::eventStart() {
    field_0x601 = fpcM_GetParam(this) >> 0x18;
    mSwitch1 = mSwitch2;

    if (mType == 1 || mType == 10 || mType == 15 || mType == 17 || mType == 19 || mType == 20) {
        if (mpBgW != NULL) {
            dComIfG_Bgsp().Regist(mpBgW, this);
        }
        if (mType == 1) {
            current.pos.y = home.pos.y + field_0x5fc;
        }
        field_0x605 = mSwitch2;
        mMode = WAIT;
    } else {
        mode_init_levelCtrl();
    }

    return true;
}

/* 80C59BA8-80C59BD4 0014C8 002C+00 1/0 0/0 0/0 .text            daLv3Water_Draw__FP12daLv3Water_c
 */
static int daLv3Water_Draw(daLv3Water_c* i_this) {
    return i_this->Draw();
}

/* 80C59BD4-80C59BF4 0014F4 0020+00 1/0 0/0 0/0 .text daLv3Water_Execute__FP12daLv3Water_c */
static int daLv3Water_Execute(daLv3Water_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C59BF4-80C59C14 001514 0020+00 1/0 0/0 0/0 .text            daLv3Water_Delete__FP12daLv3Water_c
 */
static int daLv3Water_Delete(daLv3Water_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C59C14-80C59C34 001534 0020+00 1/0 0/0 0/0 .text            daLv3Water_Create__FP10fopAc_ac_c
 */
static int daLv3Water_Create(fopAc_ac_c* i_this) {
    return static_cast<daLv3Water_c*>(i_this)->create();
}

/* 80C59C34-80C59C90 001554 005C+00 2/1 0/0 0/0 .text            __dt__16daLv3Water_HIO_cFv */
/* 80C5A228-80C5A248 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv3Water_Method */
static actor_method_class l_daLv3Water_Method = {
    (process_method_func)daLv3Water_Create,  (process_method_func)daLv3Water_Delete,
    (process_method_func)daLv3Water_Execute, 0,
    (process_method_func)daLv3Water_Draw,
};

/* 80C5A248-80C5A278 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv3Water */
extern actor_process_profile_definition g_profile_Obj_Lv3Water = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv3Water,       // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daLv3Water_c),    // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    616,                     // mPriority
    &l_daLv3Water_Method,    // sub_method
    0x00044000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
