/**
 * @file d_a_obj_zraMark.cpp
 *
 */

#include "d/actor/d_a_obj_zraMark.h"
#include "SSystem/SComponent/c_lib.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_meter2_info.h"
#include "d/actor/d_a_npc_hoz.h"
#include "d/actor/d_a_npc_zra.h"

_ZraMark_Hahen_c::_ZraMark_Hahen_c() {
    mpModel = NULL;
    setColor(0);
}

/* 80D42658-80D42678 000078 0020+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return ((daObjZraMark_c*)i_this)->CreateHeap();
}

/* 80D43D88-80D43D9C 000000 0014+00 4/4 0/0 0/0 .rodata          l_DATA */
static const daObjZraMark_Hio_Param_c l_DATA = {
    8.0f,    // mMarkSize
    2.0f,    // mInteriorMarkSize
    1.2f,    //
    45.0f,   // mMarkCollisionRadius
    820.0f,  // mMarkCollisionHeight
};

/* 80D43D9C-80D43DE0 000014 0044+00 1/1 0/0 0/0 .rodata          l_sph_src */
static const dCcD_SrcCyl l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xD8FBFDFF, 0x11}, 0x79}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x8},                  // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x1},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f,                // mHeight
    }  // mCylAttr
};

/* 80D43DE0-80D43DF0 000058 0010+00 0/1 0/0 0/0 .rodata          l_arcIdx */
static const int l_arcIdx[] = {3, 6, 5, 4};

/* 80D43FA4-80D43FA8 -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName[1] = {"buoy"};

/* 80D42678-80D4287C 000098 0204+00 1/1 0/0 0/0 .text            Create__14daObjZraMark_cFv */
int daObjZraMark_c::Create() {
    fopAcM_SetupActor(this, daObjZraMark_c);

    mType = getType();

    int phase_state = cPhs_ERROR_e;
    for (int i = 0; i < 1; i++) {
        phase_state = dComIfG_resLoad(&mPhase[i], l_arcName[i]);
        if (phase_state != cPhs_COMPLEATE_e) {
            OS_REPORT("リソース読み込み失敗！！ :: %s \n", l_arcName[i]);
            return phase_state;
        }
    }

    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x85B0)) {
            return cPhs_ERROR_e;
        }

        setBaseMtx();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeFar(this, 3.0f);
        fopAcM_setCullSizeBox(this, -60.0f, -500.0f, -60.0f, 60.0f, 500.0f, 60.0f);

        mpHoz = NULL;
        initBlastFlag();
        col_init();
        mSound.init(&current.pos, 1);
    }

    return phase_state;
}

/* 80D4287C-80D42A7C 00029C 0200+00 1/1 0/0 0/0 .text            CreateHeap__14daObjZraMark_cFv */
int daObjZraMark_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[0], l_arcIdx[mType]);
    JUT_ASSERT(0x176, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    s8 color;
    if (mType == TYPE_BRANCH_GREEN || mType == TYPE_GREEN) {
        color = 0;
    } else {
        color = 1;
    }

    s8 var_r29;

    cXyz pos(current.pos);
    switch (get_MarkType()) {
    case 0:
        var_r29 = 2;
        if (!is_branch_pat()) {
            pos.y += l_DATA.mMarkCollisionHeight / 2;
        }
        break;
    case 1:
        var_r29 = 1;
        if (!is_branch_pat()) {
            pos.y += l_DATA.mMarkCollisionHeight / 16;
        }
        break;
    case 2:
        var_r29 = 0;
        if (!is_branch_pat()) {
            pos.y += l_DATA.mMarkCollisionHeight / 20;
        }
        break;
    }

    s32 room_no = fopAcM_GetRoomNo(this);
    if (!mHahenMngr.create(pos, room_no, color, var_r29, 0)) {
        // "------------------Fragment Generation Error\n"
        OS_REPORT("------------------破片生成ミス\n");
        return FALSE;
    }

    return TRUE;
}

/* 80D42A7C-80D42B0C 00049C 0090+00 1/1 0/0 0/0 .text            Execute__14daObjZraMark_cFv */
int daObjZraMark_c::Execute() {
    if (is_blasted()) {
        if (is_branch_pat()) {
            setBaseMtx();
        }

        mHahenMngr.decTimer();
        mHahenMngr.calc();
    } else {
        setBaseMtx();
        col_set();
    }

    return 1;
}

