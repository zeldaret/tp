/**
 * d_a_obj_web1.cpp
 * Spider Web (Floor)
 */

#include "rel/d/a/obj/d_a_obj_web1/d_a_obj_web1.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "JSystem/JMath/JMath.h"
#include "SSystem/SComponent/c_math.h"
#include "d/a/d_a_player.h"
#include "d/bg/d_bg_w.h"
#include "d/d_procname.h"
#include "f_op/f_op_actor_mng.h"

/* 80D353AC-80D353C4 0000EC 0018+00 1/1 0/0 0/0 .text            __ct__16daObj_Web1_HIO_cFv */
daObj_Web1_HIO_c::daObj_Web1_HIO_c() {
    field_0x4 = -1;
}

/* 80D353C4-80D35440 000104 007C+00 1/0 0/0 0/0 .text            daObj_Web1_Draw__FP14obj_web1_class
 */
static int daObj_Web1_Draw(obj_web1_class* i_this) {
    g_env_light.settingTevStruct(16, &i_this->current.pos, &i_this->mTevStr);
    g_env_light.setLightTevColorType_MAJI(i_this->mpModel, &i_this->mTevStr);
    i_this->mpBrk->entry(i_this->mpModel->getModelData());

    mDoExt_modelUpdateDL(i_this->mpModel);
    return 1;
}

/* 80D35440-80D35508 000180 00C8+00 1/1 0/0 0/0 .text
 * ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c            */
static void ride_call_back(dBgW* i_bgw, fopAc_ac_c* i_this, fopAc_ac_c* i_actor) {
    obj_web1_class* _this = static_cast<obj_web1_class*>(i_this);

    f32 x_diff = i_actor->current.pos.x - _this->current.pos.x;
    f32 z_diff = i_actor->current.pos.z - _this->current.pos.z;
    _this->mDistToActor = JMAFastSqrt((x_diff * x_diff) + (z_diff * z_diff));

    if (_this->mDistToActor < 140.0f) {
        if (fopAcM_GetName(i_actor) == PROC_ALINK || fopAcM_GetName(i_actor) == PROC_ALINK) {
            if (_this->field_0x5aa == 0) {
                _this->mReboundTimer = 60;
            }

            if (daPy_getPlayerActorClass()->i_checkEquipHeavyBoots()) {
                _this->field_0x5aa = 120;
            } else {
                _this->field_0x5aa = 6;
            }
        } else if (fopAcM_GetName(i_actor) == PROC_OBJ_GM) {
            _this->field_0x5aa = 120;
        } else {
            _this->field_0x5aa = 3;
        }
    }
}

/* 80D35508-80D35774 000248 026C+00 1/1 0/0 0/0 .text            action__FP14obj_web1_class */
static void action(obj_web1_class* i_this) {
    if (i_this->mReboundTimer != 0) {
        if (i_this->mReboundTimer == 60 || i_this->mReboundTimer == 40 ||
            i_this->mReboundTimer == 20) {
            fopAcM_seStart(i_this, Z2SE_OBJ_WEB_BOUND_S, 0);
        }

        i_this->mReboundTimer--;
    }

    switch (i_this->mActionMode) {
    case 0:
        if (i_this->mHitTimer == 0 && i_this->mCylCc.ChkTgHit()) {
            i_this->mHitTimer = 6;

            if (i_this->mCylCc.GetTgHitObj()->ChkAtType(AT_TYPE_BOMB)) {
                i_this->mActionMode = 10;
            }

            if (i_this->mCylCc.GetTgHitGObj()->GetAtMtrl() == 1) {
                i_this->mActionMode = 10;
            }
        }
        break;
    case 1:
        if (i_this->field_0x5a2[0] == 0) {
            i_this->mZ2SoundObj.startCollisionSE(0x40000, 0x21, NULL);
            fopAcM_delete(i_this);
        }
        break;
    case 10:
        i_this->mDeleteTimer = 1;
        break;
    }

    i_this->mScale.y = i_this->field_0x5b0 +
                       i_this->mReboundTimer * cM_ssin(i_this->mReboundTimer * 0xF00) * 0.02f;
    if (i_this->mScale.y < 0.1f) {
        i_this->mScale.y = 0.1f;
    }

    f32 target = 0.0f;
    if (i_this->field_0x5aa != 0) {
        if (i_this->field_0x5aa > 100) {
            target = 10.0f;
            i_this->mActionMode++;
            i_this->field_0x5a2[0] = 0;
        } else if (i_this->field_0x5aa > 80) {
            target = 5.0f;
        } else if (i_this->field_0x5aa >= 4) {
            target = 2.0f;
        } else {
            target = 1.0f;
        }

        f32 fvar6 = i_this->mDistToActor * 0.005f;
        if (fvar6 > 1.0f) {
            fvar6 = 1.0f;
        }
        target *= 1.0f - fvar6;

        i_this->field_0x5aa--;
    }

    cLib_addCalc2(&i_this->field_0x5b0, target, 0.5f, 0.5f);
}

