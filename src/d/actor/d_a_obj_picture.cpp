/**
 * @file d_a_obj_picture.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_picture.h"

/* 80CAD2F8-80CAD318 000078 0020+00 1/1 0/0 0/0 .text daObjPicture_c_createHeap__FP10fopAc_ac_c */
static int daObjPicture_c_createHeap(fopAc_ac_c* i_this) {
    return ((daObjPicture_c*)i_this)->createHeap();
}

/* 80CAF0E8-80CAF0EC -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "L9Picture";

/* 80CAF0EC-80CAF104 000004 0018+00 1/1 0/0 0/0 .data            l_LINE_OFFSET_POS */
static Vec l_LINE_OFFSET_POS[] = {
    {-100.0f, 200.0f, -2.0f},
    {100.0f, 200.0f, -2.0f},
};

/* 80CAF104-80CAF110 00001C 000C+00 1/1 0/0 0/0 .data            l_PIC_AT_OFFSET_POS */
static Vec l_PIC_AT_OFFSET_POS = {
    0.0f, 100.0f, 0.0f
};

/* 80CAD318-80CAD498 000098 0180+00 2/2 0/0 0/0 .text            __ct__14daObjPicture_cFv */
daObjPicture_c::daObjPicture_c() {
    memset(mpBgw, 0, 8);
    mpRopestModel = NULL;
    mpPicModel = NULL;
    memset(mpRopeMat, 0, 8);
}

/* 80CAD6C8-80CAD908 000448 0240+00 1/0 0/0 0/0 .text            __dt__14daObjPicture_cFv */
daObjPicture_c::~daObjPicture_c() {
    dComIfG_resDelete(this, l_arcName);
}

/* 80CAF01C-80CAF024 000000 0008+00 6/6 0/0 0/0 .rodata          l_dzbIdx */
static const int l_dzbIdx[] = {
    11, 10,
};

/* 80CAF024-80CAF02C 000008 0008+00 0/1 0/0 0/0 .rodata          l_PictureBmdIdx */
static const int l_PictureBmdIdx[] = {
    6, 7,
};

/* 80CAD908-80CADC18 000688 0310+00 1/1 0/0 0/0 .text            createHeap__14daObjPicture_cFv */
int daObjPicture_c::createHeap() {
    int bmd_idx = getArg_0() & 1;

    J3DModelData* a_model_data_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 5);
    JUT_ASSERT(116, a_model_data_p != NULL);

    mpRopestModel = mDoExt_J3DModel__create(a_model_data_p, 0x80000, 0x11000084);
    if (mpRopestModel == NULL) {
        return 0;
    }

    cXyz pos(current.pos);
    f32 size = 1.0f;

    for (int i = 0; i < 2; i++) {
        if (i == 1 && field_0xd26 != 0) {
            break;
        }

        mpBgw[i] = new dBgW();
        if (mpBgw[i] == NULL) {
            return 0;
        }

        if (i == 0) {
            pos.set(home.pos.x, home.pos.y + 325.0f, home.pos.z);
            size = 0.5f;
        }

        mDoMtx_stack_c::transS(pos.x, pos.y, pos.z);
        mDoMtx_stack_c::ZXYrotM(home.angle.x, home.angle.y, home.angle.z);
        mDoMtx_stack_c::scaleM(size, size, size);
        MTXCopy(mDoMtx_stack_c::get(), mBgMtx[i]);

        if (mpBgw[i]->Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, l_dzbIdx[i]), 1, &mBgMtx[i]) == 1) {
            return 0;
        }

        if (i == 1) {
            mpBgw[i]->SetCrrFunc(dBgS_MoveBGProc_TypicalRotY);
        }
    }

    if (field_0xd26 != 0) {
        return 1;
    }

    a_model_data_p = (J3DModelData*)dComIfG_getObjectRes(l_arcName, l_PictureBmdIdx[bmd_idx]);
    JUT_ASSERT(179, a_model_data_p != NULL);

    mpPicModel = mDoExt_J3DModel__create(a_model_data_p, 0x80000, 0x11000084);
    if (mpPicModel == NULL) {
        return 0;
    }

    for (int i = 0; i < 2; i++) {
        mpRopeMat[i] = new mDoExt_3DlineMat1_c();
        if (mpRopeMat[i] == NULL) {
            OS_REPORT_ERROR("止め具ロープ：３Ｄラインマテリアルクラス生成失敗\n");
            return 0;
        }

        if (!mpRopeMat[i]->init(1, 10, (ResTIMG*)dComIfG_getObjectRes(l_arcName, 14), 1)) {
            OS_REPORT_ERROR("止め具ロープ：３Ｄラインマテリアルクラス初期化失敗\n");
            return 0;
        }
    }

    return 1;
}

