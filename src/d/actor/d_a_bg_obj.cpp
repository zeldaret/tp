/**
 * @file d_a_bg_obj.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_bg_obj.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "stdio.h"
#include "dolphin/os.h"
#include "d/actor/d_a_set_bgobj.h"
#include "d/d_s_play.h"
#include "SSystem/SComponent/c_math.h"

//
// Declarations:
//

/* 80459658-804596C4 000078 006C+00 2/2 0/0 0/0 .text            getBmdName__Fii */
static const char* getBmdName(int param_0, int param_1) {
    static char l_bmdName[16];

    switch (param_1) {
    case 0:
        sprintf(l_bmdName, "model%d.bmd", param_0);
        break;
    default:
        sprintf(l_bmdName, "model%d_%d.bmd", param_0, param_1);
        break;
    }

    return l_bmdName;
}

static const char* getBtkName(int param_0, int param_1) {
    static char l_btkName[16];

    switch (param_1) {
    case 0:
        sprintf(l_btkName, "model%d.btk", param_0);
        break;
    default:
        sprintf(l_btkName, "model%d_%d.btk", param_0, param_1);
        break;
    }

    return l_btkName;
}

/* 80459734-804597A4 000154 0070+00 2/2 0/0 0/0 .text            getBrkName__Fii */
static const char* getBrkName(int param_0, int param_1) {
    static char l_brkName[16];

    switch (param_1) {
    case 0:
        sprintf(l_brkName, "model%d.brk", param_0);
        break;
    default:
        sprintf(l_brkName, "model%d_%d.brk", param_0, param_1);
        break;
    }

    return l_brkName;
}

/* 804597A4-804597E8 0001C4 0044+00 2/2 0/0 0/0 .text            getDzbName__Fi */
static const char* getDzbName(int param_0) {
    static char l_dzbName[16];

    sprintf(l_dzbName, "model%d.dzb", param_0);
    return l_dzbName;
}

static const char* dummy() {
    return "spec.dat";
}

/* 804597E8-80459814 000208 002C+00 1/1 0/0 0/0 .text
 * initParticleBlock__Q29daBgObj_c11spec_data_cFPUc             */
u8* daBgObj_c::spec_data_c::initParticleBlock(u8* i_dataPtr) {
    mpParticleBlock = i_dataPtr;
    mParticleNum = *(u32*)mpParticleBlock >> 4 & 0xFFFFF;

    return i_dataPtr + ((*(u32*)mpParticleBlock & 0xFFFFFF) + 4);
}

/* 80459814-80459840 000234 002C+00 1/1 0/0 0/0 .text
 * initSoundBlock__Q29daBgObj_c11spec_data_cFPUc                */
u8* daBgObj_c::spec_data_c::initSoundBlock(u8* i_dataPtr) {
    mpSoundBlock = i_dataPtr;
    mSoundNum = *(u32*)mpSoundBlock >> 2 & 0x3FFFFF;

    return i_dataPtr + ((*(u32*)mpSoundBlock & 0xFFFFFF) + 4);
}

/* 80459840-804598F4 000260 00B4+00 1/1 0/0 0/0 .text
 * initTexShareBlock__Q29daBgObj_c11spec_data_cFPUc             */
u8* daBgObj_c::spec_data_c::initTexShareBlock(u8* i_dataPtr) {
    char sp48[64];
    char sp8[64];

    mpTexShareBlock = i_dataPtr;
    mTexShareNum = i_dataPtr[4];

    int i = 0;
    u8* dataPos = i_dataPtr + 8;

    for (; i < mTexShareNum; i++) {
        strcpy(sp48, (char*)dataPos);
        int len = strlen((char*)dataPos);

        dataPos += len + 1;
        if (*dataPos != 0) {
            strcpy(sp8, (char*)dataPos);
            dataPos += strlen((char*)dataPos) + 1;
        } else if (*dataPos == 0 && dataPos[1] == 1) {
            dataPos += 2;
        }
    }

    return dataPos;
}

/* 804598F4-80459904 000314 0010+00 1/1 0/0 0/0 .text
 * initFarInfoBlock__Q29daBgObj_c11spec_data_cFPUc              */
u8* daBgObj_c::spec_data_c::initFarInfoBlock(u8* i_dataPtr) {
    mpFarInfoBlock = *(f32*)(i_dataPtr + 4);
    return i_dataPtr + 8;
}

/* 80459904-80459B64 000324 0260+00 1/1 0/0 1/1 .text            Set__Q29daBgObj_c11spec_data_cFPv
 */
// NONMATCHING - close-ish
bool daBgObj_c::spec_data_c::Set(void* i_ptr) {
    JUT_ASSERT(496, i_ptr != 0);

    u8* data = (u8*)i_ptr;

    mSpecType = *(u16*)i_ptr;

    u8 block_type;
    u16 temp_r3;

    switch (mSpecType) {
    case 0: {
        block_type = data[4];
        data += 4;

        do {
            switch (block_type) {
            case 0:
                break;
            case 3:
                data = initTexShareBlock(data);
                break;
            case 4:
                data = initFarInfoBlock(data);
                break;
            default:
                // Invalid data block type
                OS_REPORT_ERROR("データブロックタイプが不正です<%d>\n", block_type);
                JUT_PANIC(527, "0");
            }

            if (block_type == 0) {
                break;
            }

            block_type = *data;
        } while (1);
        break;
    }
    case 1: {
        temp_r3 = *(u16*)(data + 2);
        field_0x02 = temp_r3 & 0xF;
        field_0x03 = (temp_r3 >> 0xE) & 3;
        field_0x15 = (temp_r3 >> 0xC) & 3;
        field_0x14 = (temp_r3 >> 9) & 7;
        field_0x16 = (temp_r3 >> 8) & 1;

        block_type = data[4];
        data += 4;

        do {
            switch (block_type) {
            case 0:
                break;
            case 3:
                data = initTexShareBlock(data);
                break;
            case 1:
                data = initParticleBlock(data);
                break;
            case 2:
                data = initSoundBlock(data);
                break;
            case 4:
                data = initFarInfoBlock(data);
                break;
            default:
                // Invalid data block type
                OS_REPORT_ERROR("データブロックタイプが不正です<%d>\n", block_type);
                JUT_PANIC(570, "0");
            }

            if (block_type == 0) {
                break;
            }

            block_type = *data;
        } while (1);
        break;
    }
    case 2: {
        temp_r3 = *(u16*)(data + 2);
        field_0x02 = temp_r3 & 0xF;
        field_0x03 = (temp_r3 >> 0xE) & 3;
        field_0x15 = (temp_r3 >> 0xC) & 3;
        field_0x14 = (temp_r3 >> 9) & 7;
        field_0x16 = (temp_r3 >> 8) & 1;

        block_type = data[4];
        data += 4;

        do {
            switch (block_type) {
            case 0:
                break;
            case 3:
                data = initTexShareBlock(data);
                break;
            case 1:
                data = initParticleBlock(data);
                break;
            case 2:
                data = initSoundBlock(data);
                break;
            case 4:
                data = initFarInfoBlock(data);
                break;
            default:
                // "Data Block type invalid<%d>\n"
                OSReport_Error("データブロックタイプが不正です<%d>\n", block_type);
                JUT_PANIC(619, "0");
                break;
            }

            if (block_type == 0) {
                break;
            }

            block_type = *data;
        } while (1);
        break;
    }
    default:
        // Terrain unit MoveBG: performance undefined error<%d>!!!
        OS_REPORT_ERROR("地形ユニットMoveBG : 性能未定義エラー！！！<%d>\n\n", mSpecType);
        return 0;
    }

    return 1;
}

