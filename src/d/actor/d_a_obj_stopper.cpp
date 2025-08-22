/**
* @file d_a_obj_stopper.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_stopper.h"
#include "Z2AudioLib/Z2Instances.h"
#include "d/d_com_inf_game.h"

/* 80CECF0C-80CECF34 0000EC 0028+00 1/1 0/0 0/0 .text            getStopModelData__Fv */
static J3DModelData* getStopModelData() {
    return (J3DModelData*)dComIfG_getStageRes("door-stop.bmd");
}

/* 80CECF34-80CECFE8 000114 00B4+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjStopper_cFv */
void daObjStopper_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    static cXyz l_offset(0.0f, 0.0f, 100.f);
    cLib_offsetPos(&current.pos, &home.pos, home.angle.y, &l_offset);
    setBaseMtx();
}

/* 80CED024-80CED0B8 000204 0094+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjStopper_cFv */
void daObjStopper_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + field_0x950, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::ZXYrotM(field_0x9f0.x, field_0x9f0.y, field_0x9f0.z);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80CED0B8-80CED20C 000298 0154+00 1/0 0/0 0/0 .text            Create__14daObjStopper_cFv */
int daObjStopper_c::Create() {
    if (fopAcM_isSwitch(this, getSwNo2())) {
        field_0x950 = 300.0f;
        setAction(ACTION_DEAD);
    } else {
        field_0x950 = 0.0f;
        setAction(ACTION_WAIT);
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mAcchCir.SetWall(30.0f, 30.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), NULL, NULL);
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    mMapToolIDs[0] = getEventNo2();
    mEventIDs[0] = dComIfGp_getEventManager().getEventIdx(this, mMapToolIDs[0]);

    mMapToolIDs[1] = getEventNo3();
    mEventIDs[1] = dComIfGp_getEventManager().getEventIdx(this, mMapToolIDs[1]);

    mMapToolIDs[2] = getEventNo();
    mEventIDs[2] = dComIfGp_getEventManager().getEventIdx(this, mMapToolIDs[2]);

    fopAcM_setCullSizeFar(this, 2.0f);
    return 1;
}

