/**
 * @file d_a_obj_rope_bridge.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_rope_bridge.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"

/* 80597E84-80597E8C -00001 0008+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {"L_RopeB_S", "L_RopeB_L"};

/* 80597E8C-80597E90 -00001 0004+00 3/3 0/0 0/0 .data            l_ropeArcName */
static char* l_ropeArcName = "L_Ropest";

/* 80595E38-80595ED8 000078 00A0+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjRBridge_cFv */
void daObjRBridge_c::initBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(NULL, current.angle.y, 0);
    MTXCopy(mDoMtx_stack_c::get(), mMtx);

    mpBrgModel->setBaseScale(scale);
    if (mpStopModel != NULL) {
        mpStopModel->setBaseScale(scale);
    }

    setBaseMtx();
}

/* 80595ED8-80595F84 000118 00AC+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjRBridge_cFv */
void daObjRBridge_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::XrotM(shape_angle.x);
    mpBrgModel->setBaseTRMtx(mDoMtx_stack_c::get());

    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);

    if (mpStopModel != NULL) {
        mDoMtx_stack_c::transS(mStopPos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mpStopModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

/* 80595F84-80595FE0 0001C4 005C+00 2/2 0/0 0/0 .text            checkE3Special__14daObjRBridge_cFv
 */
BOOL daObjRBridge_c::checkE3Special() {
    // E3 Dungeon - Fortress (Interior 1)
    if (strcmp(dComIfGp_getStartStageName(), "D_MN54") == 0 && dComIfGp_roomControl_getStayNo() == 7) {
        return TRUE;
    }

    return FALSE;
}

/* 80597D7C-80597D84 000000 0008+00 9/9 0/0 0/0 .rodata          l_brgBmdIdx */
static const int l_brgBmdIdx[] = {4, 4};

/* 80597D84-80597D8C 000008 0008+00 1/1 0/0 0/0 .rodata          l_brgDzbIdx */
static const int l_brgDzbIdx[] = {7, 7};

/* 80597D8C-80597D94 000010 0008+00 0/0 0/0 0/0 .rodata          l_brg_height */
static const f32 l_brg_height[] = {600.0f, 1200.0f};

/* 80597D94-80597D9C 000018 0008+00 0/1 0/0 0/0 .rodata          l_rope_length */
static const f32 l_rope_length[] = {300.0f, 450.0f};

/* 80597D9C-80597DA4 000020 0008+00 0/2 0/0 0/0 .rodata          l_himo_thick */
static const int l_himo_thick[] = {80, 220};

/* 80597DA4-80597DAC 000028 0008+00 1/1 0/0 0/0 .rodata          l_heap_size */
static const u32 l_heap_size[] = {0x2500, 0x2500};

/* 80597DAC-80597DC4 000030 0018+00 1/1 0/0 0/0 .rodata          l_rope_cullbox_offset */
static const Vec l_rope_cullbox_offset[] = {
    {0.0f, 550.0f, 0.0f},
    {0.0f, 1100.0f, 0.0f},
};

/* 80597DC4-80597DDC 000048 0018+00 1/1 0/0 0/0 .rodata          l_rope_cullbox */
static const cull_box l_rope_cullbox = {
    {-350.0f, 0.0f, -350.0f},
    {350.0f, 350.0f, 350.0f},
};

/* 80595FE0-80596130 000220 0150+00 1/1 0/0 0/0 .text            setStPos__14daObjRBridge_cFv */
void daObjRBridge_c::setStPos() {
    f32 height[2] = {845.0f + KREG_F(3), 1600.0f + KREG_F(4)};
    cXyz start(0.0f, 0.0f, 100.0f);
    cXyz end(0.0f, 0.0f, -1500.0f);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::multVec(&start, &start);
    mDoMtx_stack_c::multVec(&end, &end);
    start.y += height[mType];
    end.y += height[mType];

    if (fopAcM_lc_c::lineCheck(&start, &end, this)) {
        mStopPos = fopAcM_lc_c::getCross();
    } else {
        // "No wall around stop set position!\n"
        OS_REPORT_ERROR("止め具セット位置周辺に壁がありません！\n");
        mStopPos = current.pos;
    }

    attention_info.position = mStopPos;
    eyePos = mStopPos;
}

/* 8059616C-805963C4 0003AC 0258+00 1/1 0/0 0/0 .text            initLinePos__14daObjRBridge_cFv */
void daObjRBridge_c::initLinePos() {
    cXyz st_pos;
    cXyz brg_pos[2];
    getLinePosSt(&st_pos);
    getLinePosBrg(0, &brg_pos[0]);
    getLinePosBrg(1, &brg_pos[1]);

    if (!fopAcM_isSwitch(this, getSwbit()) && !fopAcM_isSwitch(this, getSwbit2())) {
        for (int i = 0; i < 2; i++) {
            cXyz sp5C = brg_pos[i] - st_pos;
            sp5C.normalizeZP();

            cXyz* linepos_p = mpLineMat[i]->getPos(0);
            cXyz* sp10 = field_0xb04;

            cXyz sp50;
            cXyz sp44;
            cXyz sp38;
            sp38.set(0.0f, 0.0f, 15.0f + KREG_F(2));
            mDoMtx_stack_c::YrotS(current.angle.y);
            mDoMtx_stack_c::multVec(&sp38, &sp38);

            *linepos_p = st_pos;
            sp50 = *linepos_p;

            int j = 0;
            cXyz* var_r28 = linepos_p + 1;
            for (; j < mRopeSegmentNum - 1; j++, var_r28++, sp10++) {
                *var_r28 = sp50 + (sp5C * 30.0f);
                sp50 = *var_r28;
                *sp10 = sp38;
            }

            var_r28[-1] = brg_pos[i];
            field_0xb08[i] = mRopeSegmentNum - 1;
        }
    }
}

/* 805963C4-80596768 000604 03A4+00 1/1 0/0 0/0 .text            setLinePos__14daObjRBridge_cFv */
void daObjRBridge_c::setLinePos() {
    cXyz st_pos;
    cXyz brg_pos[2];
    getLinePosSt(&st_pos);
    getLinePosBrg(0, &brg_pos[0]);
    getLinePosBrg(1, &brg_pos[1]);

    if (!fopAcM_isSwitch(this, getSwbit()) && !fopAcM_isSwitch(this, getSwbit2())) {
        for (int i = 0; i < 2; i++) {
            cXyz spB0 = brg_pos[i] - st_pos;
            spB0.normalizeZP();

            cXyz* linepos_p = mpLineMat[i]->getPos(0);

            cXyz spA4;
            *linepos_p = st_pos;
            spA4 = *linepos_p;

            linepos_p++;
            for (int j = 0; j < mRopeSegmentNum - 1; j++, linepos_p++) {
                *linepos_p = spA4 + (spB0 * 30.0f);
                spA4 = *linepos_p;
            }

            linepos_p[-1] = brg_pos[i];
        }
    } else {
        for (int i = 0; i < 2; i++) {
            if (mpLineMat[i] != NULL) {
                cXyz* linepos_p = mpLineMat[i]->getPos(0);
                cXyz* sp14 = &field_0xb04[mRopeSegmentNum - 1];

                cXyz sp98;
                linepos_p += mRopeSegmentNum - 1;
                *linepos_p = brg_pos[i];
                sp98 = *linepos_p;

                linepos_p--;
                sp14--;

                for (int j = mRopeSegmentNum - 2; j >= 0; j--, linepos_p--, sp14--) {
                    if (j < field_0xb08[i]) {
                        sp14->z *= 1.0f - KREG_F(1);
                        sp14->y += -0.0099999979f - KREG_F(0);

                        cXyz sp8C = linepos_p[1] - linepos_p[0];
                        if (sp8C.y > 0.0f) {
                            sp8C.normalizeZP();
                            sp14->z += sp8C.z * (0.1f + KREG_F(14));
                            sp14->x += sp8C.x * (0.1f + KREG_F(14));
                        }

                        *linepos_p += *sp14;
                        
                        cXyz sp80 = linepos_p[0] - linepos_p[1];
                        sp80.normalizeZP();
                        sp80 = sp80 * 30.0f;
                        *linepos_p = linepos_p[1] + sp80;
                    }
                }
            }
        }
    }
}

/* 80597E90-80597EA8 00002C 0018+00 1/1 0/0 0/0 .data            l_rope_offsetL */
static Vec l_rope_offsetL[] = {
    {-120.0f, 1165.0f, 0.0f},
    {120.0f, 1165.0f, 0.0f},
};

/* 80597EA8-80597EC0 000044 0018+00 1/1 0/0 0/0 .data            l_rope_offsetS */
static Vec l_rope_offsetS[] = {
    {-120.0f, 575.0f, 0.0f},
    {120.0f, 575.0f, 0.0f},
};

/* 80597EC0-80597ECC 00005C 000C+00 1/1 0/0 0/0 .data            l_rope_offsetSt */
static Vec l_rope_offsetSt = {0.0f, 0.0f, 70.0f};

/* 80596768-805967E4 0009A8 007C+00 4/4 0/0 0/0 .text getLinePosSt__14daObjRBridge_cFP4cXyz */
void daObjRBridge_c::getLinePosSt(cXyz* o_pos) {
    *o_pos = l_rope_offsetSt;
    mDoMtx_stack_c::transS(mStopPos);
    mDoMtx_stack_c::YrotM(home.angle.y);
    mDoMtx_stack_c::multVec(o_pos, o_pos);
}

/* 805967E4-8059689C 000A24 00B8+00 4/4 0/0 0/0 .text getLinePosBrg__14daObjRBridge_cFiP4cXyz */
void daObjRBridge_c::getLinePosBrg(int param_0, cXyz* o_pos) {
    if (mType == 0) {
        *o_pos = l_rope_offsetS[param_0];
    } else {
        *o_pos = l_rope_offsetL[param_0];
    }

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::multVec(o_pos, o_pos);
}

/* 8059689C-805969FC 000ADC 0160+00 1/1 0/0 0/0 .text            checkTight__14daObjRBridge_cFv */
BOOL daObjRBridge_c::checkTight() {
    cXyz brg_pos;
    cXyz st_pos;
    getLinePosBrg(0, &brg_pos);
    getLinePosSt(&st_pos);

    if (st_pos.abs(brg_pos) >= (KREG_F(6) + l_rope_length[mType])) {
        return TRUE;
    }

    return FALSE;
}

/* 80597ECC-80597EE4 000068 0018+00 0/1 0/0 0/0 .data            l_cull_sizeS */
static cull_box l_cull_sizeS = {
    {-250.0f, 0.0f, -100.0f},
    {250.0f, 1100.0f, 1000.0f},
};

/* 80597EE4-80597EFC 000080 0018+00 0/1 0/0 0/0 .data            l_cull_sizeL */
static cull_box l_cull_sizeL = {
    {-400.0f, 0.0f, -100.0f},
    {400.0f, 1500.0f, 1500.0f},
};

/* 80597EFC-80597F04 000098 0008+00 0/1 0/0 0/0 .data            l_att_disXZ */
static f32 l_att_disXZ[] = {2000.0f, 2000.0f};

/* 80597F04-80597F0C 0000A0 0008+00 0/1 0/0 0/0 .data            l_att_high */
static f32 l_att_high[] = {1000.0f, 2000.0f};

/* 80597F0C-80597F14 0000A8 0008+00 0/1 0/0 0/0 .data            l_att_low */
static f32 l_att_low[] = {-500.0f, -500.0f};

/* 80597F14-80597F18 0000B0 0004+00 0/1 0/0 0/0 .data            l_att_ang */
static s16 l_att_ang[] = {0x6000, 0x6000};

/* 80597F18-80597F58 0000B4 0040+00 0/1 0/0 0/0 .data            l_sph_src */
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2002, 0x11}, 0x18}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80597F58-80597F98 0000F4 0040+00 0/1 0/0 0/0 .data            l_sph_src2 */
static dCcD_SrcSph l_sph_src2 = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x10}, 0x19}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f} // mSph
    } // mSphAttr
};

