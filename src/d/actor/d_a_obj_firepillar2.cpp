/**
 * @file d_a_obj_firepillar2.cpp
 * 
*/

#include "d/actor/d_a_obj_firepillar2.h"
#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_mng.h"

/* 80BE9CB8-80BE9CD8 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daObjFPillar2_c*>(i_this)->CreateHeap();
}

/* 80BE9CD8-80BE9D5C 000098 0084+00 1/1 0/0 0/0 .text            initBaseMtx__15daObjFPillar2_cFv */
void daObjFPillar2_c::initBaseMtx() {
    if (getKind() == KIND_MAGMA_POLE) {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
    } else {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(0x4000, shape_angle.y, shape_angle.z);
    }
    MTXCopy(mDoMtx_stack_c::get(), mMtx);
    setBaseMtx();
}

/* 80BE9D5C-80BE9DDC 00011C 0080+00 2/2 0/0 0/0 .text            setBaseMtx__15daObjFPillar2_cFv */
void daObjFPillar2_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    if (mModel != NULL) {
        cXyz cStack_18(scale.x, 1.0f, scale.z);
        mModel->setBaseScale(cStack_18);
        mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 80BEB528-80BEB534 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80BEB534-80BEB548 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 80BEB548-80BEB54C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Obj_yogan";

/* 80BEB54C-80BEB564 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
SECTION_DATA static Vec l_cull_box[2] = {
    {-150.0f, -10.0f, -150.0f},
    {150.0f, 1200.0f, 150.0f},
};

/* 80BEB564-80BEB5B0 00003C 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0xe, 0x1, 0x2}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 100.0f, 0.0f}, 50.0f}, // mCps
    } // mCpsAttr
};

/* 80BE9DDC-80BEA034 00019C 0258+00 1/1 0/0 0/0 .text            Create__15daObjFPillar2_cFv */
int daObjFPillar2_c::Create() {
    if (getKind() == KIND_MAGMA_POLE) {
        switch(getSize()) {
        case 0:
            scale.z = 0.8f;
            scale.x = 0.8f;
            break;
        case 1:
            scale.z = 1.0f;
            scale.x = 1.0f;
            break;
        case 2:
            scale.z = 1.5f;
            scale.x = 1.5f;
            break;
        }
        scale.y = 7.5f;
        home.pos.y -= 50.0f;
        current.pos.y = home.pos.y;
        old.pos.y = home.pos.y;
    } else {
        scale.y = 11.0f;
        scale.z = 2.0f;
        scale.x = 2.0f;
    }
    mYoganScale = scale;
    mYoganScale.y = 1.0f;
    mSoundDir = 1;
    initBaseMtx();
    mStts.Init(0, 0xff, this);
    mCps.Set(l_cps_src);
    mCps.SetStts(&mStts);
    if (getKind() == KIND_MAGMA_POLE) {
        mCps.SetAtSpl(dCcG_At_Spl_UNK_0);
    }
    fopAcM_setCullSizeBox(this, l_cull_box[0].x, l_cull_box[0].y, l_cull_box[0].z, l_cull_box[1].x, l_cull_box[1].y,
                          l_cull_box[1].z);
    fopAcM_SetMtx(this, mMtx);
    mSoundObj.init(&mSoundPos, 1);
    if (getKind() == KIND_PIPE_FIRE) {
        s32 roomNo = fopAcM_GetRoomNo(this);
        field_0x980 = dComIfGp_particle_set(0x84df, &current.pos, &current.angle, 0, 0xff, 0,
                                            roomNo, 0, 0, 0);
        roomNo = fopAcM_GetRoomNo(this);
        field_0x984 = dComIfGp_particle_set(0x84e0, &current.pos, &current.angle, 0, 0xff, 0,
                                            roomNo, 0, 0, 0);
    }
    actionOffInit();
    return 1;
}

/* 80BEA034-80BEA1E0 0003F4 01AC+00 1/1 0/0 0/0 .text            CreateHeap__15daObjFPillar2_cFv */
int daObjFPillar2_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 8);
    JUT_ASSERT(363, modelData != 0);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000284);
    if (mModel == NULL) {
        return 0;
    }
    J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 11);
    JUT_ASSERT(377, pbtk != 0);
    mBtk = new mDoExt_btkAnm();
    if (mBtk == NULL || !mBtk->init(modelData, pbtk, 1, 2, 1.0f, 0, -1)) {
        return 0;
    }
    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes(l_arcName, 5);
    JUT_ASSERT(389, pbck != 0);
    mBck = new mDoExt_bckAnm();
    if (mBck == NULL || !mBck->init(pbck, 1, 0, 1.0f, 0, -1, false)) {
        return 0;
    }
    return 1;
}