/* 80CED20C-80CED258 0003EC 004C+00 1/0 0/0 0/0 .text            CreateHeap__14daObjStopper_cFv */
int daObjStopper_c::CreateHeap() {
    mpModel = mDoExt_J3DModel__create(getStopModelData(), 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80CED258-80CED440 000438 01E8+00 1/1 0/0 0/0 .text            create__14daObjStopper_cFv */
int daObjStopper_c::create() {
    fopAcM_SetupActor(this, daObjStopper_c);
    if (!field_0x9fc) {
        field_0x9f8 = home.angle.x;
        field_0x9fa = home.angle.z;
        home.angle.z = 0;
        home.angle.x = 0;
        current.angle.z = 0;
        current.angle.x = 0;
        shape_angle.z = 0;
        shape_angle.x = 0;
        field_0x9fc = 1;
    }
    cPhs__Step phase = (cPhs__Step)MoveBGCreate(NULL, -1, dBgS_MoveBGProc_TypicalRotY, 0x810, NULL);
    if (phase != cPhs_ERROR_e) {
        return phase;
    }
}

/* 80CED6BC-80CED708 00089C 004C+00 1/0 0/0 0/0 .text            Execute__14daObjStopper_cFPPA3_A4_f
 */
int daObjStopper_c::Execute(f32 (**param_0)[3][4]) {
    action();
    *param_0 = &mBgMtx;
    setBaseMtx();
    return 1;
}

/* 80CED708-80CED824 0008E8 011C+00 1/1 0/0 0/0 .text            action__14daObjStopper_cFv */
void daObjStopper_c::action() {
    static void (daObjStopper_c::* l_func[])() = {
        &daObjStopper_c::actionWait,       &daObjStopper_c::actionWaitOrderEvent,
        &daObjStopper_c::actionOrderEvent, &daObjStopper_c::actionEvent,
        &daObjStopper_c::actionDead,       &daObjStopper_c::actionWaitClose,
        &daObjStopper_c::actionClose,      &daObjStopper_c::actionCloseInit};
    (this->*l_func[mAction])();
}

/* 80CED824-80CEDA24 000A04 0200+00 1/0 0/0 0/0 .text            actionWait__14daObjStopper_cFv */
void daObjStopper_c::actionWait() {
    BOOL isSwitch = fopAcM_isSwitch(this, getSwNo());
    if (isSwitch != field_0x94e && field_0x94e == 0) {
        field_0x93d++;
        switch (field_0x93d) {
        case 1:
            field_0x95d = 0x37;
            field_0x95e = 0x14;
            field_0x960 = 0;
            field_0x954 = 0x2d;
            field_0x964 = 0.05f;
            field_0x968 = 0.0f;
            field_0x96c = 1.0f;
            field_0x970 = -0.25f;
            field_0x974 = 25.0f;
            field_0x978 = 25.0f;
            field_0x958 = 1.0f;
            field_0x9f6 = 0x32;
            field_0x9e8 = 0x3a;
            field_0x95c = 0;
            field_0x97e = 0;
            field_0x97e += 0xc;
            break;
        case 2:
            field_0x95d = 0x28;
            field_0x95e = 0x14;
            field_0x960 = 0;
            field_0x954 = 0xf;
            field_0x964 = 0;
            field_0x968 = 0;
            field_0x96c = 1.7f;
            field_0x970 = -0.25f;
            field_0x974 = 60.0f;
            field_0x978 = 60.0f;
            field_0x9f6 = 0x37;
            field_0x958 = 1.0f;
            field_0x9ea = 0x5a;
            field_0x980 = 0x35;
            field_0x980 -= 0x14;
            field_0x95c = 0;
            break;
        case 3:
            field_0x958 = 1.0f;
            field_0x954 = 0x1e;
            field_0x960 = 0;
            field_0x956 = 0x1e;
            field_0x974 = 60.0f;
            field_0x978 = 350.0f;
            field_0x9f6 = 0x37;
            field_0x9ec = 0x27;
            field_0x9ee = 0x6d;
            field_0x95c = 0;
            field_0x982 = 0x3a;
            field_0x982 -= 0x14;
            break;
        }
        field_0x95f = 0xa;
        setAction(ACTION_WAIT_ORDER_EVENT);
    }
    field_0x94e = isSwitch;
}

/* 80CEDA24-80CEDAAC 000C04 0088+00 1/0 0/0 0/0 .text actionWaitOrderEvent__14daObjStopper_cFv */
void daObjStopper_c::actionWaitOrderEvent() {
    if (cLib_calcTimer(&field_0x95f) == 0) {
        setAction(ACTION_ORDER_EVENT);
        field_0x94d = field_0x93d - 1;
        fopAcM_orderOtherEventId(this, mEventIDs[field_0x94d], mMapToolIDs[field_0x94d], 0xffff, 0,
                                 1);
        eventInfo.onCondition(2);
    }
}

/* 80CEDAAC-80CEDB2C 000C8C 0080+00 1/0 0/0 0/0 .text actionOrderEvent__14daObjStopper_cFv */
void daObjStopper_c::actionOrderEvent() {
    if (eventInfo.checkCommandDemoAccrpt()) {
        setAction(ACTION_EVENT);
        field_0x97c = 0;
    } else {
        fopAcM_orderOtherEventId(this, mEventIDs[field_0x94d], mMapToolIDs[field_0x94d], 0xffff, 0,
                                 1);
        eventInfo.onCondition(2);
    }
}

/* 80CEDB2C-80CEE048 000D0C 051C+00 1/0 0/0 0/0 .text            actionEvent__14daObjStopper_cFv */
void daObjStopper_c::actionEvent() {
    if (dComIfGp_evmng_endCheck(mEventIDs[field_0x94d])) {
        dComIfGp_event_reset();
        if (field_0x93d == 3) {
            setAction(ACTION_DEAD);
            fopAcM_onSwitch(this, getSwNo2());
            return;
        }
        setAction(ACTION_WAIT);
        return;
    }
    switch (field_0x93d) {
    case 1:
        if (cLib_calcTimer(&field_0x954) == 0) {
            hint_action1();
        }
        if (field_0x97e == 0) {
            dComIfGp_particle_set(0x835d, &current.pos, &home.angle, NULL, 0xff, &field_0x984[0],
                                  fopAcM_GetRoomNo(this), NULL, NULL, NULL);
            dComIfGp_particle_set(0x835e, &current.pos, &home.angle, NULL, 0xff, &field_0x984[1],
                                  fopAcM_GetRoomNo(this), NULL, NULL, NULL);
        }
        if (field_0x9e8 == 0) {
            fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR2_DIRT, 0);
        }
        if (field_0x9e8 >= 0) {
            field_0x9e8--;
        }
        if (field_0x97e >= 0) {
            field_0x97e--;
        }
        break;
    case 2:
        if (cLib_calcTimer(&field_0x954) == 0) {
            hint_action2();
        }
        if (field_0x980 == 0) {
            dComIfGp_particle_set(0x835f, &current.pos, &home.angle, NULL, 0xff, &field_0x9ac[0],
                                  fopAcM_GetRoomNo(this), NULL, NULL, NULL);
        }
        if (field_0x9ea == 0) {
            fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR2_DIRT, 0);
        }
        if (field_0x9ea >= 0) {
            field_0x9ea--;
        }
        if (field_0x980 >= 0) {
            field_0x980--;
        }
        break;
    case 3:
        if (cLib_calcTimer(&field_0x954) == 0) {
            hint_action3();
        }
        if (field_0x982 == 0) {
            dComIfGp_particle_set(0x8360, &current.pos, &home.angle, NULL, 0xff, &field_0x9c0[0],
                                  fopAcM_GetRoomNo(this), NULL, NULL, NULL);
            dComIfGp_particle_set(0x8361, &current.pos, &home.angle, NULL, 0xff, &field_0x9c0[1],
                                  fopAcM_GetRoomNo(this), NULL, NULL, NULL);
        }
        if (field_0x9ec == 0) {
            fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR2_DIRT_L, 0);
        }
        if (field_0x9ee == 0) {
            fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR2_PARA, 0);
        }
        if (field_0x9ec >= 0) {
            field_0x9ec--;
        }
        if (field_0x9ee >= 0) {
            field_0x9ee--;
        }
        if (field_0x982 >= 0) {
            field_0x982--;
        }
        break;
    }
    field_0x960++;
    field_0x97c++;
}