/* 80597F98-80597FE4 000134 004C+00 0/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2002, 0x11}, 0x0}}, // mObj
        {dCcD_SE_SWORD, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 0.0f, 0.0f}, 50.0f}, // mCps
    } // mCpsAttr
};

/* 805969FC-80596B88 000C3C 018C+00 1/0 0/0 0/0 .text            Create__14daObjRBridge_cFv */
int daObjRBridge_c::Create() {
    if (fopAcM_isSwitch(this, getSwbit()) || fopAcM_isSwitch(this, getSwbit2())) {
        shape_angle.x = 0x4000;
        init_end();
    } else {
        init_wait();
    }

    setStPos();
    initBaseMtx();
    fopAcM_SetMtx(this, mMtx);

    mCcStts.Init(0xFF, 0xFF, this);
    mCcSph.Set(l_sph_src);
    mCcSph.SetStts(&mCcStts);
    mCcSph2.Set(l_sph_src2);
    mCcSph2.SetStts(&mCcStts);

    for (int i = 0; i < 2; i++) {
        mCcCps[i].Set(l_cps_src);
        mCcCps[i].SetStts(&mCcStts);
    }

    Vec* cull_min;
    Vec* cull_max;
    if (mType == 0) {
        cull_min = &l_cull_sizeS.min;
        cull_max = &l_cull_sizeS.max;
    } else {
        cull_min = &l_cull_sizeL.min;
        cull_max = &l_cull_sizeL.max;
    }

    fopAcM_setCullSizeBox(this, cull_min->x, cull_min->y, cull_min->z, cull_max->x, cull_max->y, cull_max->z);
    field_0xb18 = 50;
    initLinePos();

    mSound.init(&mStopPos, 1);
    return 1;
}

