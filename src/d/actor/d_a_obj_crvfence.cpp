/**
 * @file d_a_obj_crvfence.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_crvfence.h"
#include "d/d_s_play.h"
#include "d/actor/d_a_e_wb.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" void CheckVec__15daObjCRVFENCE_cFv();
extern "C" void __dt__4cXyzFv();
extern "C" void Wall_Check__15daObjCRVFENCE_cF4cXyz4cXyz();
extern "C" static void daObjCRVFENCE_Create__FP10fopAc_ac_c();
extern "C" static void daObjCRVFENCE_Delete__FP15daObjCRVFENCE_c();
extern "C" void BgRelease__15daObjCRVFENCE_cFv();
extern "C" void PosSet__15daObjCRVFENCE_cFP4cXyz();
extern "C" void FenceMove__15daObjCRVFENCE_cFRUcP4cXyzP5csXyzP4cXyzRs();
extern "C" void BrokenAction__15daObjCRVFENCE_cFv();
extern "C" static void s_obj_sub__FPvPv();
extern "C" void NormalAction__15daObjCRVFENCE_cFv();
extern "C" void checkViewArea__15daObjCRVFENCE_cFP4cXyz();
extern "C" void Action__15daObjCRVFENCE_cFv();
extern "C" void setBaseMtx__15daObjCRVFENCE_cFv();
extern "C" static void daObjCRVFENCE_Draw__FP15daObjCRVFENCE_c();
extern "C" static void daObjCRVFENCE_Execute__FP15daObjCRVFENCE_c();
extern "C" void CreateHeap__15daObjCRVFENCE_cFv();
extern "C" void create__15daObjCRVFENCE_cFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __ct__4cXyzFv();
extern "C" static bool daObjCRVFENCE_IsDelete__FP15daObjCRVFENCE_c();
extern "C" void Create__15daObjCRVFENCE_cFv();
extern "C" void Execute__15daObjCRVFENCE_cFPPA3_A4_f();
extern "C" void Draw__15daObjCRVFENCE_cFv();
extern "C" void Delete__15daObjCRVFENCE_cFv();
extern "C" static void func_80BD0170();
extern "C" static void func_80BD0178();
extern "C" extern char const* const d_a_obj_crvfence__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void mDoLib_project__FP3VecP3Vec();
extern "C" void fopAc_IsActor__FPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void gndCheck__11fopAcM_gc_cFPC4cXyz();
extern "C" void fpcEx_Search__FPFPvPv_PvPv();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void getObjectResName2Index__14dRes_control_cFPCcPCc();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void Release__4cBgSFP9dBgW_Base();
extern "C" void LineCross__4cBgSFP11cBgS_LinChk();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void __ct__11dBgS_LinChkFv();
extern "C" void __dt__11dBgS_LinChkFv();
extern "C" void Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __ct__5csXyzFsss();
extern "C" void ChkUsed__9cBgW_BgIdCFv();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void __construct_array();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" f32 mGroundY__11fopAcM_gc_c;
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

/* 80BCEC98-80BCED24 000078 008C+00 2/2 0/0 0/0 .text            CheckVec__15daObjCRVFENCE_cFv */
BOOL daObjCRVFENCE_c::CheckVec() {
    cXyz sp58(fopAcM_GetPosition((fopAc_ac_c*)daPy_getPlayerActorClass()));
    Mtx mtx;
    mDoMtx_inverse(field_0x65c->getBaseTRMtx(), mtx);
    mDoMtx_stack_c::copy(mtx);
    mDoMtx_stack_c::multVec(&sp58, &sp58);

    return sp58.z > 0.0f;
}