/* 80CEE048-80CEE04C 001228 0004+00 1/0 0/0 0/0 .text            actionDead__14daObjStopper_cFv */
void daObjStopper_c::actionDead() {
    /* empty function */
}

/* 80CEE04C-80CEE05C 00122C 0010+00 1/0 0/0 0/0 .text            actionWaitClose__14daObjStopper_cFv
 */
void daObjStopper_c::actionWaitClose() {
    field_0x950 = 300.0f;
}

/* 80CEE05C-80CEE0E0 00123C 0084+00 1/0 0/0 0/0 .text            actionCloseInit__14daObjStopper_cFv
 */
void daObjStopper_c::actionCloseInit() {
    setAction(ACTION_CLOSE);
    fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR2_CLOSE, 0);
}

/* 80CEE0E0-80CEE148 0012C0 0068+00 1/0 0/0 0/0 .text            actionClose__14daObjStopper_cFv */
void daObjStopper_c::actionClose() {
    cLib_chaseF(&speedF, 60.0f, 6.0f);
    if (cLib_chaseF(&field_0x950, 0.0f, speedF)) {
        setAction(ACTION_WAIT);
    }
}

/* 80CEE148-80CEE5D0 001328 0488+00 1/1 0/0 0/0 .text            hint_action1__14daObjStopper_cFv */
void daObjStopper_c::hint_action1() {
    switch (field_0x95c) {
    case 0:
        field_0x95d--;
        if (field_0x95d <= 0xa) {
            field_0x950 += field_0x958 * cM_ssin(0x4000 * field_0x95d);

            field_0x9f0.x = field_0x9f6 * cM_ssin(10000 * field_0x960);
            field_0x9f0.z = field_0x9f6 * cM_ssin(10000 * field_0x960);

            if (field_0x95d == 0xa) {
                fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR2_GATA1, 0);
            }
        }
        if (field_0x95d == 0x14) {
            dComIfGp_getVibration().StartQuake(2, 1, cXyz(0.0f, 1.0f, 0.0f));
        }
        if (field_0x95d == 0) {
            speedF = field_0x96c;
            field_0x95c = 1;
            field_0x958 = 0.5f;
            dComIfGp_getVibration().StartQuake(2, 1, cXyz(0.0f, 1.0f, 0.0f));
        }
        break;
    case 1:
        field_0x95d++;
        speedF += field_0x964;
        field_0x950 += speedF;

        field_0x9f0.x = field_0x9f6 * cM_ssin(10000 * field_0x960);
        field_0x9f0.z = field_0x9f6 * cM_ssin(10000 * field_0x960);

        if (field_0x950 > field_0x978) {
            dComIfGp_getVibration().StopQuake(0x1f);
            dComIfGp_getVibration().StartShock(2, 1, cXyz(0.0f, 1.0f, 0.0f));
            field_0x950 = field_0x978;
            field_0x95c = 2;
        }
        break;
    case 2:
        field_0x9f0.x = field_0x9f6 * cM_ssin(10000 * field_0x960);
        field_0x9f0.z = field_0x9f6 * cM_ssin(10000 * field_0x960);

        cLib_addCalcAngleS(&field_0x9f6, 0, 0x1e, 10, 5);
        field_0x950 += speedF;
        if (field_0x950 > field_0x978) {
            field_0x950 = field_0x978;
            speedF = -field_0x96c * 0.5f;
        } else {
            f32 absSpeedF = fabsf(speedF);
            if (field_0x950 < field_0x978 - absSpeedF) {
                speedF = absSpeedF;
            }
        }

        field_0x95e--;
        if (field_0x95e == 0) {
            speedF = field_0x970;
            field_0x95c = 3;
        }
        break;
    case 3:
        speedF += field_0x968;
        field_0x950 += speedF;
        if (field_0x950 < field_0x974) {
            field_0x950 = field_0x974;
            speedF = 0.0f;
        }
        break;
    case 4:
        break;
    }
}