/* 80596B88-80596DE8 000DC8 0260+00 1/0 0/0 0/0 .text            CreateHeap__14daObjRBridge_cFv */
int daObjRBridge_c::CreateHeap() {
    void* modelData = dComIfG_getObjectRes(l_arcName[mType], l_brgBmdIdx[mType]);
    JUT_ASSERT(837, modelData != 0);
    mpBrgModel = mDoExt_J3DModel__create((J3DModelData*)modelData, 0x80000, 0x11000084);
    if (mpBrgModel == NULL) {
        return 0;
    }

    if (!fopAcM_isSwitch(this, getSwbit2())) {
        modelData = dComIfG_getObjectRes(l_ropeArcName, 4);
        JUT_ASSERT(853, modelData != 0);
        mpStopModel = mDoExt_J3DModel__create((J3DModelData*)modelData, 0x80000, 0x11000084);
        if (mpStopModel == NULL) {
            return 0;
        }
    } else {
        mpStopModel = NULL;
    }

    if (!fopAcM_isSwitch(this, getSwbit2()) && !fopAcM_isSwitch(this, getSwbit())) {
        mRopeSegmentNum = 10;
        field_0xb04 = new cXyz[mRopeSegmentNum];
        if (field_0xb04 == NULL) {
            return 0;
        }

        for (int i = 0; i < 2; i++) {
            mpLineMat[i] = new mDoExt_3DlineMat1_c();
            if (mpLineMat[i] == NULL) {
                // "Rope Stop: 3D line material class creation failure"
                OS_REPORT_ERROR("止め具ロープ：３Ｄラインマテリアルクラス生成失敗\n");
                return 0;
            }

            if (!mpLineMat[i]->init(1, mRopeSegmentNum, (ResTIMG*)dComIfG_getObjectRes(l_ropeArcName, 7), 1)) {
                // "Rope Stop: 3D line material class initialization failure"
                OS_REPORT_ERROR("止め具ロープ：３Ｄラインマテリアルクラス初期化失敗\n");
                return 0;
            }
        }
    } else {
        for (int i = 0; i < 2; i++) {
            mpLineMat[i] = NULL;
        }
    }    

    return 1;
}

