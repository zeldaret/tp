#include "d/actor/d_a_obj_gra2.h"
#include "d/d_camera.h"
#include "d/actor/d_a_tag_gra.h"
#include <cmath.h>

/* 80C0536C-80C053C4 00554C 0058+00 4/4 0/0 0/0 .text            getSrchCircleR__11daObj_GrA_cFv */
f32 daObj_GrA_c::getSrchCircleR() {
    f32 srchCircleR;
    u8 uVar1 = fopAcM_GetParam(this) & 0x7F;
    if (uVar1 == 0) {
        srchCircleR = daObj_GrA_Param_c::m.field_0x6c * 10.0f;
    } else {
        srchCircleR = uVar1 * 10;
    }

    return srchCircleR;
}

/* 80C053C4-80C05920 0055A4 055C+00 2/0 0/0 0/0 .text            standWait__11daObj_GrA_cFPv */
int daObj_GrA_c::standWait(void* param_1) {
    cXyz sp5c;

    switch (field_0xa7c) {
        case 0:
            field_0xf50.OffAtSetBit();
            field_0x1518 = 0;
            break;

        case 1: {
            cLib_calcTimer(&field_0x1fdc);
            if (cLib_calcTimer(&field_0x1528.field_0xa18) != 0) {
                if (field_0xa90 != 8) {
                    cXyz sp68(0.0f, 0.0f, 0.0f);
                    if (field_0xa90 == 11) {
                        if (mpModelMorf->getFrame() >= 4.0f) {
                            sp68.z = -0.44806668f;
                        }
                    } else if (field_0xa90 == 12) {
                        sp68.z = -0.6734286f;
                    } else if (field_0xa90 == 13) {
                        sp68.z = 1.7936944f;
                        sp68.x = -0.9048056f;
                    }

                    cLib_offsetPos(&current.pos, &current.pos, shape_angle.y, &sp68);

                    if (mpModelMorf->isStop()) {
                        setBaseMotion(8, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(13, -1.0f);
                        setLookMode(1);
                    }
                }
            } else {
                sp5c = daPy_getPlayerActorClass()->current.pos;
                sp5c.y -= daPy_py_c::getAttentionOffsetY();
                f32 fVar1 = (sp5c - current.pos).absXZ();
                s16 val = cLib_targetAngleY(&attention_info.position, &sp5c);
                val -= cLib_targetAngleY(&current.pos, &eyePos);

                if (
                    (field_0x1fdc == 0 && dComIfGp_checkPlayerStatus0(0, 0x100) == 0)
                    && (
                        (home.pos - current.pos).absXZ() <= getSrchCircleR()
                        && fVar1 <= getSrchCircleR()
                        && std::abs(sp5c.y - current.pos.y) < 300.0f
                    )) {
                    field_0x150c = 1;
                }

                if (field_0x150c != 0) {
                    setProcess(&daObj_GrA_c::walk);
                    setBaseMotion(1, field_0xa4c->m.field_0x0c);
                    setFaceMotion(13, -1.0f);
                } else if (current.angle.y != home.angle.y) {
                    cLib_addCalcAngleS2(&current.angle.y, home.angle.y, 1, daObj_GrA_Param_c::m.field_0x88);
                    shape_angle.y = current.angle.y;
                    field_0x91a.y = current.angle.y;

                    if (current.angle.y == home.angle.y) {
                        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(13, -1.0f);
                    }
                }
            }

            break;
        }

        case 2: {
            break;
        }
    }

    return 1;
}

/* 80C05920-80C05F64 005B00 0644+00 3/0 0/0 0/0 .text            walk__11daObj_GrA_cFPv */
int daObj_GrA_c::walk(void* param_1) {
    cXyz player_pos;

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(1, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            break;

        case 1: {
            player_pos = daPy_getPlayerActorClass()->current.pos;
            f32 fVar1 = (player_pos - current.pos).absXZ();
            s16 sVar1 = cLib_targetAngleY(&current.pos, &player_pos);
            s16 dbg_0xa = cLib_targetAngleY(&current.pos, &eyePos);
            (void) dbg_0xa;
            sVar1 -= shape_angle.y;
            cXyz sp6c(home.pos);
            cLib_calcTimer(&field_0x1fdc);

            if (
                (field_0x1fdc == 0 && dComIfGp_checkPlayerStatus0(0, 0x100) == 0)
                && (
                    (sp6c - player_pos).absXZ() <= (getSrchCircleR() + 100.0f)
                    && fVar1 <= getSrchCircleR() + 100.0f
                    && std::abs(player_pos.y - current.pos.y) < 300.0f
                )) {
                field_0x150c = 1;
            } else {
                field_0x150c = 0;
            }

            if (field_0x150c) {
                setLookMode(1);
                sp6c = player_pos;
                if (fVar1 < daObj_GrA_Param_c::m.field_0x94) {
                    if (abs(sVar1) < cM_deg2s(daObj_GrA_Param_c::m.field_0x80)) {
                        setProcess(&daObj_GrA_c::step);
                        field_0x1098 = daObj_GrA_Param_c::m.field_0x50;
                        field_0x108c = current.pos;
                        break;
                    }
                }
            } else if ((sp6c - current.pos).absXZ() < 50.0f) {
                setLookMode(1);
                setProcess(&daObj_GrA_c::wait);
                speedF = 0.0f;
                break;
            }

            cLib_addCalc2(&speedF, daObj_GrA_Param_c::m.field_0x90, 0.25f, 3.5f);
            cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp6c),
                                1, daObj_GrA_Param_c::m.field_0x88);
            shape_angle.y = current.angle.y;
            field_0x91a.y = current.angle.y;
            break;
        }

        case 2: {
            break;
        }
    }

    return 1;
}

/* 80C05F64-80C061F4 006144 0290+00 1/0 0/0 0/0 .text            defence__11daObj_GrA_cFPv */
int daObj_GrA_c::defence(void* param_1) {
    fopAc_ac_c* aTgHitActor_p;
    s16 sVar1;
    switch (field_0xa7c) {
        case 0:
            setBaseMotion(7, 0.0f);
            setFaceMotion(10, 0.0f);
            calcMotion();

            aTgHitActor_p = field_0xab0.getActor();
            JUT_ASSERT(309, 0 != aTgHitActor_p);

            sVar1 = cLib_targetAngleY(&current.pos, &aTgHitActor_p->current.pos);
            current.angle.y = sVar1;
            sVar1 = current.angle.y;
            field_0x91a.y = sVar1;
            shape_angle.y = sVar1;
            field_0x108c = current.pos;
            field_0x1098 = 0.0f;
            break;

        case 1:
            if (field_0x842 != 0) {
                setProcess(&daObj_GrA_c::walk);
            } else {
                cLib_addCalc2(&field_0x1098, daObj_GrA_Param_c::m.field_0x50, 0.25f, 20.0f);
                cXyz sp2c(field_0x108c);
                sp2c.x -= field_0x1098 * cM_ssin(current.angle.y);
                sp2c.z -= field_0x1098 * cM_scos(current.angle.y);
                cLib_addCalcPos2(&current.pos, sp2c, 0.8f, 45.0f);

                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(26));
                mDoMtx_stack_c::multVecZero(&field_0xab8[0].field_0x4);
                field_0xab8[0].field_0x4.y -= 20.0f;
                field_0xab8[0].field_0x10 = current.angle;
                field_0xab8[0].field_0x10.y -= 0x8000;
                field_0xab8[0].field_0x0 = 1;

                mDoMtx_stack_c::copy(mpModelMorf->getModel()->getAnmMtx(23));
                mDoMtx_stack_c::multVecZero(&field_0xab8[1].field_0x4);
                field_0xab8[1].field_0x4.y -= 20.0f;
                field_0xab8[1].field_0x10 = current.angle;
                field_0xab8[1].field_0x10.y -= 0x8000;
                field_0xab8[1].field_0x0 = 1;
                field_0xaa4 = daObj_GrA_Param_c::m.field_0x54;
            }
            break;

        case 2:
            field_0xab0.entry(NULL);
    }

    return 1;
}

/* 80C061F4-80C067D8 0063D4 05E4+00 5/0 0/0 0/0 .text            toStone__11daObj_GrA_cFPv */
int daObj_GrA_c::toStone(void* param_1) {
    s16 sVar1;
    f32 var_f31;
    f32 var_f30;
    int var_r27 = 0;
    (void) var_r27;

    switch (field_0xa7c) {
        case 0:
            field_0xaac = 1;
            ppMoveInit();
            field_0xaa8 = 0;
            current.angle.y = shape_angle.y;
            field_0x202c = field_0x842;

            if (mMode != 1 && !dComIfGs_isSaveDunSwitch(0x1D)) {
                dComIfGs_onSaveDunSwitch(0x1D);
            }
            break;

        case 1: {
            switch (field_0xaac) {
                case 1:
                    if (field_0x109c != 0) {
                        cXyz sp70(daPy_getPlayerActorClass()->current.pos);
                        var_f30 = (sp70 - current.pos).absXZ();
                        if (field_0xaa8 != 0) {
                            field_0xaa8--;
                            if (field_0xaa8 <= 0) {
                                field_0x10a0 = 90;
                                field_0xaac = 2;
                            }
                        } else if ((var_f30 > getSrchCircleR() || std::abs(sp70.y - current.pos.y) > 300.0f) || field_0x10c4 != 0) {
                            field_0xaa8 = 30;
                        }
                    } else if (mpModelMorf->checkFrame(0.0f)) {
                        setBaseMotion(4, daObj_GrA_Param_c::m.field_0x0c / 2);
                        setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c / 2);
                        calcMotion();
                        mpModelMorf->setFrame(mpModelMorf->getEndFrame());
                        mpModelMorf->setPlaySpeed(1.0f);
                        field_0x109c = 1;
                    }
                    break;

                case 2:
                    if (field_0x10a0 != 0) {
                        cXyz sp7c(0.0f, 0.0f, 20.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(field_0x91a.y);
                        mDoMtx_stack_c::multVec(&sp7c, &field_0xab8[4].field_0x4);
                        field_0xab8[4].field_0x10 = field_0x91a;
                        field_0xab8[4].field_0x0 = 1;
                        mSound.startCreatureSoundLevel(Z2SE_GORON_TREMBLE, 0, -1);
                        field_0x10a0--;
                    } else {
                        if (field_0x10c4 != 0 && daPy_py_c::checkNowWolf() == 0) {
                            sVar1 = cM_deg2s(daObj_GrA_Param_c::m.field_0x4c);

                            if (strcmp(dComIfGp_getStartStageName(), "F_SP109") == 0) {
                                var_f31 = 95.0f;
                            } else {
                                var_f31 = daObj_GrA_Param_c::m.field_0x48;
                            }

                            // reversed in debug?!
                            daPy_getPlayerActorClass()->setRollJump(var_f31 * cM_scos(sVar1), var_f31 * cM_ssin(sVar1),
                                                        daPy_getPlayerActorClass()->shape_angle.y);
                        } else {
                            field_0xf50.OnAtSetBit();
                            field_0x109c = 0;
                        }

                        setBaseMotion(6, 0.0f);
                        setFaceMotion(3, 0.0f);
                        mpModelMorf->setPlaySpeed(1.0f);
                        field_0x10a0 = 0;
                        field_0xaac = 3;
                    }
                    break;

                case 3:
                    if (field_0x842 != 0) {
                        field_0xf50.OffAtSetBit();
                        setProcess(&daObj_GrA_c::wait);
                        setLookMode(1);
                        field_0x1528.field_0xa18 = 0;
                        field_0xaac = 0;
                        health = daObj_GrA_Param_c::m.field_0x10;
                        field_0x109c = 0;
                    } else if (mpModelMorf->checkFrame(12.0f)) {
                        field_0xab8[3].field_0x4 = current.pos;
                        field_0xab8[3].field_0x10 = field_0x91a;
                        field_0xab8[3].field_0x0 = 1;
                    }
            }

            break;
        }

        case 2: {
            break;
        }
    }

    field_0x10c4 = 0;
    
    return 1;
}