/* 80D42B0C-80D42C98 00052C 018C+00 1/1 0/0 0/0 .text            Draw__14daObjZraMark_cFv */
int daObjZraMark_c::Draw() {
    if (is_blasted()) {
        mHahenMngr.draw();
        if (is_branch_pat()) {
            _Vanish_Vase();
        } else {
            return 1;
        }
    } else {
        if (is_branch_pat()) {
            _Disp_Vase();
        }
    }

    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80D42C98-80D42CE0 0006B8 0048+00 1/1 0/0 0/0 .text            Delete__14daObjZraMark_cFv */
int daObjZraMark_c::Delete() {
    for (int i = 0; i < 1; i++) {
        dComIfG_resDelete(&mPhase[i], l_arcName[i]);
    }

    mSound.deleteObject();
    return 1;
}

/* 80D42CE0-80D42D2C 000700 004C+00 1/1 0/0 0/0 .text            getType__14daObjZraMark_cFv */
int daObjZraMark_c::getType() {
    u8 prm = fopAcM_GetParam(this) >> 8;
    switch (prm) {
    case 1:
        return 1;
    case 2:
        return 2;
    case 3:
        return 3;
    default:
        return 0;
    }
}

/* 80D42D2C-80D42EE0 00074C 01B4+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjZraMark_cFv */
void daObjZraMark_c::setBaseMtx() {
    static const Vec l_coOffset[] = {
        {8.0f, -50.0f, 0.0f},
        {8.0f, 0.0f, 0.0f},
        {8.0f, -50.0f, 0.0f},
        {0.0f, 0.0f, 0.0f},
    };
    cXyz cc_pos(l_coOffset[mType].x, l_coOffset[mType].y, l_coOffset[mType].z);

    f32 size;
    f32 cc_height;
    switch (get_MarkType()) {
    case 0:
        size = l_DATA.mMarkSize;
        cc_height = l_DATA.mMarkCollisionHeight;
        break;
    case 1:
        cc_pos.y -= 20.0f;
        size = l_DATA.mInteriorMarkSize;
        cc_height =
            l_DATA.mMarkCollisionHeight / (l_DATA.mMarkSize / l_DATA.mInteriorMarkSize) + 40.0f;
        break;
    case 2:
        size = l_DATA.field_0x8;
        cc_height = l_DATA.mMarkCollisionHeight / (l_DATA.mMarkSize / l_DATA.field_0x8);
        break;
    }

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::XYZrotM(shape_angle);
    mDoMtx_stack_c::scaleM(size, size, size);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());

    mDoMtx_stack_c::multVec(&cc_pos, &cc_pos);
    MTXCopy(mDoMtx_stack_c::get(), field_0x574);
    mCcCyl.SetC(cc_pos);
    mCcCyl.SetH(cc_height);
    mCcCyl.SetR(l_DATA.mMarkCollisionRadius * size);
}

/* 80D42EE0-80D42F5C 000900 007C+00 1/1 0/0 0/0 .text            col_init__14daObjZraMark_cFv */
void daObjZraMark_c::col_init() {
    mCcStts.Init(0xFF, 0xFF, this);
    mCcCyl.Set(l_sph_src);
    mCcCyl.SetStts(&mCcStts);

    if (get_MarkType() == 0) {
        mCcCyl.OffCoSetBit();
    }
}