/* 80459B64-80459BB4 000584 0050+00 4/4 0/0 0/0 .text            release__9daBgObj_cFP4dBgW */
void daBgObj_c::release(dBgW* param_0) {
    if (param_0 != NULL && param_0->ChkUsed()) {
        dComIfG_Bgsp().Release(param_0);
    }
}

/* 80459BB4-80459BEC 0005D4 0038+00 3/3 0/0 3/3 .text            regist__9daBgObj_cFP4dBgW */
void daBgObj_c::regist(dBgW* param_0) {
    if (param_0 != NULL) {
        dComIfG_Bgsp().Regist(param_0, this);
    }
}

/* ############################################################################################## */
/* 8045C9B8-8045C9FC 000000 0044+00 6/6 0/0 0/0 .rodata          l_cyl_src */
static const dCcD_SrcCyl l_cyl_src = {
    {
        {0, {{0, 0, 0}, {0xD8400422, 0x11}, 0}},
        {dCcD_SE_NONE, 0, 0, 0, {8}},
        {dCcD_SE_NONE, 0, 0, 0, {4}},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        0.0f,
        0.0f,
    },
};

/* 80459BEC-80459D0C 00060C 0120+00 1/1 0/0 0/1 .text            initAtt__9daBgObj_cFv */
void daBgObj_c::initAtt() {
    u32 actor_params = 0;
    u32 cd3_val;
    if (mSpecData.field_0x03 == 0) {
        cd3_val = 3;
    } else {
        cd3_val = mSpecData.field_0x03 - 1;
    }

    u32 ce5_val;
    if (mSpecData.field_0x15 == 0) {
        ce5_val = 3;
    } else {
        ce5_val = mSpecData.field_0x15 - 1;
    }

    u32 ce4_val;
    if (mSpecData.field_0x14 == 0) {
        ce4_val = 7;
    } else {
        ce4_val = mSpecData.field_0x14 - 1;
    }

    u32 arg0;
    if (daBgObj_prm::getObjArg0(this) == 0) {
        arg0 = 0;
    } else {
        arg0 = 1;
    }

    u32 temp = 0;
    u32 swbit = daBgObj_prm::getSwBit(this);
    u32 swbit2 = daBgObj_prm::getSwBit2(this);

    actor_params =
        (swbit2 << 24) |
        (swbit << 16) |
        (temp << 8) |
        (arg0 << 7) |
        (ce4_val << 4) |
        (ce5_val << 2) |
        (cd3_val);

    fopAc_ac_c* actor = fopAcM_fastCreate(PROC_Tag_Attp, actor_params, &current.pos, fopAcM_GetRoomNo(this),
        &current.angle, &scale, -1, NULL, NULL);

    if (actor != NULL) {
        setAttentionInfo(actor);
    } else {
        // Failed to generate focus actor
        OS_REPORT_ERROR("「注目点」生成失敗！！！\n");
    }
    
    mAttnActorID = fopAcM_GetID(actor);
    const Vec* box = fopAcM_getCullSizeBoxMax(this);
    eyePos.y += 0.5f * box->y;
}

/* 80459D0C-80459D3C 00072C 0030+00 2/2 0/0 0/0 .text setAttentionInfo__9daBgObj_cFP10fopAc_ac_c
 */
void daBgObj_c::setAttentionInfo(fopAc_ac_c* param_0) {
    param_0->eyePos.y += 0.5f * fopAcM_getCullSizeBoxMax(this)->y;
    param_0->attention_info.position.y += fopAcM_getCullSizeBoxMax(this)->y;
}

/* 80459D3C-80459D94 00075C 0058+00 2/2 0/0 0/0 .text            initBaseMtx__9daBgObj_cFv */
void daBgObj_c::initBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
    setBaseMtx();
}

/* 80459D94-80459E04 0007B4 0070+00 2/2 0/0 0/0 .text            setBaseMtx__9daBgObj_cFv */
void daBgObj_c::setBaseMtx() {
    for (int i = 0; i < 2; i++) {
        if (field_0x5a8[field_0xcc8][i] != NULL) {
            field_0x5a8[field_0xcc8][i]->setBaseTRMtx(mBgMtx);
        }
    }
}