/* 80C067D8-80C06CDC 0069B8 0504+00 2/0 0/0 0/0 .text            step__11daObj_GrA_cFPv */
int daObj_GrA_c::step(void* param_1) {
    switch (field_0xa7c) {
        case 0:
            setBaseMotion(9, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(9, -1.0f);
            field_0x1098 = 0.0f;
            field_0x1fe0 = 0;
            field_0x1fdc = 0;
            break;

        case 1:
            if (field_0x842 != 0) {
                field_0x1528.field_0xa18 = daObj_GrA_Param_c::m.field_0x98;
                setProcess(&daObj_GrA_c::wait);
                setBaseMotion(8, daObj_GrA_Param_c::m.field_0x0c);
                setFaceMotion(8, -1.0f);
            } else if (mpModelMorf->getFrame() >= 25.0f && field_0x1fe0 == 0) {
                field_0x1528.field_0xa18 = daObj_GrA_Param_c::m.field_0x98;
                setProcess(&daObj_GrA_c::wait);
                setBaseMotion(13, daObj_GrA_Param_c::m.field_0x0c);
                setFaceMotion(8, -1.0f);
                setLookMode(0);
                field_0xce0[0].OffAtSetBit();
                field_0xce0[0].ClrAtHit();
                field_0xce0[1].OffAtSetBit();
                field_0xce0[1].ClrAtHit();
            } else {
                cLib_addCalc2(&speedF, daObj_GrA_Param_c::m.field_0x90 / 3.0f, 0.25f, 3.5f);
                cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &daPy_getPlayerActorClass()->current.pos),
                                    4, daObj_GrA_Param_c::m.field_0x88 / 4);
                shape_angle.y = current.angle.y;
                field_0x91a.y = current.angle.y;

                if (mpModelMorf->getFrame() == 9.0f) {
                    field_0xce0[1].OnAtSetBit();
                } else {
                    if (mpModelMorf->getFrame() == 15.0f) {
                        field_0xce0[1].OffAtSetBit();
                    } else {
                        if (mpModelMorf->getFrame() == 20.0f) {
                            field_0xce0[0].OnAtSetBit();
                        } else {
                            if (mpModelMorf->getFrame() >= 24.0f) {
                                field_0xce0[0].OffAtSetBit();
                            }
                        }
                    }
                }

                if (field_0xce0[1].ChkAtShieldHit()) {
                    field_0xce0[1].ClrAtHit();
                    field_0xab0.entry(field_0xce0[1].GetAtHitAc());
                    field_0x1528.field_0xa18 = daObj_GrA_Param_c::m.field_0x98;

                    setProcess(&daObj_GrA_c::wait);
                    setBaseMotion(11, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(8, -1.0f);
                    setLookMode(0);

                    if (!dComIfGs_isSaveDunSwitch(0x1C)) {
                        dComIfGs_onSaveDunSwitch(0x1C);
                    }
                } else if (field_0xce0[1].ChkAtHit() != 0) {
                    field_0x1fe0 = 1;
                    field_0x1fdc = 60;
                    if (!dComIfGs_isSaveDunSwitch(0x1C)) {
                        dComIfGs_onSaveDunSwitch(0x1C);
                    }
                }

                if (field_0xce0[0].ChkAtShieldHit()) {
                    field_0xab0.entry(field_0xce0[0].GetAtHitAc());
                    field_0x1528.field_0xa18 = daObj_GrA_Param_c::m.field_0x98;

                    setProcess(&daObj_GrA_c::wait);
                    setBaseMotion(12, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(8, -1.0f);
                    setLookMode(0);

                    if (!dComIfGs_isSaveDunSwitch(0x1C)) {
                        dComIfGs_onSaveDunSwitch(0x1C);
                    }
                } else if (field_0xce0[0].ChkAtHit() != 0) {
                    field_0x1fe0 = 1;
                    field_0x1fdc = 60;

                    if (!dComIfGs_isSaveDunSwitch(0x1C)) {
                        dComIfGs_onSaveDunSwitch(0x1C);
                    }
                }
            }
            break;

        case 2:
            field_0xce0[0].OffAtSetBit();
            field_0xce0[0].ClrAtHit();
            field_0xce0[1].OffAtSetBit();
            field_0xce0[1].ClrAtHit();
            speedF = 0.0f;
    }

    return 1;
}

/* 80C06CDC-80C0780C 006EBC 0B30+00 3/0 0/0 0/0 .text            rollReturn__11daObj_GrA_cFPv */
int daObj_GrA_c::rollReturn(void* param_1) {
    cXyz sp48;
    f32 fVar1;

    switch (field_0xa7c) {
        case 0:
            setLookMode(0);
            field_0x1fe4 = 0;
            field_0x2008 = 0.0f;
            speedF = 0.0f;

            if (mMode == 1) {
                setBaseMotion(20, daObj_GrA_Param_c::m.field_0x0c / 2);
                setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c / 2);
            } else {
                if ((home.pos - current.pos).absXZ() < 150.0f) {
                    setBaseMotion(4, 0.0f);
                    setFaceMotion(13, 0.0f);
                } else {
                    s16 tgt_ang = cLib_targetAngleY(&current.pos, &home.pos);
                    if (abs(tgt_ang - current.angle.y) < 0x4000) {
                        current.angle.y = cLib_targetAngleY(&current.pos, &home.pos);
                        shape_angle.y = field_0x91a.y = current.angle.y;
                        setBaseMotion(4, 0.0f);
                        setFaceMotion(13, 0.0f);
                    } else {
                        current.angle.y = cLib_targetAngleY(&current.pos, &home.pos);
                        shape_angle.y = field_0x91a.y = current.angle.y + 0x8000;
                        setBaseMotion(14, 0.0f);
                        setFaceMotion(13, 0.0f);
                    }
                }
            }

            calcMotion();
            break;

        case 1: {
            switch (field_0x1fe4) {
                case 0:
                    if (field_0xa90 == 4 || field_0xa90 == 20) {
                        if (mpModelMorf->isStop()) {
                            if (mMode == 1 || (home.pos - current.pos).absXZ() < 150.0f) {
                                setProcess(&daObj_GrA_c::toStone);
                                field_0x109c = 1;
                            } else {
                                field_0x1fe4 = 1;
                                setBaseMotion(10, 0.0f);
                                setFaceMotion(13, 0.0f);
                                calcMotion();

                                if (abs(current.angle.y - field_0x91a.y) >= 0x4000) {
                                    mpModelMorf->setFrame(mpModelMorf->getEndFrame());
                                    mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
                                }

                                mpModelMorf->setPlaySpeed(0.0f);
                            }
                        } else if (mpModelMorf->checkFrame(14.0f)) {
                            cXyz sp54(0.0f, 0.0f, 20.0f);
                            mDoMtx_stack_c::transS(current.pos);
                            mDoMtx_stack_c::YrotM(field_0x91a.y);
                            mDoMtx_stack_c::multVec(&sp54, &field_0xab8[2].field_0x4);
                            field_0xab8[2].field_0x10 = field_0x91a;
                            field_0xab8[2].field_0x0 = 1;
                        }
                    } else {
                        cXyz sp60(home.pos);
                        cLib_addCalc2(&field_0x2008, daObj_GrA_Param_c::m.field_0xa0, 0.05f, 1.0f);
                        cLib_chasePos(&current.pos, sp60, field_0x2008);

                        f32 var_f30 = field_0x2008 * 0.1f;
                        if (cM3d_IsZero(field_0x2008)) {
                            var_f30 = 0.0f;
                        }

                        shape_angle.y = field_0x91a.y = current.angle.y + 0x8000;

                        if (mpModelMorf->isStop()) {
                            if ((home.pos - current.pos).absXZ() < 40.0f) {
                                setProcess(&daObj_GrA_c::toStone);
                                setBaseMotion(4, daObj_GrA_Param_c::m.field_0x0c / 2);
                                setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c / 2);
                                calcMotion();
                                mpModelMorf->setFrame(mpModelMorf->getEndFrame());
                                mpModelMorf->setPlaySpeed(1.0f);
                                field_0x109c = 1;
                                break;
                            } else {
                                field_0x1fe4 = 1;
                                setBaseMotion(10, 0.0f);
                                setFaceMotion(13, 0.0f);
                                calcMotion();

                                mpModelMorf->setFrame(mpModelMorf->getEndFrame());
                                mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
                                mpModelMorf->setPlaySpeed(-var_f30);
                            }
                        }
                    }
                    break;

                case 1: {
                    cXyz sp6c(home.pos);
                    cLib_addCalc2(&field_0x2008, daObj_GrA_Param_c::m.field_0xa0, 0.25f, 3.5f);
                    cLib_chasePos(&current.pos, sp6c, field_0x2008);

                    fVar1 = field_0x2008 * 0.1f;
                    if (cM3d_IsZero(field_0x2008)) {
                        fVar1 = 0.0f;
                    }

                    if (abs(current.angle.y - field_0x91a.y) < 0x4000) {
                        mpModelMorf->setPlaySpeed(fVar1);
                        shape_angle.y = field_0x91a.y = current.angle.y;
                    } else {
                        mpModelMorf->setPlaySpeed(-fVar1);
                        shape_angle.y = field_0x91a.y = current.angle.y + 0x8000;
                    }

                    if ((home.pos - current.pos).absXZ() < 40.0f) {
                        setProcess(&daObj_GrA_c::toStone);
                    }

                    break;
                }
            }

            break;
        }

        case 2:
            field_0x2008 = 0.0f;
            field_0x1fe4 = -1;
    }

    return 1;
}

/* 80C0780C-80C078A8 0079EC 009C+00 1/1 0/0 0/0 .text            soldierDemoSkip__11daObj_GrA_cFv */
int daObj_GrA_c::soldierDemoSkip() {
    setLookMode(1);
    setBaseMotion(0, 0.0f);
    setFaceMotion(13, 0.0f);
    field_0x109c = 0;
    setProcess(&daObj_GrA_c::wait);
    mDemoCamMode = 0;
    field_0x209c = 0;
    return 1;
}

/* 80C078A8-80C07C40 007A88 0398+00 1/0 0/0 0/0 .text            soldierDemo__11daObj_GrA_cFPv */
int daObj_GrA_c::soldierDemo(void* param_1) {
    cXyz sp1c;

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            setLookMode(2);
            mDemoCamMode = 0;
            field_0x209c = 1;
            break;

        case 1:
            switch (mDemoCamMode) {
                case 1:
                    if (field_0xa90 == 17) {
                        setBaseMotion(20, daObj_GrA_Param_c::m.field_0x0c / 2);
                        setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c / 2);
                        setLookMode(0);
                    } else if (mpModelMorf->isStop()) {
                        field_0x109c = 1;
                    } else if (mpModelMorf->checkFrame(14.0f)) {
                        cXyz sp28(0.0f, 0.0f, 20.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(field_0x91a.y);
                        mDoMtx_stack_c::multVec(&sp28, &field_0xab8[2].field_0x4);
                        field_0xab8[2].field_0x10 = field_0x91a;
                        field_0xab8[2].field_0x0 = 1;
                    }
                    break;

                case 3:
                    if (field_0x10a0 != 0) {
                        cXyz sp34(0.0f, 0.0f, 20.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(field_0x91a.y);
                        mDoMtx_stack_c::multVec(&sp34, &field_0xab8[4].field_0x4);
                        field_0xab8[4].field_0x10 = field_0x91a;
                        field_0xab8[4].field_0x0 = 1;

                        mSound.startCreatureSoundLevel(Z2SE_GORON_TREMBLE, 0, -1);

                        field_0x10a0--;
                        if (field_0x10a0 == 0) {
                            setBaseMotion(6, 0.0f);
                            setFaceMotion(3, 0.0f);
                            mpModelMorf->setPlaySpeed(1.0f);
                            field_0x10a0 = 0;
                            field_0x109c = 0;
                            mDemoCamMode = 4;
                        }
                    } else {
                        field_0x10a0 = 90;
                    }
                    break;

                case 4:
                    if (mpModelMorf->isStop() && field_0xa90 != 0) {
                        setLookMode(1);
                        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(13, -1.0f);
                    } else if (mpModelMorf->checkFrame(12.0f)) {
                        field_0xab8[3].field_0x4 = current.pos;
                        field_0xab8[3].field_0x10 = field_0x91a;
                        field_0xab8[3].field_0x0 = 1;
                    }
            }
            break;

        case 2:
            mDemoCamMode = 0;
            field_0x209c = 0;
    }

    return 1;
}

/* 80C07C40-80C07C98 007E20 0058+00 1/1 0/0 0/0 .text            getSrchLinkR__11daObj_GrA_cFv */
f32 daObj_GrA_c::getSrchLinkR() {
    int iVar1 = fopAcM_GetParam(this) & 0x7F;
    if (iVar1 == 0) {
        return daObj_GrA_Param_c::m.field_0x70 * 100.0f;
    }

    return iVar1 * 100;
}

/* 80C07C98-80C07CF0 007E78 0058+00 1/1 0/0 0/0 .text            getSrchGraR__11daObj_GrA_cFv */
f32 daObj_GrA_c::getSrchGraR() {
    if (field_0x200c == 0) {
        return daObj_GrA_Param_c::m.field_0x74 * 100.0f;
    }

    return field_0x200c * 100;
}

/* 80C07CF0-80C07D38 007ED0 0048+00 3/3 0/0 0/0 .text            getSpeed__11daObj_GrA_cFv */
f32 daObj_GrA_c::getSpeed() {
    u32 uVar1 = fopAcM_GetParam(this) >> 14 & 63;
    if (uVar1 == 63) {
        return daObj_GrA_Param_c::m.field_0x84;
    }

    return uVar1;
}

