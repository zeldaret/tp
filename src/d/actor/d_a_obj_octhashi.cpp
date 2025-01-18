/**
 * @file d_a_obj_octhashi.cpp
 * 
*/

#include "d/actor/d_a_obj_octhashi.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"
#include "d/d_resorce.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_bg_w.h"
#include "d/d_cc_uty.h"

//
// Declarations:
//

/* ############################################################################################## */
/* 80CA6480-80CA64C0 000000 0040+00 6/6 0/0 0/0 .rodata          ccSphSrc$3655 */
const static dCcD_SrcSph ccSphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x13}, {0x104002, 0x1f}, 0x7f}}, // mObj
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x1}, // mGObjAt
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 400.0f} // mSph
    } // mSphAttr
};

/* 80CA6550-80CA6550 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
static const char* l_arcName[1] = {
    "Octhashi"
};

/* 80CA6588-80CA65CC 000004 0044+00 1/1 0/0 0/0 .data            ccCylSrc$3656 */
static dCcD_SrcCyl ccCylSrc = {
    {
        {0x0, {{0x0, 0x0, 0xd}, {0x104002, 0x1f}, 0x75}}, // mObj
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x1}, // mGObjAt
        {dCcD_SE_STONE, 0x2, 0x0, 0x0, 0x1}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        400.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

static u8 lbl_584_bss_0 = 0;

/* 80CA4BB8-80CA4D98 000078 01E0+00 1/1 0/0 0/0 .text            initCcCylinder__15daObjOCTHASHI_cFv
 */
void daObjOCTHASHI_c::initCcCylinder() {
    // NONMATCHING
    if (lbl_584_bss_0 == 0) {
        ccCylSrc.mCyl.mHeight = (f32)(mCylinders + 1) * 800.0f - 100.f;
        lbl_584_bss_0 = 1;
    }
    for (int idx = 0; idx < mCylinders; ++idx) {
        field_0x7ac[idx].Init(200, 0xff, this);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(shape_angle.y);
        mDoMtx_stack_c::transM(0.0f, (f32)idx * 800.0f + 400.0f, 0.0f);
        mDoMtx_stack_c::multVecZero(&field_0x5a0[idx]);
        mColliders[idx].Set(ccSphSrc);
        mColliders[idx].SetStts(&field_0x7ac[idx]);
        mColliders[idx].SetC(field_0x5a0[idx]); // Correct? Incorrect?
        mColliders[idx].OnCoSameActorHit();
    }
    mCyl.Set(ccCylSrc);
    mCyl.SetC(current.pos);
    mCyl.OnCoSameActorHit();
}

/* 80CA4D98-80CA4DB8 000258 0020+00 1/0 0/0 0/0 .text daObjOCTHASHI_Create__FP10fopAc_ac_c */
static int daObjOCTHASHI_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjOCTHASHI_c*>(i_this)->create();
}

/* 80CA4DB8-80CA4DFC 000278 0044+00 1/0 0/0 0/0 .text daObjOCTHASHI_Delete__FP15daObjOCTHASHI_c */
static int daObjOCTHASHI_Delete(daObjOCTHASHI_c* i_this) {
    // NONMATCHING
    fopAcM_GetID(i_this);
    i_this->MoveBGDelete();
    return 1;
}

/* 80CA4DFC-80CA4EA4 0002BC 00A8+00 1/1 0/0 0/0 .text            SetCoSph__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SetCoSph() {
    // NONMATCHING
    for (unsigned idx = 0; idx < mCylinders; ++idx) {
        mColliders[idx].OffCoSameActorHit();
        mColliders[idx].SetR(470.0f);
        mColliders[idx].SetC(field_0x5a0[idx]);
        dComIfG_Ccsp()->Set(&mColliders[idx]);
    }
}

/* ############################################################################################## */
/* 80CA64DC-80CA64E0 00005C 0004+00 1/1 0/0 0/0 .rodata          @3718 */
SECTION_RODATA static f32 const lit_3718 = 790.0f;
COMPILER_STRIP_GATE(0x80CA64DC, &lit_3718);

