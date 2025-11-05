/**
 * @file d_a_obj_lv6TogeTrap.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv6TogeTrap.h"
#include "d/d_s_play.h"
#include "d/d_path.h"
#include "d/d_cc_uty.h"

class daLv6TogeTrap_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C79E4C */ daLv6TogeTrap_HIO_c();
    /* 80C7C504 */ virtual ~daLv6TogeTrap_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5;
    /* 0x08 */ f32 search_range;
    /* 0x0C */ f32 search_ratio;
    /* 0x10 */ f32 return_ratio;
    /* 0x14 */ u8 return_wait;
    /* 0x15 */ u8 test;
    /* 0x16 */ u8 search_wait;
    /* 0x18 */ f32 search_return_speed;
    /* 0x1C */ f32 search_accel;
    /* 0x20 */ f32 return_accel;
    /* 0x24 */ f32 rotate_speed;
};

/* 80C79E4C-80C79EC8 0000EC 007C+00 1/1 0/0 0/0 .text            __ct__19daLv6TogeTrap_HIO_cFv */
daLv6TogeTrap_HIO_c::daLv6TogeTrap_HIO_c() {
    field_0x4 = 60;
    field_0x5 = 1;

    search_range = 300.0f;
    search_ratio = 1.0f;
    search_wait = 15;
    search_return_speed = 0.25f;
    search_accel = 15.0f;

    return_ratio = 0.3f;
    return_wait = 15;

    rotate_speed = 15.0f;
    test = 0;
    return_accel = 10.0f;
}

/* 80C7CA64-80C7CA8C 000014 0028+00 9/9 0/0 0/0 .bss             l_HIO */
static daLv6TogeTrap_HIO_c l_HIO;

/* 80C7C630-80C7C660 000018 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__15daLv6TogeTrap_c */
const dCcD_SrcGObjInf daLv6TogeTrap_c::mCcDObjInfo = {
    {0, {{0x800, 0x1, 0x1F}, {0xD8FBFDFF, 0x11}, {0x79}}},
    {dCcD_SE_SWORD, 0, 1, 0, 1},
    {dCcD_SE_STONE, 5, 0, 0, 0},
    {0},
};

/* 80C7C660-80C7C690 000048 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo2__15daLv6TogeTrap_c */
const dCcD_SrcGObjInf daLv6TogeTrap_c::mCcDObjInfo2 = {
    {0, {{0x0, 0x0, 0}, {0xDAFBFDFF, 0x11}, {0x0}}},
    {dCcD_SE_SWORD, 0, 0, 0, 0},
    {dCcD_SE_STONE, 1, 0, 0, 2},
    {0},
};

/* 80C7C798-80C7C7D8 000020 0040+00 1/2 0/0 0/0 .data            mCcDSph__15daLv6TogeTrap_c */
dCcD_SrcSph daLv6TogeTrap_c::mCcDSph = {
    daLv6TogeTrap_c::mCcDObjInfo,
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f}  // mSph
    }  // mSphAttr
};

/* 80C7C7D8-80C7C81C 000060 0044+00 1/2 0/0 0/0 .data            mCcDCyl__15daLv6TogeTrap_c */
dCcD_SrcCyl daLv6TogeTrap_c::mCcDCyl = {
    daLv6TogeTrap_c::mCcDObjInfo2,
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,  // mRadius
        0.0f  // mHeight
    }  // mCyl
};

/* 80C7C81C-80C7C828 -00001 000C+00 2/3 0/0 0/0 .data            l_resNameIdx */
static char* l_resNameIdx[3] = {
    "L6TogeTp",
    "L4TogeTp",
    "L9Toge",
};

/* 80C7C690-80C7C6D0 000078 0040+00 0/1 0/0 0/0 .rodata          mSpeed__15daLv6TogeTrap_c */
const f32 daLv6TogeTrap_c::mSpeed[16] = {
    10.0f,
    16.666666f,
    23.333334f,
    25.0f,
    26.666666f,
    28.333334f,
    30.0f,
    31.666666f,
    33.333332f,
    40.0f,
    46.666668f,
    53.333332f,
    60.0f,
    66.666664f,
    83.333336f,
    3.3333333f,
};

/* 80C7C6D0-80C7C6DC 0000B8 000C+00 1/1 0/0 0/0 .rodata          l_bmdIdx */
static const int l_bmdIdx[] = {4, 4, 4};

