/**
 * @file d_a_obj_burnbox.cpp
 * 
*/

#include "d/actor/d_a_obj_burnbox.h"
#include "dol2asm.h"
#include "d/d_com_inf_game.h"



//
// Forward References:
//

extern "C" void Create__14daObjBurnBox_cFv();
extern "C" void CreateHeap__14daObjBurnBox_cFv();
extern "C" void create1st__14daObjBurnBox_cFv();
extern "C" void Execute__14daObjBurnBox_cFPPA3_A4_f();
extern "C" void Draw__14daObjBurnBox_cFv();
extern "C" void Delete__14daObjBurnBox_cFv();
extern "C" void daObjBurnBox_create1st__FP14daObjBurnBox_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void daObjBurnBox_MoveBGDelete__FP14daObjBurnBox_c();
extern "C" void daObjBurnBox_MoveBGExecute__FP14daObjBurnBox_c();
extern "C" void daObjBurnBox_MoveBGDraw__FP14daObjBurnBox_c();
extern "C" char const* const d_a_obj_burnbox__stringBase0;

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
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz();
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
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void __dl__FPv();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];

//
// Declarations:
//

/* 8046E698-8046E6D4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjBurnBox_cFv */
void daObjBurnBox_c::initBaseMtx() {
    modelData->setBaseScale(scale);
    setBaseMtx();
}

/* 8046E6D4-8046E738 0000B4 0064+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjBurnBox_cFv */
void daObjBurnBox_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_YrotM(mDoMtx_stack_c::now, shape_angle.GetY());
    modelData->setBaseTRMtx(mDoMtx_stack_c::get()); 
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* ############################################################################################## */
/* 8046EE48-8046EE54 000000 000C+00 2/2 0/0 0/0 .rodata          l_bmd */
SECTION_RODATA static u32 const l_bmd[3] = {
    0x04, 0x04, 0x03,
};
COMPILER_STRIP_GATE(0x8046EE48, &l_bmd);

/* 8046EE54-8046EE60 00000C 000C+00 1/1 0/0 0/0 .rodata          l_heap_size */
SECTION_RODATA static u32 const l_heap_size[3] = {
    0x00000820, 0x00000C00, 0x00000820,
};
COMPILER_STRIP_GATE(0x8046EE54, &l_heap_size);

/* 8046EE60-8046EEA4 000018 0044+00 0/1 0/0 0/0 .rodata          l_cyl_src */
#pragma push
#pragma force_active on
const static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1e}, {0x0, 0x1e}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        40.0f, // mRadius
        100.0f // mHeight
    } // mCyl
};
#pragma pop

/* 8046EEA4-8046EEB0 00005C 000A+02 0/1 0/0 0/0 .rodata          particle_id$3649 */
#pragma push
#pragma force_active on
// static u16 const particle_id[5] = {
//     0x8526,
//     0x8527,
//     0x8528,
//     0x8529,
//     0x8746,
// };
// COMPILER_STRIP_GATE(0x8046EEA4, &particle_id);
#pragma pop


/* 8046EEB0-8046EEB4 000068 0004+00 0/1 0/0 0/0 .rodata          @3684 */

/* 8046EEB4-8046EEB8 00006C 0004+00 0/1 0/0 0/0 .rodata          @3685 */

/* 8046EEB8-8046EEBC 000070 0004+00 0/1 0/0 0/0 .rodata          @3686 */

/* 8046EEBC-8046EEC0 000074 0004+00 0/1 0/0 0/0 .rodata          @3687 */


/* 8046E738-8046E8BC 000118 0184+00 1/0 0/0 0/0 .text            Create__14daObjBurnBox_cFv */
int daObjBurnBox_c::Create() {
    /* MATCHING 90% */
static u16 const particle_ids[5] = { /* particle_id$3649 */
        0x8526,
        0x8527,
        0x8528,
        0x8529,
        0x8746,
    };

    initBaseMtx();
    fopAcM_SetMtx(this, modelData->getBaseTRMtx());
    mStts.Init(0xff, 0xff, this);
    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);
    fopAcM_setCullSizeBox2(this, modelData->getModelData());
    cXyz pos = current.pos;
    cXyz t_scale = scale;
    int type = getType();

    switch(type)
    {
        case 0:
        case 2:
            pos.y += 37.5f; /* @3684 */
            t_scale.setall(0.5f); /* @3685 */
            break;
        case 1:
            pos.y+= 75.0f; /* @3686 */
            break;
    }


    u8 index = 0;
    while (index < ARRAY_SIZE(particle_ids))
    {
        u16 particle = particle_ids[index];
        mpEmitters[index] = dComIfGp_particle_set(particle,&pos, NULL, &t_scale,
            0xff /*@3687*/, NULL, -1, NULL, NULL, NULL);
        index++;
    }
    return 1;
}

/* ############################################################################################## */
/* 8046EEC0-8046EEC0 000078 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8046EEC0 = "Kkiba_00";
SECTION_DEAD static char const* const stringBase_8046EEC9 = "J_taru00";
#pragma pop

/* 8046EED4-8046EEE0 -00001 000C+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static char* l_arcName[3] = {
    "Kkiba_00",
    "Kkiba_00",
   "J_taru00",
};

/* 8046E8BC-8046E93C 00029C 0080+00 1/0 0/0 0/0 .text            CreateHeap__14daObjBurnBox_cFv */
int daObjBurnBox_c::CreateHeap() {
    /* MATCHING 96 */
    u8 type = getType();
    J3DModelData* model = (J3DModelData*) dComIfG_getObjectRes(l_arcName[type], l_bmd[type]);
    if(model == NULL){
        JUT_PANIC(0x106, "modelData != 0");
    }
    this->modelData = mDoExt_J3DModel__create(model, 0x80000, 0x11000084);
    return this->modelData != NULL;
}