/* 80596DEC-80596EBC 00102C 00D0+00 1/1 0/0 0/0 .text            create1st__14daObjRBridge_cFv */
int daObjRBridge_c::create1st() {
    mType = getType();
    if (mType != 0 && mType != 1) {
        // "Rope Stop Bridge: Invalid type\n"
        OS_REPORT_ERROR("止め具ロープ付き橋：タイプが不正です\n");
        JUT_ASSERT(923, 0);
    }

    int rope_phase_state = dComIfG_resLoad(&mRopePhase, l_ropeArcName);
    if (rope_phase_state != cPhs_COMPLEATE_e) {
        return rope_phase_state;
    }

    int phase_state = dComIfG_resLoad(&mPhase, l_arcName[mType]);
    if (phase_state == cPhs_COMPLEATE_e) {
        phase_state = MoveBGCreate(l_arcName[mType], l_brgDzbIdx[mType], dBgS_MoveBGProc_Typical, l_heap_size[mType], NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }

        OS_REPORT("ROPEB PARAM : %x\n", fopAcM_GetParam(this));
    }

    return phase_state;
}

/* 80596EBC-80596FA8 0010FC 00EC+00 1/0 0/0 0/0 .text            Execute__14daObjRBridge_cFPPA3_A4_f
 */
int daObjRBridge_c::Execute(f32 (**param_0)[3][4]) {
    action();
    setLinePos();

    *param_0 = &mBgMtx;
    setBaseMtx();

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));

    if (!fopAcM_isSwitch(this, getSwbit())) {
        dComIfGp_att_LookRequest(this, l_att_disXZ[mType], l_att_high[mType], l_att_low[mType], l_att_ang[mType], 1);
    }

    return 1;
}