/* 80C7C6DC-80C7C6E8 0000C4 000C+00 0/0 0/0 0/0 .rodata          l_dzbIdx */
static const int l_dzbIdx[] = {7, 7, 7};

/* 80C79F10-80C79FE8 0001B0 00D8+00 2/2 0/0 0/0 .text            setBaseMtx__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x * (field_0x610 + oREG_F(19)), current.pos.y, current.pos.z * (field_0x610 + oREG_F(19)));
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(mRadius, 0.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotM(0, field_0x600, 0);
    mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.z);

    cXyz scale(1.0f, 1.0f, 1.0f);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C79FE8-80C7A068 000288 0080+00 1/0 0/0 0/0 .text            CreateHeap__15daLv6TogeTrap_cFv */
int daLv6TogeTrap_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_resNameIdx[mModelType], l_bmdIdx[mModelType]);
    JUT_ASSERT(376, modelData != NULL);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80C7A068-80C7A534 000308 04CC+00 1/1 0/0 0/0 .text            create__15daLv6TogeTrap_cFv */
int daLv6TogeTrap_c::create() {
    fopAcM_ct(this, daLv6TogeTrap_c);

    mModelType = getModelType();
    if (mModelType == 0xF) {
        mModelType = 0;
    }

    int phase_state = dComIfG_resLoad(&mPhase, l_resNameIdx[mModelType]);
    if (phase_state == cPhs_COMPLEATE_e) {
        static const u16 estimateSizeTbl[] = {
            0x810,
            0x2A00,
            0x1540,
        };

        u32 heap_size = estimateSizeTbl[mModelType];
        OS_REPORT("l6TogeT: %u 0x%04x %s\n", mModelType, heap_size, l_resNameIdx[mModelType]);

        if (MoveBGCreate(l_resNameIdx[mModelType], -1, NULL, 0x2A00, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        mType = getType();
        if (mType == 0) {
            mType = 1;
        }

        mMoveSpeed = mSpeed[getSpeed()];
        fopAcM_SetSpeedF(this, 0.0f);
        field_0x5f9 = 3;
        field_0x610 = 1.0f;

        dPath* path;
        if (mType == 3 || mType == 4) {
            mRadius = 100.0f * getHankei();

            u8 sp8 = getHankei2();
            if (sp8 != 0xFF) {
                mRadius += 100.0f * sp8;
            }

            mRotateDirection = 1;

            if (mType == 4) {
                mRotateDirection = -1;
            }
        } else {
            mPathNo = fopAcM_GetParam(this);
            
            path = dPath_GetRoomPath(mPathNo, fopAcM_GetRoomNo(this));
            if (path == NULL) {
                OS_REPORT("[Lv6トゲトラップ]%d番のパスが見つかりませんでした\n", mPathNo);
                return cPhs_INIT_e;
            }

            dPnt* pnt = path->m_points;
            current.pos = pnt->m_position;

            mIsPathClosed = dPath_ChkClose(path);
            mRadius = 0.0f;
            mRotateDirection = -1;
            field_0x5ae = 0;

            if (mType == 5) {
                mRotateDirection = 1;
                field_0x610 = 1.05f;
                field_0x5ae = getHankei2();

                dPnt* pnt = &path->m_points[field_0x5ae];
                current.pos = pnt->m_position;
            }
        }

        if (mType == 1 || mType == 5) {
            init_modeWaitInit();
        } else if (mType == 2) {
            dPnt* start_pnt = &path->m_points[0];
            dPnt* end_pnt = &path->m_points[1];

            cXyz start_pos;
            cXyz end_pos;
            start_pos = start_pnt->m_position;
            end_pos = end_pnt->m_position;
            mLine.SetStartEnd(start_pos, end_pos);
            field_0x5b0 = start_pnt->m_position;

            init_modeWaitType2();
        } else if (mType == 3 || mType == 4) {
            init_modeRotate();
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        field_0x600 = 0;
        field_0x60b = 0;
        setBaseMtx();

        mCcStts.Init(100, 1, this);
        mCcSph.Set(mCcDSph);
        mCcSph.SetStts(&mCcStts);
        mCcCyl.Set(mCcDCyl);
        mCcCyl.SetStts(&mCcStts);

        health = 1;
        mSound.init(&current.pos, 1);
        field_0x8d0 = 0;

        #if DEBUG
        l_HIO.entryHIO("Lv6トゲトラップ");
        #endif
    }

    return phase_state;
}

/* 80C7A6B0-80C7A700 000950 0050+00 1/1 0/0 0/0 .text searchSekizoAct__15daLv6TogeTrap_cFPvPv */
void* daLv6TogeTrap_c::searchSekizoAct(void* i_actor, void* i_data) {
    if (i_actor != NULL && fopAcM_IsActor(i_actor) && fopAcM_GetProfName(i_actor) == PROC_CSTATUE) {
        return i_actor;
    }

    return NULL;
}

/* 80C7A700-80C7A97C 0009A0 027C+00 1/0 0/0 0/0 .text Execute__15daLv6TogeTrap_cFPPA3_A4_f */
int daLv6TogeTrap_c::Execute(Mtx** param_0) {
    moveLift();

    if (mCcSph.ChkTgHit()) {
        cCcD_Obj* tg_hitobj = mCcSph.GetTgHitObj();
        if (tg_hitobj != NULL) {
            fopAc_ac_c* hitactor = dCc_GetAc(tg_hitobj->GetAc());
            u8 var_r26 = TRUE;

            if (hitactor != NULL) {
                if (fopAcM_GetName(hitactor) == PROC_ALINK && (mCcSph.GetTgHitGObj()->GetAtType() & AT_TYPE_NORMAL_SWORD) && field_0x8d0 != 0) {
                    var_r26 = FALSE;
                }

                if (var_r26) {
                    mSound.startCollisionSE(mCcSph.GetTgHitObjHitSeID(1), 9, NULL);
                    field_0x8d0 = 1;
                }
            }
        }
    } else {
        field_0x8d0 = 0;
    }

    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
    cXyz sp38(mRadius, 0.0f, 0.0f);
    cXyz sp2C;
    mDoMtx_stack_c::multVec(&sp38, &sp2C);

    mCcSph.SetR((75.0f + oREG_F(0)) * scale.x);
    cXyz sp20(current.pos);
    sp20.x *= field_0x610 + oREG_F(19);
    sp20.z *= field_0x610 + oREG_F(19);
    cXyz sp14 = sp20 + sp2C;
    sp14.y += 50.0f;
    mCcSph.SetC(sp14);
    dComIfG_Ccsp()->Set(&mCcSph);

    mCcCyl.SetR((30.0f + oREG_F(1)) * scale.x);
    mCcCyl.SetC(sp20 + sp2C);
    mCcCyl.SetH((100.0f + oREG_F(2)) * scale.y);
    dComIfG_Ccsp()->Set(&mCcCyl);

    mCcStts.Move();

    field_0x600 += cM_deg2s(l_HIO.rotate_speed);
    *param_0 = &mpModel->getBaseTRMtx();
    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setBaseMtx();
    return 1;
}

/* 80C7A97C-80C7ABC8 000C1C 024C+00 1/1 0/0 0/0 .text            moveLift__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::moveLift() {
    if (mPathNo != 0xFF) {
        static void (daLv6TogeTrap_c::*mode_proc[])() = {
            &daLv6TogeTrap_c::modeAcc,
            &daLv6TogeTrap_c::modeMove,
            &daLv6TogeTrap_c::modeMove2,
            &daLv6TogeTrap_c::modeBrk,
            &daLv6TogeTrap_c::modeWait,
            &daLv6TogeTrap_c::modeWaitInit,
            &daLv6TogeTrap_c::modeBound,
            &daLv6TogeTrap_c::modeBoundWait,
            &daLv6TogeTrap_c::modeWaitType2,
            &daLv6TogeTrap_c::modeMoveInitType2,
            &daLv6TogeTrap_c::modeAccType2,
            &daLv6TogeTrap_c::modeWaitAttackType2,
            &daLv6TogeTrap_c::modeBreak,
            &daLv6TogeTrap_c::modeRotate,
        };

        switch (mType) {
        case 1:
            executeType1();
            break;
        case 2:
            executeType2();
            break;
        case 3:
            break;
        }

        (this->*mode_proc[mMode])();

        if (mCcCyl.ChkTgHit() && (mCcCyl.GetTgHitGObj()->GetAtType() & (AT_TYPE_2000000 | AT_TYPE_CSTATUE_SWING))) {
            init_modeBreak();
        }

        if (health == 0) {
            init_modeBreak();
        }
    }
}

/* 80C7ABC8-80C7ACA0 000E68 00D8+00 1/1 0/0 0/0 .text            executeType1__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::executeType1() {
    if (field_0x60b == 0 && mCcSph.ChkCoHit()) {
        fopAc_ac_c* co_hitactor = mCcSph.GetCoHitAc();
        if (co_hitactor != NULL && fopAcM_GetProfName(co_hitactor) == PROC_CSTATUE) {
            cXyz sp14 = current.pos - co_hitactor->current.pos;
            cXyz sp8 = current.pos - field_0x5b0;

            if (sp14.getDotProduct(sp8) >= 0.0f) {
                init_modeBound();
            }
        }
    }
}

/* 80C7ACA0-80C7AD40 000F40 00A0+00 1/1 0/0 0/0 .text            init_modeBound__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeBound() {
    field_0x60b = 1;
    fopAcM_SetSpeedF(this, 0.0f);
    mRotateDirection *= -1;
    setNextPoint();
    field_0x5bc = field_0x5b0;

    cXyz sp8;
    cM3d_InDivPos2(&current.pos, &field_0x5b0, l_HIO.return_ratio, &sp8);
    field_0x5b0 = sp8;

    mMode = 6;
}

/* 80C7AD40-80C7ADA4 000FE0 0064+00 1/0 0/0 0/0 .text            modeBound__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeBound() {
    if (0.0f == cLib_addCalcPos(&current.pos, field_0x5b0, 1.0f, mMoveSpeed, 5.0f)) {
        init_modeBoundWait();
    }
}

/* 80C7ADA4-80C7ADC0 001044 001C+00 1/1 0/0 0/0 .text init_modeBoundWait__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeBoundWait() {
    field_0x60a = l_HIO.return_wait;
    mMode = 7;
}

/* 80C7ADC0-80C7AE18 001060 0058+00 1/0 0/0 0/0 .text            modeBoundWait__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::modeBoundWait() {
    if (field_0x60a != 0) {
        field_0x60a--;
    } else {
        field_0x60b = 0;
        field_0x5b0 = field_0x5bc;
        init_modeWait();
    }
}

/* 80C7AE18-80C7AE24 0010B8 000C+00 1/1 0/0 0/0 .text            init_modeAcc__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeAcc() {
    mMode = 0;
}

/* 80C7AE24-80C7AF10 0010C4 00EC+00 1/0 0/0 0/0 .text            modeAcc__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeAcc() {
    BOOL temp_r30 = cLib_chaseF(&speedF, mMoveSpeed, mMoveSpeed / l_HIO.return_accel);
    cLib_addCalcPos(&current.pos, field_0x5b0, 1.0f, fopAcM_GetSpeedF(this), 0.1f);

    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (temp_r30 == TRUE || current.pos == field_0x5b0) {
        init_modeMove();
    }
}

/* 80C7AF10-80C7AF1C 0011B0 000C+00 1/1 0/0 0/0 .text            init_modeMove__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeMove() {
    mMode = 1;
}

/* 80C7AF1C-80C7B234 0011BC 0318+00 1/0 0/0 0/0 .text            modeMove__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeMove() {
    f32 temp_f30 = 30.0f;
    f32 temp_f29 = 300.0f;

    cXyz sp2C(field_0x5c8);
    cXyz sp20(field_0x5b0);
    f32 var_f31 = 0.3f * (sp2C - sp20).abs();
    if (var_f31 < temp_f30) {
        var_f31 = temp_f30;
    }
    if (var_f31 > temp_f29) {
        var_f31 = temp_f29;
    }

    cLib_addCalcPos(&current.pos, field_0x5b0, 1.0f, fopAcM_GetSpeedF(this), 0.1f);
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    BOOL temp_r29 = var_f31 > (current.pos - field_0x5b0).abs();
    if (temp_r29) {
        init_modeBrk();
    }
}

/* 80C7B234-80C7B240 0014D4 000C+00 1/1 0/0 0/0 .text            init_modeBrk__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeBrk() {
    mMode = 3;
}

/* 80C7B240-80C7B43C 0014E0 01FC+00 1/0 0/0 0/0 .text            modeBrk__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeBrk() {
    cXyz sp14(current.pos);
    f32 temp_f31 = cLib_addCalcPos(&current.pos, field_0x5b0, 0.1f, fopAcM_GetSpeedF(this), 0.5f);
    f32 temp_f30 = (sp14 - current.pos).abs();
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, temp_f30, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (0.0f == temp_f31) {
        init_modeWaitInit();
    }
}

/* 80C7B43C-80C7B448 0016DC 000C+00 1/1 0/0 0/0 .text            init_modeMove2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeMove2() {
    mMode = 2;
}

/* 80C7B448-80C7B518 0016E8 00D0+00 1/0 0/0 0/0 .text            modeMove2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeMove2() {
    f32 temp_f31 = cLib_addCalcPos(&current.pos, field_0x5b0, 1.0f, mMoveSpeed, mMoveSpeed);
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, mMoveSpeed, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (temp_f31 == 0.0f) {
        init_modeWaitInit();
    }
}

/* 80C7B518-80C7B530 0017B8 0018+00 3/3 0/0 0/0 .text init_modeWaitInit__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeWaitInit() {
    fopAcM_SetSpeedF(this, 0.0f);
    mMode = 5;
}

/* 80C7B530-80C7B600 0017D0 00D0+00 1/0 0/0 0/0 .text            modeWaitInit__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::modeWaitInit() {
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    setNextPoint();

    if (mType == 5) {
        if (field_0x5ae == -1) {
            fopAcM_delete(this);
        } else {
            init_modeWait();
        }
    } else {
        init_modeWait();
    }
}

/* 80C7B600-80C7B60C 0018A0 000C+00 2/2 0/0 0/0 .text            init_modeWait__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeWait() {
    mMode = 4;
}

/* 80C7B60C-80C7B6D4 0018AC 00C8+00 1/0 0/0 0/0 .text            modeWait__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeWait() {
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (mType == 5) {
        init_modeMove2();
    } else if (mIsPathClosed) {
        init_modeMove2();
    } else {
        init_modeAcc();
    }
}

/* 80C7B6D4-80C7B988 001974 02B4+00 1/1 0/0 0/0 .text            executeType2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::executeType2() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz sp40;
    cXyz sp34;

    if (mCcSph.ChkCoHit()) {
        fopAc_ac_c* co_hitactor = mCcSph.GetCoHitAc();
        if (co_hitactor != NULL && fopAcM_GetProfName(co_hitactor) == PROC_CSTATUE) {
            cXyz sp28 = current.pos - co_hitactor->current.pos;
            cXyz sp1C = current.pos - field_0x5b0;

            if (sp28.getDotProduct(sp1C) >= 0.0f) {
                dPath* path = dPath_GetRoomPath(mPathNo, fopAcM_GetRoomNo(this));
                dPnt* pnt = path->m_points;

                mRotateDirection = -1;
                field_0x5c8 = field_0x5b0;
                field_0x5b0 = pnt->m_position;
                field_0x5ae = 0;
                init_modeWaitAttackType2();
            }
        }
    }

    fopAc_ac_c* cstatue = fopAcM_Search(searchSekizoAct, this);
    field_0x609 = 0;

    f32 spC, sp8;
    sp8 = 10000.0f;
    if (cstatue != 0) {
        field_0x609 = cM3d_Len3dSqPntAndSegLine(&mLine, &cstatue->current.pos, &sp34, &sp8);
    }

    field_0x608 = cM3d_Len3dSqPntAndSegLine(&mLine, &player->current.pos, &sp40, &spC);

    if (field_0x609 == 1 && field_0x608 == 1) {
        if (spC > sp8) {
            spC = sp8;
            sp40 = sp34;
        }
    } else if (field_0x609 == 1 && field_0x608 == 0) {
        spC = sp8;
        sp40 = sp34;
    }

    f32 temp_f30 = JMAFastSqrt(spC);
    if (field_0x609 == 1 || field_0x608 == 1) {
        if (temp_f30 <= l_HIO.search_range && field_0x5db == 0) {
            mRotateDirection = 1;
            field_0x5c8 = field_0x5b0;

            cXyz sp10;
            field_0x5b0 = sp40;
            field_0x5ae = 1;
            field_0x5db = 1;
            field_0x604 = mMoveSpeed;
            init_modeWaitAttackType2();
        }
    }
}

/* 80C7B988-80C7B9A8 001C28 0020+00 2/2 0/0 0/0 .text init_modeWaitType2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeWaitType2() {
    fopAcM_SetSpeedF(this, 0.0f);
    field_0x5db = 0;
    mMode = 8;
}

/* 80C7B9A8-80C7BA38 001C48 0090+00 1/0 0/0 0/0 .text            modeWaitType2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::modeWaitType2() {
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80C7BA38-80C7BA50 001CD8 0018+00 1/1 0/0 0/0 .text init_modeMoveInitType2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeMoveInitType2() {
    fopAcM_SetSpeedF(this, 0.0f);
    mMode = 9;
}

/* 80C7BA50-80C7BAE8 001CF0 0098+00 1/0 0/0 0/0 .text modeMoveInitType2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeMoveInitType2() {
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    init_modeAccType2();
}

/* 80C7BAE8-80C7BAF4 001D88 000C+00 1/1 0/0 0/0 .text init_modeAccType2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeAccType2() {
    mMode = 10;
}

/* 80C7BAF4-80C7BC54 001D94 0160+00 1/0 0/0 0/0 .text            modeAccType2__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::modeAccType2() {
    cLib_chaseF(&speedF, field_0x604, field_0x604 / l_HIO.search_accel);
    f32 temp_f31 = cLib_addCalcPos(&current.pos, field_0x5b0, 1.0f, fopAcM_GetSpeedF(this), 0.1f);
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (0.0f == temp_f31) {
        dPath* path = dPath_GetRoomPath(mPathNo, fopAcM_GetRoomNo(this));
        dPnt* pnt = path->m_points;

        if (current.pos == pnt->m_position) {
            init_modeWaitType2();
        } else {
            mRotateDirection = -1;
            field_0x5c8 = field_0x5b0;
            field_0x5b0 = pnt->m_position;
            field_0x5ae = 0;
            init_modeWaitAttackType2();
        }
    }
}

/* 80C7BC54-80C7BC7C 001EF4 0028+00 2/2 0/0 0/0 .text
 * init_modeWaitAttackType2__15daLv6TogeTrap_cFv                */
void daLv6TogeTrap_c::init_modeWaitAttackType2() {
    fopAcM_SetSpeedF(this, 0.0f);
    field_0x60a = l_HIO.search_wait;
    mMode = 11;
}

/* 80C7BC7C-80C7BD64 001F1C 00E8+00 1/0 0/0 0/0 .text modeWaitAttackType2__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeWaitAttackType2() {
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &current.pos, fopAcM_GetSpeedF(this), dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (field_0x608 == 0 && field_0x609 == 0) {
        field_0x60a = 0;
    }

    if (field_0x60a != 0) {
        field_0x60a--;
    } else {
        field_0x604 = mMoveSpeed * l_HIO.search_return_speed;
        init_modeMoveInitType2();
    }
}

/* 80C7BD64-80C7BD70 002004 000C+00 1/1 0/0 0/0 .text init_modeRotate__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::init_modeRotate() {
    mMode = 13;
}

/* 80C7BD70-80C7BED8 002010 0168+00 1/0 0/0 0/0 .text            modeRotate__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeRotate() {
    if (mCcSph.ChkCoHit()) {
        fopAc_ac_c* co_hitactor = mCcSph.GetCoHitAc();
        if (co_hitactor != NULL && fopAcM_GetProfName(co_hitactor) == PROC_CSTATUE) {
            mRotateDirection *= -1;
        }
    }

    f32 var_f31 = 360.0f * (mMoveSpeed / (M_PI * (2.0f * mRadius)));
    shape_angle.y += mRotateDirection * cM_deg2s(var_f31);

    mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
    field_0x8c4.set(mRadius, 0.0f, 0.0f);
    mDoMtx_stack_c::multVec(&field_0x8c4, &field_0x8c4);
    field_0x8c4 += current.pos;
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_SPIN, &field_0x8c4, mMoveSpeed, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80C7BED8-80C7BFE4 002178 010C+00 1/1 0/0 0/0 .text            init_modeBreak__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::init_modeBreak() {
    cXyz sound_pos;
    if (mType == 3 || mType == 4) {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
        sound_pos.set(mRadius, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&sound_pos, &sound_pos);
        sound_pos += current.pos;
    } else {
        sound_pos = current.pos;
    }

    mDoAud_seStart(Z2SE_OBJ_TRAP_BREAK, &sound_pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = 12;
}

/* 80C7BFE4-80C7C1D8 002284 01F4+00 1/0 0/0 0/0 .text            modeBreak__15daLv6TogeTrap_cFv */
void daLv6TogeTrap_c::modeBreak() {
    cXyz effpos;
    if (mType == 3 || mType == 4) {
        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
        effpos.set(mRadius, 0.0f, 0.0f);
        mDoMtx_stack_c::multVec(&effpos, &effpos);
        effpos += current.pos;
    } else {
        effpos = current.pos;
    }

    dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV6TOGE_HAKAI_A), &effpos, NULL, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV6TOGE_HAKAI_B), &effpos, NULL, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV6TOGE_HAKAI_C), &effpos, NULL, NULL);
    dComIfGp_particle_set(dPa_RM(ID_ZI_S_LV6TOGE_HAKAI_D), &effpos, NULL, NULL);
    fopAcM_delete(this);
}