/* 8046E93C-8046E9EC 00031C 00B0+00 1/1 0/0 0/0 .text            create1st__14daObjBurnBox_cFv */
cPhs__Step daObjBurnBox_c::create1st() {
    cPhs__Step phaseStep = (cPhs__Step) dComIfG_resLoad(&mPhaseReq, l_arcName[getType()]);
    if (phaseStep == cPhs_COMPLEATE_e) {
        int dzb_id = -1;
        u8 type = getType();
        switch(type){
        case 1:
            dzb_id = 7;
        }

        phaseStep = (cPhs__Step) MoveBGCreate(l_arcName[type], dzb_id, 
            dBgS_MoveBGProc_TypicalRotY, l_heap_size[type], NULL);
        if (phaseStep == cPhs_ERROR_e) {
            return phaseStep;
        }
    }
    return phaseStep;
}

/* 8046E9EC-8046EABC 0003CC 00D0+00 1/0 0/0 0/0 .text            Execute__14daObjBurnBox_cFPPA3_A4_f
 */
int daObjBurnBox_c::Execute(Mtx** mtx) {
    f_0x724++;
    if (f_0x724 % 3 == 0 && (--f_0x728, f_0x728 == -0x14)) {
        fopAcM_delete(this);
    }

    *mtx = &mBgMtx;
    setBaseMtx();

    switch (getType()) {
    case 0:
    case 2:
        mCyl.SetC(current.pos);
        dComIfG_Ccsp()->Set(&mCyl);
    }

    return 1;
}

/* 8046EABC-8046EC10 00049C 0154+00 1/0 0/0 0/0 .text            Draw__14daObjBurnBox_cFv */
int daObjBurnBox_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(modelData, &tevStr);
    dComIfGd_setListBG();

    J3DModelData* model = modelData->getModelData();
    for (u16 index = 0; index < model->getMaterialNum(); index++) {
        J3DGXColorS10* color = model->getMaterialNodePointer(index)->getTevColor(0);
        color->r = f_0x728;
        color->g = f_0x728;
        color->b = f_0x728;
    }
    mDoExt_modelUpdateDL(modelData);
    for (u16 index = 0; index < model->getMaterialNum(); index++) {
        J3DGXColorS10* color = model->getMaterialNodePointer(index)->getTevColor(0);
        color->r = 0;
        color->g = 0;
        color->b = 0;
    }
    dComIfGd_setList();
    return 1;
}

/* 8046EC10-8046EC50 0005F0 0040+00 1/0 0/0 0/0 .text            Delete__14daObjBurnBox_cFv */
int daObjBurnBox_c::Delete() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8046EEE0-8046EF00 -00001 0020+00 1/0 0/0 0/0 .data            daObjBurnBox_METHODS */
static actor_method_class daObjBurnBox_METHODS = {
    (process_method_func)daObjBurnBox_create1st__FP14daObjBurnBox_c,
    (process_method_func)daObjBurnBox_MoveBGDelete__FP14daObjBurnBox_c,
    (process_method_func)daObjBurnBox_MoveBGExecute__FP14daObjBurnBox_c,
    0,
    (process_method_func)daObjBurnBox_MoveBGDraw__FP14daObjBurnBox_c,
};

/* 8046EF00-8046EF30 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_BurnBox */
extern actor_process_profile_definition g_profile_Obj_BurnBox = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_BurnBox,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjBurnBox_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  532,                    // mPriority
  &daObjBurnBox_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 8046EF30-8046EF3C 00005C 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 8046EF3C-8046EF48 000068 000C+00 2/2 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 8046EF48-8046EF70 000074 0028+00 1/1 0/0 0/0 .data            __vt__14daObjBurnBox_c */
SECTION_DATA extern void* __vt__14daObjBurnBox_c[10] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__14daObjBurnBox_cFv,
    (void*)Create__14daObjBurnBox_cFv,
    (void*)Execute__14daObjBurnBox_cFPPA3_A4_f,
    (void*)Draw__14daObjBurnBox_cFv,
    (void*)Delete__14daObjBurnBox_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
};

/* 8046EC50-8046ED44 000630 00F4+00 1/0 0/0 0/0 .text daObjBurnBox_create1st__FP14daObjBurnBox_c
 */
static void daObjBurnBox_create1st(daObjBurnBox_c* param_0) {
    // NONMATCHING
}

/* 8046ED44-8046ED8C 000724 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 8046ED8C-8046EDD4 00076C 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 8046EDD4-8046EDF4 0007B4 0020+00 1/0 0/0 0/0 .text
 * daObjBurnBox_MoveBGDelete__FP14daObjBurnBox_c                */
static void daObjBurnBox_MoveBGDelete(daObjBurnBox_c* param_0) {
    // NONMATCHING
}

/* 8046EDF4-8046EE14 0007D4 0020+00 1/0 0/0 0/0 .text
 * daObjBurnBox_MoveBGExecute__FP14daObjBurnBox_c               */
static void daObjBurnBox_MoveBGExecute(daObjBurnBox_c* param_0) {
    // NONMATCHING
}

/* 8046EE14-8046EE40 0007F4 002C+00 1/0 0/0 0/0 .text daObjBurnBox_MoveBGDraw__FP14daObjBurnBox_c
 */
static void daObjBurnBox_MoveBGDraw(daObjBurnBox_c* param_0) {
    // NONMATCHING
}

/* 8046EEC0-8046EEC0 000078 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