/* 80D42F5C-80D432C8 00097C 036C+00 1/1 0/0 0/0 .text            col_set__14daObjZraMark_cFv */
void daObjZraMark_c::col_set() {
    if (mpHoz == NULL) {
        mpHoz = schHoz();
    }

    if (mCcCyl.ChkTgHit()) {
        if (checkHitAt(mCcCyl.GetTgHitObj())) {
            cXyz pos(current.pos);

            switch (get_MarkType()) {
            case 0:
                onBlastFlag();
                mCcCyl.OffTgSetBit();

                Z2GetAudioMgr()->seStart(Z2SE_OBJ_MG_CANOE_TSUBO_BRK, &pos, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);

                if (mType >= 2) {
                    dMeter2Info_setNowCount(dMeter2Info_getNowCount() + 2);
                    Z2GetAudioMgr()->seStart(Z2SE_SY_MG_CANOE_SCORE_2, NULL, 0, 0, 1.0f, 1.0f,
                                             -1.0f, -1.0f, 0);
                } else {
                    dMeter2Info_setNowCount(dMeter2Info_getNowCount() + 1);
                    Z2GetAudioMgr()->seStart(Z2SE_SY_MG_CANOE_SCORE, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                             -1.0f, 0);
                }

                informBlast();
                break;
            case 1:
                if (daPy_getPlayerActorClass()->checkCanoeSlider()) {
                    mCcCyl.ClrTgHit();
                    return;
                }

                if (mpHoz != NULL) {
                    mpHoz->setPotBreakFlag();
                }
            case 2:
                if (daPy_getPlayerActorClass()->checkCanoeSlider()) {
                    mCcCyl.ClrTgHit();
                    return;
                }

                onBlastFlag();
                mCcCyl.OffTgSetBit();
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_SAMPLE_TSUBO_BRK, &pos, 0, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
            }
        } else {
            mSound.startCollisionSE(mCcCyl.GetTgHitObjHitSeID(1), 2, NULL);
        }

        mCcCyl.ClrTgHit();
    }

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    dComIfG_Ccsp()->Set(&mCcCyl);
}

/* 80D432C8-80D43314 000CE8 004C+00 1/1 0/0 0/0 .text            schHoz__14daObjZraMark_cFv */
daNpc_Hoz_c* daObjZraMark_c::schHoz() {
    fopAc_ac_c* hoz = NULL;
    if (fopAcM_SearchByName(PROC_NPC_HOZ, &hoz) && hoz != NULL) {
        return (daNpc_Hoz_c*)hoz;
    }

    return NULL;
}

/* 80D43314-80D43370 000D34 005C+00 0/0 0/0 1/1 .text entryPointer__14daObjZraMark_cFP10fopAc_ac_c
 */
bool daObjZraMark_c::entryPointer(fopAc_ac_c* i_actor) {
    if (field_0x72c < 2) {
        mActorMngr[field_0x72c].entry(i_actor);
        field_0x72c++;
        return true;
    }

    return false;
}

/* 80D43370-80D433F4 000D90 0084+00 1/1 0/0 0/0 .text            informBlast__14daObjZraMark_cFv */
void daObjZraMark_c::informBlast() {
    if (field_0x72c != 0) {
        for (int i = 0; i < field_0x72c; i++) {
            fopAc_ac_c* actorp = mActorMngr[i].getActorP();
            if (actorp != NULL && fopAcM_GetName(actorp) == PROC_NPC_ZRA) {
                ((daNpc_zrA_c*)actorp)->setBlastFlag(1);
            }
        }
    }
}

/* 80D433F4-80D43414 000E14 0020+00 1/0 0/0 0/0 .text daObjZraMark_Execute__FP14daObjZraMark_c */
static int daObjZraMark_Execute(daObjZraMark_c* i_this) {
    return i_this->Execute();
}

/* 80D43414-80D43434 000E34 0020+00 1/0 0/0 0/0 .text daObjZraMark_Draw__FP14daObjZraMark_c */
static int daObjZraMark_Draw(daObjZraMark_c* i_this) {
    return i_this->Draw();
}

/* 80D43434-80D4343C 000E54 0008+00 1/0 0/0 0/0 .text daObjZraMark_IsDelete__FP14daObjZraMark_c */
static int daObjZraMark_IsDelete(daObjZraMark_c* i_this) {
    return 1;
}

/* 80D4343C-80D4345C 000E5C 0020+00 1/0 0/0 0/0 .text daObjZraMark_Delete__FP14daObjZraMark_c */
static int daObjZraMark_Delete(daObjZraMark_c* i_this) {
    return i_this->Delete();
}

/* 80D4345C-80D4347C 000E7C 0020+00 1/0 0/0 0/0 .text            daObjZraMark_create__FP10fopAc_ac_c
 */
static int daObjZraMark_create(fopAc_ac_c* i_this) {
    return ((daObjZraMark_c*)i_this)->Create();
}