/* 80BCED60-80BCEE1C 000140 00BC+00 1/1 0/0 0/0 .text Wall_Check__15daObjCRVFENCE_cF4cXyz4cXyz */
BOOL daObjCRVFENCE_c::Wall_Check(cXyz i_start, cXyz param_2) {
    dBgS_LinChk lin_chk;
    cXyz i_end(i_start.x + param_2.x, i_start.y, i_start.z + param_2.z);
    lin_chk.Set(&i_start, &i_end, NULL);

    if (dComIfG_Bgsp().LineCross(&lin_chk) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

/* 80BCEE1C-80BCEE3C 0001FC 0020+00 1/0 0/0 0/0 .text daObjCRVFENCE_Create__FP10fopAc_ac_c */
static int daObjCRVFENCE_Create(fopAc_ac_c* a_this) {
    return static_cast<daObjCRVFENCE_c*>(a_this)->create();
}

/* 80BCEE3C-80BCEE60 00021C 0024+00 1/0 0/0 0/0 .text daObjCRVFENCE_Delete__FP15daObjCRVFENCE_c */
static int daObjCRVFENCE_Delete(daObjCRVFENCE_c* a_this) {
    static_cast<daObjCRVFENCE_c*>(a_this)->MoveBGDelete();
    return 1;
}

/* 80BCEE60-80BCEED0 000240 0070+00 1/1 0/0 0/0 .text            BgRelease__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::BgRelease() {
    // NONMATCHING
    if (mpBgW != NULL) {
        if (mpBgW->ChkUsed() && dComIfG_Bgsp().Release(mpBgW)) {
            OSReport("Release Error\n");
        }
    }
}

/* 80BCEED0-80BCEF30 0002B0 0060+00 1/1 0/0 0/0 .text            PosSet__15daObjCRVFENCE_cFP4cXyz */
void daObjCRVFENCE_c::PosSet(cXyz* param_1) {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::multVec(param_1, param_1);
}

/* 80BCEF30-80BCF0B0 000310 0180+00 1/1 0/0 0/0 .text            FenceMove__15daObjCRVFENCE_cFRUcP4cXyzP5csXyzP4cXyzRs */
void daObjCRVFENCE_c::FenceMove(u8& param_1, cXyz* param_2, csXyz* param_3, cXyz* param_4, s16& param_5) {
    if (param_1 <= 3) {
        f32 fVar1 = 20.0f;
        param_2->y += -9.0f;

        if (Wall_Check(*param_4, *param_2)) {
            param_2->x = -0.5f * param_2->x;
        }

        if (param_1 == 0) {
            cLib_chaseAngleS(&param_3->y, param_5, 0x700);
            fVar1 = 100.0f;
        } else {
            cLib_chaseAngleS(&param_3->x, param_5, 0x700);
        }

        *param_4 += *param_2;

        if (param_2->y < 0.0f && field_0x640 + fVar1 >= param_4->y) {
            param_1++;
            param_4->y = field_0x640 + fVar1;
            param_2->y = -(HREG_F(0) + 0.7f) * param_2->y;
            param_2->x = (HREG_F(0) + 0.7f) * param_2->x;
            param_2->z = (HREG_F(0) + 0.7f) * param_2->z;
        }
    }
}

/* 80BCF0B0-80BCF390 000490 02E0+00 1/1 0/0 0/0 .text            BrokenAction__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::BrokenAction() {
    switch (field_0x5a0) {
        case 0:
            field_0x5ac.set(180.0f, 180.0f, 0.0f);
            field_0x5d0.set(-180.0f, 180.0f, 0.0f);
            PosSet(&field_0x5d0);
            PosSet(&field_0x5ac);
            field_0x5f0 = -0x4000;
            field_0x5cc = 0x4000;
            field_0x5f2 = -field_0x5f0;

            if (field_0x644 < 3) {
                field_0x5b8.set(15.0f, 30.0f, 20.0f);
                field_0x5dc.set(-25.0f, 40.0f, 30.0f);
                mDoMtx_stack_c::YrotS(shape_angle.y);
                mDoMtx_stack_c::multVec(&field_0x5b8, &field_0x5b8);
                mDoMtx_stack_c::multVec(&field_0x5dc, &field_0x5dc);
            } else {
                field_0x5b8.set(25.0f, 40.0f, 30.0f);
                field_0x5dc.set(-15.0f, 30.0f, 20.0f);
                mDoMtx_stack_c::YrotS(shape_angle.y);
                mDoMtx_stack_c::multVec(&field_0x5b8, &field_0x5b8);
                mDoMtx_stack_c::multVec(&field_0x5dc, &field_0x5dc);
            }

            if (CheckVec()) {
                field_0x5b8.set(field_0x5b8.x, field_0x5b8.y, -field_0x5b8.z);
                field_0x5dc.set(field_0x5dc.x, field_0x5dc.y, -field_0x5dc.z);
                field_0x5f0 = 0x4000;
                field_0x5cc = -0x4000;
                field_0x5f2 = -field_0x5f0;
                field_0x5aa = -field_0x5aa;
            }

            field_0x5a0 = 1;
            break;
        
        case 1:
            if (field_0x5ee == 0) {
                FenceMove(field_0x5ee, &field_0x5dc, &field_0x5e8, &field_0x5d0, field_0x5f0);
            } else {
                FenceMove(field_0x5ee, &field_0x5dc, &field_0x5e8, &field_0x5d0, field_0x5f2);
            }

            FenceMove(field_0x5ca, &field_0x5b8, &field_0x5c4, &field_0x5ac, field_0x5cc);

            if (field_0x5ee > 3 && field_0x5ca > 3 && !checkViewArea(&field_0x5d0) && !checkViewArea(&field_0x5ac) && fopAcM_searchPlayerDistance(this) > 1000.0f) {
                if (field_0x5a8 != 0xFF && !dComIfGs_isSwitch(field_0x5a8, fopAcM_GetRoomNo(this))) {
                    dComIfGs_onSwitch(field_0x5a8, fopAcM_GetRoomNo(this));
                }

                fopAcM_delete(this);
            }
            break;

    }
}

/* 80BCF390-80BCF404 000770 0074+00 1/1 0/0 0/0 .text            s_obj_sub__FPvPv */
static void* s_obj_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_searchActorDistance((fopAc_ac_c*)i_data, (fopAc_ac_c*)i_actor) < 600.0f && fopAcM_GetName(i_actor) == PROC_E_WB) {
        return i_actor;
    }

    return NULL;
}