/* 80D35774-80D35A3C 0004B4 02C8+00 2/1 0/0 0/0 .text daObj_Web1_Execute__FP14obj_web1_class */
static int daObj_Web1_Execute(obj_web1_class* i_this) {
    i_this->field_0x59c++;

    for (int i = 0; i < 2; i++) {
        if (i_this->field_0x5a2[i] != 0) {
            i_this->field_0x5a2[i]--;
        }
    }

    if (i_this->mHitTimer != 0) {
        i_this->mHitTimer--;
    }

    int roomNo = fopAcM_GetRoomNo(i_this);
    i_this->mZ2SoundObj.framework(0, dComIfGp_getReverb(roomNo));

    if (i_this->mDeleteTimer != 0) {
        if (i_this->mDeleteTimer == 1) {
            cXyz scale;
            scale.x = i_this->mScale.x;
            scale.y = i_this->mScale.x;
            scale.z = i_this->mScale.x;

            dComIfGp_particle_set(0x840E, &i_this->current.pos, &i_this->shape_angle, &scale);
            i_this->mpBrk->setPlaySpeed(1.0f);
        }

        fopAcM_seStartLevel(i_this, Z2SE_OBJ_WEB_BURN, 0);

        if (i_this->mDeleteTimer == 35) {
            dComIfGs_onSwitch(fopAcM_GetParam(i_this) >> 0x18, fopAcM_GetRoomNo(i_this));
            fopAcM_delete(i_this);
        }

        i_this->mDeleteTimer++;
    } else {
        action(i_this);
    }

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::YrotM(i_this->shape_angle.y);
    mDoMtx_stack_c::scaleM(i_this->mScale.x, i_this->mScale.y * i_this->mScale.x + 0.05f,
                           i_this->mScale.x);

    i_this->mpBrk->play();
    i_this->mpModel->i_setBaseTRMtx(mDoMtx_stack_c::get());

    mDoMtx_stack_c::transS(i_this->current.pos.x, i_this->current.pos.y, i_this->current.pos.z);
    mDoMtx_stack_c::scaleM(i_this->mScale.x * 1.2f, i_this->mScale.x, i_this->mScale.x * 1.2f);
    mDoMtx_stack_c::transM(0.0f, i_this->mScale.x * i_this->mScale.y * -15.0f + 9.0f, 0.0f);
    PSMTXCopy(mDoMtx_stack_c::get(), i_this->mMtx);

    i_this->mpBgW->Move();
    i_this->mCylCc.SetC(i_this->current.pos);
    i_this->mCylCc.SetR(i_this->mScale.x * 150.0f);

    dComIfG_Ccsp()->Set(&i_this->mCylCc);
    return 1;
}

/* 80D35A3C-80D35A44 00077C 0008+00 1/0 0/0 0/0 .text daObj_Web1_IsDelete__FP14obj_web1_class */
static int daObj_Web1_IsDelete(obj_web1_class* i_this) {
    return 1;
}

/* 80D361F8-80D361FC 000008 0004+00 2/2 0/0 0/0 .bss             None */
static u8 data_80D361F8;

/* 80D35A44-80D35AC0 000784 007C+00 1/0 0/0 0/0 .text daObj_Web1_Delete__FP14obj_web1_class */
static int daObj_Web1_Delete(obj_web1_class* i_this) {
    dComIfG_resDelete(&i_this->mPhase, "Obj_web1");

    if (i_this->field_0x76c) {
        data_80D361F8 = 0;
    }

    dComIfG_Bgsp().Release(i_this->mpBgW);

    if (i_this->mHeap != NULL) {
        i_this->mZ2SoundObj.deleteObject();
    }
    return 1;
}