/* 80596FA8-8059715C 0011E8 01B4+00 1/1 0/0 0/0 .text            action__14daObjRBridge_cFv */
void daObjRBridge_c::action() {
    typedef void (daObjRBridge_c::*modeProc)();
    static modeProc mode_proc[] = {
        &daObjRBridge_c::mode_wait,
        &daObjRBridge_c::mode_cut,
        &daObjRBridge_c::mode_end,
    };

    if (mCcSph.ChkTgHit()) {
        cCcD_Obj* hit_obj = mCcSph.GetTgHitObj();
        if (hit_obj != NULL && (hit_obj->ChkAtType(AT_TYPE_ARROW) || hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD))) {
            mSound.startCollisionSE(Z2SE_HIT_SWORD, 0x28, NULL);
        }

        mCcSph.ClrTgHit();
    }

    (this->*mode_proc[mMode])();

    cXyz cc_center(0.0f, 0.0f, 100.0f);
    mDoMtx_stack_c::transS(mStopPos);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&cc_center, &cc_center);

    mCcSph.SetR(40.0f);
    mCcSph.SetC(cc_center);
    dComIfG_Ccsp()->Set(&mCcSph);

    mCcSph2.SetR(40.0f + KREG_F(4));
    mCcSph2.SetC(cc_center);
    dComIfG_Ccsp()->Set(&mCcSph2);
}

/* 8059715C-80597170 00139C 0014+00 1/1 0/0 0/0 .text            init_wait__14daObjRBridge_cFv */
void daObjRBridge_c::init_wait() {
    mFallTimer = 5;
    mMode = 0;
}