/* 80CEE5D0-80CEEA28 0017B0 0458+00 1/1 0/0 0/0 .text            hint_action2__14daObjStopper_cFv */
void daObjStopper_c::hint_action2() {
    switch (field_0x95c) {
    case 0:
        field_0x95d--;
        if (field_0x95d <= 0xa) {
            field_0x950 += field_0x958 * cM_ssin(0x4000 * field_0x95d);

            field_0x9f0.x = field_0x9f6 * cM_ssin(10000 * field_0x960);
            field_0x9f0.z = field_0x9f6 * cM_ssin(10000 * field_0x960);

            if (field_0x95d == 0xa) {
                fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR2_GATA2, 0);
            }
        }
        if (field_0x95d == 0x14) {
            dComIfGp_getVibration().StartQuake(2, 1, cXyz(0.0f, 1.0f, 0.0f));
        }
        if (field_0x95d == 0) {
            speedF = field_0x96c;
            field_0x95c = 1;
            field_0x958 = 0.5f;
        }
        break;
    case 1:
        field_0x95d++;
        speedF += field_0x964;
        field_0x950 += speedF;

        field_0x9f0.x = field_0x9f6 * cM_ssin(10000 * field_0x960);
        field_0x9f0.z = field_0x9f6 * cM_ssin(10000 * field_0x960);

        if (field_0x950 > field_0x978) {
            dComIfGp_getVibration().StopQuake(0x1f);
            dComIfGp_getVibration().StartShock(2, 1, cXyz(0.0f, 1.0f, 0.0f));
            field_0x950 = field_0x978;
            field_0x95c = 2;
        }
        break;
    case 2:
        field_0x9f0.x = field_0x9f6 * cM_ssin(10000 * field_0x960);
        field_0x9f0.z = field_0x9f6 * cM_ssin(10000 * field_0x960);

        cLib_addCalcAngleS(&field_0x9f6, 0, 0x14, 10, 5);
        field_0x950 += speedF;
        if (field_0x950 > field_0x978) {
            field_0x950 = field_0x978;
            speedF = -field_0x96c * 0.5f;
        } else {
            f32 fVar4 = fabsf(speedF);
            if (field_0x950 < field_0x978 - fVar4) {
                speedF = fVar4;
            }
        }

        field_0x95e--;
        if (field_0x95e == 0) {
            speedF = field_0x970;
            field_0x95c = 3;
        }
        break;
    case 3:
        speedF += field_0x968;
        field_0x950 += speedF;
        if (field_0x950 < field_0x974) {
            field_0x950 = field_0x974;
            speedF = 0.0f;
        }
        break;
    case 4:
        break;
    }
}