/* 80459E04-80459F14 000824 0110+00 1/1 0/0 0/0 .text settingCullSizeBoxForCo__9daBgObj_cFi */
void daBgObj_c::settingCullSizeBoxForCo(int param_0) {
    J3DModel* cur_model = field_0x5a8[param_0][0];
    if (cur_model != NULL) {
        Vec min_transformed;
        Vec max_transformed;

        J3DModelData* model_data = cur_model->mModelData;
        mDoMtx_stack_c::identity();
        J3DJointTree& joint_tree = model_data->getJointTree();
        J3DJoint* joint;
        for (u16 i = 0; i < joint_tree.getJointNum(); i++) {
            joint = joint_tree.getJointNodePointer(i);
            Mtx trans_rot_mat;
            J3DGetTranslateRotateMtx(joint->getTransformInfo(), trans_rot_mat);
            mDoMtx_stack_c::concat(trans_rot_mat);
        }

        PSMTXMultVec(mDoMtx_stack_c::get(), joint->getMin(), &min_transformed);
        PSMTXMultVec(mDoMtx_stack_c::get(), joint->getMax(), &max_transformed);

        fopAcM_setCullSizeBox(this, min_transformed.x, min_transformed.y, min_transformed.z,
            max_transformed.x, max_transformed.y, max_transformed.z);
    } else {
        fopAcM_setCullSizeBox(this, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
    }
}

/* 80459F14-8045A0EC 000934 01D8+00 3/3 0/0 0/0 .text settingCullSizeBoxForCull__9daBgObj_cFi */
void daBgObj_c::settingCullSizeBoxForCull(int param_0) {
    cXyz max(1000000000.0f, 1000000000.0f, 1000000000.0f);
    cXyz min(-1000000000.0f, -1000000000.0f, -1000000000.0f);

    for (int i = 0; i < 2; i++) {
        J3DModel* cur_model = field_0x5a8[param_0][i];
        if (cur_model != NULL) {
            J3DModelData* model_data = cur_model->mModelData;
            mDoMtx_stack_c::identity();
            J3DJoint* joint;
            for (u16 j = 0; j < model_data->getJointNum(); j++) {
                joint = model_data->getJointNodePointer(j);
                Mtx trans_rot_mat;
                J3DGetTranslateRotateMtx(joint->getTransformInfo(), trans_rot_mat);
                MTXConcat(mDoMtx_stack_c::get(), trans_rot_mat, mDoMtx_stack_c::get());
            }

            Vec min_transformed, max_transformed;
            PSMTXMultVec(mDoMtx_stack_c::get(), joint->getMin(), &min_transformed);
            PSMTXMultVec(mDoMtx_stack_c::get(), joint->getMax(), &max_transformed);

            if (max.x > min_transformed.x) {
                max.x = min_transformed.x;
            }
            if (max.y > min_transformed.y) {
                max.y = min_transformed.y;
            }
            if (max.z > min_transformed.z) {
                max.z = min_transformed.z;
            }

            if (min.x < max_transformed.x) {
                min.x = max_transformed.x;
            }
            if (min.y < max_transformed.y) {
                min.y = max_transformed.y;
            }
            if (min.z < max_transformed.z) {
                min.z = max_transformed.z;
            }
        }
    }

    if (1000000000.0f != max.x) {
        fopAcM_setCullSizeBox(this, max.x, max.y, max.z, min.x, min.y, min.z);
    } else {
        fopAcM_setCullSizeBox(this, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f);
    }
}

/* 8045A0EC-8045A160 000B0C 0074+00 1/0 0/0 0/0 .text            CreateInitType0__9daBgObj_cFv */
int daBgObj_c::CreateInitType0() {
    field_0xcc8 = 0;
    initBaseMtx();
    fopAcM_SetMtx(this, field_0x5a8[field_0xcc8][0]->getBaseTRMtx());
    settingCullSizeBoxForCull(field_0xcc8);

    if (0.0f != mSpecData.mpFarInfoBlock) {
        fopAcM_setCullSizeFar(this, mSpecData.mpFarInfoBlock);
    }

    return 1;
}

/* 8045A160-8045A2B8 000B80 0158+00 3/0 0/0 0/0 .text            CreateInitType1__9daBgObj_cFv */
int daBgObj_c::CreateInitType1() {
    if (fopAcM_isSwitch(this, daBgObj_prm::getSwBit(this))) {
        field_0xcc8 = 1;
        release(mpBgW);
        regist(mpBgW2);
        mAction = 3;
    } else {
        field_0xcc8 = 0;
        mAction = 0;
    }

    initBaseMtx();

    if (field_0xcc8 == 1 && field_0x5a8[field_0xcc8][0] == NULL) {
        fopAcM_SetMtx(this, field_0x5a8[0][0]->getBaseTRMtx());
    } else {
        fopAcM_SetMtx(this, field_0x5a8[field_0xcc8][0]->getBaseTRMtx());
    }

    settingCullSizeBoxForCo(field_0xcc8);

    if (0.0f != mSpecData.mpFarInfoBlock) {
        fopAcM_setCullSizeFar(this, mSpecData.mpFarInfoBlock);
    }

    mStts.Init(0xFF, 0xFF, this);
    setColCommon();

    settingCullSizeBoxForCull(field_0xcc8);

    mEventIdx = dComIfGp_getEventManager().getEventIdx(this, daBgObj_prm::getEvId(this));

    if (mpBgW2 != NULL) {
        mpBgW2->Move();
    }

    initAtt();
    return 1;
}

/* 8045CAE4-8045CB38 000020 0054+00 4/4 0/0 0/0 .data            l_tri_src */
static dCcD_SrcTri l_tri_src = {
    {
        {0, {{0, 0, 0}, {0xD8400422, 0x11}, 0}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {4}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            {0.0f, 0.0f, 0.0f},
            {0.0f, 0.0f, 0.0f},
        },
    },
};

/* 8045CB38-8045CB3C -00001 0004+00 1/1 0/0 0/0 .data            l_specName */
static char* l_specName = "spec.dat";

/* 8045CB6C-8045CB9C 0000A8 0030+00 1/2 0/0 0/0 .data            mCreateHeapFunc__9daBgObj_c */
createHeapFunc daBgObj_c::mCreateHeapFunc[] = {
    &daBgObj_c::CreateHeapType0,
    &daBgObj_c::CreateHeapType1,
    &daBgObj_c::CreateHeapType1,
    &daBgObj_c::CreateHeapType1,
};

/* 8045CBCC-8045CBFC 000108 0030+00 1/2 0/0 0/0 .data            mCreateInitFunc__9daBgObj_c */
createInitFunc daBgObj_c::mCreateInitFunc[] = {
    &daBgObj_c::CreateInitType0,
    &daBgObj_c::CreateInitType1,
    &daBgObj_c::CreateInitType1,
    &daBgObj_c::CreateInitType1,
};

/* 8045A2B8-8045A2F0 000CD8 0038+00 1/0 0/0 0/0 .text            Create__9daBgObj_cFv */
int daBgObj_c::Create() {
    return (this->*mCreateInitFunc[mSpecData.mSpecType])();
}

/* 8045CC2C-8045CC5C 000168 0030+00 1/2 0/0 0/0 .data            mExecuteFunc__9daBgObj_c */
executeFunc daBgObj_c::mExecuteFunc[] = {
    &daBgObj_c::ExecuteType0,
    &daBgObj_c::ExecuteType1,
    &daBgObj_c::ExecuteType1,
    &daBgObj_c::ExecuteType1,
};

/* 8045CC98-8045CCD4 0001D4 003C+00 1/2 0/0 0/0 .data            mTgSetFunc__9daBgObj_c */
tgSetFunc daBgObj_c::mTgSetFunc[] = {
    &daBgObj_c::set_tri_0, &daBgObj_c::set_tri_1, &daBgObj_c::set_cyl_0,
    &daBgObj_c::set_tri_2, &daBgObj_c::set_tri_3,
};

/* 8045A2F0-8045A52C 000D10 023C+00 1/0 0/0 0/0 .text            CreateHeapType0__9daBgObj_cFv */
int daBgObj_c::CreateHeapType0() {
    for (int i = 0; i < 2; i++) {
        J3DModelData* modelData =
            (J3DModelData*)dComIfG_getObjectRes(daSetBgObj_c::getArcName(this), getBmdName(0, i));
        if (modelData != NULL) {
            field_0x5a8[0][i] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11001284);
            if (field_0x5a8[0][i] == NULL) {
                return 0;
            }

            field_0x5b8[0][i] = NULL;
            field_0x5c8[0][i] = NULL;

            J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(
                daSetBgObj_c::getArcName(this), getBtkName(0, i));
            if (btk != NULL) {
                field_0x5b8[0][i] = new mDoExt_btkAnm();
                if (field_0x5b8[0][i] == NULL ||
                    !field_0x5b8[0][i]->init(modelData, btk, TRUE, 2, 1.0f, 0, -1))
                {
                    return 0;
                }

                field_0x5b8[0][i]->setPlaySpeed(1.0f);
            }

            J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(
                daSetBgObj_c::getArcName(this), getBrkName(0, i));
            if (brk != NULL) {
                field_0x5c8[0][i] = new mDoExt_brkAnm();
                if (field_0x5c8[0][i] == NULL ||
                    !field_0x5c8[0][i]->init(modelData, brk, TRUE, 2, 1.0f, 0, -1))
                {
                    return 0;
                }

                field_0x5c8[0][i]->setPlaySpeed(1.0f);
            }

            field_0x5a8[1][i] = NULL;
            field_0x5b8[1][i] = NULL;
            field_0x5c8[1][i] = NULL;
        }
    }

    doShareTexture();
    return 1;
}