/* 80597170-805973BC 0013B0 024C+00 1/0 0/0 0/0 .text            mode_wait__14daObjRBridge_cFv */
void daObjRBridge_c::mode_wait() {
    if (checkTight()) {
        field_0xb18 = 0;
        field_0xb1a = 0;
        shape_angle.x = 0x600;
    } else {
        field_0xb18 = 50;
        field_0xb1a += field_0xb18;
        shape_angle.x += field_0xb1a;
    }

    bool rope_cut = false;
    for (int i = 0; i < 2; i++) {
        if (mCcCps[i].ChkTgHit()) {
            cCcD_Obj* hit_obj = mCcCps[i].GetTgHitObj();
            if (hit_obj != NULL && (hit_obj->ChkAtType(AT_TYPE_ARROW) || hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD))) {
                rope_cut = true;
            }
        }
    }

    bool is_switch = fopAcM_isSwitch(this, getSwbit2());
    if (rope_cut || is_switch) {
        // "Rope Stop rope is cut! <%d>\n"
        OS_REPORT("止め具付きロープ切れた！<%d>\n", getSwbit2());
        if (!checkE3Special()) {
            mDoAud_seStart(Z2SE_OBJ_ROPEBRDG_CUT, &mStopPos, 0, 0);
        }

        fopAcM_onSwitch(this, getSwbit());
        init_cut();
    }

    for (int i = 0; i < 2; i++) {
        cXyz st_pos;
        cXyz brg_pos;
        getLinePosSt(&st_pos);
        getLinePosBrg(i, &brg_pos);

        mCcCps[i].cM3dGCps::Set(st_pos, brg_pos, 0.1f * (KREG_F(10) + l_himo_thick[mType]));
        mCcCps[i].CalcTgVec();
        dComIfG_Ccsp()->Set(&mCcCps[i]);
    }
}

/* 805973BC-805973E4 0015FC 0028+00 1/1 0/0 0/0 .text            init_cut__14daObjRBridge_cFv */
void daObjRBridge_c::init_cut() {
    field_0xb18 = 0;
    field_0xb1a = 0;
    field_0xaf4 = 0;
    field_0xaf8 = 1.0f;
    mMode = 1;
}

/* 805973E4-805975E8 001624 0204+00 1/0 0/0 0/0 .text            mode_cut__14daObjRBridge_cFv */
void daObjRBridge_c::mode_cut() {
    if (mFallTimer >= 0) {
        if (mFallTimer == 0 && !checkE3Special()) {
            static u32 l_fall_start_se[] = {Z2SE_OBJ_ROPEBRDG_MOVE_S, Z2SE_OBJ_ROPEBRDG_MOVE_L};
            fopAcM_seStart(this, l_fall_start_se[mType], 0);
        }
        mFallTimer--;
        return;
    }

    cLib_addCalcAngleS(&field_0xb18, 50, 60, 4, 1);
    cLib_addCalc0(&field_0xaf8, 0.05f, 0.15f);

    field_0xb1a += field_0xb18;
    field_0xb1a = field_0xb1a * (1.0f - field_0xaf8);

    shape_angle.x += field_0xb1a;
    if (shape_angle.x > 0x4000) {
        field_0xb1a = 0;
        shape_angle.x = 0x4000;

        if (!checkE3Special()) {
            dComIfGp_getVibration().StartShock(VIBMODE_S_POWER4, 0x1F, cXyz(0.0f, 1.0f, 0.0f));
            static u32 l_fall_end_se[] = {Z2SE_OBJ_ROPEBRDG_FALLDOWN_S, Z2SE_OBJ_ROPEBRDG_FALLDOWN_L};
            fopAcM_seStart(this, l_fall_end_se[mType], 0);
        }

        init_end();
    }
}

/* 805975E8-805975F4 001828 000C+00 2/2 0/0 0/0 .text            init_end__14daObjRBridge_cFv */
void daObjRBridge_c::init_end() {
    mMode = 2;
}

/* 805975F4-805975F8 001834 0004+00 1/0 0/0 0/0 .text            mode_end__14daObjRBridge_cFv */
void daObjRBridge_c::mode_end() {}