/* 80CEEA28-80CEECFC 001C08 02D4+00 1/1 0/0 0/0 .text            hint_action3__14daObjStopper_cFv */
void daObjStopper_c::hint_action3() {
    cLib_calcTimer(&field_0x956);
    switch (field_0x95c) {
    case 0:
        field_0x95c = 1;
        dComIfGp_getVibration().StartQuake(4, 1, cXyz(0.0f, 1.0f, 0.0f));
        fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR2_GATA3, 0);
    case 1:
        if (field_0x956 != 0) {
            int iVar = 0x1e - field_0x956;
            if (iVar < 0) {
                iVar = 0;
            }
            field_0x950 = field_0x974 + field_0x958 * cM_ssin(0x4000 * iVar);
            field_0x9f0.x = field_0x9f6 * cM_ssin(10000 * field_0x960);
            field_0x9f0.z = field_0x9f6 * cM_ssin(10000 * field_0x960);
        } else {
            field_0x95c = 2;
            fopAcM_seStart(this, Z2SE_OBJ_BOOMSHTR2_OPEN, 0);
        }
        break;
    case 2:
        cLib_addCalc(&gravity, 2.0f, 0.05f, 0.2f, 0.05f);
        cLib_chaseF(&speedF, 115.0f, gravity);
        if (!cLib_chaseF(&field_0x950, 350.0f, speedF)) {
            return;
        }
        dComIfGp_getVibration().StopQuake(0x1f);
        field_0x956 = 0;
        field_0x95c = 4;
        break;
    case 3:
        if (cLib_calcTimer(&field_0x956) == 0) {
            field_0x95c = 4;
        }
        break;
    case 4:
        dComIfGp_getVibration().StartShock(8, 1, cXyz(0.0f, 1.0f, 0.0f));
        field_0x95c = 5;
        break;
    case 5:
        break;
    }
}

/* 80CEECFC-80CEED60 001EDC 0064+00 1/0 0/0 0/0 .text            Draw__14daObjStopper_cFv */
int daObjStopper_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80CEED60-80CEEDF0 001F40 0090+00 1/0 0/0 0/0 .text            Delete__14daObjStopper_cFv */
int daObjStopper_c::Delete() {
    field_0x984[0].remove();
    field_0x984[1].remove();
    field_0x9ac[0].remove();
    field_0x9c0[0].remove();
    field_0x9c0[1].remove();
    return 1;
}

/* 80CEEDF0-80CEEE1C 001FD0 002C+00 1/0 0/0 0/0 .text daObjStopper_Draw__FP14daObjStopper_c */
static int daObjStopper_Draw(daObjStopper_c* param_0) {
    return param_0->MoveBGDraw();
}

/* 80CEEE1C-80CEEE3C 001FFC 0020+00 1/0 0/0 0/0 .text daObjStopper_Execute__FP14daObjStopper_c */
static int daObjStopper_Execute(daObjStopper_c* param_0) {
    return param_0->MoveBGExecute();
}

/* 80CEEE3C-80CEEE5C 00201C 0020+00 1/0 0/0 0/0 .text daObjStopper_Delete__FP14daObjStopper_c */
static int daObjStopper_Delete(daObjStopper_c* param_0) {
    return param_0->MoveBGDelete();
}

/* 80CEEE5C-80CEEE7C 00203C 0020+00 1/0 0/0 0/0 .text            daObjStopper_Create__FP10fopAc_ac_c
 */
static int daObjStopper_Create(fopAc_ac_c* param_0) {
    return static_cast<daObjStopper_c*>(param_0)->create();
}

/* 80CEF0E0-80CEF100 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjStopper_Method */
static actor_method_class l_daObjStopper_Method = {
    (process_method_func)daObjStopper_Create,  (process_method_func)daObjStopper_Delete,
    (process_method_func)daObjStopper_Execute, 0,
    (process_method_func)daObjStopper_Draw,
};

/* 80CEF100-80CEF130 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Stopper */
extern actor_process_profile_definition g_profile_Obj_Stopper = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Stopper,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjStopper_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    454,                     // mPriority
    &l_daObjStopper_Method,  // sub_method
    0x00044100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

AUDIO_INSTANCES
