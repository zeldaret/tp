/**
 * d_a_obj_bbox.cpp
 * Object - Breaking Wooden Box
 */

#include "rel/d/a/obj/d_a_obj_bbox/d_a_obj_bbox.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/d_procname.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void initBaseMtx__11daObjBBox_cFv();
extern "C" void setBaseMtx__11daObjBBox_cFv();
extern "C" void Create__11daObjBBox_cFv();
extern "C" void CreateHeap__11daObjBBox_cFv();
extern "C" void create1st__11daObjBBox_cFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void Execute__11daObjBBox_cFPPA3_A4_f();
extern "C" void Draw__11daObjBBox_cFv();
extern "C" void Delete__11daObjBBox_cFv();
extern "C" static void daObjBBox_create1st__FP11daObjBBox_c();
extern "C" static void daObjBBox_MoveBGDelete__FP11daObjBBox_c();
extern "C" static void daObjBBox_MoveBGExecute__FP11daObjBBox_c();
extern "C" static void daObjBBox_MoveBGDraw__FP11daObjBBox_c();
extern "C" extern char const* const d_a_obj_bbox__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void __ct__16dBgS_MoveBgActorFv();
extern "C" bool IsDelete__16dBgS_MoveBgActorFv();
extern "C" bool ToFore__16dBgS_MoveBgActorFv();
extern "C" bool ToBack__16dBgS_MoveBgActorFv();
extern "C" void
MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f();
extern "C" void MoveBGDelete__16dBgS_MoveBgActorFv();
extern "C" void MoveBGExecute__16dBgS_MoveBgActorFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_25();
extern "C" void _restgpr_25();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

//
// Declarations:
//

/* 80BACD38-80BACD74 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjBBox_cFv */
void daObjBBox_c::initBaseMtx() {
    mpModel->setBaseScale(mScale);
    setBaseMtx();
}

/* 80BACD74-80BACDD8 0000B4 0064+00 2/2 0/0 0/0 .text            setBaseMtx__11daObjBBox_cFv */
void daObjBBox_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->i_setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BAD474-80BAD4B8 000000 0044+00 2/2 0/0 0/0 .rodata          l_cyl_src */
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1f}, {0xd8000000, 0x11}, 0x78}},  // mObj
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0},                   // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6},                   // mGObjTg
        {0x0},                                                // mGObjCo
    },                                                        // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        90.0f,               // mRadius
        100.0f               // mHeight
    }                        // mCyl
};

/* 80BACDD8-80BACE50 000118 0078+00 1/0 0/0 0/0 .text            Create__11daObjBBox_cFv */
int daObjBBox_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->mBaseTransformMtx);
    mStts.Init(0xff, 0xff, this);
    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());
    return 1;
}

/* 80BAD4D4-80BAD4D8 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "M_BBox";

/* 80BACE50-80BACEC0 000190 0070+00 1/0 0/0 0/0 .text            CreateHeap__11daObjBBox_cFv */
int daObjBBox_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel != NULL ? 1 : 0;
}