/* 80CA4EA4-80CA4F24 000364 0080+00 1/1 0/0 0/0 .text            SetCoCyl__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SetCoCyl() {
    // NONMATCHING
}

/* 80CA4F24-80CA52F0 0003E4 03CC+00 1/1 0/0 0/0 .text            HakaiSet2__15daObjOCTHASHI_cFi */
void daObjOCTHASHI_c::HakaiSet2(int param_0) {
    // NONMATCHING
    for (int idx = param_0 - 1; idx >= 0; --idx) {
        field_0x6d8 += 10.0f;
        field_0x600[idx].set(0.0f, field_0x600[idx + 1].y * 0.8f, field_0x6d8);

        int spA = field_0x6cc + cM_rndFX(8000.0f);
        mDoMtx_stack_c::YrotS(spA);
        mDoMtx_stack_c::multVec(&field_0x600[idx], &field_0x600[idx]);
        if (field_0x600[idx].y > 0.0f) {
            field_0x600[idx].y = -field_0x600[idx].y;
        }
        field_0x6dc = field_0x6dc * 0.8f;
        field_0x6de = field_0x6de * 0.8f;
        field_0x690[idx].set(field_0x6dc, 0, field_0x690[idx + 1].z * 0.6f);
        field_0x660[idx].y = spA - shape_angle.y;
        dComIfGp_particle_set(0x87eb, &field_0x5a0[idx], NULL, &field_0x660[idx], NULL);
    }

    for (int idx = param_0 + 1; idx < mCylinders; ++idx) {
        field_0x6d4 += 10.0f;
        field_0x600[idx].set(0.0f, -field_0x600[idx-1].y * 0.8f, field_0x6d4);

        int sp8 = field_0x6cc + cM_rndFX(8000.0f);
        mDoMtx_stack_c::multVec(&field_0x600[idx], &field_0x600[idx]);
        if (field_0x600[idx].y < 0.0f) {
            field_0x600[idx].y = -field_0x600[idx].y;
        }
        field_0x690[idx].set(field_0x690[idx - 1].x * 0.7f, 0, field_0x690[idx - 1].z * 0.7f);
        field_0x660[idx].y = sp8 - shape_angle.y;
        dComIfGp_particle_set(0x87eb, &field_0x5a0[idx], NULL, &field_0x660[idx], NULL);
    }

    field_0x6c8 = 1;
}

/* 80CA52F0-80CA546C 0007B0 017C+00 1/1 0/0 0/0 .text            HakaiMotion2__15daObjOCTHASHI_cFv
 */
void daObjOCTHASHI_c::HakaiMotion2() {
    // NONMATCHING
    cXyz cStack_20(7.0f, 7.0f, 7.0f);
    csXyz cStack_28(0, 0, 0);
    int num_processed = 0;
    for (int idx = 0; idx < mCylinders; ++idx) {
        field_0x660[idx] += field_0x690[idx];
        field_0x600[idx].y += gravity;
        field_0x5a0[idx] += field_0x600[idx];
        if (field_0x5a0[idx].y < field_0x6d0) {
            if (field_0x6c0[idx] == 0) {
                dComIfGp_particle_set(0x8c6e, &field_0x5a0[idx], &tevStr, &cStack_28, &cStack_20);
            }
            field_0x6c0[idx] = 1;
            field_0x5a0[idx].y = field_0x6d0;
            field_0x600[idx].set(0.0f, 0.0f, 0.0f);
            field_0x690[idx].set(0, 0, 0);
            ++num_processed;
            if (num_processed == mCylinders) {
                ++field_0x6cb;
            }
        }
    }
}