/* 80D35AC0-80D35C9C 000800 01DC+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
static int useHeapInit(fopAc_ac_c* i_this) {
    obj_web1_class* _this = static_cast<obj_web1_class*>(i_this);

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("Obj_web1", 5);
    _this->mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);

    if (_this->mpModel == NULL) {
        return 0;
    }

    _this->mpBrk = new mDoExt_brkAnm();
    if (_this->mpBrk == NULL) {
        return 0;
    }

    J3DAnmTevRegKey* brk = (J3DAnmTevRegKey*)dComIfG_getObjectRes("Obj_web1", 8);
    if (!_this->mpBrk->init(_this->mpModel->getModelData(), brk, TRUE, 0, 1.0f, 0, -1)) {
        return 0;
    }

    _this->mpBrk->setPlaySpeed(0.0f);

    _this->mpBgW = new dBgW();
    if (_this->mpBgW == NULL) {
        return 0;
    }

    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes("Obj_web1", 11);
    if (_this->mpBgW->Set(dzb, 1, &_this->mMtx) == 1) {
        return 0;
    }

    _this->mpBgW->SetCrrFunc(dBgS_MoveBGProc_Typical);
    _this->mpBgW->SetRideCallback(ride_call_back);
    _this->mZ2SoundObj.init(&i_this->current.pos, 1);
    return 1;
}

/* 80D36208-80D36210 000018 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static daObj_Web1_HIO_c l_HIO;

/* 80D35CE4-80D35F98 000A24 02B4+00 1/0 0/0 0/0 .text            daObj_Web1_Create__FP10fopAc_ac_c
 */
static int daObj_Web1_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, obj_web1_class);
    obj_web1_class* _this = static_cast<obj_web1_class*>(i_this);

    static dCcD_SrcCyl cc_cyl_src = {
        {
            {0, {{0, 0, 0}, {0xD8FBFFFF, 17}, 0}},
            {dCcD_SE_NONE, 0, 0, 0, {0}},
            {dCcD_SE_HARD_BODY, 2, 0, 0, {2}},
            {0},
        },
        {
            {0.0f, 0.0f, 0.0f},
            50.0f,
            2.0f,
        },
    };

    int phase = dComIfG_resLoad(&_this->mPhase, "Obj_web1");
    if (phase == cPhs_COMPLEATE_e) {
        u8 switchNo = fopAcM_GetParam(_this) >> 0x18;

        if (switchNo != 0xFF && dComIfGs_isSwitch(switchNo, fopAcM_GetRoomNo(_this))) {
            return cPhs_ERROR_e;
        }

        _this->mPrm0 = fopAcM_GetParam(_this);
        if (_this->mPrm0 == 0xFF) {
            _this->mPrm0 = 0;
        }

        _this->mScaleX = fopAcM_GetParam(_this) >> 8;

        if (!fopAcM_entrySolidHeap(_this, (heapCallbackFunc)useHeapInit, 0x4B000)) {
            return cPhs_ERROR_e;
        }

        if (dComIfG_Bgsp().Regist(_this->mpBgW, _this)) {
            return cPhs_ERROR_e;
        }

        if (!data_80D361F8) {
            _this->field_0x76c = 1;
            data_80D361F8 = true;
            l_HIO.field_0x4 = -1;
        }

        fopAcM_SetMtx(_this, _this->mpModel->getBaseTRMtx());
        fopAcM_SetMin(_this, -1000.0f, -1000.0f, -1000.0f);
        fopAcM_SetMax(_this, 1000.0f, 1000.0f, 1000.0f);

        if (_this->mScaleX != 0xFF && _this->mScaleX != 0) {
            _this->mScale.x = _this->mScaleX;
        }

        _this->current.pos.y -= 13.0f;

        _this->mStts.Init(255, 0, _this);
        _this->mCylCc.Set(cc_cyl_src);
        _this->mCylCc.SetStts(&_this->mStts);
        _this->mCylCc.OnTgNoHitMark();

        _this->mEyePos = _this->current.pos;
        daObj_Web1_Execute(_this);
    }

    return phase;
}

/* 80D36170-80D36190 -00001 0020+00 1/0 0/0 0/0 .data            l_daObj_Web1_Method */
static actor_method_class l_daObj_Web1_Method = {
    (process_method_func)daObj_Web1_Create,  (process_method_func)daObj_Web1_Delete,
    (process_method_func)daObj_Web1_Execute, (process_method_func)daObj_Web1_IsDelete,
    (process_method_func)daObj_Web1_Draw,
};

/* 80D36190-80D361C0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_WEB1 */
extern actor_process_profile_definition g_profile_OBJ_WEB1 = {
    -3,
    3,
    -3,
    PROC_OBJ_WEB1,
    &g_fpcLf_Method.mBase,
    sizeof(obj_web1_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x0030,
    &l_daObj_Web1_Method,
    0x00040100,
    0,
    14,
};