/* 80D4347C-80D434F8 000E9C 007C+00 1/1 0/0 0/0 .text create__16_ZraMark_Hahen_cFRC4cXyzScScScSc
 */
int _ZraMark_Hahen_c::create(const cXyz& i_pos, s8 i_roomNo, s8 i_color, s8 param_3, s8 i_no) {
    setColor(i_color);

    if (loadModel()) {
        init(i_pos, i_roomNo, param_3, i_no);
        setMtx();
        return 1;
    }

    return 0;
}

/* 80D434F8-80D4357C 000F18 0084+00 1/1 0/0 0/0 .text            loadModel__16_ZraMark_Hahen_cFv */
BOOL _ZraMark_Hahen_c::loadModel() {
    static const int sHahenBmdType[] = {7, 8};
    J3DModelData* modelData =
        (J3DModelData*)dComIfG_getObjectRes(l_arcName[0], sHahenBmdType[getColor()]);
    JUT_ASSERT(0x428, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        // "--------------Can't load Fragment Model\n"
        OS_REPORT("--------------破片モデルを読み込めません\n");
        return 0;
    }

    return 1;
}

/* 80D4357C-80D43808 000F9C 028C+00 1/1 0/0 0/0 .text init__16_ZraMark_Hahen_cFRC4cXyzScScSc */
void _ZraMark_Hahen_c::init(cXyz const& i_pos, s8 i_roomNo, s8 param_2, s8 i_no) {
    static const f32 sScale[] = {
        3.0f, 2.0f, 6.0f, 4.0f, 2.0f, 6.0f, 3.0f, 1.0f, 0.5f, 0.69999999f, 0.5f, 1.2f, 1.0f, 0.8f,
    };

    static const f32 sRoot[4][7][2] = {
        {
            {78.8f, 54.9f},
            {101.9f, 62.4f},
            {122.2f, 18.9f},
            {124.2f, 63.5f},
            {83.599998f, 60.299999f},
            {118.6f, 54.099998f},
            {73.9f, 22.0f},
        },
        {
            {111.5f, 42.0f},
            {110.2f, 21.6f},
            {127.1f, 18.6f},
            {99.3f, 65.0f},
            {75.8f, 39.799999f},
            {106.1f, 46.9f},
            {71.699997f, 34.7f},
        },
        {
            {82.599998f, 18.1f},
            {132.6f, 48.799999f},
            {119.2f, 43.0f},
            {56.7f, 66.099998f},
            {89.0f, 57.299999f},
            {91.8f, 41.0f},
            {78.3f, 31.0f},
        },
        {
            {98.4f, 23.6f},
            {125.0f, 20.2f},
            {62.5f, 54.7f},
            {119.2f, 47.299999f},
            {79.9f, 53.799999f},
            {61.7f, 58.099998f},
            {57.599998f, 29.1f},
        },
    };

    static int roottype = -1;
    roottype = (roottype + 1) & 3;
    s8 var_r28 = i_no % 7;

    int var_r26 = cLib_getRndValue(0, 0xFFFF);
    int var_r25 = cLib_getRndValue(0, 0xFFFF);
    int var_r24 = cLib_getRndValue(0, 0xFFFF);
    mAngle.set(var_r26, var_r25, var_r24);

    var_r26 = cLib_getRndValue(0x400, 0x1800);
    var_r25 = cLib_getRndValue(0x400, 0x1800);
    var_r24 = cLib_getRndValue(0x400, 0x1800);
    field_0x3aa.set(var_r26, var_r25, var_r24);

    f32 scale = sScale[i_no] + 2.0f;
    f32 y_speed = sRoot[roottype][var_r28][0];
    f32 xz_speed = sRoot[roottype][var_r28][1];

    if (param_2 == 1) {
        scale /= l_DATA.mMarkSize / l_DATA.mInteriorMarkSize;
        y_speed /= 2.5f;
        xz_speed /= 2.5f;
    } else if (param_2 == 0) {
        scale /= l_DATA.mMarkSize / l_DATA.mInteriorMarkSize;
        y_speed /= 1.5f;
        xz_speed /= 3.0f;
    }

    if (i_no >= 7) {
        y_speed /= 1.5f;
        xz_speed /= 2.0f;
    }

    field_0x3b0.setall(scale);
    mSpeed.set(0.0f, y_speed, 0.0f);
    field_0x3c0 = xz_speed;
    field_0x3bc = i_no * 0x4800;

    f32 rnd_xz = cM_rndF(35.0f) + 10.0f;
    f32 rnd_y = cM_rndF(30.0f) - 15.0f;

    cXyz pos;
    pos.x = i_pos.x + rnd_xz * cM_ssin(field_0x3bc);
    pos.y = i_pos.y + rnd_y;
    pos.z = i_pos.z + rnd_xz * cM_scos(field_0x3bc);
    setPos(pos);

    dKy_tevstr_init(&mTevstr, i_roomNo, 0xFF);
}