/* ############################################################################################## */
/* 80BD01CC-80BD01D0 000044 0004+00 1/2 0/0 0/0 .rodata          @3953 */
SECTION_RODATA static f32 const lit_3953 = 1.0f;
COMPILER_STRIP_GATE(0x80BD01CC, &lit_3953);

/* 80BD01D0-80BD01D4 000048 0004+00 0/1 0/0 0/0 .rodata          @3954 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3954 = -1.0f;
COMPILER_STRIP_GATE(0x80BD01D0, &lit_3954);
#pragma pop

/* 80BD01D4-80BD01D8 00004C 0004+00 0/1 0/0 0/0 .rodata          @3955 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3955 = 150.0f;
COMPILER_STRIP_GATE(0x80BD01D4, &lit_3955);
#pragma pop

/* 80BD01D8-80BD01DC 000050 0004+00 0/1 0/0 0/0 .rodata          @3956 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3956 = 300.0f;
COMPILER_STRIP_GATE(0x80BD01D8, &lit_3956);
#pragma pop

/* 80BD01DC-80BD01E0 000054 0004+00 0/1 0/0 0/0 .rodata          @3957 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3957 = -200.0f;
COMPILER_STRIP_GATE(0x80BD01DC, &lit_3957);
#pragma pop

/* 80BD01E0-80BD01E4 000058 0004+00 0/1 0/0 0/0 .rodata          @3958 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3958 = 50.0f;
COMPILER_STRIP_GATE(0x80BD01E0, &lit_3958);
#pragma pop

/* 80BD01E4-80BD01E8 00005C 0004+00 0/1 0/0 0/0 .rodata          @3959 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3959 = 120.0f;
COMPILER_STRIP_GATE(0x80BD01E4, &lit_3959);
#pragma pop

/* 80BD01E8-80BD01EC 000060 0004+00 0/1 0/0 0/0 .rodata          @3960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3960 = 200.0f;
COMPILER_STRIP_GATE(0x80BD01E8, &lit_3960);
#pragma pop

/* 80BCF404-80BCF7DC 0007E4 03D8+00 1/1 0/0 0/0 .text            NormalAction__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::NormalAction() {
    // NONMATCHING
    if (field_0x5f4 == 0) {
        e_wb_class* wb_p = (e_wb_class*)fpcM_Search(s_obj_sub, this);
        if (wb_p != NULL && wb_p->mActionID == 102) {
            fopAcM_OffStatus(this, fopAcM_STATUS_UNK_000100);
            fopAcM_seStartCurrent(this, Z2SE_OBJ_SAKU_BREAK, 0);
            cXyz sp5c(fopAcM_GetPosition(wb_p));
            Mtx mtx;
            mDoMtx_inverse(field_0x65c->getBaseTRMtx(), mtx);
            mDoMtx_stack_c::copy(mtx);
            mDoMtx_stack_c::multVec(&sp5c, &sp5c);

            if (sp5c.x < 0.0f) {
                field_0x644 = 1;
            } else {
                field_0x644 = 4;
            }

            BgRelease();
            BOOL bVar1 = CheckVec();
        }
    }
}

/* ############################################################################################## */
/* 80BD01EC-80BD01F0 000064 0004+00 0/1 0/0 0/0 .rodata          @3975 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3975 = 608.0f;
COMPILER_STRIP_GATE(0x80BD01EC, &lit_3975);
#pragma pop

/* 80BD01F0-80BD01F4 000068 0004+00 0/1 0/0 0/0 .rodata          @3976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3976 = 448.0f;
COMPILER_STRIP_GATE(0x80BD01F0, &lit_3976);
#pragma pop

/* 80BCF7DC-80BCF860 000BBC 0084+00 1/1 0/0 0/0 .text checkViewArea__15daObjCRVFENCE_cFP4cXyz */
bool daObjCRVFENCE_c::checkViewArea(cXyz* param_0) {
    // NONMATCHING
}