/* 80C7C1D8-80C7C33C 002478 0164+00 2/2 0/0 0/0 .text            setNextPoint__15daLv6TogeTrap_cFv
 */
void daLv6TogeTrap_c::setNextPoint() {
    s16 step = field_0x5ae + mRotateDirection;
    dPath* path = dPath_GetRoomPath(mPathNo, fopAcM_GetRoomNo(this));

    if (mIsPathClosed) {
        if (step > path->m_num - 1) {
            step = 0;
            mRotateDirection = 1;
        } else if (step < 0) {
            step = (s8)(path->m_num - 1);
            mRotateDirection = -1;
        }
    } else if (step > path->m_num - 1) {
        mRotateDirection = -1;
        if (mType == 5) {
            step = -1;
        } else {
            step = (s8)(path->m_num - 2);
        }
    } else if (step < 0) {
        if (mType == 1) {
            mRotateDirection = 1;
            step = 1;
        } else {
            mRotateDirection = 0;
            step = 0;
        }
    }

    if (step != -1) {
        field_0x5c8 = field_0x5b0;
        dPnt* pnt = &path->m_points[step];
        field_0x5b0 = pnt->m_position;
        field_0x5ae = step;
    } else {
        field_0x5ae = -1;
    }
}

/* 80C7C33C-80C7C3E0 0025DC 00A4+00 1/0 0/0 0/0 .text            Draw__15daLv6TogeTrap_cFv */
int daLv6TogeTrap_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C7C3E0-80C7C430 002680 0050+00 1/0 0/0 0/0 .text            Delete__15daLv6TogeTrap_cFv */
int daLv6TogeTrap_c::Delete() {
    mSound.deleteObject();
    dComIfG_resDelete(&mPhase, l_resNameIdx[mModelType]);

    #if DEBUG
    l_HIO.removeHIO();
    #endif
    return 1;
}