/* 80C07D38-80C083F0 007F18 06B8+00 1/0 0/0 0/0 .text            standRoll__11daObj_GrA_cFPv */
int daObj_GrA_c::standRoll(void* param_1) {
    cXyz sp38;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            setLookMode(1);
            field_0x2014 = 0;
            break;

        case 1:
            if (field_0x2031 == 0 && player != NULL) {
                if (player->current.pos.y > current.pos.y) {
                    fopAcM_delete(this);
                } else {
                    field_0x2031 = 1;
                }
            }

            if (getTagNo() != 0) {
                if (field_0x2032 == 0) {
                    fopAc_ac_c* gra_base_p = (fopAc_ac_c*) fpcM_Search(s_sub, this);
                    if (gra_base_p != NULL) {
                        daTagGra_c* graTag_p = (daTagGra_c*) gra_base_p;
                        mGraPos = graTag_p->getGraPos();
                        mGraExtent = graTag_p->getGraExtent();
                        mGraHeight = graTag_p->getGraHeight();
                        fopAcM_delete(gra_base_p);
                        mGraMode = graTag_p->getMode();
                        field_0x2032 = 1;
                    }
                } else if (mGraMode == 1) {
                    sp38 = player->current.pos - current.pos;
                    sp38.y = 2.0f * sp38.y;
                    if (sp38.abs() < getSrchLinkR() && player->checkPlayerFly() == 0 && !player->checkClimbMove() &&
                        dComIfGp_checkPlayerStatus0(0, 8) == 0) {
                        setProcess(&daObj_GrA_c::rollDemo);
                        dComIfGoat_SetThrow(this);
                    }
                } else {
                    sp38 = player->current.pos - mGraPos;
                    if (sp38.absXZ() < mGraExtent && player->checkPlayerFly() == 0 && sp38.y > -30.0f && sp38.y < mGraHeight &&
                        !player->checkClimbMove() && dComIfGp_checkPlayerStatus0(0, 8) == 0) {
                        setProcess(&daObj_GrA_c::rollDemo);
                        dComIfGoat_SetThrow(this);
                    }
                }
            } else {
                sp38 = player->current.pos - current.pos;
                sp38.y = sp38.y * 2.0f;
                if (sp38.abs() < getSrchLinkR() && player->checkPlayerFly() == 0 && !player->checkClimbMove() &&
                    dComIfGp_checkPlayerStatus0(0, 8) == 0) {
                    setProcess(&daObj_GrA_c::rollDemo);
                    dComIfGoat_SetThrow(this);
                }
            }
            break;

        case 2:
            break;
    }

    return 1;
}

/* 80C083F0-80C08804 0085D0 0414+00 3/0 0/0 0/0 .text            rollDemo__11daObj_GrA_cFPv */
int daObj_GrA_c::rollDemo(void* param_1) {
    switch (field_0xa7c) {
        case 0:
            if (isFirstGra()) {
                mDemoCamMode = 1;
            }

            field_0x209c = 1;
            break;

        case 1:
            if (isFirstGra()) {
                switch (field_0x2000) {
                    case -1:
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &daPy_getPlayerActorClass()->current.pos),
                                            4, daObj_GrA_Param_c::m.field_0x88);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;

                        if (mDemoCamMode >= 5) {
                            field_0x848 = 4;
                            evtcutTalk(-1, 1);
                            field_0x2000 = 0;
                        }
                        break;

                    case 0:
                        if (evtcutTalk(-1, 0) != 0) {
                            setBaseMotion(20, daObj_GrA_Param_c::m.field_0x0c);
                            setFaceMotion(13, -1.0f);
                            setLookMode(0);
                            field_0x2000 = 1;
                        }

                        field_0x2056 = 0;
                        break;

                    case 1:
                        if (mpModelMorf->checkFrame(14.0f)) {
                            cXyz sp30(0.0f, 0.0f, 20.0f);
                            mDoMtx_stack_c::transS(current.pos);
                            mDoMtx_stack_c::YrotM(field_0x91a.y);
                            mDoMtx_stack_c::multVec(&sp30, &field_0xab8[2].field_0x4);
                            field_0xab8[2].field_0x10 = field_0x91a;
                            field_0xab8[2].field_0x0 = 1;

                            setLookMode(0);
                            setBaseMotion(10, daObj_GrA_Param_c::m.field_0x0c);
                            setFaceMotion(13, -1.0f);
                            calcMotion();

                            mpModelMorf->setEndFrame(29.0f);
                            mpModelMorf->setPlaySpeed(0.0f);

                            field_0x2000 = 2;
                        }
                        break;

                    case 2:
                        f32 playSpeed = mpModelMorf->getPlaySpeed();
                        if (playSpeed < 1.0f) {
                            cLib_addCalc2(&playSpeed, 1.0f, 0.25f, 3.5f);
                            mpModelMorf->setPlaySpeed(playSpeed);
                        }

                        if (mDemoCamMode == 0) {
                            setProcess(&daObj_GrA_c::rollAttack);
                        }
                }
            } else if (field_0xa90 != 4) {
                setBaseMotion(4, daObj_GrA_Param_c::m.field_0x0c);
                setFaceMotion(13, -1.0f);
                setLookMode(1);
            } else if (mpModelMorf->checkFrame(14.0f)) {
                cXyz sp3c(0.0f, 0.0f, 20.0f);
                mDoMtx_stack_c::transS(current.pos);
                mDoMtx_stack_c::YrotM(field_0x91a.y);
                mDoMtx_stack_c::multVec(&sp3c, &field_0xab8[2].field_0x4);
                field_0xab8[2].field_0x10 = field_0x91a;
                field_0xab8[2].field_0x0 = 1;

                setLookMode(0);
                setBaseMotion(10, daObj_GrA_Param_c::m.field_0x0c);
                setFaceMotion(13, -1.0f);
                calcMotion();

                mpModelMorf->setEndFrame(29.0f);
                mpModelMorf->setPlaySpeed(0.0f);

                setProcess(&daObj_GrA_c::rollAttack);
            }
            break;

        case 2:
            field_0x2000 = -1;
            field_0x209c = 0;
    }

    demo_camera();
    return 1;
}

/* 80C08804-80C09298 0089E4 0A94+00 4/0 0/0 0/0 .text            rollAttack__11daObj_GrA_cFPv */
int daObj_GrA_c::rollAttack(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp3c;
    f32 fVar1, fVar2;
    bool bVar1;

    switch (field_0xa7c) {
        case 0:
            field_0x1fe9 = 0;
            setLookMode(0);
            field_0x2005 = 0;
            field_0x209c = 1;
            break;

        case 1: {
            if (fallAbyssCheck()) {
                break;
            }

            cXyz sp48 = player->current.pos;
            fVar1 = (sp48 - current.pos).abs();

            if (fVar1 <= 1800.0f) {
                if (field_0x2005 != 2) {
                    dComIfGp_getVibration().StartQuake(2, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0x2005 = 2;
                }
            } else if (fVar1 <= 2000.0f) {
                if (field_0x2005 != 1) {
                    dComIfGp_getVibration().StartQuake(1, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0x2005 = 1;
                }
            } else  {
                if (dComIfGp_getVibration().CheckQuake()) {
                    dComIfGp_getVibration().StopQuake(31);
                }

                field_0x2005 = 0;
            }

            rollLanding();

            bVar1 = false;
            if (field_0x201c < 10 && field_0x1fe9 == 0 && fVar1 < getSrchGraR()) {
                cXyz sp54(current.pos);
                sp54.y += 100.0f;
                field_0x1f4c.Set(&sp54, &player->eyePos, this);
                field_0x1f4c.SetActorPid(base.id);

                s16 sVar1 = cLib_targetAngleX(&sp54, &player->eyePos);
                if (isFirstGra() || !dComIfG_Bgsp().LineCross(&field_0x1f4c)) {
                    if (!player->checkClimbMove() && dComIfGp_checkPlayerStatus0(0, 8) == 0 && sVar1 > -0x2000 && sVar1 < 0x2000) {
                        field_0x150c = 1;
                        bVar1 = true;

                        if (field_0x2014 == 0 && (isFirstGra() || player->checkEquipHeavyBoots())) {
                            player->setGoronSideMove(this);
                            field_0x2014 = 1;
                        }
                    }
                }
            }

            if (isFirstGra()) {
                if (player->current.pos.y < -4500.0f) {
                    setProcess(&daObj_GrA_c::rollAttacked);
                    return 1;
                }
            } else {
                cXyz sp60(current.pos);
                sp60.y += 100.0f;
                field_0x1f4c.Set(&sp60, &player->eyePos, this);
                field_0x1f4c.SetActorPid(base.id);

                if (player->checkPlayerFly() == 0 && (player->current.pos.y - current.pos.y) > 50.0f) {
                    player->offGoronSideMove();
                    field_0x2014 = 1;
                    field_0x1fe9 = 1;
                }
            }

            if (!bVar1) {
                field_0x150c = 0;
                if (field_0x2014 == 0 && (player->current.pos.y - current.pos.y) > 0.0f) {
                    field_0x1fe9 = 1;
                    player->offGoronSideMove();
                    field_0x2014 = 1;
                }
            }

            if (field_0x150c != 0 && field_0x1fe9 == 0) {
                setCarryStatus();
                if (checkThrow()) {
                    return 1;
                }

                if (field_0x1fe9 == 0) {
                    cXyz sp6c(sp48);
                    s16 dbg_0x10 = current.angle.y;
                    cLib_chaseF(&speedF, getSpeed(), daObj_GrA_Param_c::m.field_0xa8);

                    if (field_0x201c < 10) {
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp6c), 
                                            1, daObj_GrA_Param_c::m.field_0x88);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                    }
                }

                BOOL bVar2 = FALSE;
                if (field_0x1528.isPath()) {
                    while (!bVar2) {
                        if (field_0x1528.chkPnt(current.pos) == 0) break;

                        if (field_0x1528.setNextPnt()) {
                            bVar2 = TRUE;
                            field_0x1fe9 = 1;
                            field_0x2014 = 1;
                        }
                    }
                } else {
                    bVar2 = TRUE;
                }
            } else {
                if (field_0x1fe9 == 1 && !dComIfGp_event_runCheck() && mDemoCamMode == 0) {
                    if (dComIfGoat_GetThrow() == this) {
                        dComIfGoat_SetThrow(NULL);
                    }

                    if (field_0x2030 == 1 && field_0x2005 == 0 && fopAcM_otherBgCheck(this, dComIfGp_getPlayer(0))) {
                        fopAcM_delete(this);
                        if (dComIfGp_getVibration().CheckQuake()) {
                            dComIfGp_getVibration().StopQuake(31);
                        }

                        return 1;
                    }
                }

                BOOL o_bool = false;
                if (field_0x1528.isPath()) {
                    while (!o_bool) {
                        if (field_0x1528.chkPnt(current.pos) == 0) break;

                        if (field_0x1528.setNextPnt()) {
                            o_bool = true;
                        }
                    }
                } else {
                    o_bool = true;
                }

                if (!o_bool) {
                    cXyz sp78(field_0x1528.getPntPos(field_0x1528.getIdx() & 0xFFFF));
                    s16 cur_ang = current.angle.y;
                    cLib_chaseF(&speedF, getSpeed(), daObj_GrA_Param_c::m.field_0xa8);

                    if (field_0x201c < 10) {
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp78),
                                            8, field_0x1528.field_0xa14);
                        field_0x1528.field_0xa14 = abs(current.angle.y - cur_ang);

                        cLib_addCalcAngleS2(&field_0x1528.field_0xa14, daObj_GrA_Param_c::m.field_0x88, 8, 0x40);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                    }
                } else if (cM3d_IsZero(speedF)) {
                    speedF = 0.0f;
                    if (mAcch.ChkGroundHit()) {
                        if (modeChangeCheck()) {
                            break;
                        }
                    }
                } else {
                    cLib_addCalc2(&speedF, 0.0f, 0.25f, 3.5f);
                    if (mpModelMorf->isLoop()) {
                        speedF = 0.0f;
                    } else if (speedF < 1.0f) {
                        speedF = 1.0f;
                    }

                    if (mpModelMorf->getFrame() < 2.0f) {
                        speedF = 0.0f;
                        if (mAcch.ChkGroundHit()) {
                            if (modeChangeCheck()) {
                                break;
                            }
                        }
                    }
                }
            }

            fVar2 = speedF * 0.1f;
            if (fVar2 < 0.5f) {
                mpModelMorf->setPlaySpeed(0.5f);
            } else {
                mpModelMorf->setPlaySpeed(fVar2);
            }

            if (field_0x1fe9 == 0 && field_0xf50.ChkCoHit() != 0) {
                fopAc_ac_c* hitobj_p = dCc_GetAc(field_0xf50.GetCoHitObj()->GetAc());
                if (fopAcM_GetName(hitobj_p) == PROC_ALINK) {
                    field_0x1fe9 = 1;
                    player->offGoronSideMove();
                    player->offGoronUpStopCancel();

                    s16 sVar1;
                    if (isFirstGra()) {
                        sVar1 = home.angle.y;
                        if (player->checkEquipHeavyBoots() != 0) {
                            player->setThrowDamage(sVar1, 30.0f, 40.0f, 1, 0, 0);
                        } else {
                            player->setThrowDamage(sVar1, daObj_GrA_Param_c::m.field_0xb8,
                                                    daObj_GrA_Param_c::m.field_0xbc, 2, 0, 0);
                        }

                        setProcess(&daObj_GrA_c::rollAttacked);
                    } else {
                        sVar1 = shape_angle.y;
                        if (player->checkEquipHeavyBoots() != 0) {
                            player->setThrowDamage(sVar1, 30.0f, 40.0f, 1, 0, 0);
                        } else {
                            player->setThrowDamage(sVar1, daObj_GrA_Param_c::m.field_0xb8,
                                                    daObj_GrA_Param_c::m.field_0xbc, 2, 0, 0);
                        }

                        field_0x1fd8 = 60;
                    }
                }
            }

            break;
        }

        case 2:
            dComIfGp_getVibration().StopQuake(31);
            field_0x209c = 1;
            break;
    }

    return 1;
}