/* 80BCF860-80BCF8A4 000C40 0044+00 1/1 0/0 0/0 .text            Action__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::Action() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD01F4-80BD01F8 00006C 0004+00 1/1 0/0 0/0 .rodata          @4010 */
SECTION_RODATA static f32 const lit_4010 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80BD01F4, &lit_4010);

/* 80BCF8A4-80BCF998 000C84 00F4+00 1/1 0/0 0/0 .text            setBaseMtx__15daObjCRVFENCE_cFv */
void daObjCRVFENCE_c::setBaseMtx() {
    // NONMATCHING
}

/* 80BCF998-80BCF9C4 000D78 002C+00 1/0 0/0 0/0 .text daObjCRVFENCE_Draw__FP15daObjCRVFENCE_c */
static void daObjCRVFENCE_Draw(daObjCRVFENCE_c* param_0) {
    // NONMATCHING
}

/* 80BCF9C4-80BCF9E4 000DA4 0020+00 2/1 0/0 0/0 .text daObjCRVFENCE_Execute__FP15daObjCRVFENCE_c
 */
static void daObjCRVFENCE_Execute(daObjCRVFENCE_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80BD020C-80BD020C 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80BD0224 = "CaravanFence.bmd";
SECTION_DEAD static char const* const stringBase_80BD0235 = "U_CaravanGate_PieceB.bmd";
#pragma pop

/* 80BD0260-80BD0264 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "CrvFence";

/* 80BCF9E4-80BCFAE4 000DC4 0100+00 1/0 0/0 0/0 .text            CreateHeap__15daObjCRVFENCE_cFv */
int daObjCRVFENCE_c::CreateHeap() {
    // NONMATCHING
}

/* 80BD02B4-80BD02C0 000054 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BD02C0-80BD02CC 000060 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 80BD02CC-80BD02F0 00006C 0024+00 2/2 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BD0178,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80BD0170,
};

/* 80BD02F0-80BD0318 000090 0028+00 1/1 0/0 0/0 .data            __vt__15daObjCRVFENCE_c */
SECTION_DATA extern void* __vt__15daObjCRVFENCE_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__15daObjCRVFENCE_cFv,
    (void*)Create__15daObjCRVFENCE_cFv,
    (void*)Execute__15daObjCRVFENCE_cFPPA3_A4_f,
    (void*)Draw__15daObjCRVFENCE_cFv,
    (void*)Delete__15daObjCRVFENCE_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BCFAE4-80BCFD6C 000EC4 0288+00 1/1 0/0 0/0 .text            create__15daObjCRVFENCE_cFv */
cPhs__Step daObjCRVFENCE_c::create() {
    // NONMATCHING
    fopAcM_SetupActor(this, daObjCRVFENCE_c);

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        OS_REPORT("Obj_Fence PARAM %x\n", fopAcM_GetParam(this));

        field_0x5a8 = fopAcM_GetParam(this);
        if (field_0x5a8 != 0xFF) {
            if (dComIfGs_isSwitch(field_0x5a8, fopAcM_GetRoomNo(this))) {
                OS_REPORT("ObjFence再セットしません\n");
                return cPhs_ERROR_e;
            }
        }

        gravity = nREG_F(0) + -9.0f;

        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "CaravanFence.dzb");

        if (dzb_id == -1) {
            OS_REPORT("dzbデータが見つかりませんでした!<%s>\n\n", l_arcName);

            JUT_ASSERT(783, dzb_id != -1)
        }

        phase = (cPhs__Step)MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x1CA0, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }

        mObjAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), NULL, NULL);
        field_0x5a4 = 0;
        fopAcM_SetMtx(this, field_0x65c->getBaseTRMtx());

        cXyz sp30(current.pos.x, current.pos.y + 100.0f, current.pos.z);
        if (fopAcM_gc_c::gndCheck(&sp30)) {
            field_0x640 = fopAcM_gc_c::getGroundY();
        }

        field_0x5aa = shape_angle.y;
        fopAcM_setCullSizeFar(this, 3.0f);
        fopAcM_setCullSizeBox(this, -500.0f, 0.0f, -500.0f, 500.0f, 450.0f, 500.0f);
        daObjCRVFENCE_Execute(this);
    }

    return phase;
}