/* 80CA54E4-80CA55C4 0009A4 00E0+00 1/1 0/0 0/0 .text            CylAction__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::CylAction() {
    if (mCyl.ChkTgHit()) {
        eyePos = *mCyl.GetTgHitPosP();
        cCcD_Obj* my_obj = mCyl.GetTgHitObj();
        def_se_set(&mSound, my_obj, 0x2a, NULL);
        mCyl.ClrTgHit();
    }
    if (mCyl.ChkCoHit() && mCyl.GetCoHitObj()->GetStts()->GetWeightUc() == 0xff) {
        field_0x6cb += 1;
        if (mpBgW && mpBgW->ChkUsed()) {
             dComIfG_Bgsp().Release(mpBgW);
        }
    }
}

/* ############################################################################################## */
/* 80CA6500-80CA6508 000080 0008+00 0/0 0/0 0/0 .rodata          @3887 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3887[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA6500, &lit_3887);
#pragma pop

/* 80CA6508-80CA6510 000088 0008+00 0/0 0/0 0/0 .rodata          @3888 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3888[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA6508, &lit_3888);
#pragma pop

/* 80CA6510-80CA6518 000090 0008+00 0/0 0/0 0/0 .rodata          @3889 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3889[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80CA6510, &lit_3889);
#pragma pop

/* 80CA6518-80CA651C 000098 0004+00 0/0 0/0 0/0 .rodata          @3890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3890 = 2000.0f;
COMPILER_STRIP_GATE(0x80CA6518, &lit_3890);
#pragma pop

/* 80CA651C-80CA6520 00009C 0004+00 0/0 0/0 0/0 .rodata          @3903 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3903 = 608.0f;
COMPILER_STRIP_GATE(0x80CA651C, &lit_3903);
#pragma pop

/* 80CA6520-80CA6524 0000A0 0004+00 0/0 0/0 0/0 .rodata          @3904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3904 = 448.0f;
COMPILER_STRIP_GATE(0x80CA6520, &lit_3904);
#pragma pop

/* 80CA55C4-80CA5844 000A84 0280+00 1/1 0/0 0/0 .text            SphAction__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SphAction() {
    // NONMATCHING
    for (int idx = 0; idx < mCylinders; ++idx) {
        dCcD_Sph* sph = &mColliders[idx];
        if (sph->ChkCoHit()) {
            fopAc_ac_c* hit_actor = dCc_GetAc(sph->GetCoHitObj()->GetAc());
            if (sph->GetCoHitObj()->GetStts()->GetWeightUc() == 0xff) {
                cXyz& hit_actor_pos = fopAcM_GetPosition(hit_actor);
                field_0x6cc = cLib_targetAngleY(&field_0x5a0[idx], &hit_actor_pos);
                if (field_0x6c8 == 0) {
                    field_0x6d4 = -40.0f;
                    field_0x6d8 = -40.0f;
                    field_0x600[idx].set(0.0f, (field_0x5a0[idx].y - hit_actor_pos.y)*0.8f, field_0x6d4);
                    field_0x690[idx].x = 0x200;
                    field_0x6dc = -field_0x690[idx].x;
                    field_0x690[idx].y = 0;
                    field_0x6de = -field_0x690[idx].y;
                    field_0x660[idx].y = field_0x6cc - shape_angle.y;
                    Z2GetAudioMgr()->seStart(JAISoundID(0x70354), &field_0x5a0[idx],
                                             0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                    HakaiSet2(idx);
                    field_0x6e4 = idx;
                } else {
                    field_0x6e4 = 7;
                    field_0x690[idx].x = cM_rndFX(500.0f);
                    field_0x690[idx].y = cM_rndFX(500.0f);
                    field_0x600[idx].set(cM_rndFX(10.0f), 15.0f, -15.0f);
                }
                mDoMtx_stack_c::YrotS(field_0x6cc);
                mDoMtx_stack_c::multVec(&field_0x600[idx], &field_0x600[idx]);
                break;
            }
        }
    }
    if (field_0x6c8 != 0) {
        HakaiMotion2();
        for (int idx = 0; idx < mCylinders; ++idx) {
            cXyz* cc_move_p = field_0x7ac[idx].GetCCMoveP();
            if (cc_move_p != NULL) {
                (*cc_move_p) *= 0.5f;
                field_0x5a0[idx] += *cc_move_p;
            }
        }
    }
    return;
}

/* 80CA5844-80CA58F4 000D04 00B0+00 1/1 0/0 0/0 .text            SphAction2__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::SphAction2() {
    for (int idx = 0; idx < mCylinders; ++idx) {
        if (mColliders[idx].ChkTgHit()) {
            cCcD_Obj* my_obj = mColliders[idx].GetTgHitObj();
            eyePos = *mColliders[idx].GetTgHitPosP();
            def_se_set(&mSound, my_obj, 0x2a, NULL);
            mColliders[idx].ClrTgHit();
        }
    }
}

/* 80CA58F4-80CA59BC 000DB4 00C8+00 1/1 0/0 0/0 .text            Action__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::Action() {
    switch (field_0x6cb) {
        case 0:
            field_0x6e8 -= 1;
            if (field_0x6e8 <= 0) {
                field_0x6e8 = 0;
            }
            if (field_0x6e8 == 0) {
                mCyl.OnTgSetBit();
            } else {
                mCyl.OffTgSetBit();
            }
            CylAction();
            SetCoCyl();
            break;
        case 1:
            SphAction();
            SetCoSph();
            break;
        case 2:
            SphAction2();
            SetCoSph();
            break;
    }
}

/* 80CA59BC-80CA5A88 000E7C 00CC+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjOCTHASHI_cFv */
void daObjOCTHASHI_c::setBaseMtx() {
    // NONMATCHING
    for (int idx = 0; idx < mCylinders; ++idx) {
        mDoMtx_stack_c::transS(field_0x5a0[idx]);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::ZXYrotM(field_0x660[idx]);
        mDoMtx_stack_c::transM(0.0f, -400.0f, 0.0f);
        mpModel[idx]->setBaseTRMtx(mDoMtx_stack_c::get());
    }
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80CA5A88-80CA5A94 000F48 000C+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* param_0, fopAc_ac_c* param_1, fopAc_ac_c* param_2) {
    static_cast<daObjOCTHASHI_c*>(param_1)->Set_0x6e8(0x1e);
}