/* 80C7C430-80C7C45C 0026D0 002C+00 1/0 0/0 0/0 .text daLv6TogeTrap_Draw__FP15daLv6TogeTrap_c */
static int daLv6TogeTrap_Draw(daLv6TogeTrap_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80C7C45C-80C7C47C 0026FC 0020+00 1/0 0/0 0/0 .text daLv6TogeTrap_Execute__FP15daLv6TogeTrap_c
 */
static int daLv6TogeTrap_Execute(daLv6TogeTrap_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C7C47C-80C7C49C 00271C 0020+00 1/0 0/0 0/0 .text daLv6TogeTrap_Delete__FP15daLv6TogeTrap_c */
static int daLv6TogeTrap_Delete(daLv6TogeTrap_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C7C49C-80C7C4BC 00273C 0020+00 1/0 0/0 0/0 .text daLv6TogeTrap_Create__FP10fopAc_ac_c */
static int daLv6TogeTrap_Create(fopAc_ac_c* i_this) {
    return ((daLv6TogeTrap_c*)i_this)->create();
}

/* 80C7C978-80C7C998 -00001 0020+00 1/0 0/0 0/0 .data            l_daLv6TogeTrap_Method */
static actor_method_class l_daLv6TogeTrap_Method = {
    (process_method_func)daLv6TogeTrap_Create,
    (process_method_func)daLv6TogeTrap_Delete,
    (process_method_func)daLv6TogeTrap_Execute,
    NULL,
    (process_method_func)daLv6TogeTrap_Draw,
};

/* 80C7C998-80C7C9C8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6TogeTrap */
extern actor_process_profile_definition g_profile_Obj_Lv6TogeTrap = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_Lv6TogeTrap,    // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daLv6TogeTrap_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  622,                     // mPriority
  &l_daLv6TogeTrap_Method, // sub_method
  0x00040000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