/* 80D43808-80D43864 001228 005C+00 1/1 0/0 0/0 .text            calcSpeed__16_ZraMark_Hahen_cFv */
void _ZraMark_Hahen_c::calcSpeed() {
    cXyz speed;
    speed.x = field_0x3c0 * cM_ssin(field_0x3bc);
    speed.y = mSpeed.y - 9.0f;
    speed.z = field_0x3c0 * cM_scos(field_0x3bc);

    setSpeed(speed);
}

/* 80D43864-80D438C8 001284 0064+00 2/2 0/0 0/0 .text            setMtx__16_ZraMark_Hahen_cFv */
void _ZraMark_Hahen_c::setMtx() {
    mDoMtx_stack_c::transS(mPos.x, mPos.y, mPos.z);
    mDoMtx_stack_c::XYZrotM(mAngle);
    mDoMtx_stack_c::scaleM(field_0x3b0);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80D438C8-80D43968 0012E8 00A0+00 1/1 0/0 0/0 .text            draw__16_ZraMark_Hahen_cFv */
void _ZraMark_Hahen_c::draw() {
    g_env_light.settingTevStruct(16, &mPos, &mTevstr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &mTevstr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
}

/* 80D43968-80D439F8 001388 0090+00 1/1 0/0 0/0 .text
 * create__20_ZraMark_Hahen_Mng_cFRC4cXyzScScScSc               */
int _ZraMark_Hahen_Mng_c::create(const cXyz& i_pos, s8 i_roomNo, s8 i_color, s8 param_3,
                                 s8 unused) {
    _ZraMark_Hahen_c* hahen = mHahen;
    for (int i = 0; i < 14; i++) {
        if (!hahen->create(i_pos, i_roomNo, i_color, param_3, i)) {
            return 0;
        }
        hahen++;
    }

    setTimer(200);
    return 1;
}

/* 80D439F8-80D43A74 001418 007C+00 1/1 0/0 0/0 .text            calc__20_ZraMark_Hahen_Mng_cFv */
void _ZraMark_Hahen_Mng_c::calc() {
    if (getTimer() > 0) {
        _ZraMark_Hahen_c* hahen = mHahen;
        for (int i = 0; i < 14; i++) {
            hahen->fall();
            hahen->setMtx();
            hahen++;
        }
    }
}

/* 80D43A74-80D43ACC 001494 0058+00 1/1 0/0 0/0 .text            draw__20_ZraMark_Hahen_Mng_cFv */
void _ZraMark_Hahen_Mng_c::draw() {
    if (getTimer() > 0) {
        _ZraMark_Hahen_c* hahen = mHahen;
        for (int i = 0; i < 14; i++) {
            hahen->draw();
            hahen++;
        }
    }
}

/* 80D43FA8-80D43FC8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjZraMark_Method */
static actor_method_class l_daObjZraMark_Method = {
    (process_method_func)daObjZraMark_create,
    (process_method_func)daObjZraMark_Delete,
    (process_method_func)daObjZraMark_Execute,
    (process_method_func)daObjZraMark_IsDelete,
    (process_method_func)daObjZraMark_Draw,
};

/* 80D43FC8-80D43FF8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_ZRA_MARK */
extern actor_process_profile_definition g_profile_ZRA_MARK = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_ZRA_MARK,           // mProcName
    &g_fpcLf_Method.mBase,   // sub_method
    sizeof(daObjZraMark_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    392,                     // mPriority
    &l_daObjZraMark_Method,  // sub_method
    0x00044100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};