/* 80C09298-80C09918 009478 0680+00 4/0 0/0 0/0 .text            rollAttacked__11daObj_GrA_cFPv */
int daObj_GrA_c::rollAttacked(void* param_1) {
    BOOL bVar1;
    s16 sVar1;
    daPy_py_c* player = daPy_getPlayerActorClass();
    attention_info.flags = 0;

    switch (field_0xa7c) {
        case 0:
            speedF = 0.0f;
            field_0x2018 = -1;
            mDemoCamMode = 1;
            field_0x209c = 1;
            break;

        case 1:
            switch (field_0x2018) {
            case -1:
                if (mpModelMorf->checkFrame(0.0f)) {
                    mpModelMorf->setPlaySpeed(0.0f);
                    field_0x2018 = 0;
                }
                // fallthrough
            case 0:
                if (player->checkPlayerFly() == 0) {
                    if (player->current.pos.y < -4500.0f) {
                        field_0x2018 = 1;
                        old.pos = current.pos = mGraPos;
                        current.angle.y = cLib_targetAngleY(&current.pos, &player->current.pos);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                        field_0x1fec = 0;
                        setBaseMotion(0, 0.0f);
                        setFaceMotion(13, 0.0f);
                        setLookMode(1);
                        mpModelMorf->setPlaySpeed(1.0f);
                        player->offGoronSideMove();

                        if (dComIfGoat_GetThrow() == this) {
                            dComIfGoat_SetThrow(NULL);
                        }
                    } else {
                        field_0x1fec = 60;
                        field_0x2018 = 5;
                        field_0x1528.reverseDir();
                        current.angle.y += 0x8000;
                        mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
                        player->setGoronSideMove(this);
                        field_0x2014 = 1;
                        mDemoCamMode = 7;
                    }
                }

                field_0x2056 = 0;
                break;

                case 1:
                    if (cLib_calcTimer(&field_0x1fec) == 0) {
                        if (dComIfGs_getLife() == 0) {
                            setProcess(&daObj_GrA_c::wait);
                            speedF = 0.0f;
                            current.pos = home.pos;
                            old.pos = home.pos;
                            current.angle.y = home.angle.y;
                            shape_angle.y = current.angle.y;
                            field_0x91a.y = current.angle.y;
                            mDemoCamMode = 7;
                        } else {
                            field_0x2018 = 2;
                        }
                    }
                    break;

                case 2:
                    if (mDemoCamMode >= 5) {
                        field_0x848 = 5;
                        evtcutTalk(-1, 1);
                        field_0x2018 = 3;
                    }
                    break;

                case 3:
                    if (evtcutTalk(-1, 0) != 0) {
                        setLookMode(0);
                        field_0x2018 = 4;
                        setBaseMotion(1, 0.0f);
                        setFaceMotion(13, 0.0f);
                    }

                    field_0x2056 = 0;
                    break;

                case 4:
                    if (mDemoCamMode != 0) {
                        cLib_addCalc2(&speedF, daObj_GrA_Param_c::m.field_0x90 / 2, 0.25f, 3.5f);
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &home.pos),
                                            1, daObj_GrA_Param_c::m.field_0x88);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                    } else {
                        setProcess(&daObj_GrA_c::wait);
                        speedF = 0.0f;
                        current.pos = home.pos;
                        old.pos = home.pos;
                        current.angle.y = home.angle.y;
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                    }
                    break;

                case 5:
                    if (cLib_calcTimer(&field_0x1fec) == 0) {
                        current.angle.y += 0x8000;
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                        setProcess(&daObj_GrA_c::rollAttack);
                        field_0x1528.reverseDir();
                        mpModelMorf->setLoopFrame(mpModelMorf->getStartFrame());
                    } else {
                        bVar1 = false;
                        if (field_0x1528.isPath()) {
                            while (!bVar1) {
                                if (field_0x1528.chkPnt(current.pos) == 0) break;

                                if (field_0x1528.setNextPnt()) {
                                    bVar1 = true;
                                }
                            }
                        } else {
                            bVar1 = true;
                        }

                    if (!bVar1) {
                        cXyz sp3c = field_0x1528.getPntPos(field_0x1528.getIdx() & 0xFFFF);
                        sVar1 = current.angle.y;
                        cLib_chaseF(&speedF, getSpeed(), daObj_GrA_Param_c::m.field_0xa8);
                        cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &sp3c), 
                                            8, field_0x1528.field_0xa14);
                        field_0x1528.field_0xa14 = abs(current.angle.y - sVar1);
                        cLib_addCalcAngleS2(&field_0x1528.field_0xa14, daObj_GrA_Param_c::m.field_0x88,
                                            8, 0x40);
                        shape_angle.y = current.angle.y + 0x8000;
                        field_0x91a.y = current.angle.y + 0x8000;
                    } else {
                        cLib_addCalc2(&speedF, 0.0f, 0.25f, 3.5f);
                    }

                    mpModelMorf->setPlaySpeed(-(speedF * 0.1f));
                }
            }
            break;

        case 2:
            field_0x2014 = 0;
            field_0x209c = 0;
    }

    rollAttackedDemo();
    return 1;
}

/* 80C09918-80C09F08 009AF8 05F0+00 2/0 0/0 0/0 .text            rollEscape__11daObj_GrA_cFPv */
int daObj_GrA_c::rollEscape(void* param_1) {
    BOOL bVar1;
    cXyz sp68;
    s16 sVar1;

    switch (field_0xa7c) {
        case 0:
            field_0x2005 = 0;
            mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
            field_0x209c = 1;
            break;

        case 1: {
            cXyz player_pos = daPy_getPlayerActorClass()->current.pos;
            f32 fVar1 = (player_pos - current.pos).absXZ();
            if (fVar1 <= 1800.0f) {
                if (field_0x2005 != 2) {
                    dComIfGp_getVibration().StartQuake(2, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0x2005 = 2;
                }
            } else if (fVar1 <= 2000.0f) {
                if (field_0x2005 != 1) {
                    dComIfGp_getVibration().StartQuake(1, 15, cXyz(0.0f, 1.0f, 0.0f));
                    field_0x2005 = 1;
                }
            } else {
                if (dComIfGp_getVibration().CheckQuake()) {
                    dComIfGp_getVibration().StopQuake(31);
                }

                field_0x2005 = 0;
            }

            rollLanding();
            if (!dComIfGp_event_runCheck() || dComIfGp_getEvent().isOrderOK()) {
                if (dComIfGoat_GetThrow() == this) {
                    dComIfGoat_SetThrow(0);
                    if (isFirstGra()) {
                        mDemoCamMode = 3;
                        graThrowDemo();
                        daNpcF_onEvtBit(0x52);
                    }
                }

                if (field_0x2030 == 1 && field_0x2005 == 0 && 
                    (fopAcM_otherBgCheck(this, dComIfGp_getPlayer(0)) || fopAcM_CheckCondition(this, 4) != 0)) {
                    if (dComIfGp_getVibration().CheckQuake()) {
                        dComIfGp_getVibration().StopQuake(31);
                    }

                    fopAcM_delete(this);
                    return 1;
                }
            }

            bVar1 = FALSE;
            if (field_0x1528.isPath()) {
                while (!bVar1) {
                    if (field_0x1528.chkPnt(current.pos) == 0) break;

                    if (field_0x1528.setNextPnt()) {
                        bVar1 = TRUE;
                    }
                }
            } else {
                bVar1 = TRUE;
            }

            int iVar2;
            if (!bVar1) {
                cXyz vec_0x48 = field_0x1528.getPntPos(field_0x1528.getIdx() & 0xFFFF);
                sVar1 = current.angle.y;
                cLib_chaseF(&speedF, getSpeed(), daObj_GrA_Param_c::m.field_0xa8);
                cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &vec_0x48), 
                                    8, field_0x1528.field_0xa14);
                field_0x1528.field_0xa14 = abs(current.angle.y - sVar1);
                cLib_addCalcAngleS2(&field_0x1528.field_0xa14, daObj_GrA_Param_c::m.field_0x88, 8, 0x40);
                cLib_addCalcAngleS2(&shape_angle.y, current.angle.y + 0x8000, 8, 0x1000);
                field_0x91a.y = shape_angle.y;
            } else if (cM3d_IsZero(speedF)) {
                speedF = 0.0f;
                if (mAcch.ChkGroundHit()) {
                    if (modeChangeCheck()) {
                        break;
                    }
                }
            } else {
                cLib_addCalc2(&speedF, 0.0f, 0.25f, 3.5f);
                if (mpModelMorf->isLoop()) {
                    speedF = 0.0f;
                } else if (speedF < 1.0f) {
                    speedF = 1.0f;
                }

                if (mpModelMorf->getFrame() < 2.0f) {
                    speedF = 0.0f;
                    if (mAcch.ChkGroundHit()) {
                        if (modeChangeCheck()) {
                            break;
                        }
                    }
                }
            }

            f32 var_f30 = speedF * 0.1f;
            if (cM3d_IsZero(speedF)) {
                var_f30 = 0.0f;
            }

            mpModelMorf->setPlaySpeed(-var_f30);
            break;
        }

        case 2:
            dComIfGp_getVibration().StopQuake(31);
            field_0x209c = 0;
    }

    graThrowDemo();
    return 1;
}

/* 80C09F08-80C0A018 00A0E8 0110+00 2/2 0/0 0/0 .text            rollLanding__11daObj_GrA_cFv */
void daObj_GrA_c::rollLanding() {
    if (mAcch.ChkGroundLanding() && field_0x201c >= 10) {
        cXyz sp28(0.0f, 0.0f, 20.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(field_0x91a.y);
        mDoMtx_stack_c::multVec(&sp28, &field_0xab8[5].field_0x4);
        field_0xab8[5].field_0x10 = field_0x91a;
        field_0xab8[5].field_0x0 = 1;

        dComIfGp_getVibration().StartShock(8, 15, cXyz(0.0f, 1.0f, 0.0f));
        mSound.startCreatureSound(Z2SE_GORON_ROLL_BOUND, 0, -1);
    }
}

/* 80C0A018-80C0A120 00A1F8 0108+00 3/0 0/0 0/0 .text            thrown__11daObj_GrA_cFPv */
int daObj_GrA_c::thrown(void* param_1) {
    int rv = 0;

    switch (field_0xa7c) {
        case 0:
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_004000);
            field_0x1ff0 = 1;
            mDemoCamMode = 0;
            field_0x209c = 1;
            break;

        case 1:
            if (field_0x1ff8 != 0) {
                field_0x1ff8--;
            }

            switch (field_0x1ff0) {
                case 1:
                    executeCrazyBeforeCatch();
                    break;

                case 2:
                    executeCrazyCatch();
                    break;

                case 3:
                    executeCrazyThrow();
                    break;

                case 4:
                    executeCrazyJumping();
            }

            rv = 1;
            break;

        case 2:
            field_0x209c = 0;
    }

    graThrowDemo();
    return rv;
}