/* ############################################################################################## */
/* 80BAD4D8-80BAD4F8 -00001 0020+00 1/0 0/0 0/0 .data            daObjBBox_METHODS */
SECTION_DATA static void* daObjBBox_METHODS[8] = {
    (void*)daObjBBox_create1st__FP11daObjBBox_c,
    (void*)daObjBBox_MoveBGDelete__FP11daObjBBox_c,
    (void*)daObjBBox_MoveBGExecute__FP11daObjBBox_c,
    (void*)NULL,
    (void*)daObjBBox_MoveBGDraw__FP11daObjBBox_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80BAD4F8-80BAD528 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BBox */
SECTION_DATA extern void* g_profile_Obj_BBox[12] = {
    (void*)0xFFFFFFFD, (void*)0x0003FFFD,
    (void*)0x007A0000, (void*)&g_fpcLf_Method,
    (void*)0x00000724, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x01F30000, (void*)&daObjBBox_METHODS,
    (void*)0x00040100, (void*)0x000E0000,
};

/* 80BAD528-80BAD534 000054 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80BAD534-80BAD540 000060 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80BAD540-80BAD568 00006C 0028+00 2/2 0/0 0/0 .data            __vt__11daObjBBox_c */
SECTION_DATA extern void* __vt__11daObjBBox_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__11daObjBBox_cFv,
    (void*)Create__11daObjBBox_cFv,
    (void*)Execute__11daObjBBox_cFPPA3_A4_f,
    (void*)Draw__11daObjBBox_cFv,
    (void*)Delete__11daObjBBox_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 80BACEC0-80BAD030 000200 0170+00 1/1 0/0 0/0 .text            create1st__11daObjBBox_cFv */
#ifdef NONMATCHING
// vtable explosion
int daObjBBox_c::create1st() {
    fopAcM_SetupActor(this, daObjBBox_c);

    if (i_fopAcM_isSwitch(this, getSwNo())) {
        return cPhs_ERROR_e;
    }
    int phase = dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        phase = MoveBGCreate(l_arcName, 7, NULL, 0xC00, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }
    return phase;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daObjBBox_c::create1st() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bbox/d_a_obj_bbox/create1st__11daObjBBox_cFv.s"
}
#pragma pop
#endif

/* 80BAD030-80BAD078 000370 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bbox/d_a_obj_bbox/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 80BAD078-80BAD0C0 0003B8 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bbox/d_a_obj_bbox/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 80BAD4B8-80BAD4C4 000044 000A+02 0/1 0/0 0/0 .rodata          particle_id$3793 */
#pragma push
#pragma force_active on
static const u16 particle_id[5] = {
    0x83B0, 0x83B1, 0x83B2, 0x83B3, 0x83B4,
};
#pragma pop

/* 80BAD0C0-80BAD234 000400 0174+00 1/0 0/0 0/0 .text            Execute__11daObjBBox_cFPPA3_A4_f */
int daObjBBox_c::Execute(Mtx** i_mtx) {
    if (mCyl.ChkTgHit() != 0) {
        cCcD_Obj* hitObj = mCyl.GetTgHitObj();
        if (hitObj != NULL) {
            if (hitObj->ChkAtType(0xd8000000)) {
                for (int i = 0; i < 5; i++) {
                    dComIfGp_particle_set(particle_id[i], &current.pos, NULL, &mScale, 0xff, NULL,
                                          -1, NULL, NULL, NULL);
                }
                fopAcM_seStart(this, Z2SE_OBJ_WOODBOX_BREAK, 0);
                i_fopAcM_onSwitch(this, getSwNo());
                fopAcM_delete(this);
            }
        }
    }
    *i_mtx = &mBgMtx;
    setBaseMtx();
    mCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl);
    return 1;
}

/* 80BAD234-80BAD2D8 000574 00A4+00 1/0 0/0 0/0 .text            Draw__11daObjBBox_cFv */
int daObjBBox_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &mTevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &mTevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80BAD2D8-80BAD30C 000618 0034+00 1/0 0/0 0/0 .text            Delete__11daObjBBox_cFv */
int daObjBBox_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80BAD30C-80BAD400 00064C 00F4+00 1/0 0/0 0/0 .text daObjBBox_create1st__FP11daObjBBox_c */
#ifdef NONMATCHING
// vtable explosion
static int daObjBBox_create1st(daObjBBox_c* i_this) {
    fopAcM_SetupActor(i_this, daObjBBox_c);
    return i_this->create1st();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daObjBBox_create1st(daObjBBox_c* i_this) {
    nofralloc
#include "asm/rel/d/a/obj/d_a_obj_bbox/d_a_obj_bbox/daObjBBox_create1st__FP11daObjBBox_c.s"
}
#pragma pop
#endif

/* 80BAD400-80BAD420 000740 0020+00 1/0 0/0 0/0 .text daObjBBox_MoveBGDelete__FP11daObjBBox_c */
static int daObjBBox_MoveBGDelete(daObjBBox_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80BAD420-80BAD440 000760 0020+00 1/0 0/0 0/0 .text daObjBBox_MoveBGExecute__FP11daObjBBox_c */
static int daObjBBox_MoveBGExecute(daObjBBox_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BAD440-80BAD46C 000780 002C+00 1/0 0/0 0/0 .text daObjBBox_MoveBGDraw__FP11daObjBBox_c */
static int daObjBBox_MoveBGDraw(daObjBBox_c* i_this) {
    return i_this->MoveBGDraw();
}