/* 805975F8-805977D0 001838 01D8+00 1/0 0/0 0/0 .text            Draw__14daObjRBridge_cFv */
int daObjRBridge_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpBrgModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpBrgModel);
    dComIfGd_setList();

    if (mpStopModel != NULL) {
        g_env_light.settingTevStruct(0, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpStopModel, &tevStr);
        mDoExt_modelUpdateDL(mpStopModel);
    }

    if (shape_angle.x == 0x4000 && checkHimoCulling()) {
        mHideRope = true;
    }

    if (!mHideRope) {
        for (int i = 0; i < 2; i++) {
            if (mpLineMat[i] != NULL) {
                GXColor sp40 = {0, 0, 0, 0};
                mpLineMat[i]->update(mRopeSegmentNum, 0.1f * (KREG_F(10) + l_himo_thick[mType]), sp40, 0, &tevStr);
                dComIfGd_set3DlineMat(mpLineMat[i]);
            }
        }
    }

    return 1;
}

/* 805977D0-805978BC 001A10 00EC+00 1/1 0/0 0/0 .text checkHimoCulling__14daObjRBridge_cFv */
BOOL daObjRBridge_c::checkHimoCulling() {
    Mtx cullmtx;
    cXyz offset(l_rope_cullbox_offset[mType]);
    cXyz min(l_rope_cullbox.min);
    cXyz max(l_rope_cullbox.max);

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::XrotM(shape_angle.x);
    mDoMtx_stack_c::transM(offset);
    
    MTXCopy(mDoMtx_stack_c::get(), cullmtx);
    return fopAcM_checkCullingBox(cullmtx, min.x, min.y, min.z, max.x, max.y, max.z);
}

/* 805978BC-80597920 001AFC 0064+00 1/0 0/0 0/0 .text            Delete__14daObjRBridge_cFv */
int daObjRBridge_c::Delete() {
    mSound.deleteObject();

    dComIfG_resDelete(&mPhase, l_arcName[mType]);
    dComIfG_resDelete(&mRopePhase, l_ropeArcName);
    return 1;
}

/* 80597920-80597A90 001B60 0170+00 1/0 0/0 0/0 .text daObjRBridge_create1st__FP14daObjRBridge_c
 */
static int daObjRBridge_create1st(daObjRBridge_c* a_this) {
    fopAcM_SetupActor(a_this, daObjRBridge_c);
    return a_this->create1st();
}

/* 80597CC0-80597CE0 001F00 0020+00 1/0 0/0 0/0 .text
 * daObjRBridge_MoveBGDelete__FP14daObjRBridge_c                */
static int daObjRBridge_MoveBGDelete(daObjRBridge_c* a_this) {
    return a_this->MoveBGDelete();
}

/* 80597CE0-80597D00 001F20 0020+00 1/0 0/0 0/0 .text
 * daObjRBridge_MoveBGExecute__FP14daObjRBridge_c               */
static int daObjRBridge_MoveBGExecute(daObjRBridge_c* a_this) {
    return a_this->MoveBGExecute();
}

/* 80597D00-80597D2C 001F40 002C+00 1/0 0/0 0/0 .text daObjRBridge_MoveBGDraw__FP14daObjRBridge_c
 */
static int daObjRBridge_MoveBGDraw(daObjRBridge_c* a_this) {
    return a_this->MoveBGDraw();
}

/* 8059803C-8059805C -00001 0020+00 1/0 0/0 0/0 .data            daObjRBridge_METHODS */
static actor_method_class daObjRBridge_METHODS = {
    (process_method_func)daObjRBridge_create1st,
    (process_method_func)daObjRBridge_MoveBGDelete,
    (process_method_func)daObjRBridge_MoveBGExecute,
    (process_method_func)NULL,
    (process_method_func)daObjRBridge_MoveBGDraw,
};

/* 8059805C-8059808C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_RopeBridge */
extern actor_process_profile_definition g_profile_Obj_RopeBridge = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_RopeBridge,    // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjRBridge_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  16,                     // mPriority
  &daObjRBridge_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