/* 80C0A120-80C0AF94 00A300 0E74+00 2/1 0/0 0/0 .text            demo_camera__11daObj_GrA_cFv */
void daObj_GrA_c::demo_camera() {
    f32 fVar1;
    int prm_short;
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camBody = dCam_getBody();

    switch (mDemoCamMode) {
        case 0: {
            break;
        }

        case 1: {
            if (!eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 0, 0xFFEF, 0);
                eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            mDemoCamMode = 2;
            field_0x2056 = 0;
            mDemoCamFovy = field_0x208c = camBody->Fovy();
            mDemoCamCenter = field_0x2080 = camBody->Center();
            mDemoCamEye = field_0x2074 = camBody->Eye();
            camera->mCamera.SetTrimSize(2);
        }
        // fallthrough intentional
        case 2: {
            prm_short = daObj_GrA_Param_c::m.field_0xac;
            if (field_0x2056 >= prm_short) {
                mDemoCamMode++;
                field_0x2056 = 0;
            } else {
                cXyz sp40 = current.pos;
                sp40.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp40, 0.1f, (field_0x2080 - sp40).abs() / 25.0f);
                break;
            }
        }
        // fallthrough intentional
        case 3: {
            prm_short = daObj_GrA_Param_c::m.field_0xae;
            if (field_0x2056 >= prm_short) {
                mDemoCamMode++;
                field_0x2056 = 0;
            } else {
                cXyz sp4c = current.pos;
                sp4c.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp4c, 0.1f, (field_0x2080 - sp4c).abs() / 25.0f);
                break;
            }
        }
        // fallthrough intentional
        case 4: {
            prm_short = daObj_GrA_Param_c::m.field_0xb0;
            if (field_0x2056 >= prm_short) {
                mDemoCamMode++;
                field_0x2056 = 0;
            } else {
                mDoMtx_stack_c::YrotS(shape_angle.y);
                cXyz sp58;
                sp58.x = 0.0f;
                sp58.y = 250.0f;
                sp58.z = 500.0f;
                mDoMtx_stack_c::multVec(&sp58, &sp58);
                sp58 += current.pos;
                cLib_addCalcPos2(&mDemoCamEye, sp58, 0.1f, (field_0x2074 - sp58).abs() / 25.0f);

                cXyz sp64 = current.pos;
                sp64.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp64, 0.1f, (field_0x2080 - sp64).abs() / 25.0f);

                mDemoCamFovy += (55.0f - field_0x208c) / prm_short;
                break;
            }
        }
        // fallthrough intentional
        case 5: {
            prm_short = daObj_GrA_Param_c::m.field_0xb2;
            if (field_0x2056 >= prm_short) {
                mDemoCamMode++;
                field_0x2056 = 0;
                csXyz cStack_144 = player->current.angle;
                cStack_144.y = cLib_targetAngleY(&player->current.pos, &current.pos);
                player->setPlayerPosAndAngle(&player->current.pos, &cStack_144);
                field_0x2074 = mDemoCamEye;
                field_0x2080 = mDemoCamCenter;
            } else {
                mDoMtx_stack_c::YrotS(shape_angle.y);
                cXyz sp70;
                sp70.x = 0.0f;
                sp70.y = 250.0f;
                sp70.z = 500.0f;
                mDoMtx_stack_c::multVec(&sp70, &sp70);
                sp70 += current.pos;
                cLib_addCalcPos2(&mDemoCamEye, sp70, 0.1f, (field_0x2074 - sp70).abs() / 25.0f);

                cXyz sp7c = current.pos;
                sp7c.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp7c, 0.1f, (field_0x2080 - sp7c).abs() / 25.0f);
                break;
            }
        }
        // fallthrough intentional
        case 6: {
            prm_short = daObj_GrA_Param_c::m.field_0xb4;
            if (field_0x2056 >= prm_short) {
                camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye);
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                dComIfGp_event_reset();
                mDemoCamMode = 0;
                field_0x2056 = 0;
            } else {
                cXyz sp88 = player->current.pos;
                sp88.y += 150.0f;
                cLib_chasePos(&mDemoCamCenter, sp88, (field_0x2080 - sp88).abs() / prm_short);

                mDoMtx_stack_c::YrotS(player->current.angle.y);
                cXyz sp94;
                sp94.x = 0.0f;
                sp94.y = 210.0f;
                sp94.z = -335.0f;
                mDoMtx_stack_c::multVec(&sp94, &sp94);
                sp94 += player->current.pos;
                cLib_chasePos(&mDemoCamEye, sp94, (field_0x2074 - sp94).abs() / prm_short);
                mDemoCamFovy += 17.0f / prm_short;
            }
        }
    }

    if (!mDemoCamMode) {
        return;
    }

    camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
    field_0x2056++;
}

/* 80C0AF94-80C0B9AC 00B174 0A18+00 2/1 0/0 0/0 .text            rollAttackedDemo__11daObj_GrA_cFv */
void daObj_GrA_c::rollAttackedDemo() {
    f32 fVar1;

    daPy_py_c* player = daPy_getPlayerActorClass();
    int cmp_val;
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camBody = dCam_getBody();

    switch (mDemoCamMode) {
        case 1:
            if (!eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 0, 0xFFEF, 0);
                eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            camera->mCamera.Stop();
            mDemoCamMode = 2;
            field_0x2056 = 0;
            mDemoCamFovy = field_0x208c = camBody->Fovy();
            mDemoCamCenter = field_0x2080 = camBody->Center();

            mDemoCamEye = field_0x2074 = camBody->Eye();
            // fallthrough
        case 2:
            if (!dComIfGp_event_runCheck() && !eventInfo.checkCommandDemoAccrpt()) {
                fopAcM_orderPotentialEvent(this, 0, 0xFFEF, 0);
                eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                return;
            }

            cmp_val = 20;
            if (field_0x2056 >= cmp_val) {
                mDemoCamMode = 4;
                field_0x2056 = 0;
                mDemoCamCenter = field_0x2080 = camBody->Center();
                mDemoCamEye = field_0x2074 = camBody->Eye();

                camera->mCamera.SetTrimSize(2);
            } else {
                mDemoCamCenter += player->current.pos - player->old.pos;
                mDemoCamCenter.y -= 2.0f;
                mDemoCamEye += player->current.pos - player->old.pos;
                break;
            }
            // fallthrough
        case 4: {
            cmp_val = 30;
            if (field_0x2056 >= cmp_val) {
                ++mDemoCamMode;
                field_0x2056 = 0;
            } else {
                mDoMtx_stack_c::YrotS(player->current.angle.y);
                cXyz sp44(0.0f, 150.0f, 250.0f);
                mDoMtx_stack_c::multVec(&sp44, &sp44);
                sp44 += player->current.pos;
                cXyz sp50 = current.pos;
                sp50.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp50, 0.15f, (sp44 - sp50).abs() / 60.0f);
                break;
            }
        }
        // fallthrough
        case 5: {
            cmp_val = daObj_GrA_Param_c::m.field_0xb2;
            if (field_0x2056 >= cmp_val) {
                ++mDemoCamMode;
                field_0x2056 = 0;
                field_0x2074 = mDemoCamEye;
                field_0x2080 = mDemoCamCenter;
                csXyz cStack_118 = player->current.angle;
                cStack_118.y = cLib_targetAngleY(&player->current.pos, &current.pos);
                player->setPlayerPosAndAngle(&player->current.pos, &cStack_118);
            } else {
                mDoMtx_stack_c::YrotS(player->current.angle.y);
                cXyz sp2c(0.0f, 150.0f, 250.0f);
                mDoMtx_stack_c::multVec(&sp2c, &sp2c);
                sp2c += player->current.pos;
                cXyz sp38 = current.pos;
                sp38.y += 150.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp38, 0.1f, (sp2c - sp38).abs() / 60.0f);
                break;
            }
        }

        case 6:
            cmp_val = 60;
            if (field_0x2056 >= cmp_val) {
                mDemoCamMode = 7;
            } else {
                mDoMtx_stack_c::YrotS(player->current.angle.y);
                cXyz sp5c(0.0f, 100.0f, -300.0f);
                mDoMtx_stack_c::multVec(&sp5c, &sp5c);
                sp5c += player->current.pos;
                cLib_addCalcPos2(&mDemoCamEye, sp5c, 0.1f, (field_0x2074 - sp5c).abs() / 30.0f);

                cXyz sp68 = player->current.pos;
                sp68.y += 90.0f;
                cLib_addCalcPos2(&mDemoCamCenter, sp68, 0.1f, (sp68 - field_0x2080).abs() / 30.0f);
                break;
            }
            // fallthrough
        case 7:
            camera->mCamera.Reset(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();
            mDemoCamMode = 0;
            field_0x2056 = 0;
            return;

        default:
            break;
    }

    if (mDemoCamMode != 0) {
        camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
        ++field_0x2056;
    }
    return;
}

/* 80C0B9AC-80C0BD90 00BB8C 03E4+00 2/2 0/0 0/0 .text            graThrowDemo__11daObj_GrA_cFv */
void daObj_GrA_c::graThrowDemo() {
    cXyz sp2c;
    daPy_py_c* player = daPy_getPlayerActorClass();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camBody = dCam_getBody();

    switch (mDemoCamMode) {
        case 0:
            break;

        case 1: {
            if (dComIfGp_event_runCheck() && checkProcess(&daObj_GrA_c::thrown)) {
                camera->mCamera.Stop();
                mDemoCamMode = 2;
                mDemoCamFovy = camBody->Fovy();
                mDemoCamCenter = camBody->Center();
                mDemoCamEye = camBody->Eye();
                mDoMtx_stack_c::YrotS(player->current.angle.y);

                if (field_0x1ffc) {
                    field_0x2090.x = -300.0f;
                } else {
                    field_0x2090.x = 300.0f;
                }
                field_0x2090.y = 500.0f;
                field_0x2090.z = 0.0f;

                mDoMtx_stack_c::multVec(&field_0x2090, &field_0x2090);
                field_0x2090 += current.pos;

                if (fopAcM_lc_c::lineCheck(&mDemoCamEye, &field_0x2090, this)) {
                    if (field_0x1ffc) {
                        field_0x2090.x = 300.0f;
                    } else {
                        field_0x2090.x = -300.0f;
                    }

                    field_0x20a0 = 1;
                } else {
                    if (field_0x1ffc) {
                        field_0x2090.x = -200.0f;
                    } else {
                        field_0x2090.x = 200.0f;
                    }

                    field_0x20a0 = 0;
                }

                mDoMtx_stack_c::YrotS(player->current.angle.y);
                field_0x2090.y = 500.0f;
                field_0x2090.z = 0.0f;
                mDoMtx_stack_c::multVec(&field_0x2090, &field_0x2090);
                field_0x2090 += current.pos;
            } else {
                return;
            }
        }
        // fallthrough
        case 2: {
            sp2c.set(0.0f ,150.0f, -200.0f);
            if (field_0x1ff8 != 0) {
                mDoMtx_stack_c::YrotS((s16) cLib_targetAngleY(&player->current.pos, &current.pos));
                mDoMtx_stack_c::multVec(&sp2c, &sp2c);
                sp2c += player->current.pos;

                if (fopAcM_lc_c::lineCheck(&mDemoCamEye, &sp2c, this)) {
                    field_0x20a0 = 1;
                }
            }

            if (field_0x1ff8 != 0 && field_0x20a0 == 0) {
                cLib_addCalcPos2(&mDemoCamEye, sp2c, 0.2f, 100.0f);
                cLib_addCalcPos2(&mDemoCamCenter, current.pos, 0.2f, 200.0f);
            } else {
                cLib_addCalcPos2(&mDemoCamEye, field_0x2090, 0.1f, 15.0f);
                cLib_addCalcPos2(&mDemoCamCenter, (current.pos + player->current.pos) / 2.0f, 0.1f, 15.0f);
            }
            break;
        }

        case 3: {
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            field_0x1520 = 1;
            mDemoCamMode = 0;
            break;
        }
    }

    if (mDemoCamMode != 0) {
        camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
    }
}

/* 80C0BD90-80C0BE5C 00BF70 00CC+00 1/1 0/0 0/0 .text            setCarryStatus__11daObj_GrA_cFv */
void daObj_GrA_c::setCarryStatus() {
    cXyz sp38;
    mDoMtx_stack_c::YrotS(-shape_angle.y);
    mDoMtx_stack_c::transM(-current.pos.x, -current.pos.y, -current.pos.z);
    mDoMtx_stack_c::multVec(&daPy_getPlayerActorClass()->current.pos, &sp38);
    if (fabsf(sp38.x) < 100.0f && sp38.z > 0.0f && sp38.z < 800.0f) {
        attention_info.flags |= fopAc_AttnFlag_CARRY_e;
    }
}

/* 80C0BE5C-80C0BF34 00C03C 00D8+00 1/1 0/0 0/0 .text            checkThrow__11daObj_GrA_cFv */
bool daObj_GrA_c::checkThrow() {
    if (field_0xa48 != 0) {
        if ((field_0xa48 & 1) != 0) {
            setProcess(&daObj_GrA_c::thrown);
            initCrazyBeforeCatch(0);
            field_0xa48 &= 0xFFFE;
            return true;
        }

        if ((field_0xa48 & 2) != 0) {
            setProcess(&daObj_GrA_c::thrown);
            initCrazyCatch(0);
            field_0xa48 &= ~0x2;
            return true;
        }
    }

    return false;
}