/* 8045A574-8045A83C 000F94 02C8+00 3/0 0/0 0/0 .text            CreateHeapType1__9daBgObj_cFv */
int daBgObj_c::CreateHeapType1() {
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            field_0x5a8[i][j] = NULL;
            field_0x5b8[i][j] = NULL;
            field_0x5c8[i][j] = NULL;

            J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(
                daSetBgObj_c::getArcName(this), getBmdName(i, j));
            if (modelData != NULL) {
                field_0x5a8[i][j] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11001284);
                if (field_0x5a8[i][j] == NULL) {
                    return 0;
                }

                J3DAnmTextureSRTKey* btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(
                    daSetBgObj_c::getArcName(this), getBtkName(i, j));
                if (btk != NULL) {
                    field_0x5b8[i][j] = new mDoExt_btkAnm();
                    if (field_0x5b8[i][j] == NULL ||
                        !field_0x5b8[i][j]->init(modelData, btk, TRUE, 2, 1.0f, 0,
                                                 -1))
                    {
                        return 0;
                    }

                    field_0x5b8[i][j]->setPlaySpeed(1.0f);
                }

                J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)dComIfG_getObjectRes(
                    daSetBgObj_c::getArcName(this), getBrkName(i, j));
                if (brk != NULL) {
                    field_0x5c8[i][j] = new mDoExt_brkAnm();
                    if (field_0x5c8[i][j] == NULL ||
                        !field_0x5c8[i][j]->init(modelData, brk, TRUE, 2, 1.0f, 0,
                                                 -1))
                    {
                        return 0;
                    }

                    field_0x5c8[i][j]->setPlaySpeed(1.0f);
                }
            }
        }
    }

    doShareTexture();

    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes(daSetBgObj_c::getArcName(this), getDzbName(1));
    if (dzb != NULL) {
        mpBgW2 = new dBgW();
        if (mpBgW2 == NULL || mpBgW2->Set(dzb, cBgW::MOVE_BG_e, &mBgMtx)) {
            mpBgW2 = NULL;
            return 0;
        }
    }

    return 1;
}

/* 8045A83C-8045A940 00125C 0104+00 2/2 0/0 0/0 .text            doShareTexture__9daBgObj_cFv */
void daBgObj_c::doShareTexture() {
    char res_name[64];
    char share_res_name[64];

    u8* spec_res_name = mSpecData.mpTexShareBlock + 8;

    for (int i = 0; i < mSpecData.mTexShareNum; i++) {
        strcpy(res_name, (char*)spec_res_name);
        spec_res_name += strlen((char*)spec_res_name) + 1;

        J3DModelData* modelData =
            (J3DModelData*)dComIfG_getObjectRes(daSetBgObj_c::getArcName(this), res_name);

        if (*spec_res_name != 0) {
            strcpy(share_res_name, (char*)spec_res_name);
            spec_res_name += strlen((char*)spec_res_name) + 1;

            J3DModelData* shareModelData =
                (J3DModelData*)dComIfG_getObjectRes(daSetBgObj_c::getArcName(this), share_res_name);
            mDoExt_setupShareTexture(modelData, shareModelData);
        } else if (*spec_res_name == 0 && spec_res_name[1] == 1) {
            spec_res_name += 2;
            mDoExt_setupStageTexture(modelData);
        }
    }
}

/* 8045A940-8045A9E8 001360 00A8+00 1/0 0/0 0/0 .text            CreateHeap__9daBgObj_cFv */
int daBgObj_c::CreateHeap() {
    const char* const specName = l_specName;
    void* spec_data_p = dComIfG_getObjectRes(daSetBgObj_c::getArcName(this), specName);
    if (field_0xd02 == 0) {
        if (!mSpecData.Set(spec_data_p)) {
            return 0;
        }
        field_0xd02 = 1;
    }

    return (this->*mCreateHeapFunc[mSpecData.mSpecType])();
}

/* 8045A9E8-8045AAF0 001408 0108+00 1/1 0/0 0/0 .text            create1st__9daBgObj_cFv */
int daBgObj_c::create1st() {
    if (field_0xcc9 == 0) {
        field_0xcca = home.angle.x;
        field_0xccc = home.angle.z;
        field_0xcc9 = 1;

        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
    }

    int phase = dComIfG_resLoad(&mPhase, daSetBgObj_c::getArcName(this));
    if (phase == cPhs_COMPLEATE_e) {
        int resnameIdx =
            dComIfG_getObjctResName2Index(daSetBgObj_c::getArcName(this), getDzbName(0));
        phase = MoveBGCreate(daSetBgObj_c::getArcName(this), resnameIdx, NULL, 0x80022110, NULL);

        if (phase == cPhs_ERROR_e) {
            return phase;
        }

        MoveBGExecute();
    }

    return phase;
}

/* 8045AAF0-8045AB80 001510 0090+00 1/1 0/0 0/0 .text            setColCommon__9daBgObj_cFv */
void daBgObj_c::setColCommon() {
    if (field_0xcc8 == 0) {
        (this->*mTgSetFunc[mSpecData.field_0x02])();
    }

    if (mSpecData.field_0x16 == 1) {
        u32 tg_type = mTris[0].GetTgType();

        for (int i = 0; i < field_0xcc4; i++) {
            mTris[i].SetTgType(tg_type | 0x40);
        }

        mCyl.SetTgType(tg_type | 0x40);
    }
}