/* 80BCFD6C-80BCFE38 00114C 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
// dCcD_Sph::~dCcD_Sph() {
extern "C" void __dt__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80BCFE38-80BCFEBC 001218 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
// dCcD_Sph::dCcD_Sph() {
extern "C" void __ct__8dCcD_SphFv() {
    // NONMATCHING
}

/* 80BCFEBC-80BCFF04 00129C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
// cM3dGSph::~cM3dGSph() {
extern "C" void __dt__8cM3dGSphFv() {
    // NONMATCHING
}

/* 80BCFF04-80BCFF4C 0012E4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80BCFF4C-80BCFFBC 00132C 0070+00 3/2 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
// dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" void __dt__12dBgS_ObjAcchFv() {
    // NONMATCHING
}

/* 80BCFFBC-80BCFFC0 00139C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 80BCFFC0-80BCFFC8 0013A0 0008+00 1/0 0/0 0/0 .text daObjCRVFENCE_IsDelete__FP15daObjCRVFENCE_c
 */
static bool daObjCRVFENCE_IsDelete(daObjCRVFENCE_c* param_0) {
    return true;
}

/* ############################################################################################## */
/* 80BD0208-80BD020C 000080 0004+00 0/1 0/0 0/0 .rodata          @4219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4219 = -1000.0f;
COMPILER_STRIP_GATE(0x80BD0208, &lit_4219);
#pragma pop

/* 80BCFFC8-80BD000C 0013A8 0044+00 1/0 0/0 0/0 .text            Create__15daObjCRVFENCE_cFv */
int daObjCRVFENCE_c::Create() {
    // NONMATCHING
}

/* 80BD000C-80BD0058 0013EC 004C+00 1/0 0/0 0/0 .text Execute__15daObjCRVFENCE_cFPPA3_A4_f */
int daObjCRVFENCE_c::Execute(f32 (**param_0)[3][4]) {
    // NONMATCHING
}

/* 80BD0058-80BD013C 001438 00E4+00 1/0 0/0 0/0 .text            Draw__15daObjCRVFENCE_cFv */
int daObjCRVFENCE_c::Draw() {
    // NONMATCHING
}

/* 80BD013C-80BD0170 00151C 0034+00 1/0 0/0 0/0 .text            Delete__15daObjCRVFENCE_cFv */
int daObjCRVFENCE_c::Delete() {
    // NONMATCHING
}

/* 80BD0170-80BD0178 001550 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
static void func_80BD0170() {
    // NONMATCHING
}

/* 80BD0178-80BD0180 001558 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
static void func_80BD0178() {
    // NONMATCHING
}

/* 80BD0264-80BD0284 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjCRVFENCE_Method */
static actor_method_class l_daObjCRVFENCE_Method = {
    (process_method_func)daObjCRVFENCE_Create__FP10fopAc_ac_c,
    (process_method_func)daObjCRVFENCE_Delete__FP15daObjCRVFENCE_c,
    (process_method_func)daObjCRVFENCE_Execute__FP15daObjCRVFENCE_c,
    (process_method_func)daObjCRVFENCE_IsDelete__FP15daObjCRVFENCE_c,
    (process_method_func)daObjCRVFENCE_Draw__FP15daObjCRVFENCE_c,
};

/* 80BD0284-80BD02B4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_CRVFENCE */
extern actor_process_profile_definition g_profile_Obj_CRVFENCE = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_CRVFENCE,       // mProcName
  &g_fpcLf_Method.base,   // sub_method
  sizeof(daObjCRVFENCE_c), // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  467,                     // mPriority
  &l_daObjCRVFENCE_Method, // sub_method
  0x00040180,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};