/* 80BEA228-80BEA400 0005E8 01D8+00 1/1 0/0 0/0 .text            create__15daObjFPillar2_cFv */
int daObjFPillar2_c::create() {
    fopAcM_SetupActor(this, daObjFPillar2_c);
    if (mInitAngles == 0) {
        field_0x97a = home.angle.x;
        field_0x97c = home.angle.z;
        current.angle.x = 0;
        shape_angle.x = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        shape_angle.z = 0;
        home.angle.z = 0;
        mInitAngles = 1;
    }
    int rv = cPhs_COMPLEATE_e;
    if (getKind() == KIND_MAGMA_POLE) {
        #if DEBUG
        if (getSwNo() != 0xff) {
            return cPhs_ERROR_e;
        }
        #endif
        rv = dComIfG_resLoad(&mPhase, l_arcName);
        if (rv == 4 && fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x1280) == 0) {
            return cPhs_ERROR_e;
        }
    }
    if (rv == cPhs_COMPLEATE_e) {
        if (!Create()) {
            return cPhs_ERROR_e;
        }
    }
    return rv;
}

/* 80BEA584-80BEA734 000944 01B0+00 1/1 0/0 0/0 .text            execute__15daObjFPillar2_cFv */
int daObjFPillar2_c::execute() {
    action();
    field_0x944.x = scale.x;
    field_0x944.z = scale.z;
    cXyz cStack_1c;
    switch(getKind()) {
    case 1:
        cStack_1c = cXyz::BaseY;
        cStack_1c.y *= field_0x944.y * 100.0f;
        break;
    case 0:
        cStack_1c = cXyz::BaseZ;
        cStack_1c.z *= field_0x944.y * 100.0f;
        break;
    }
    mDoMtx_stack_c::YrotS(current.angle.y);
    mDoMtx_stack_c::multVec(&cStack_1c, &cStack_1c);
    field_0x95c.mStart = current.pos;
    field_0x95c.mEnd = cStack_1c + current.pos;
    field_0x95c.mRadius = scale.x * 50.0f;
    if (field_0x944.y > scale.y * 0.1f) {
        mCps.cM3dGCps::Set(field_0x95c);
        dComIfG_Ccsp()->Set(&mCps);
    }
    setBaseMtx();
    mSoundObj.framework(0,  dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    return 1;
}

/* 80BEA734-80BEA808 000AF4 00D4+00 1/1 0/0 0/0 .text            action__15daObjFPillar2_cFv */
void daObjFPillar2_c::action() {
    static daObjFPillar2_c::actionFunc l_func[3] = {
        &daObjFPillar2_c::actionOff,
        &daObjFPillar2_c::actionOnWait,
        &daObjFPillar2_c::actionOn,
    };
    (this->*(l_func[mAction]))();
    if (mBck != 0) {
        mBck->play();
    }
    if (mBtk != 0) {
        mBtk->play();
    }
}


/* 80BEB5F8-80BEB600 0000D0 0006+02 1/1 0/0 0/0 .data            l_pipe_fire_id$4005 */
SECTION_DATA static u16 l_pipe_fire_id[3] = {
    0x84E1,
    0x84E2,
    0x84E3,
};

/* 80BEB600-80BEB608 0000D8 0006+02 1/1 0/0 0/0 .data            l_yogan_foot_id$4014 */
SECTION_DATA static u16 l_yogan_foot_id[3] = {
    0x816F,
    0x8170,
    0x8171,
};

/* 80BEB608-80BEB610 0000E0 0006+02 1/0 0/0 0/0 .data            l_yogan_headL_id$4092 */
SECTION_DATA static u16 l_yogan_headL_id[3] = {
    0x84E4,
    0x84E5,
    0x84E6,
};

/* 80BEB610-80BEB618 0000E8 0006+02 1/0 0/0 0/0 .data            l_yogan_headM_id$4093 */
SECTION_DATA static u16 l_yogan_headM_id[3] = {
    0x84E7,
    0x84E8,
    0x84E9,
};

/* 80BEB618-80BEB620 0000F0 0006+02 1/0 0/0 0/0 .data            l_yogan_headS_id$4094 */
SECTION_DATA static u16 l_yogan_headS_id[3] = {
    0x84EA,
    0x84EB,
    0x84EC,
};

/* 80BEB620-80BEB62C -00001 000C+00 1/1 0/0 0/0 .data            l_yogan_head_id$4095 */
SECTION_DATA static u16* l_yogan_head_id[3] = {
    l_yogan_headS_id,
    l_yogan_headM_id,
    l_yogan_headL_id,
};

/* 80BEA808-80BEA854 000BC8 004C+00 3/3 0/0 0/0 .text            actionOffInit__15daObjFPillar2_cFv
 */
void daObjFPillar2_c::actionOffInit() {
    u8 arg0 = getArg0();
    if (arg0 == 0xff) {
        arg0 = 1;
    }
    mActionTimer = arg0 * 15;
    if (getKind() == KIND_MAGMA_POLE) {
        mBck->setPlaySpeed(0.0f);
    }
    mAction = ACTION_OFF;
}

/* 80BEA854-80BEA98C 000C14 0138+00 1/0 0/0 0/0 .text            actionOff__15daObjFPillar2_cFv */
void daObjFPillar2_c::actionOff() {
    cLib_chaseF(&field_0x944.y, 0.0f, scale.y * 0.1f);
    if (mActionTimer == 0) {
        actionOnWaitInit();
    } else {
        if (getSwNo() != 0xff) {
            if (fopAcM_isSwitch(this, getSwNo())) {
                mActionTimer = 1;
            } else {
                mActionTimer = 0;
            }
        } else {
            mActionTimer--;
        }
    }
    switch(getKind()) {
    case 0:
        mSoundPos = home.pos;
        fopAcM_seStartLevel(this, Z2SE_OBJ_PIPEFIRE_REST, 0);
        break;
    case 1:
        break;
    }
}

/* 80BEA98C-80BEAAE4 000D4C 0158+00 1/1 0/0 0/0 .text actionOnWaitInit__15daObjFPillar2_cFv */
void daObjFPillar2_c::actionOnWaitInit() {
    if (getKind() == KIND_PIPE_FIRE) {
        for (int i = 0; i < 3; i++) {
            s32 roomNo = fopAcM_GetRoomNo(this);
            mPipeFireEmitters[i] = dComIfGp_particle_set(
                l_pipe_fire_id[i], &current.pos, &current.angle, 0, 0xff, 0, roomNo, 0, 0, 0);
        }
    } else {
        if (getKind() == KIND_MAGMA_POLE) {
            for (int i = 0; i < 3; i++) {
                s32 roomNo = fopAcM_GetRoomNo(this);
                dComIfGp_particle_set(l_yogan_foot_id[i], &current.pos, &current.angle,
                                      &mYoganScale, 0xff, 0, roomNo, 0, 0, 0);
            }
        }
    }
    mActionTimer = 75;
    mAction = ACTION_ON_WAIT;
}

/* 80BEAAE4-80BEAC68 000EA4 0184+00 1/0 0/0 0/0 .text            actionOnWait__15daObjFPillar2_cFv
 */
void daObjFPillar2_c::actionOnWait() {
    cLib_chaseF(&field_0x944.y, scale.y * 0.1f, scale.y * 0.02f);
    if (mActionTimer == 0) {
        actionOnInit();
    } else {
        if (getSwNo() != 0xff) {
            if (fopAcM_isSwitch(this, getSwNo())) {
                daObjFPillar2_c::actionOffInit();
            } else {
                mActionTimer = 0;
            }
        } else {
            mActionTimer--;
        }
    }
    switch(getKind()) {
    case KIND_MAGMA_POLE:
        mSoundPos = home.pos;
        mSoundObj.startLevelSound(Z2SE_OBJ_MAGMAPOLE_YOBI, 0, -1);
        break;
    case KIND_PIPE_FIRE:
        mSoundPos = home.pos;
        fopAcM_seStartLevel(this, Z2SE_OBJ_PIPEFIRE_YOBI, 0);
        break;
    }
}

/* 80BEAC68-80BEADD0 001028 0168+00 1/1 0/0 0/0 .text            actionOnInit__15daObjFPillar2_cFv
 */
void daObjFPillar2_c::actionOnInit() {
    if (getKind() == KIND_MAGMA_POLE) {
        for (int i = 0; i < 3; i++) {
            s32 roomNo = fopAcM_GetRoomNo((fopAc_ac_c*)this);
            mMagmaPoleEmitters[i] = dComIfGp_particle_set(
                l_yogan_head_id[getSize()][i],
                &current.pos, &current.angle, 0, 0xff, 0, roomNo, 0, 0, 0);
            if (mMagmaPoleEmitters[i] != NULL) {
                mMagmaPoleEmitters[i]->becomeImmortalEmitter();
                mMagmaPoleEmitters[i]->setGlobalRTMatrix(mModel->getAnmMtx(0));
            }
        }
        mBck->setFrame(0.0f);
        mBck->setPlaySpeed(1.0f);
        mActionTimer = 125;
    } else if (getKind() == KIND_PIPE_FIRE) {
        mActionTimer = 75;
        mPipeFireRate = 1.0f;
        mPipeFireLifeTime = 30.0f;
        mPipeFireDirectionalSpeed = 80.0f;
        mPipeFireScale = 1.0f;
        mFirePipeTimer = 50;
    }
    mAction = ACTION_ON;
}

/* 80BEADD0-80BEB1B4 001190 03E4+00 1/0 0/0 0/0 .text            actionOn__15daObjFPillar2_cFv */
void daObjFPillar2_c::actionOn() {
    f32 target = scale.y;
    if (mActionTimer == 0) {
        target = 0.0f;
    } else {
        if (getSwNo() != 0xff) {
            if (fopAcM_isSwitch(this, getSwNo())) {
                mActionTimer = 0;
                target = 0.0f;
            }
        } else {
            mActionTimer--;
        }
    }
    if (target == 0.0f) {
        f32 step = scale.y * 0.02f;
        if (getKind() == KIND_MAGMA_POLE) {
            step = scale.y * 0.04f;
            if (cLib_chaseF(&field_0x944.y, target, step) != 0) {
                for (int i = 0; i < 3; i++) {
                    if (mMagmaPoleEmitters[i] != 0) {
                        mMagmaPoleEmitters[i]->becomeInvalidEmitter();
                        mMagmaPoleEmitters[i]->quitImmortalEmitter();
                        mMagmaPoleEmitters[i] = NULL;
                    }
                }
                actionOffInit();
            }
        } else {
            cLib_chaseF(&field_0x944.y, target, step);
            cLib_chaseF(&mPipeFireRate, 0.2f, 0.016f);
            cLib_chaseF(&mPipeFireLifeTime, 15.0f, 0.3f);
            cLib_chaseF(&mPipeFireDirectionalSpeed, 0.0f, 1.6f);
            cLib_chaseF(&mPipeFireScale, 0.8f, 0.0039999999f);
            if (cLib_calcTimer(&mFirePipeTimer) == 0) {
                for (int i = 0; i < 3; i++) {
                    if (mPipeFireEmitters[i] != 0) {
                        mPipeFireEmitters[i]->becomeInvalidEmitter();
                        mPipeFireEmitters[i]->quitImmortalEmitter();
                        mPipeFireEmitters[i] = NULL;
                    }
                }
                actionOffInit();
            }
        }
    } else {
        cLib_chaseF(&field_0x944.y, target, scale.y * 0.1f);
    }
    if (mModel != NULL) {
        for (int i = 0; i < 3; i++) {
            if (mMagmaPoleEmitters[i] != NULL) {
                mMagmaPoleEmitters[i]->setGlobalRTMatrix(mModel->getAnmMtx(0));
            }
        }
    }
    for (int i = 1; i < 3; i++) {
        if (mPipeFireEmitters[i] != NULL) {
            mPipeFireEmitters[i]->setRate(mPipeFireRate);
            mPipeFireEmitters[i]->setLifeTime(mPipeFireLifeTime);
            mPipeFireEmitters[i]->setDirectionalSpeed(mPipeFireDirectionalSpeed);
            mPipeFireEmitters[i]->setGlobalParticleScale(mPipeFireScale, mPipeFireScale);
        }
    }
    switch(getKind()) {
    case KIND_MAGMA_POLE:
        if (mSoundDir > 0) {
            if (cLib_chasePos(&mSoundPos, cXyz(field_0x95c.mEnd), 60.0f)) {
                mSoundDir = -1;
            }
        } else {
            if (mSoundDir < 0) {
                if (cLib_chasePos(&mSoundPos, cXyz(field_0x95c.mStart), 60.0f)) {
                    mSoundDir = 1;
                }
            }
        }
        mSoundObj.startLevelSound(Z2SE_OBJ_MAGMAPOLE_BLAST, 0, -1);
        break;
    case 0:
        fopAcM_seStartLevel(this, Z2SE_OBJ_PIPEFIRE_BLAST, 0);
        break;
    }
}

/* 80BEB1B4-80BEB278 001574 00C4+00 1/1 0/0 0/0 .text            draw__15daObjFPillar2_cFv */
int daObjFPillar2_c::draw() {
    if (getKind() == KIND_MAGMA_POLE) {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
        mBtk->entry(mModel->getModelData());
        mBck->entry(mModel->getModelData());
        mDoExt_modelUpdateDL(mModel);
        mDoExt_btkAnmRemove(mModel->getModelData());
        mDoExt_bckAnmRemove(mModel->getModelData());
    }
    return 1;
}

/* 80BEB278-80BEB3C8 001638 0150+00 1/1 0/0 0/0 .text            _delete__15daObjFPillar2_cFv */
int daObjFPillar2_c::_delete() {
    if (field_0x980 != NULL) {
        field_0x980->becomeInvalidEmitter();
        field_0x980->quitImmortalEmitter();
        field_0x980 = NULL;
    }
    if (field_0x984 != 0) {
        field_0x984->becomeInvalidEmitter();
        field_0x984->quitImmortalEmitter();
        field_0x984 = NULL;
    }
    for (int i = 0; i < 3; i++) {
        if (mMagmaPoleEmitters[i] != NULL) {
            mMagmaPoleEmitters[i]->becomeInvalidEmitter();
            mMagmaPoleEmitters[i]->quitImmortalEmitter();
            mMagmaPoleEmitters[i] = NULL;
        }
        if (mPipeFireEmitters[i] != NULL) {
            mPipeFireEmitters[i]->becomeInvalidEmitter();
            mPipeFireEmitters[i]->quitImmortalEmitter();
            mPipeFireEmitters[i] = NULL;
        }
    }
    mSoundObj.deleteObject();
    if (getKind() == KIND_MAGMA_POLE) {
        dComIfG_resDelete(&mPhase, l_arcName);
    }
    return 1;
}

/* 80BEB3C8-80BEB3E8 001788 0020+00 1/0 0/0 0/0 .text daObjFPillar2_Draw__FP15daObjFPillar2_c */
static int daObjFPillar2_Draw(daObjFPillar2_c* i_this) {
    return i_this->draw();
}

/* 80BEB3E8-80BEB408 0017A8 0020+00 1/0 0/0 0/0 .text daObjFPillar2_Execute__FP15daObjFPillar2_c
 */
static int daObjFPillar2_Execute(daObjFPillar2_c* i_this) {
    return i_this->execute();
}

/* 80BEB408-80BEB428 0017C8 0020+00 1/0 0/0 0/0 .text daObjFPillar2_Delete__FP15daObjFPillar2_c */
static int daObjFPillar2_Delete(daObjFPillar2_c* i_this) {
    fopAcM_GetID(i_this);
    return i_this->_delete();
}

/* 80BEB428-80BEB448 0017E8 0020+00 1/0 0/0 0/0 .text daObjFPillar2_Create__FP10fopAc_ac_c */
static int daObjFPillar2_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daObjFPillar2_c*>(i_this)->create();
}

/* 80BEB62C-80BEB64C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjFPillar2_Method */
static actor_method_class l_daObjFPillar2_Method = {
    (process_method_func)daObjFPillar2_Create,
    (process_method_func)daObjFPillar2_Delete,
    (process_method_func)daObjFPillar2_Execute,
    NULL,
    (process_method_func)daObjFPillar2_Draw,
};

/* 80BEB64C-80BEB67C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_FirePillar2 */
extern actor_process_profile_definition g_profile_Obj_FirePillar2 = {
  fpcLy_CURRENT_e,         // mLayerID
  7,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_FirePillar2,    // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  sizeof(daObjFPillar2_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  529,                     // mPriority
  &l_daObjFPillar2_Method, // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};


/* 80BEB51C-80BEB51C 000058 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