/* 8045AB80-8045ACC0 0015A0 0140+00 1/0 0/0 0/0 .text            set_tri_0__9daBgObj_cFv */
void daBgObj_c::set_tri_0() {
    field_0xcc4 = 2;
    for (int i = 0; i < field_0xcc4; i++) {
        mTris[i].Set(l_tri_src);
        mTris[i].SetStts(&mStts);
    }

    cXyz cull_params[4];
    cull_params[0].set(fopAcM_getCullSizeBoxMax(this)->x, fopAcM_getCullSizeBoxMin(this)->y, 0.0f);
    cull_params[1].set(fopAcM_getCullSizeBoxMin(this)->x, fopAcM_getCullSizeBoxMin(this)->y, 0.0f);
    cull_params[2].set(fopAcM_getCullSizeBoxMin(this)->x, fopAcM_getCullSizeBoxMax(this)->y, 0.0f);
    cull_params[3].set(fopAcM_getCullSizeBoxMax(this)->x, fopAcM_getCullSizeBoxMax(this)->y, 0.0f);

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    for (int i = 0; i < (s32)(sizeof(cull_params) / sizeof(Vec)); i++) {
        mDoMtx_stack_c::multVec(&cull_params[i], &cull_params[i]);
    }
    mTris[0].setPos(&cull_params[0], &cull_params[1], &cull_params[2]);
    mTris[1].setPos(&cull_params[0], &cull_params[2], &cull_params[3]);
}

/* 8045ACC0-8045AE00 0016E0 0140+00 1/0 0/0 0/0 .text            set_tri_1__9daBgObj_cFv */
void daBgObj_c::set_tri_1() {
    field_0xcc4 = 2;
    for (int i = 0; i < field_0xcc4; i++) {
        mTris[i].Set(l_tri_src);
        mTris[i].SetStts(&mStts);
    }

    cXyz cull_bounds[4];
    cull_bounds[0].set(fopAcM_getCullSizeBoxMax(this)->x, 0.0f, fopAcM_getCullSizeBoxMin(this)->z);
    cull_bounds[1].set(fopAcM_getCullSizeBoxMin(this)->x, 0.0f, fopAcM_getCullSizeBoxMin(this)->z);
    cull_bounds[2].set(fopAcM_getCullSizeBoxMin(this)->x, 0.0f, fopAcM_getCullSizeBoxMax(this)->z);
    cull_bounds[3].set(fopAcM_getCullSizeBoxMax(this)->x, 0.0f, fopAcM_getCullSizeBoxMax(this)->z);

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    for (int i = 0; i < (s32)(sizeof(cull_bounds) / sizeof(Vec)); i++) {
        PSMTXMultVec(mDoMtx_stack_c::get(), &cull_bounds[i], &cull_bounds[i]);
    }
    mTris[0].setPos(&cull_bounds[0], &cull_bounds[1], &cull_bounds[2]);
    mTris[1].setPos(&cull_bounds[0], &cull_bounds[2], &cull_bounds[3]);
}

/* 8045AE00-8045AE98 001820 0098+00 1/0 0/0 0/0 .text            set_cyl_0__9daBgObj_cFv */
void daBgObj_c::set_cyl_0() {
    field_0xcc4 = 0;
    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);

    f32 radius;
    if (fopAcM_getCullSizeBoxMax(this)->x > fopAcM_getCullSizeBoxMax(this)->z) {
        radius = fopAcM_getCullSizeBoxMax(this)->x;
    } else {
        radius = fopAcM_getCullSizeBoxMax(this)->z;
    }

    mCyl.SetC(current.pos);
    mCyl.SetH(fopAcM_getCullSizeBoxMax(this)->y);
    mCyl.SetR(radius);
}

/* 8045AE98-8045AFD4 0018B8 013C+00 1/0 0/0 0/0 .text            set_tri_2__9daBgObj_cFv */
void daBgObj_c::set_tri_2() {
    field_0xcc4 = 2;
    for (int i = 0; i < field_0xcc4; i++) {
        mTris[i].Set(l_tri_src);
        mTris[i].SetStts(&mStts);
    }

    cXyz cull_bounds[4];
    cull_bounds[0].set(fopAcM_getCullSizeBoxMax(this)->x,
        fopAcM_getCullSizeBoxMin(this)->y,
        fopAcM_getCullSizeBoxMax(this)->z);
    cull_bounds[1].set(fopAcM_getCullSizeBoxMin(this)->x,
        fopAcM_getCullSizeBoxMin(this)->y,
        fopAcM_getCullSizeBoxMax(this)->z);
    cull_bounds[2].set(fopAcM_getCullSizeBoxMin(this)->x,
        fopAcM_getCullSizeBoxMax(this)->y,
        fopAcM_getCullSizeBoxMax(this)->z);
    cull_bounds[3].set(fopAcM_getCullSizeBoxMax(this)->x,
        fopAcM_getCullSizeBoxMax(this)->y,
        fopAcM_getCullSizeBoxMax(this)->z);

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    for (int i = 0; i < (s32)(sizeof(cull_bounds) / sizeof(Vec)); i++) {
        PSMTXMultVec(mDoMtx_stack_c::get(), &cull_bounds[i], &cull_bounds[i]);
    }
    mTris[0].setPos(&cull_bounds[0], &cull_bounds[1], &cull_bounds[2]);
    mTris[1].setPos(&cull_bounds[0], &cull_bounds[2], &cull_bounds[3]);
}

/* 8045AFD4-8045B17C 0019F4 01A8+00 1/0 0/0 0/0 .text            set_tri_3__9daBgObj_cFv */
void daBgObj_c::set_tri_3() {
    field_0xcc4 = 4;
    for (int i = 0; i < field_0xcc4; i++) {
        mTris[i].Set(l_tri_src);
        mTris[i].SetStts(&mStts);
    }

    cXyz cull_bounds[8];
    cull_bounds[0].set(fopAcM_getCullSizeBoxMax(this)->x,
        fopAcM_getCullSizeBoxMin(this)->y,
        fopAcM_getCullSizeBoxMin(this)->z);
    cull_bounds[1].set(fopAcM_getCullSizeBoxMin(this)->x,
        fopAcM_getCullSizeBoxMin(this)->y,
        fopAcM_getCullSizeBoxMin(this)->z);
    cull_bounds[2].set(fopAcM_getCullSizeBoxMin(this)->x,
        fopAcM_getCullSizeBoxMax(this)->y,
        fopAcM_getCullSizeBoxMin(this)->z);
    cull_bounds[3].set(fopAcM_getCullSizeBoxMax(this)->x,
        fopAcM_getCullSizeBoxMax(this)->y,
        fopAcM_getCullSizeBoxMin(this)->z);
    cull_bounds[4].set(fopAcM_getCullSizeBoxMax(this)->x,
        fopAcM_getCullSizeBoxMin(this)->y,
        fopAcM_getCullSizeBoxMax(this)->z);
    cull_bounds[5].set(fopAcM_getCullSizeBoxMin(this)->x,
        fopAcM_getCullSizeBoxMin(this)->y,
        fopAcM_getCullSizeBoxMax(this)->z);
    cull_bounds[6].set(fopAcM_getCullSizeBoxMin(this)->x,
        fopAcM_getCullSizeBoxMax(this)->y,
        fopAcM_getCullSizeBoxMax(this)->z);
    cull_bounds[7].set(fopAcM_getCullSizeBoxMax(this)->x,
        fopAcM_getCullSizeBoxMax(this)->y,
        fopAcM_getCullSizeBoxMax(this)->z);

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    for (int i = 0; i < 8; i++) {
        Vec* src = &cull_bounds[i];
        mDoMtx_stack_c::multVec(src, src);
    }
    mTris[0].setPos(&cull_bounds[0], &cull_bounds[1], &cull_bounds[2]);
    mTris[1].setPos(&cull_bounds[0], &cull_bounds[2], &cull_bounds[3]);
    mTris[2].setPos(&cull_bounds[4], &cull_bounds[5], &cull_bounds[6]);
    mTris[3].setPos(&cull_bounds[4], &cull_bounds[6], &cull_bounds[7]);
}