/* 80C0BF34-80C0C348 00C114 0414+00 5/5 0/0 0/0 .text            calcCatchPos__11daObj_GrA_cFfi */
void daObj_GrA_c::calcCatchPos(f32 param_1, int param_2) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 opp_shape_angle = player->shape_angle.y + 0x8000;
    // (void) opp_shape_angle;  // affects dbg if uncommented..
    f32 fVar1 = player->current.pos.y - mGroundY;
    f32 player_dist = current.pos.absXZ(player->current.pos);
    int HandsHeight = cM_atan2s(player_dist, fVar1);
    cXyz sp6c(0.0f, param_1 * (cM_scos(HandsHeight)), param_1 * cM_ssin(HandsHeight));
    cXyz sp78(player->current.pos);
    cXyz sp84, sp90, sp9c, spa8;

    mDoMtx_stack_c::copy(player->getLeftHandMatrix());
    mDoMtx_stack_c::multVecZero(&sp84);
    mDoMtx_stack_c::copy(player->getRightHandMatrix());
    mDoMtx_stack_c::multVecZero(&sp90);

    sp9c = (sp84 + sp90) / 2.0f;

    mDoMtx_stack_c::copy(player->getHeadMtx());
    mDoMtx_stack_c::multVecZero(&spa8);

    spa8.y = sp78.y;
    HandsHeight = cLib_targetAngleY(&sp9c, &spa8);

    if (param_2 != 0) {
        cXyz spb4;
        sp9c.y -= daObj_GrA_Param_c::m.field_0x60 / 2;
        cLib_offsetPos(&spb4, &sp9c, player->shape_angle.y + 0x8000, &sp6c);

        if (param_2 == 1) {
            cLib_chasePos(&current.pos, spb4, 100.0f);
        } else if (param_2 == 2) {
            cLib_chasePos(&current.pos, spb4, 5.0f);
            cLib_addCalcAngleS2(&shape_angle.y, HandsHeight, 8, 0x400);
            field_0x91a.y = shape_angle.y;
        }
    } else {
        #ifdef DEBUG
        dDbVw_Report(100, 100, "pos.y = %f", sp9c.y - player->current.pos.y);
        #endif

        cXyz spc0;
        sp9c.y -= daObj_GrA_Param_c::m.field_0x60 / 2;
        cXyz spcc(0.0f, 0.0f, param_1);
        cLib_offsetPos(&spc0, &sp9c, HandsHeight, &spcc);

        OS_REPORT("angle = %d, HandsHeight = %f\n", sp9c.y, (s16) HandsHeight);

        current.pos = spc0;

        if (field_0x1ffc) {
            current.angle.y = HandsHeight + 0x5000;
        } else {
            current.angle.y = HandsHeight + -0x5000;
        }

        cLib_addCalcAngleS2(&shape_angle.y, HandsHeight, 2, 0x2000);
        field_0x91a.y = shape_angle.y;
    }
}

/* 80C0C348-80C0C364 00C528 001C+00 1/1 0/0 0/0 .text initCrazyBeforeCatch__11daObj_GrA_cFi */
void daObj_GrA_c::initCrazyBeforeCatch(int param_1) {
    field_0x1ff0 = 1;
    speedF = 0.0f;
    gravity = 0.0f;
}

/* 80C0C364-80C0C3E0 00C544 007C+00 1/1 0/0 0/0 .text executeCrazyBeforeCatch__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyBeforeCatch() {
    calcCatchPos(-120.0f, 1);
    if ((field_0xa48 & 2) != 0) {
        initCrazyCatch(0);
        field_0xa48 &= ~2;
    } else if ((field_0xa48 & 4) != 0) {
        initCrazyAttack();
        field_0xa48 &= ~4;
    }
}

/* 80C0C3E0-80C0C478 00C5C0 0098+00 2/2 0/0 0/0 .text            initCrazyCatch__11daObj_GrA_cFi */
void daObj_GrA_c::initCrazyCatch(int param_1) {
    dComIfGp_getVibration().StartQuake(8, 15, cXyz(0.0f, 1.0f, 0.0f));
    field_0x1ff0 = 2;
    speedF = 0.0f;
    field_0x1ff4 = 0;
    calcCatchPos(-120.0f, 1);
    gravity = 0.0f;
}

/* 80C0C478-80C0C5F0 00C658 0178+00 1/1 0/0 0/0 .text            executeCrazyCatch__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyCatch() {
    switch (field_0x1ff4) {
        case 0:
            if (!daPy_getPlayerActorClass()->speedF) {
                field_0x1ff4 = 1;
                calcCatchPos(-110.0f, 2);
                dComIfGp_getVibration().StartQuake(1, 15, cXyz(0.0f, 1.0f, 0.0f));
            } else {
                calcCatchPos(-110.0f, 1);
            }
            break;

        case 1:
            calcCatchPos(-110.0f, 2);
            break;
    }

    f32 fVar1 = mpModelMorf->getPlaySpeed();
    if (fVar1 > 0.2f) {
        mpModelMorf->setPlaySpeed(fVar1 - 0.2f);
    } else {
        mpModelMorf->setPlaySpeed(0.0f);
    }

    if (field_0xa48 != 0) {
        if ((field_0xa48 & 8) != 0) {
            initCrazyThrow(0);
        } else if ((field_0xa48 & 16) != 0) {
            initCrazyThrow(1);
        } else if ((field_0xa48 & 4) != 0) {
            if (!daPy_getPlayerActorClass()->speedF) {
                initCrazyAttack();
            } else {
                initCrazyAttack();
            }
        }

        field_0xa48 = 0;
    }
}

/* 80C0C5F0-80C0C690 00C7D0 00A0+00 1/1 0/0 0/0 .text            initCrazyThrow__11daObj_GrA_cFi */
void daObj_GrA_c::initCrazyThrow(int param_1) {
    field_0x1ffc = param_1 & 0xFF;
    field_0x1ff4 = 0;
    field_0x1ff0 = 3;
    gravity = 0.0f;
    speedF = 0.0f;
    speed.y = 0.0f;

    if (field_0x1fe8 == 0) {
        mDemoCamMode = 1;
    }

    field_0x1ff8 = 34;
    calcCatchPos(-110.0f, 2);
    field_0x2004 = 0;
    gravity = 0.0f;
}

/* 80C0C690-80C0C84C 00C870 01BC+00 1/1 0/0 0/0 .text            executeCrazyThrow__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyThrow() {
    f32 fVar1;
    cXyz spa0;
    dBgS_LinChk dStack_90;

    switch (field_0x1ff4) {
        case 0:
            fVar1 = mpModelMorf->getPlaySpeed();
            // for whatever reason, the original devs forgot to add the f suffix here?!
            if (fVar1 > 0.2) {
                mpModelMorf->setPlaySpeed(fVar1 - 0.2f);
            } else {
                mpModelMorf->setPlaySpeed(0.0f);
            }

            if (field_0x1ff8 == 0) {
                field_0x1ff0 = 4;
                gravity = -0.7f;
                speedF = 25.0f;
                speed.y = 15.0f;
                cLib_addCalcAngleS2(&shape_angle.y, current.angle.y + 0x8000, 4, 0x1000);
                field_0x91a.y = shape_angle.y;
            } else if (field_0x1ff8 <= 10) {
                if (field_0x1ff8 == 10) {
                    if (isFirstGra()) {
                        mSound.startCreatureVoice(Z2SE_GORON_V_THROWN_FIRST, -1);
                    } else {
                        mSound.startCreatureVoice(Z2SE_GORON_V_THROWN, -1);
                    }
                }

                calcCatchPos(-110.0f, 0);
            } else {
                calcCatchPos(-110.0f, 2);
            }
            break;

        case 1:
            executeCrazyJumping();
    }

    if (field_0xa48 != 0) {
        if ((field_0xa48 & 4) != 0) {
            initCrazyAttack();
        }

        field_0xa48 = 0;

        return;
    }
}

/* 80C0C84C-80C0CA64 00CA2C 0218+00 3/3 0/0 0/0 .text            initCrazyAttack__11daObj_GrA_cFv */
void daObj_GrA_c::initCrazyAttack() {
    camera_class* camera;

    if (field_0x1ff0 == 3 && field_0x1ff8 == 0) {
        field_0x1ff0 = 4;
        field_0x1fe9 = 1;

        daPy_getPlayerActorClass()->offGoronSideMove();
        daPy_getPlayerActorClass()->offGoronUpStopCancel();

        if (isFirstGra()) {
            camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
            mDemoCamMode = 0;
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            daNpcF_onEvtBit(0x52);
            gravity = -0.7f;
            speedF = 25.0f;
            speed.y = 15.0f;
            cLib_addCalcAngleS2(&shape_angle.y, current.angle.y + 0x8000, 4, 0x1000);
            field_0x91a.y = shape_angle.y;
        }
    } else {
        daPy_getPlayerActorClass()->offGoronSideMove();

        if (isFirstGra()) {
            if (mDemoCamMode != 0) {
                camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
                camera->mCamera.Start();
                camera->mCamera.SetTrimSize(0);
                mDemoCamMode = 0;
            }

            setProcess(&daObj_GrA_c::rollAttacked);
        } else {
            setProcess(&daObj_GrA_c::rollAttack);
            field_0x1fe9 = 1;
            field_0x1fd8 = 60;
        }

        gravity = -4.0f;
        current.angle.y = cLib_targetAngleY(&current.pos, &daPy_getPlayerActorClass()->current.pos);
    }
}

/* 80C0CA64-80C0CDBC 00CC44 0358+00 2/2 0/0 0/0 .text executeCrazyJumping__11daObj_GrA_cFv */
void daObj_GrA_c::executeCrazyJumping() {
    cLib_addCalcAngleS2(&shape_angle.y, current.angle.y + 0x8000, 4, 0x1000);
    field_0x91a.y = shape_angle.y;

    if (mAcch.ChkGroundLanding()) {
        cXyz sp28(0.0f, 0.0f, 20.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(field_0x91a.y);
        mDoMtx_stack_c::multVec(&sp28, &field_0xab8[2].field_0x4);
        field_0xab8[2].field_0x10 = field_0x91a;
        field_0xab8[2].field_0x0 = 1;

        mSound.startCreatureSound(Z2SE_GORON_ROLL_BOUND, 0, -1);

        if (field_0x2004 != 0) {
            dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
            speed.y = 0.0f;
            setProcess(&daObj_GrA_c::rollEscape);
            field_0x1fe9 = 1;
            daPy_getPlayerActorClass()->offGoronSideMove();
            field_0x2004 = 0;
            gravity = -4.0f;
        } else {
            dComIfGp_getVibration().StartShock(8, 15, cXyz(0.0f, 1.0f, 0.0f));
            speed.y = 15.0f;
            field_0x2004 = 1;
            mpModelMorf->setLoopFrame(mpModelMorf->getEndFrame());
            mpModelMorf->setPlaySpeed(-0.1f);
        }
    } else if (mAcch.ChkWallHit() != 0) {
        cXyz sp34(0.0f, 0.0f, 20.0f);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(field_0x91a.y);
        mDoMtx_stack_c::multVec(&sp34, &field_0xab8[2].field_0x4);
        field_0xab8[2].field_0x10 = field_0x91a;
        field_0xab8[2].field_0x0 = 1;

        mSound.startCreatureSound(Z2SE_GORON_ROLL_BOUND, 0, -1);
        dComIfGp_getVibration().StartShock(5, 15, cXyz(0.0f, 1.0f, 0.0f));
        speed.y = 0.0f;

        setProcess(&daObj_GrA_c::rollEscape);
        field_0x1fe9 = 1;
        daPy_getPlayerActorClass()->offGoronSideMove();
        field_0x2004 = 0;
        gravity = -4.0f;
    }
}

/* 80C0CDBC-80C0CF10 00CF9C 0154+00 2/2 0/0 0/0 .text            modeChangeCheck__11daObj_GrA_cFv */
BOOL daObj_GrA_c::modeChangeCheck() {
    BOOL rv = (field_0x2030 == 0);

    if (rv != FALSE) {
        mMode = 0;
        home.angle.y = cLib_targetAngleY(&current.pos, &home.pos);
        home.pos = current.pos;
        field_0xf50.OffAtSetBit();
        setProcess(&daObj_GrA_c::toStone);
        field_0x109c = 1;
        setBaseMotion(4, daObj_GrA_Param_c::m.field_0x0c / 2);
        setFaceMotion(13, daObj_GrA_Param_c::m.field_0x0c / 2);
        calcMotion();
        mpModelMorf->setFrame(mpModelMorf->getEndFrame());
        mpModelMorf->setPlaySpeed(1.0f);
        return TRUE;
    }

    return FALSE;
}

/* 80C0CF2C-80C0CF98 00D10C 006C+00 1/1 0/0 0/0 .text            s_sub2__FPvPv */
static void* s_sub2(void* i_actor, void* i_data) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)i_data;
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_OBJ_GRA && (u8)i_this->checkGraSub((fopAc_ac_c*)i_actor)) {
        return i_actor;
    }
    return NULL;
}

/* 80C0CF98-80C0D000 00D178 0068+00 1/1 0/0 0/0 .text checkGraSub__11daObj_GrA_cFP10fopAc_ac_c */
BOOL daObj_GrA_c::checkGraSub(fopAc_ac_c* a_this) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)a_this;

    if (i_this->mMode != 0) {
        return FALSE;
    }

    if (getTagNo() == i_this->getTagNo()) {
        return TRUE;
    }

    return FALSE;
}