/* 80CADC18-80CADFB0 000998 0398+00 1/1 0/0 0/0 .text            create__14daObjPicture_cFv */
int daObjPicture_c::create() {
    fopAcM_ct(this, daObjPicture_c);

    int phase_state = dComIfG_resLoad(this, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        field_0xd26 = 0;
        if (fopAcM_isSwitch(this, getSW_0())) {
            field_0xd26 = 1;
        }

        if (!fopAcM_entrySolidHeap(this, daObjPicture_c_createHeap, 0x4000)) {
            return cPhs_ERROR_e;
        }

        for (int i = 0; i < 2; i++) {
            if (i == 1 && field_0xd26 != 0) {
                break;
            }

            if (dComIfG_Bgsp().Regist(mpBgw[i], this)) {
                return cPhs_ERROR_e;
            }
        }

        init();
        setPicModelMtx();
        setTmgModelMtx();

        J3DModel* model = field_0xd26 != 0 ? mpRopestModel : mpPicModel;
        fopAcM_SetMtx(this, model->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -100.0f, -500.0f, -500.0f, 100.0f, 1500.0f, 500.0f);

        if (field_0xd26 == 0) {
            field_0x574.Init(0xFF, 0xFF, this);

            cXyz pos;
            cXyz picpos;
            getPosTmg(&pos);

            for (int i = 0; i < 2; i++) {
                mCps[i].Set(s_CcDCps);
                mCps[i].SetStts(&field_0x574);
                getLinePosPic(i, &picpos);

                mCps[i].cCcD_CpsAttr::Set(pos, picpos, 14.0f);
                mCps[i].CalcTgVec();
                mCps[i].OnTgNoSlingHitInfSet();
            }

            field_0x5b0.Init(0xFF, 0xFF, this);
            mAtCyl.Set(s_CcDCyl_pic_at);
            mAtCyl.SetStts(&field_0x5b0);
            mAtCyl.SetC(current.pos);
            mAtCyl.SetH(10.0f);
            mAtCyl.SetR(110.0f);

            field_0x5ec.Init(0xFF, 0xFF, this);
            getPosTmg(&pos);

            Vec sp1C = {0.0f, 0.0f, -230.0f};
            mDoMtx_stack_c::transS(pos);
            mDoMtx_stack_c::ZXYrotM(shape_angle);
            mDoMtx_stack_c::multVec(&sp1C, &pos);

            for (int i = 0; i < 2; i++) {
                mCps2[i].Set(s_CcDCps);
                mCps2[i].SetStts(&field_0x5ec);
                getLinePosPic(i, &picpos);

                mDoMtx_stack_c::transS(picpos);
                mDoMtx_stack_c::ZXYrotM(shape_angle);
                mDoMtx_stack_c::multVec(&sp1C, &picpos);

                mCps2[i].cCcD_CpsAttr::Set(pos, picpos, 14.0f);
                mCps2[i].CalcTgVec();
                mCps2[i].OnTgNoSlingHitInfSet();
            }

            setLinePos();
            mpBgw[1]->OffRoofRegist();
        }
    }

    return phase_state;
}

/* 80CADFB0-80CAE05C 000D30 00AC+00 1/1 0/0 0/0 .text            Delete__14daObjPicture_cFv */
int daObjPicture_c::Delete() {
    for (int i = 0; i < 2; i++) {
        if (i == 1 && field_0xd26 != 0) {
            break;
        }

        if (mpBgw[i] != NULL && mpBgw[i]->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgw[i]);
        }
    }

    this->~daObjPicture_c();
    return 1;
}

/* 80CAE05C-80CAE1B8 000DDC 015C+00 1/1 0/0 0/0 .text            draw__14daObjPicture_cFv */
int daObjPicture_c::draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpRopestModel, &tevStr);
    mDoExt_modelUpdate(mpRopestModel);

    if (field_0xd26 != 0) {
        return 1;
    }

    g_env_light.setLightTevColorType_MAJI(mpPicModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpPicModel);
    dComIfGd_setList();

    for (int i = 0; i < 2; i++) {
        GXColor rope_col = {0, 0, 0, 0};
        mpRopeMat[i]->update(10, 3.5f, rope_col, 0, &tevStr);
        dComIfGd_set3DlineMat(mpRopeMat[i]);
    }

    return 1;
}