struct blockItem {
    u32 flags;
    u32 res_id;
    u8 primA;
    u8 primR;
    u8 primG;
    u8 primB;
    u8 envA;
    u8 envR;
    u8 envG;
    u8 envB;
};

/* 8045B17C-8045B3A0 001B9C 0224+00 3/3 0/0 0/0 .text            setParticle__9daBgObj_cFv */
void daBgObj_c::setParticle() {
    u32 partNum = mSpecData.mParticleNum;
    u32* partBlockItems = (u32*)mSpecData.mpParticleBlock;
    partBlockItems++;
    for (; partNum != 0; partNum--) {
        u32 flags = *partBlockItems++;
        u16 res_id = *partBlockItems;
        *partBlockItems++;

        GXColor prmColor = { 0xFF, 0xFF, 0xFF, 0xFF };
        GXColor envColor = { 0xFF, 0xFF, 0xFF, 0xFF };

        u8 alpha = 0xff;
        GXColor* prmColorPtr = NULL;
        GXColor* envColorPtr = NULL;

        u8 hasColor = 0;

        u8* pColors = (u8*)partBlockItems;
        if ((flags & 0x80000000) != 0) {
            prmColor.r = pColors[1];
            prmColor.g = pColors[2];
            prmColor.b = pColors[3];
            hasColor = 1;
        }
        if ((flags & 0x40000000) != 0) {
            alpha = pColors[0];
        }
        pColors += 4;
        if ((flags & 0x20000000) != 0) {
            envColor.a = pColors[0];
            envColor.r = pColors[1];
            envColor.g = pColors[2];
            envColor.b = pColors[3];
            hasColor = 1;
        }
        f32 fVar2 = 0.0f;
        if (hasColor) {
            prmColorPtr = &prmColor;
            envColorPtr = &envColor;
            fVar2 = 1.0f;
        }

        dKy_tevstr_c* status;
        u8 modelNumber = (flags & 0xf00000) >> 20;
        u8 unusedFlag = (flags & 0xf0000) >> 16;
        if (modelNumber != 0) {
            J3DModelData* bmd = NULL;
            int unused_sp28 = 0;
            cXyz scale(1.0f, 1.0f, 1.0f);
            switch (modelNumber) {
                case 1:
                    bmd = (J3DModelData*)dComIfG_getObjectRes("Always", "BreakWoodBox.bmd");
                    JUT_ASSERT(1683, bmd != 0);
                    scale.setall(KREG_F(29) + 0.9f);
                    break;
                default:
                    // Multi MoveBG: Particle model number is invalid <%d>
                    OS_REPORT_ERROR("マルチMoveBG：パーティクルモデル番号が不正<%d>\n", modelNumber);
                    JUT_PANIC(1689, "0");
                    break;
            }
            JPABaseEmitter* emitter = dComIfGp_particle_set(
                res_id,
                &current.pos,
                &mRotation,
                NULL,
                0xff,
                &dPa_modelEcallBack::getEcallback(),
                fopAcM_GetRoomNo(this),
                NULL,
                NULL,
                &scale
            );
            dPa_modelEcallBack::setModel(emitter, bmd, tevStr, 3, NULL, 0, 0);
        } else {
            fopAc_ac_c* unused_player = dComIfGp_getPlayer(0);
            dComIfGp_particle_setColor(
                res_id,
                &current.pos,
                dComIfGp_roomControl_getTevStr(fopAcM_GetRoomNo(this)),
                prmColorPtr,
                envColorPtr,
                fVar2,
                alpha,
                &mRotation,
                NULL,
                NULL,
                fopAcM_GetRoomNo(this),
                NULL
            );
        }
        partBlockItems += 2;
    }
}

/* 8045B3A0-8045B44C 001DC0 00AC+00 3/3 0/0 0/0 .text            setSe__9daBgObj_cFv */
void daBgObj_c::setSe() {
    u32 i = mSpecData.mSoundNum;
    u32* temp = (u32*)mSpecData.mpSoundBlock;
    temp++;

    for (; i != 0; i--) {
        fopAcM_seStart(this, *temp, 0);
        temp++;
    }
}


/* 8045B44C-8045B534 001E6C 00E8+00 1/1 0/0 0/0 .text            checkDestroy__9daBgObj_cFv */
BOOL daBgObj_c::checkDestroy() {
    if (mSpecData.mSpecType != 1 && mSpecData.mSpecType != 2) {
        return false;
    }

    if (!fopAcM_isSwitch(this, daBgObj_prm::getSwBit(this)) &&
        (daBgObj_prm::getSwBit2(this) == 0xFF ||
         (fopAcM_isSwitch(this, daBgObj_prm::getSwBit2(this)) &&
          daBgObj_prm::getObjArg0(this) == 0xFF) ||
         (daBgObj_prm::getSwBit2(this) != 0xFF &&
          !fopAcM_isSwitch(this, daBgObj_prm::getSwBit2(this)) &&
          daBgObj_prm::getObjArg0(this) == 0)))
    {
        return true;
    }

    return false;
}

/* 8045B534-8045B5E0 001F54 00AC+00 2/2 0/0 0/0 .text            checkHitAt__9daBgObj_cFP8cCcD_Obj
 */