/* 80C0D000-80C0D2FC 00D1E0 02FC+00 1/0 0/0 0/0 .text            waitDemo__11daObj_GrA_cFPv */
int daObj_GrA_c::waitDemo(void* param_1) {
    cXyz sp34;
    daPy_py_c* player = daPy_getPlayerActorClass();

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            setLookMode(0);
            break;

        case 1:
            if (getTagNo() != 0) {
                bool has_actor = field_0x204c.getActor() == NULL;

                if (field_0x2032 == 0 || has_actor) {
                    if (field_0x2032 == 0) {
                        fopAc_ac_c* actor_p = (fopAc_ac_c*) fpcM_Search(s_sub, this);
                        if (actor_p != NULL) {
                            daTagGra_c* graTag_p = (daTagGra_c*) actor_p;
                            if (graTag_p->getMode() == 2) {
                                mGraPos = graTag_p->getGraPos();
                                mGraExtent = graTag_p->getGraExtent();
                                mGraHeight = graTag_p->getGraHeight();
                                mGraMode = graTag_p->getMode();
                                field_0x2032 = 1;
                                fopAcM_delete(actor_p);
                            }
                        }
                    }

                    if (has_actor) {
                        fopAc_ac_c* o_actor_p = (fopAc_ac_c*)fpcM_Search(s_sub2, this);
                        if (o_actor_p != NULL) {
                            field_0x204c.entry(o_actor_p);
                        }
                    }
                } else {
                    #ifdef DEBUG
                    if (daObj_GrA_Param_c::m.field_0x8a) {
                        fopAcM_OffStatus(this, fopAcM_STATUS_UNK_000100);
                    } else {
                        fopAcM_OnStatus(this, fopAcM_STATUS_UNK_000100);
                    }
                    #endif

                    sp34 = player->current.pos - mGraPos;
                    if (sp34.absXZ() < mGraExtent && sp34.z > -30.0f && sp34.z < mGraHeight) {
                        setProcess(&daObj_GrA_c::startDemo);
                    }
                }
            }
            break;

        case 2:
            #ifdef DEBUG
            fopAcM_OnStatus(this, fopAcM_STATUS_UNK_000100);
            #endif
            break;
    }

    return 1;
}

/* 80C0D2FC-80C0D3A8 00D4DC 00AC+00 1/1 0/0 0/0 .text            skipDemoGra__11daObj_GrA_cFv */
int daObj_GrA_c::skipDemoGra() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daObj_GrA_c* gra_p = (daObj_GrA_c*)field_0x204c.getActor();
    camera->mCamera.Start();
    camera->mCamera.SetTrimSize(0);
    dComIfGp_event_reset();
    gra_p->soldierDemoSkip();
    gra_p->field_0x204c.entry(NULL);
    dComIfGs_onSwitch(field_0xa7f, fopAcM_GetRoomNo(this));
    return 1;
}

/* 80C0D3A8-80C0D3E0 00D588 0038+00 1/1 0/0 0/0 .text            skipCallBack__FPvi */
static int skipCallBack(void* param_1, int param_2) {
    daObj_GrA_c* i_this = (daObj_GrA_c*)param_1;
    i_this->skipDemoGra();
    fopAcM_delete(i_this);
    return 1;
}

/* 80C0D3E0-80C0EFC4 00D5C0 1BE4+00 2/0 0/0 0/0 .text            startDemo__11daObj_GrA_cFPv */
int daObj_GrA_c::startDemo(void* param_1) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    daObj_GrA_c* gra_p = (daObj_GrA_c *)field_0x204c.getActor();
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    dCamera_c* camBody = dCam_getBody();

    switch (field_0xa7c) {
        case 0:
            setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
            setFaceMotion(13, -1.0f);
            setLookMode(0);
            mDemoCamMode = 1;
            field_0x209c = 1;
            break;

        case 1: {
            switch (mDemoCamMode) {
                case 0:
                    break;

                case 1: {
                    if (!eventInfo.checkCommandDemoAccrpt()) {
                        fopAcM_orderPotentialEvent(this, 2, 0xFFEF, 0);
                        eventInfo.onCondition(dEvtCnd_CANDEMO_e);
                        return 1;
                    }

                    camera->mCamera.Stop();
                    mDemoCamMode = 2;
                    field_0x2056 = 0;
                    mDemoCamFovy = field_0x208c =  camBody->Fovy();
                    mDemoCamCenter = mGraPos;
                    mDemoCamCenter.y += 150.0f;
                    mDemoCamEye = mDemoCamCenter;
                    mDemoCamEye.z += 700.0f;
                    mDemoCamCenter.x += 50.0f;
                    field_0x2080 = mDemoCamCenter;
                    field_0x2074 = mDemoCamEye;

                    camera->mCamera.SetTrimSize(2);
                    player->changeOriginalDemo();
                    gra_p->field_0x204c.entry(this);
                    gra_p->setProcess(&daObj_GrA_c::soldierDemo);
                    fopAcM_OnStatus(gra_p, fopAcM_STATUS_UNK_008000);
                    field_0x2056 = 0;
                    dComIfGp_getEvent().setSkipProc(this, skipCallBack, 0);
                    dComIfGp_getEvent().onSkipFade();
                }
                // fallthrough
                case 2: {
                    cXyz player_pos = player->current.pos;
                    if ((player_pos - mGraPos).abs() < 50.0f) {
                        if (field_0x2056 >= 60) {
                            mDemoCamMode = 3;
                            field_0x2056 = 0;
                        } else {
                            csXyz player_angle = player->current.angle;
                            s16 tgt_ang = cLib_targetAngleY(&player->current.pos, &current.pos) + 0x800;
                            cLib_addCalcAngleS2(&player_angle.y, tgt_ang, 2, field_0x1528.field_0xa14);
                            player->setPlayerPosAndAngle(&player->current.pos, &player_angle);
                            field_0x2056++;
                            break;
                        }
                    } else {
                        player->changeDemoMode(3, 0, 0, 0);
                        player->changeDemoPos0(&mGraPos);
                        break;
                    }
                }
                // fallthrough
                case 3: {
                    if (field_0x2056 >= 180) {
                        mDemoCamMode = 4;
                        field_0x2056 = 0;
                        field_0x2080 = mDemoCamCenter;
                        field_0x2074 = mDemoCamEye;
                    } else {
                        csXyz player_angle = player->current.angle;
                        s16 sVar1 = cLib_targetAngleY(&player->current.pos, &current.pos) - 0x2800;
                        cLib_addCalcAngleS2(&player_angle.y, sVar1, 4, field_0x1528.field_0xa14);
                        player->setPlayerPosAndAngle(&player->current.pos, &player_angle);

                        mDoMtx_stack_c::YrotS(sVar1);
                        cXyz sp3c(0.0f, 150.0f, 100.0f);
                        mDoMtx_stack_c::multVec(&sp3c, &sp3c);
                        sp3c += player->current.pos;
                        cLib_addCalcPos2(&mDemoCamEye, sp3c, 0.05f, (field_0x2074 - sp3c).abs() / 40.0f);

                        mDoMtx_stack_c::YrotS(sVar1);
                        cXyz sp48(0.0f, 100.0f, 300.0f);
                        mDoMtx_stack_c::multVec(&sp48, &sp48);
                        sp48 += player->current.pos;
                        cLib_addCalcPos2(&mDemoCamCenter, sp48, 0.05f, (sp48 - field_0x2080).abs() / 25.0f);
                        field_0x2056++;
                        break;
                    }
                }
                // fallthrough
                case 4: {
                    if (field_0x2056 >= 180) {
                        mDemoCamMode = 5;
                        field_0x2056 = 0;
                        field_0x2080 = mDemoCamCenter;
                        field_0x2074 = mDemoCamEye;
                    } else {
                        csXyz player_angle = player->current.angle;
                        s16 sVar1 = cLib_targetAngleY(&player->current.pos, &current.pos) + 0x800;
                        cLib_addCalcAngleS2(&player_angle.y, sVar1, 1, field_0x1528.field_0xa14);
                        player->setPlayerPosAndAngle(&player->current.pos, &player_angle);

                        mDoMtx_stack_c::YrotS(sVar1);
                        cXyz sp54(0.0f, 150.0f, 100.0f);
                        mDoMtx_stack_c::multVec(&sp54, &sp54);
                        sp54 += player->current.pos;
                        cLib_addCalcPos2(&mDemoCamEye, sp54, 0.06f, (field_0x2074 - sp54).abs() / 70.0f);

                        mDoMtx_stack_c::YrotS(sVar1);
                        cXyz sp60(0.0f, 230.0f, 300.0f);
                        mDoMtx_stack_c::multVec(&sp60, &sp60);
                        sp60 += player->current.pos;
                        cLib_addCalcPos2(&mDemoCamCenter, sp60, 0.06f, (sp60 - field_0x2080).abs() / 70.0f);

                        if (field_0x2056 == 150) {
                            setBaseMotion(16, 0.0f);
                            setFaceMotion(11, 0.0f);
                            setLookMode(0);
                            gra_p->setBaseMotion(17, daObj_GrA_Param_c::m.field_0x0c);
                            gra_p->setFaceMotion(12, -1.0f);
                            gra_p->setLookMode(0);

                            current.angle.y += (s16) 0x4000;
                            field_0x91a.y = shape_angle.y = current.angle.y;
                        }

                        field_0x2056++;
                        break;
                    }
                }
                // fallthrough
                case 5: {
                    if (field_0x2056 >= 40) {
                        mDemoCamMode = 6;
                        field_0x2056 = 0;
                    } else {
                        mDoMtx_stack_c::YrotS(cLib_targetAngleY(&player->current.pos, &current.pos));
                        cXyz sp6c(0.0f, 150.0f, 100.0f);
                        mDoMtx_stack_c::multVec(&sp6c, &sp6c);
                        sp6c += player->current.pos;
                        cLib_addCalcPos2(&mDemoCamEye, sp6c, 0.01f, (field_0x2074 - sp6c).abs() / 60.0f);

                        cXyz player_pos = current.pos;
                        player_pos.y += 280.0f;
                        cLib_addCalcPos2(&mDemoCamCenter, player_pos, 0.5f,
                                         (player_pos - field_0x2080).abs() / (200.0f - field_0x2056 * 3));
                        field_0x2056++;
                        break;
                    }
                }
                // fallthrough
                case 6: {
                    if (field_0x2056 >= 90) {
                        mDemoCamMode = 7;
                        field_0x2056 = 0;
                    } else {
                        mDoMtx_stack_c::YrotS(cLib_targetAngleY(&player->current.pos, &current.pos));
                        cXyz sp84(100.0f, -50.0f, -800.0f);
                        mDoMtx_stack_c::multVec(&sp84, &sp84);
                        sp84 += current.pos;
                        cLib_addCalcPos2(&mDemoCamEye, sp84, 0.5f, (field_0x2074 - sp84).abs() / 35.0f);

                        cXyz player_pos = current.pos;
                        player_pos.y += 280.0f;
                        cLib_addCalcPos2(&mDemoCamCenter, player_pos, 0.35f, (player_pos - field_0x2080).abs() / 20.0f);
                        field_0x2056++;
                        break;
                    }
                }
                // fallthrough
                case 7: {
                    if (mpModelMorf->isStop()) {
                        gra_p->setDemoMode(1);
                        setDemoMode(8);
                        field_0x2056 = 0;
                        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(13, -1.0f);
                        setLookMode(2);
                    }
                    break;
                }

                case 8: {
                    if (gra_p->field_0xa90 != 20 || !gra_p->mpModelMorf->isStop()) break;

                    setDemoMode(9);
                    setBaseMotion(1, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(13, -1.0f);
                    field_0x2080 = mDemoCamCenter;
                }
                // fallthrough
                case 9: {
                    cXyz sp9c(0.0f, 0.0f, 80.0f);
                    mDoMtx_stack_c::YrotS(gra_p->current.angle.y);
                    mDoMtx_stack_c::multVec(&sp9c, &sp9c);
                    sp9c += gra_p->current.pos;
                    if (field_0xa90 != 15) {
                        if (mAcchCir.ChkWallHit() && gra_p == dComIfG_Bgsp().GetActorPointer(mAcchCir)) {
                            if (field_0xa90 != 15) {
                                setBaseMotion(15, daObj_GrA_Param_c::m.field_0x0c);
                                setFaceMotion(13, -1.0f);
                                setLookMode(0);
                                current.angle.y = cLib_targetAngleY(&current.pos, &sp9c);
                                shape_angle.y = current.angle.y;
                                field_0x91a.y = current.angle.y;
                                mAcch.SetGrndNone();
                                mAcch.SetWallNone();
                                gravity = 0.0f;
                                speed.setall(0.0f);
                                speedF = 0.0f;
                            }
                        } else {
                            s16 tgt_ang = cLib_targetAngleY(&current.pos, &sp9c);
                            cLib_addCalcAngleS2(&current.angle.y, tgt_ang, 4, daObj_GrA_Param_c::m.field_0x88);
                            shape_angle.y = current.angle.y;
                            field_0x91a.y = current.angle.y;
                            cLib_chasePosXZ(&current.pos, sp9c, daObj_GrA_Param_c::m.field_0x90);
                        }
                    } else {
                        if (!mpModelMorf->isStop()) {
                            mAcch.SetGrndNone();
                            mAcch.SetWallNone();
                            gravity = 0.0f;
                        } else {
                            cXyz spa8(0.0f, 146.09f, 161.97f);
                            mDoMtx_stack_c::YrotS(field_0x91a.y);
                            mDoMtx_stack_c::multVec(&spa8, &spa8);
                            current.pos += spa8;
                            old.pos = current.pos;
                            gravity = 0.0f;
                            setLookMode(0);
                            setDemoMode(10);
                            gra_p->setDemoMode(3);
                            setBaseMotion(18, 0.0f);
                            setFaceMotion(13, 0.0f);
                        }

                        cXyz player_pos = gra_p->current.pos;
                        cLib_addCalcPosXZ2(&mDemoCamCenter, player_pos, 0.1f, (player_pos - field_0x2080).abs() / 30.0f);
                        break;
                    }
                }
                // fallthrough
                case 10: {
                    if (gra_p->getDemoMode() == 4) {
                        setBaseMotion(10, 6.0f);
                        setFaceMotion(13, 6.0f);
                        calcMotion();
                        mpModelMorf->setPlaySpeed(3.0f);
                        setDemoMode(11);
                        mAcch.ClrGrndNone();
                        mAcch.ClrWallNone();
                        gravity = daObj_GrA_Param_c::m.mGravity;
                        speedF = 13.0f;
                        speed.y = 70.0f;
                        field_0x2056 = 0;
                    } else {
                        cLib_addCalcAngleS2(&current.angle.y, gra_p->home.angle.y + 0x8000, 16, daObj_GrA_Param_c::m.field_0x88);
                        shape_angle.y = current.angle.y;
                        field_0x91a.y = current.angle.y;
                        cXyz player_pos = gra_p->current.pos;
                        cLib_addCalcPosXZ2(&mDemoCamCenter, player_pos, 0.1f, (player_pos - field_0x2080).abs() / 30.0f);
                        gravity = 0.0f;
                    }

                    break;
                }

                case 11: {
                    if (field_0x2056 >= 250) {
                        camera->mCamera.Start();
                        camera->mCamera.SetTrimSize(0);
                        dComIfGp_event_reset();
                        fopAcM_OffStatus(gra_p, 0x8000);
                        gra_p->setProcess(&daObj_GrA_c::wait);
                        dComIfGs_onSwitch(field_0xa7f, fopAcM_GetRoomNo(this));
                        fopAcM_delete(this);
                        break;
                    }

                    if (mAcch.ChkGroundLanding()) {
                        cXyz spcc(0.0f, 0.0f, 20.0f);
                        mDoMtx_stack_c::transS(current.pos);
                        mDoMtx_stack_c::YrotM(field_0x91a.y);
                        mDoMtx_stack_c::multVec(&spcc, &field_0xab8[2].field_0x4);
                        field_0xab8[2].field_0x10 = field_0x91a;
                        field_0xab8[2].field_0x0 = 1;

                        mSound.startCreatureSound(Z2SE_GORON_ROLL_BOUND, 0, -1);
                        speedF = 20.0f;
                    } else if (mAcch.ChkGroundHit()) {
                        cXyz spd8(-1482.0f, 3650.0f, -4459.0f);
                        if ((current.pos - spd8).absXZ() > 50.0f) {
                            cLib_addCalcAngleS2(&current.angle.y, cLib_targetAngleY(&current.pos, &spd8), 
                                                24, daObj_GrA_Param_c::m.field_0x88);
                            shape_angle.y = current.angle.y;
                            field_0x91a.y = current.angle.y;
                        } else {
                            speedF = 0.0f;
                        }

                        field_0x2056++;
                    }

                    if (speed.y > 0.0f) {
                        cXyz spe4 = mDemoCamCenter;
                        mDemoCamEye += (current.pos - spe4);
                    }

                    mDemoCamCenter = current.pos;
                }
            }

            break;
        }

        case 2:
            field_0x209c = 0;
            break;

        default:
            break;
    }

    if (mDemoCamMode != 0) {
        camera->mCamera.Set(mDemoCamCenter, mDemoCamEye, mDemoCamFovy, 0);
        field_0x2056++;
    }

    return 1;
}