/* 80CA5A94-80CA5AC0 000F54 002C+00 1/0 0/0 0/0 .text daObjOCTHASHI_Draw__FP15daObjOCTHASHI_c */
static int daObjOCTHASHI_Draw(daObjOCTHASHI_c* i_this) {
    return i_this->Draw();
}

/* 80CA5AC0-80CA5AE0 000F80 0020+00 2/1 0/0 0/0 .text daObjOCTHASHI_Execute__FP15daObjOCTHASHI_c
 */
static int daObjOCTHASHI_Execute(daObjOCTHASHI_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CA5AE0-80CA5B98 000FA0 00B8+00 1/0 0/0 0/0 .text            CreateHeap__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::CreateHeap() {
    // NONMATCHING
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName[0], "S_octhashi00.bmd");

    if (modelData == NULL) {
        // FIXME: For shield decomp matching, needs a JUT assert.
    }

    int idx = 0;
    while (idx < mCylinders) {
        mpModel[idx] = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mpModel[idx] == NULL) {
            return 0;
        }
        ++idx;
    }

    return 1;
}

// FIXME: Does this go here?
static bool daObjOCTHASHI_IsDelete(daObjOCTHASHI_c* param_0);

/* 80CA65CC-80CA65EC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjOCTHASHI_Method */
static actor_method_class l_daObjOCTHASHI_Method = {
    (process_method_func)daObjOCTHASHI_Create,
    (process_method_func)daObjOCTHASHI_Delete,
    (process_method_func)daObjOCTHASHI_Execute,
    (process_method_func)daObjOCTHASHI_IsDelete,
    (process_method_func)daObjOCTHASHI_Draw,
};