/* 80CAE1B8-80CAE510 000F38 0358+00 1/1 0/0 0/0 .text            execute__14daObjPicture_cFv */
int daObjPicture_c::execute() {
    if (field_0xd26 != 0) {
        setTmgModelMtx();
        return 1;
    }

    switch (field_0xd24) {
    case 0:
        if (chkHitRope() || chkHitBombTg()) {
            fopAcM_onSwitch(this, getSW_0());
            mDoAud_seStart(Z2SE_OBJ_ROPE_PAINT_CUT, &field_0xc88, 0, 0);
            field_0xd24 = 1;
            speed.set(0.0f, -1.0f, 0.0f);

            for (int i = 0; i < 10; i++) {
                if (i == 5 || i == 6) {
                    field_0xd28[i].x = 12.0f;
                } else if (i == 0 || i == 1) {
                    field_0xd28[i].x = 4.0f;
                } else {
                    field_0xd28[i].x = 7.0f;
                }

                field_0xd28[i].y = -1.0f;
                field_0xd28[i].z = 0.0f;
            }

            return 1;
        }

        for (int i = 0; i < 2; i++) {
            dComIfG_Ccsp()->Set(&mCps[i]);
            dComIfG_Ccsp()->Set(&mCps2[i]);
        }
        break;
    case 1: {
        cXyz sp14(field_0xc94.x, current.pos.y, field_0xc94.z);
        fopAcM_gc_c::gndCheck(&sp14);
        current.pos.y += speed.y;

        moveLineFall1();

        if (fopAcM_gc_c::getGroundY() > current.pos.y) {
            mDoAud_seStart(Z2SE_OBJ_ROPE_PAINT_LAND, &current.pos, 0, 0);
            current.pos.y = 5.0f + fopAcM_gc_c::getGroundY();
            field_0xd24 = 2;
            speed.y = -0.1f;
        }

        speed.y += gravity;
        cLib_chaseF(&current.pos.x, field_0xca0.x, 1.0f);
        cLib_chaseF(&current.pos.z, field_0xca0.z, 1.0f);
        break;
    }
    case 2: {
        cXyz sp8(current.pos);
        fopAcM_gc_c::gndCheck(&sp8);

        shape_angle.x += 0x400;
        if (shape_angle.x > 0x4000) {
            shape_angle.x = 0x4000;
        }

        moveLineFall2();

        if (field_0xd27 != 0 && shape_angle.x == 0x4000) {
            field_0xd24 = 3;
        }

        cLib_chaseF(&current.pos.x, field_0xca0.x, 1.0f);
        cLib_chaseF(&current.pos.z, field_0xca0.z, 1.0f);
        setPicAtCol();
        break;
    }
    case 3:
        break;
    }

    setPicModelMtx();
    setTmgModelMtx();
    mpBgw[1]->Move();
    return 1;
}

/* 80CAE510-80CAE5B0 001290 00A0+00 1/1 0/0 0/0 .text            init__14daObjPicture_cFv */
void daObjPicture_c::init() {
    field_0xd24 = 0;
    gravity = -3.0f;

    Vec sp8 = {0.0f, 0.0f, 100.0f};

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(&sp8, &field_0xc94);

    sp8.z = 15.0f;
    mDoMtx_stack_c::multVec(&sp8, &field_0xca0);
}

/* 80CAE5B0-80CAE638 001330 0088+00 2/2 0/0 0/0 .text            setPicModelMtx__14daObjPicture_cFv
 */