BOOL daBgObj_c::checkHitAt(cCcD_Obj* i_hitObj) {
    u32 hit_flags = 0;
    u32 var_r8 = 0;

    if (i_hitObj != NULL) {
        switch (mSpecData.mSpecType) {
        case 1:
            var_r8 = i_hitObj->ChkAtType(AT_TYPE_IRON_BALL) && i_hitObj->GetAtAtp() == 3;
            hit_flags = var_r8 | i_hitObj->ChkAtType(AT_TYPE_BOMB);
            break;
        case 2:
            u32 tmp2 = i_hitObj->ChkAtType(AT_TYPE_IRON_BALL);
            var_r8 = tmp2;
            hit_flags =
                tmp2 |
                (i_hitObj->ChkAtType(AT_TYPE_NORMAL_SWORD) | i_hitObj->ChkAtType(AT_TYPE_BOMB) |
                 i_hitObj->ChkAtType(AT_TYPE_CSTATUE_SWING) | i_hitObj->ChkAtType(AT_TYPE_UNK));
            break;
        }

        field_0xd01 = i_hitObj->ChkAtType(AT_TYPE_BOMB) != 0;
        field_0xd01 |= var_r8 != 0;
    }

    return hit_flags != 0;
}

/* 8045B5E0-8045B7FC 002000 021C+00 1/1 0/0 0/0 .text            orderWait_tri__9daBgObj_cFv */
void daBgObj_c::orderWait_tri() {
    for (int i = 0; i < field_0xcc4; i++) {
        if (mTris[i].ChkTgHit()) {
            if (checkHitAt(mTris[i].GetTgHitObj())) {
                setSe();

                fopAc_ac_c* hit_ac = mTris[i].GetTgHitAc();
                if (hit_ac != NULL) {
                    cXyz sp1C(hit_ac->current.pos);
                    sp1C = sp1C - current.pos;

                    mDoMtx_stack_c::YrotS(-shape_angle.y);
                    mDoMtx_stack_c::multVec(&sp1C, &sp1C);
                    mDoMtx_stack_c::transS(current.pos);
                    mDoMtx_stack_c::YrotM(shape_angle.y);

                    cXyz sp28;
                    if (sp1C.z > 0.0f) {
                        sp28 = cXyz(0.0, 0.0, 1.0);
                    } else {
                        sp28 = cXyz(0.0, 0.0, -1.0);
                    }

                    mDoMtx_stack_c::multVec(&sp28, &sp28);
                    sp28 = sp28 - current.pos;

                    mRotation.y = cM_atan2s(sp28.x, sp28.z);
                }

                setParticle();
                setAction(1);
                break;
            }

            mTris[i].ClrTgHit();
        }
    }

    for (int i = 0; i < field_0xcc4; i++) {
        dComIfG_Ccsp()->Set(&mTris[i]);
    }
}


/* 8045B7FC-8045B9C4 00221C 01C8+00 1/1 0/0 0/0 .text            orderWait_cyl__9daBgObj_cFv */
void daBgObj_c::orderWait_cyl() {
    if (mCyl.ChkTgHit()) {
        cCcD_Obj* hitObj = mCyl.GetTgHitObj();
        if (checkHitAt(hitObj)) {
            setSe();

            fopAc_ac_c* hit_ac = mCyl.GetTgHitAc();
            if (hit_ac != NULL) {
                cXyz sp1C(hit_ac->current.pos);
                sp1C = sp1C - current.pos;

                mDoMtx_stack_c::YrotS(-shape_angle.y);
                mDoMtx_stack_c::multVec(&sp1C, &sp1C);
                cXyz sp28;
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::YrotM(shape_angle.y);

                if (sp1C.z > 0.0f) {
                    sp28 = cXyz(0.0f, 0.0f, 1.0f);
                } else {
                    sp28 = cXyz(0.0f, 0.0f, -1.0f);
                }

                mDoMtx_stack_c::multVec(&sp28, &sp28);
                sp28 = sp28 - current.pos;

                mRotation.y = cM_atan2s(sp28.x, sp28.z);
            }

            setParticle();
            setAction(1);
        }

        mCyl.ClrTgHit();
    }

    dComIfG_Ccsp()->Set(&mCyl);
}

/* 8045B9C4-8045BB38 0023E4 0174+00 1/1 0/0 0/0 .text            orderWait_spec__9daBgObj_cFv */
void daBgObj_c::orderWait_spec() {
    setSe();

    fopAc_ac_c* player_p = dComIfGp_getPlayer(0);
    if (player_p != NULL) {
        cXyz sp1C(player_p->current.pos);
        sp1C = sp1C - current.pos;

        mDoMtx_stack_c::YrotS(-shape_angle.y);
        mDoMtx_stack_c::multVec(&sp1C, &sp1C);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);

        cXyz sp28;
        if (sp1C.z > 0.0f) {
            sp28 = cXyz(0.0, 0.0, 1.0);
        } else {
            sp28 = cXyz(0.0, 0.0, -1.0);
        }

        mDoMtx_stack_c::multVec(&sp28, &sp28);
        sp28 = sp28 - current.pos;

        mRotation.y = cM_atan2s(sp28.x, sp28.z);
    }

    setParticle();
    setAction(1);
}


/* 8045BB38-8045BBE0 002558 00A8+00 1/0 0/0 0/0 .text            actionOrderWait__9daBgObj_cFv */
int daBgObj_c::actionOrderWait() {
    if (checkDestroy()) {
        switch (mSpecData.field_0x02) {
        case 0:
        case 1:
        case 3:
        case 4:
            orderWait_tri();
            break;
        case 2:
            orderWait_cyl();
            break;
        }
    } else if (fopAcM_isSwitch(this, daBgObj_prm::getSwBit(this))) {
        orderWait_spec();
        field_0xd00 = 1;
    }

    return 1;
}

/* 8045BBE0-8045BD50 002600 0170+00 1/0 0/0 0/0 .text            actionOrder__9daBgObj_cFv */
int daBgObj_c::actionOrder() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(2);

        if (field_0xd01 < 5) {
            dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
        }
    } else {
        if (daBgObj_prm::getEvId(this) != 0xFF) {
            fopAcM_orderOtherEventId(this, mEventIdx, daBgObj_prm::getEvId(this), 0xFFFF, 0, 1);
        } else {
            setAction(3);
        }

        if (!fopAcM_isSwitch(this, daBgObj_prm::getSwBit(this)) || field_0xd00 != 0 ||
            field_0xcc8 == 0)
        {
            release(mpBgW);
            regist(mpBgW2);
            field_0xcc8 = 1;

            settingCullSizeBoxForCull(field_0xcc8);

            fopAc_ac_c* attn_actor_p = fopAcM_SearchByID(mAttnActorID);
            if (attn_actor_p != NULL) {
                setAttentionInfo(attn_actor_p);
            }

            fopAcM_onSwitch(this, daBgObj_prm::getSwBit(this));
            field_0xd00 = 0;
        }
    }

    return 1;
}