/* 80CA65EC-80CA661C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OCTHASHI */
extern actor_process_profile_definition g_profile_OCTHASHI = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_OCTHASHI,           // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjOCTHASHI_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  465,                     // mPriority
  &l_daObjOCTHASHI_Method, // sub_method
  0x00040000,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80CA5B98-80CA5EE4 001058 034C+00 1/1 0/0 0/0 .text            create__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daObjOCTHASHI_c);
    mCylinders = fopAcM_GetParam(this) & 0xff;
    if (mCylinders == 0xff) {
        mCylinders = 0;
    }
    mCylinders = 8 - mCylinders;
    int iVar1 = mCylinders * 0x8d3;
    int phase = dComIfG_resLoad(&mPhaseReq, l_arcName[0]);
    if (phase == cPhs_COMPLEATE_e) {
        BOOL is_stage_boss_enemy = dComIfGs_isStageBossEnemy();
        if (is_stage_boss_enemy && dComIfGp_getStartStageRoomNo() == '2') {
            if (strcmp("D_MN01A", dComIfGp_getStartStageName()) == 0) {
                return cPhs_ERROR_e;
            }
        }
        gravity = -1.0f;
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName[0], "S_octhashi100.dzb");
        JUT_ASSERT(958, dzb_id != -1);
        phase = MoveBGCreate(l_arcName[0], dzb_id, dBgS_MoveBGProc_TypicalRotY, iVar1, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
        mSound.init(&eyePos, &eyePos, 3, 1);
        field_0x6cb = 0;
        fopAcM_SetMtx(this, mpModel[0]->getBaseTRMtx());
        initCcCylinder();
        cXyz pos(current.pos.x, current.pos.y + 100, current.pos.z);
        if (fopAcM_gc_c::gndCheck(&pos) & 0xff) {
            field_0x6d0 = fopAcM_gc_c::mGroundY;
        }
        fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);
        field_0x6e4 = 7;
        daObjOCTHASHI_Execute(this);
    }
    return phase;
}

/* 80CA6254-80CA625C 001714 0008+00 1/0 0/0 0/0 .text daObjOCTHASHI_IsDelete__FP15daObjOCTHASHI_c
 */
static bool daObjOCTHASHI_IsDelete(daObjOCTHASHI_c* param_0) {
    return true;
}

/* 80CA62A4-80CA62F8 001764 0054+00 1/0 0/0 0/0 .text            Create__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::Create() {
    // NONMATCHING
    mpBgW->SetRideCallback(rideCallBack);
    fopAcM_setCullSizeBox(this, -1000.0f, -500.0f, -1000.0f, 1000.0f, 500.0f, 1000.0f);
    return 4;
}

/* 80CA62F8-80CA636C 0017B8 0074+00 1/0 0/0 0/0 .text Execute__15daObjOCTHASHI_cFPPA3_A4_f */
int daObjOCTHASHI_c::Execute(Mtx **i_mtx) {
    // NONMATCHING
    Action();
    *i_mtx = &mpModel[0]->getBaseTRMtx();
    setBaseMtx();
    s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
    mSound.framework(0, reverb);
    return 1;
}

/* 80CA636C-80CA6444 00182C 00D8+00 1/0 0/0 0/0 .text            Draw__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::Draw() {
    // NONMATCHING
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    for (int idx = 0; idx < mCylinders; ++idx) {
        g_env_light.setLightTevColorType_MAJI(mpModel[idx], &tevStr);
    }
    dComIfGd_setListBG();
    for (int idx = 0; idx < mCylinders; ++idx) {
        mDoExt_modelUpdateDL(mpModel[idx]);
    }
    return 1;
}

/* 80CA6444-80CA6478 001904 0034+00 1/0 0/0 0/0 .text            Delete__15daObjOCTHASHI_cFv */
int daObjOCTHASHI_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName[0]);
    return 1;
}

/* 80CA6550-80CA6550 0000D0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