void daObjPicture_c::setPicModelMtx() {
    if (field_0xd26 == 0) {
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
        mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
        MTXCopy(mDoMtx_stack_c::get(), mBgMtx[1]);
        mpPicModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 80CAE638-80CAE6C4 0013B8 008C+00 2/2 0/0 0/0 .text            setTmgModelMtx__14daObjPicture_cFv
 */
void daObjPicture_c::setTmgModelMtx() {
    mDoMtx_stack_c::transS(home.pos.x, home.pos.y + 325.0f, home.pos.z);
    mDoMtx_stack_c::ZXYrotM(home.angle.x, home.angle.y, home.angle.z);
    mDoMtx_stack_c::scaleM(0.5f, 0.5f, 0.5f);
    mpRopestModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CAE6C4-80CAE744 001444 0080+00 4/4 0/0 0/0 .text getLinePosPic__14daObjPicture_cFiP4cXyz */
void daObjPicture_c::getLinePosPic(int param_0, cXyz* o_pos) {
    *o_pos = l_LINE_OFFSET_POS[param_0];
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(o_pos, o_pos);
}

/* 80CAE744-80CAE76C 0014C4 0028+00 2/2 0/0 0/0 .text            getPosTmg__14daObjPicture_cFP4cXyz
 */
void daObjPicture_c::getPosTmg(cXyz* o_pos) {
    o_pos->set(home.pos.x, 325.0f + home.pos.y, home.pos.z);
}

/* 80CAE76C-80CAE8E8 0014EC 017C+00 1/1 0/0 0/0 .text            setLinePos__14daObjPicture_cFv */
void daObjPicture_c::setLinePos() {
    cXyz tmgpos;
    cXyz picpos[2];
    getPosTmg(&tmgpos);
    getLinePosPic(0, &picpos[0]);
    getLinePosPic(1, &picpos[1]);

    cXyz sp44;
    cXyz sp38;
    for (int i = 0; i < 2; i++) {
        sp44 = tmgpos - picpos[i];
        sp44.normalizeZP();

        cXyz* rope_pos_p = mpRopeMat[i]->getPos(0);
        *rope_pos_p = picpos[i];
        sp38 = *rope_pos_p;

        rope_pos_p++;
        for (int j = 1; j < 9; j++) {
            *rope_pos_p = sp38 + (sp44 * 20.0f);
            sp38 = *rope_pos_p;
            rope_pos_p++;
        }

        *rope_pos_p = tmgpos;
    }
}

/* 80CAE8E8-80CAEA60 001668 0178+00 1/1 0/0 0/0 .text            moveLineFall1__14daObjPicture_cFv
 */
void daObjPicture_c::moveLineFall1() {
    cXyz picpos[2];
    getLinePosPic(0, &picpos[0]);
    getLinePosPic(1, &picpos[1]);

    cXyz sp14;
    f32 var_f31 = 1.0f;
    cXyz* rope_pos_p;
    for (int i = 0; i < 2; i++) {
        rope_pos_p = mpRopeMat[i]->getPos(0);
        *rope_pos_p = picpos[i];
        rope_pos_p++;

        if (i == 0) {
            var_f31 = -1.0f;
        } else {
            var_f31 = 1.0f;
        }

        for (int j = 1; j < 10; j++) {
            cLib_addCalc0(&field_0xd28[j].x, 0.04f, 50.0f);
            field_0xd28[j].y += 0.45f * gravity;

            sp14.set(var_f31 * field_0xd28[j].x, field_0xd28[j].y, 0.0f);
            mDoMtx_stack_c::transS(*rope_pos_p);
            mDoMtx_stack_c::ZXYrotM(shape_angle);
            mDoMtx_stack_c::multVec(&sp14, rope_pos_p);
            rope_pos_p++;
        }
    }
}

/* 80CAEA60-80CAED28 0017E0 02C8+00 1/1 0/0 0/0 .text            moveLineFall2__14daObjPicture_cFv
 */
void daObjPicture_c::moveLineFall2() {
    field_0xd27 = 1;

    cXyz sp18[2];
    speed.y += gravity;

    cXyz* rope_pos_p;
    for (int i = 0; i < 2; i++) {
        getLinePosPic(i, &sp18[i]);
        rope_pos_p = mpRopeMat[i]->getPos(0);
        *rope_pos_p = sp18[i];
        rope_pos_p++;

        for (int j = 1; j < 10; j++) {
            if (8.0f + fopAcM_gc_c::getGroundY() >= rope_pos_p->y) {
                rope_pos_p->y = 8.0f + fopAcM_gc_c::getGroundY();
            } else {
                rope_pos_p->y += 0.7f * speed.y;

                f32 var_f31 = rope_pos_p->absXZ(current.pos) * (cM_ssin(0x4000 - shape_angle.x) / cM_ssin(shape_angle.x));
                var_f31 += 5.0f + fopAcM_gc_c::getGroundY();

                if (shape_angle.x >= 0x2000 && rope_pos_p->y < var_f31) {
                    rope_pos_p->y = var_f31;
                }

                cLib_addCalcPosXZ2(rope_pos_p, sp18[i], 0.02f * (10 - j), 30.0f);
                field_0xd27 = 0;
            }

            rope_pos_p++;
        }
    }
}

/* 80CAED28-80CAEDDC 001AA8 00B4+00 1/1 0/0 0/0 .text            chkHitRope__14daObjPicture_cFv */
bool daObjPicture_c::chkHitRope() {
    for (int i = 0; i < 2; i++) {
        if (mCps[i].ChkTgHit()) {
            cCcD_Obj* tg_hit_obj = mCps[i].GetTgHitObj();
            if (tg_hit_obj != NULL && tg_hit_obj->ChkAtType(AT_TYPE_ARROW)) {
                field_0xc88 = *mCps[i].GetTgHitPosP();
                return 1;
            }

            mCps[i].ClrTgHit();
        }
    }

    return 0;
}

/* 80CAEDDC-80CAEE90 001B5C 00B4+00 1/1 0/0 0/0 .text            chkHitBombTg__14daObjPicture_cFv */
bool daObjPicture_c::chkHitBombTg() {
    for (int i = 0; i < 2; i++) {
        if (mCps2[i].ChkTgHit()) {
            cCcD_Obj* tg_hit_obj = mCps2[i].GetTgHitObj();
            if (tg_hit_obj != NULL && tg_hit_obj->ChkAtType(AT_TYPE_BOMB)) {
                field_0xc88 = *mCps2[i].GetTgHitPosP();
                return 1;
            }

            mCps2[i].ClrTgHit();
        }
    }

    return 0;
}

/* 80CAEE90-80CAEF18 001C10 0088+00 1/1 0/0 0/0 .text            setPicAtCol__14daObjPicture_cFv */
void daObjPicture_c::setPicAtCol() {
    mPicAtPos = l_PIC_AT_OFFSET_POS;
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(&mPicAtPos, &mPicAtPos);
    mAtCyl.SetC(mPicAtPos);
    dComIfG_Ccsp()->Set(&mAtCyl);
}

/* 80CAEF18-80CAEF6C 001C98 0054+00 1/0 0/0 0/0 .text daObjPicture_create__FP14daObjPicture_c */
static int daObjPicture_create(daObjPicture_c* i_this) {
    fopAcM_ct(i_this, daObjPicture_c);
    return i_this->create();
}

/* 80CAEF6C-80CAEF8C 001CEC 0020+00 1/0 0/0 0/0 .text daObjPicture_Delete__FP14daObjPicture_c */
static int daObjPicture_Delete(daObjPicture_c* i_this) {
    return i_this->Delete();
}

/* 80CAEF8C-80CAEFAC 001D0C 0020+00 1/0 0/0 0/0 .text daObjPicture_execute__FP14daObjPicture_c */
static int daObjPicture_execute(daObjPicture_c* i_this) {
    return i_this->execute();
}

/* 80CAEFAC-80CAEFCC 001D2C 0020+00 1/0 0/0 0/0 .text daObjPicture_draw__FP14daObjPicture_c */
static int daObjPicture_draw(daObjPicture_c* i_this) {
    return i_this->draw();
}

/* 80CAF110-80CAF15C 000028 004C+00 1/1 0/0 0/0 .data            s_CcDCps__14daObjPicture_c */
#if DEBUG
const
#endif
dCcD_SrcCps daObjPicture_c::s_CcDCps = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x20A0, 0x11}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 14.0f}, // mCps
    } // mCpsAttr
};

/* 80CAF15C-80CAF1A0 000074 0044+00 1/1 0/0 0/0 .data            s_CcDCyl_pic_at__14daObjPicture_c
 */
#if DEBUG
const
#endif
dCcD_SrcCyl daObjPicture_c::s_CcDCyl_pic_at = {
    {
        {0x0, {{0x400, 0x1, 0x11}, {0x0, 0x11}, 0x79}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},              // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},              // mGObjTg
        {0x0},                                           // mGObjCo
    },                                                   // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f                 // mHeight
    }  // mCyl
};

/* 80CAF1A0-80CAF1C0 -00001 0020+00 1/0 0/0 0/0 .data            daObjPicture_METHODS */
static actor_method_class daObjPicture_METHODS = {
    (process_method_func)daObjPicture_create,
    (process_method_func)daObjPicture_Delete,
    (process_method_func)daObjPicture_execute,
    0,
    (process_method_func)daObjPicture_draw,
};

/* 80CAF1C0-80CAF1F0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Picture */
extern actor_process_profile_definition g_profile_Obj_Picture = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_Picture,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjPicture_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  742,                    // mPriority
  &daObjPicture_METHODS,  // sub_method
  0x00040180,             // mStatus
  fopAc_ENV_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