/* 8045BD50-8045BDB0 002770 0060+00 1/0 0/0 0/0 .text            actionEvent__9daBgObj_cFv */
int daBgObj_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventIdx)) {
        setAction(3);
        dComIfGp_event_reset();
    }

    return 1;
}

/* 8045BDB0-8045BDB8 0027D0 0008+00 1/0 0/0 0/0 .text            actionWait__9daBgObj_cFv */
int daBgObj_c::actionWait() {
    return 1;
}

/* 8045BDB8-8045BED0 0027D8 0118+00 1/0 0/0 0/0 .text            ExecuteType0__9daBgObj_cFv */
int daBgObj_c::ExecuteType0() {
    u8 swBit = daBgObj_prm::getSwBit(this);
    u8 arg0 = daBgObj_prm::getObjArg0(this);

    if (swBit != 0xFF) {
        if (arg0 == 0xFF) {
            if (fopAcM_isSwitch(this, swBit)) {
                if (field_0xcc8 == 1) {
                    regist(mpBgW);
                    field_0xcc8 = 0;
                }
            } else if (field_0xcc8 == 0) {
                release(mpBgW);
                field_0xcc8 = 1;
            }
        } else if (arg0 == 0) {
            if (fopAcM_isSwitch(this, swBit)) {
                if (field_0xcc8 == 0) {
                    release(mpBgW);
                    field_0xcc8 = 1;
                }
            } else if (field_0xcc8 == 1) {
                regist(mpBgW);
                field_0xcc8 = 0;
            }
        }
    }

    return 1;
}

/* 8045BED0-8045BFBC 0028F0 00EC+00 3/0 0/0 0/0 .text            ExecuteType1__9daBgObj_cFv */
int daBgObj_c::ExecuteType1() {
    static actionFunc l_func[] = {&daBgObj_c::actionOrderWait, &daBgObj_c::actionOrder,
                                  &daBgObj_c::actionEvent, &daBgObj_c::actionWait};

    (this->*l_func[mAction])();

    if (field_0xd01 != 0 && field_0xd01 < 100) {
        field_0xd01++;
    }

    return 1;
}

/* 8045BFBC-8045C078 0029DC 00BC+00 1/0 0/0 0/0 .text            Execute__9daBgObj_cFPPA3_A4_f */
int daBgObj_c::Execute(f32 (**param_0)[3][4]) {
    (this->*mExecuteFunc[mSpecData.mSpecType])();

    for (int i = 0; i < 2; i++) {
        if (field_0x5b8[field_0xcc8][i] != NULL) {
            field_0x5b8[field_0xcc8][i]->play();
        }

        if (field_0x5c8[field_0xcc8][i] != NULL) {
            field_0x5c8[field_0xcc8][i]->play();
        }
    }

    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 8045C078-8045C25C 002A98 01E4+00 1/0 0/0 0/0 .text            Draw__9daBgObj_cFv */
int daBgObj_c::Draw() {
    bool bvar = true;
    for (int i = 0; i < 2; i++) {
        if (field_0x5a8[field_0xcc8][i] != NULL) {
            bvar = false;
        }
    }

    if (bvar) {
        return 1;
    }

    g_env_light.settingTevStruct(0x20, &current.pos, &tevStr);

    for (int i = 0; i < 2; i++) {
        if (field_0x5a8[field_0xcc8][i] != NULL) {
            g_env_light.setLightTevColorType_MAJI(field_0x5a8[field_0xcc8][i], &tevStr);
        }
    }

    for (int i = 0; i < 2; i++) {
        dComIfGd_setListBG();
        if (field_0x5a8[field_0xcc8][i] != NULL) {
            indirectProc(field_0x5a8[field_0xcc8][i]);
            dKy_bg_MAxx_proc(field_0x5a8[field_0xcc8][i]);

            if (field_0x5b8[field_0xcc8][i] != NULL) {
                field_0x5b8[field_0xcc8][i]->entry(field_0x5a8[field_0xcc8][i]->getModelData());
            }

            if (field_0x5c8[field_0xcc8][i] != NULL) {
                field_0x5c8[field_0xcc8][i]->entry(field_0x5a8[field_0xcc8][i]->getModelData());
            }

            mDoExt_modelUpdateDL(field_0x5a8[field_0xcc8][i]);
        }
    }

    dComIfGd_setList();

    return 1;
}

/* 8045C25C-8045C2E8 002C7C 008C+00 1/1 0/0 0/0 .text            indirectProc__9daBgObj_cFP8J3DModel
 */
void daBgObj_c::indirectProc(J3DModel* i_model) {
    if (i_model != NULL) {
        J3DModelData* modelData = i_model->getModelData();

        for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
            J3DMaterial* mat_p = modelData->getMaterialNodePointer(i);
            mat_p->change();
            mat_p->setCullMode(0);
        }
    }
}

/* 8045C2E8-8045C330 002D08 0048+00 1/0 0/0 0/0 .text            Delete__9daBgObj_cFv */
int daBgObj_c::Delete() {
    release(mpBgW2);
    dComIfG_resDelete(&mPhase, daSetBgObj_c::getArcName(this));
    return 1;
}

/* 8045C330-8045C444 002D50 0114+00 1/0 0/0 0/0 .text            daBgObj_create1st__FP9daBgObj_c */
static int daBgObj_create1st(daBgObj_c* i_this) {
    fopAcM_SetupActor(i_this, daBgObj_c);

    return i_this->create1st();
}

/* 8045C744-8045C764 003164 0020+00 1/0 0/0 0/0 .text            daBgObj_MoveBGDelete__FP9daBgObj_c
 */
static int daBgObj_MoveBGDelete(daBgObj_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 8045C764-8045C784 003184 0020+00 1/0 0/0 0/0 .text            daBgObj_MoveBGExecute__FP9daBgObj_c
 */
static int daBgObj_MoveBGExecute(daBgObj_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 8045C784-8045C7B0 0031A4 002C+00 1/0 0/0 0/0 .text            daBgObj_MoveBGDraw__FP9daBgObj_c */
static int daBgObj_MoveBGDraw(daBgObj_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 8045CD34-8045CD54 -00001 0020+00 1/0 0/0 0/0 .data            daBgObj_METHODS */
static actor_method_class daBgObj_METHODS = {
    (process_method_func)daBgObj_create1st,
    (process_method_func)daBgObj_MoveBGDelete,
    (process_method_func)daBgObj_MoveBGExecute,
    (process_method_func)NULL,
    (process_method_func)daBgObj_MoveBGDraw,
};

/* 8045CD54-8045CD84 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_BG_OBJ */
extern actor_process_profile_definition g_profile_BG_OBJ = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_BG_OBJ,
    &g_fpcLf_Method.base,
    sizeof(daBgObj_c),
    0,
    0,
    &g_fopAc_Method.base,
    752,
    &daBgObj_METHODS,
    0x10044100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