/* 80C0EFC4-80C0F17C 00F1A4 01B8+00 1/1 0/0 0/0 .text            turn__11daObj_GrA_cFsfi */
BOOL daObj_GrA_c::turn(s16 param_1, f32 param_2, int param_3) {
    int o_prm_1 = param_1;
    if (field_0x1fc8 == 0) {
        field_0x1fd0 = fabsf(cM_sht2d((s16)(current.angle.y - param_1)));
        field_0x1fd0 = field_0x1fd0 / 180.0f * param_2;
        field_0x1fd0 = (int)field_0x1fd0 + 1;

        if (field_0x1fd0 < 8.0f) {
            field_0x1fd0 = 8.0f;
        }

        field_0x1fd4 = current.angle.y;
    }

    s16 sVar1 = field_0x1fd4;
    if (param_3 == 0) {
        param_3 = ((s16) (param_1 - field_0x1fd4) >= 0) ? 1 : -1;
    }

    int var_r30 = (u16) (o_prm_1 - sVar1);
    if (param_3 < 0) {
        var_r30 = -(u16)(0xFFFF - var_r30);
    }

    var_r30 *= cM_ssin(field_0x1fc8);
    field_0x1fc8 = field_0x1fc8 + 16384.0f / field_0x1fd0;
    if ((u16)field_0x1fc8 >= 0x4000) {
        current.angle.y = param_1;
        field_0x1fc8 = 0x4000;
    } else {
        current.angle.y = field_0x1fd4 + var_r30;
    }

    return param_1 == current.angle.y;
}

/* 80C0F17C-80C0F330 00F35C 01B4+00 2/2 0/0 0/0 .text            turn_step__11daObj_GrA_cFsiii */
BOOL daObj_GrA_c::turn_step(s16 param_1, int param_2, int param_3, int param_4) {
    if (field_0x1fcc == 0) {
        if ((int)fabsf(cM_sht2d((s16)(param_1 - field_0x91a.y))) > 20) {
            if (param_2 >= 0 && field_0xa92 != param_2) {
                setFaceMotion(param_2, 3.0f);
            }

            if (param_3 >= 0 && field_0xa90 != param_3) {
                setBaseMotion(param_3, 3.0f);
            }
        }

        field_0x1fd6 = param_1;
        field_0x1fc8 = 0;

        if (field_0x91a.y == field_0x1fd6) {
            field_0x1fcc++;
        }

        current.angle.y = field_0x91a.y;
        shape_angle.y = current.angle.y;
        field_0x1fcc++;
    } else if (field_0x1fcc == 1) {
        if (turn(field_0x1fd6, param_4, 0) != 0) {
            shape_angle.y = current.angle.y;
            field_0x91a.y = current.angle.y;
            field_0x1fcc++;
        } else {
            shape_angle.y = current.angle.y;
            field_0x91a.y = current.angle.y;
        }
    }

    return (field_0x1fcc > 1) ? 1 : 0;
}

/* 80C0F330-80C0F590 00F510 0260+00 1/1 0/0 0/0 .text            chkFindPlayer2__11daObj_GrA_cFis */
BOOL daObj_GrA_c::chkFindPlayer2(int param_1, s16 param_2) {
    cXyz sp80 = getAttentionPos(daPy_getPlayerActorClass());
    s16 angle_diff = fopAcM_searchPlayerAngleY(this) - current.angle.y;

    int dist_tbl_idx;
    if (abs(angle_diff) < 0x3C00) {
        dist_tbl_idx = (param_1 == 0) ? getDistTableIdx(10, 6) : getDistTableIdx(12, 6);
    } else {
        dist_tbl_idx = (param_1 == 0) ? getDistTableIdx(4, 6) : getDistTableIdx(6, 6);
    }

    f32 fVar1 = (param_1 == 0) ? dComIfGp_getAttention()->getDistTable(dist_tbl_idx).mDistMax
                               : dComIfGp_getAttention()->getDistTable(dist_tbl_idx).mDistMaxRelease;
    f32 fVar2 = dComIfGp_getAttention()->getDistTable(dist_tbl_idx).mLowerY * -1.0f;
    f32 fVar3 = dComIfGp_getAttention()->getDistTable(dist_tbl_idx).mUpperY * -1.0f;
    u32 uVar2 = dComIfGp_getAttention()->getDistTable(dist_tbl_idx).mAngleSelect;

    f32 fVar4 = 180.0f;
    if ((uVar2 & 8) != 0) {
        fVar4 = 30.0f;
    } else if ((uVar2 & 16) != 0) {
        fVar4 = 45.0f;
    } else if ((uVar2 & 32) != 0) {
        fVar4 = 60.0f;
    } else if ((uVar2 & 64) != 0) {
        fVar4 = 90.0f;
    } else if ((uVar2 & 128) != 0) {
        fVar4 = 110.0f;
    } else if ((uVar2 & 256) != 0) {
        fVar4 = 135.0f;
    }

    if (chkPointInArea(sp80, attention_info.position, fVar1, fVar2, fVar3, 0)) {
        if (chkActorInSight2(daPy_getPlayerActorClass(), fVar4, param_2)) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 80C0F5A4-80C0F668 00F784 00C4+00 1/1 0/0 0/0 .text            chkPointInArea__11daObj_GrA_cF4cXyz4cXyzfffs */
BOOL daObj_GrA_c::chkPointInArea(cXyz param_1, cXyz param_2, f32 param_3, f32 param_4, f32 param_5, s16 param_6) {
    cXyz sp68, sp74;
    f32 var_f30 = param_4;
    f32 var_f31 = param_5;

    if (var_f30 < var_f31) {
        var_f31 = param_4;
        var_f30 = param_5;
    }

    sp68.set(param_3, fabsf(var_f30 - var_f31) / 2, param_3);
    sp74 = param_2;
    sp74.y += var_f31;
    sp74.y += sp68.y;

    return chkPointInArea(param_1, sp74, sp68, param_6); 
}

/* 80C0F668-80C0F6E0 00F848 0078+00 1/1 0/0 0/0 .text            chkPointInArea__11daObj_GrA_cF4cXyz4cXyz4cXyzs */
BOOL daObj_GrA_c::chkPointInArea(cXyz param_1, cXyz param_2, cXyz param_3, s16 param_4) {
    return daNpcF_chkPointInArea(param_1, param_2, param_3, param_4);
}

/* 80C0F6E0-80C0F7EC 00F8C0 010C+00 1/1 0/0 0/0 .text            chkActorInSight2__11daObj_GrA_cFP10fopAc_ac_cfs */
BOOL daObj_GrA_c::chkActorInSight2(fopAc_ac_c* actor, f32 param_2, s16 param_3) {
    if (param_2 < 180.0f) {
        s16 sVar1 = cM_deg2s(param_2);
        cXyz sp34 = getAttentionPos(actor);
        cSGlobe cStack_48(attention_info.position - sp34);
        cSAngle acStack_4c(cSAngle(cStack_48.U().Inv()) - param_3);
        s16 sVar2 = acStack_4c.Val();
        if (sVar2 < 0) {
            sVar2 = -sVar2;
        }

        return (sVar2 > sVar1) == 0;
    }

    return 1;
}

/* 80C0F7EC-80C0F860 00F9CC 0074+00 2/2 0/0 0/0 .text getAttentionPos__11daObj_GrA_cFP10fopAc_ac_c */
cXyz daObj_GrA_c::getAttentionPos(fopAc_ac_c* i_actor_p) {
    cXyz pos = i_actor_p->attention_info.position;

    if (fopAcM_GetName(i_actor_p) == PROC_ALINK) {
        pos.y -= daPy_py_c::getAttentionOffsetY();
    }

    return pos;
}

/* 80C0F860-80C0FA68 00FA40 0208+00 2/0 0/0 0/0 .text            standWaitJump__11daObj_GrA_cFPv */
int daObj_GrA_c::standWaitJump(void* param_1) {
    switch (field_0xa7c) {
        case 0:
            field_0x1fcc = 0;
            break;

        case 1:
            if (getJumpType() == 1) {
                setLookMode(0);
                if (home.angle.y != field_0x91a.y) {
                    if (turn_step(home.angle.y, 0, 19, 20) != 0) {
                        field_0x1fcc = 0;
                        setBaseMotion(21, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(0, -1.0f);
                    }
                } else if (field_0xa90 != 21) {
                    setBaseMotion(21, daObj_GrA_Param_c::m.field_0x0c);
                    setFaceMotion(0, -1.0f);
                }
            } else {
                BOOL bVar1 = field_0x14f8.getActor() != NULL;
                if (chkFindPlayer2(bVar1, shape_angle.y) != 0) {
                    if (!bVar1) {
                        field_0x14f8.entry(daPy_getPlayerActorClass());
                    }
                } else if (bVar1) {
                    field_0x14f8.entry(NULL);
                }

                if (field_0x14f8.getActor() != NULL) {
                    setLookMode(1);
                } else {
                    setLookMode(0);
                    if ((home.angle.y != field_0x91a.y) && (turn_step(home.angle.y, 0, 19, 20) != 0)) {
                        field_0x1fcc = 0;
                        setBaseMotion(0, daObj_GrA_Param_c::m.field_0x0c);
                        setFaceMotion(0, -1.0f);
                    }
                }
            }
            break;

        case 2:
            break;
    }

    return 1;
}

/* 80C10AE0-80C10B10 000248 0030+00 0/0 0/0 0/0 .bss             aVec$5647 */
#pragma push
#pragma force_active on
static u8 aVec[48];
#pragma pop
