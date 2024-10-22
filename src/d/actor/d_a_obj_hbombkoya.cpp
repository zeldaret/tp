/**
 * d_a_obj_hbombkoya.cpp
 * Kakariko Exploding Bomb Warehouse
 */

#include "d/actor/d_a_obj_hbombkoya.h"
#include "d/d_com_inf_game.h"
#include "d/d_bg_w.h"
#include "dol2asm.h"

//
// Forward References:
//

extern "C" void create1st__16daObjHBombkoya_cFv();
extern "C" void CreateHeap__16daObjHBombkoya_cFv();
extern "C" void Create__16daObjHBombkoya_cFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void setParticle__16daObjHBombkoya_cFPUsiPQ216daObjHBombkoya_c7PSetTblii();
extern "C" void Execute__16daObjHBombkoya_cFPPA3_A4_f();
extern "C" void Draw__16daObjHBombkoya_cFv();
extern "C" void Delete__16daObjHBombkoya_cFv();
extern "C" static void daObjHBombkoya_create1st__FP16daObjHBombkoya_c();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" static void daObjHBombkoya_MoveBGDelete__FP16daObjHBombkoya_c();
extern "C" static void daObjHBombkoya_MoveBGExecute__FP16daObjHBombkoya_c();
extern "C" static void daObjHBombkoya_MoveBGDraw__FP16daObjHBombkoya_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__17dEvLib_callback_cFv();
extern "C" bool eventStart__17dEvLib_callback_cFv();
extern "C" bool eventRun__17dEvLib_callback_cFv();
extern "C" bool eventEnd__17dEvLib_callback_cFv();
extern "C" void __dt__16daObjHBombkoya_cFv();
extern "C" static void func_80C1C5E8();
extern "C" extern char const* const d_a_obj_hbombkoya__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
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
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void __dl__FPv();
extern "C" void _savegpr_19();
extern "C" void _savegpr_24();
extern "C" void _restgpr_19();
extern "C" void _restgpr_24();
extern "C" extern void* __vt__16dBgS_MoveBgActor[10];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];

extern void* __vt__10cCcD_GStts[3];
extern void* __vt__10dCcD_GStts[3];
extern void* __vt__8cM3dGCyl[3];
extern void* __vt__17dEvLib_callback_c[6];
extern void* __vt__8cM3dGAab[3];
extern void* __vt__16daObjHBombkoya_c[17];

//
// Declarations:
//

/* 80C1C734-80C1C738 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "H_Bombkoy";

/* 80C1B878-80C1B938 000078 00C0+00 1/1 0/0 0/0 .text            create1st__16daObjHBombkoya_cFv */
int daObjHBombkoya_c::create1st() {
    if (fopAcM_isSwitch(this, getSw2No())) {
        return cPhs_ERROR_e;
    }

    request_of_phase_process_class* actor_phase = (request_of_phase_process_class*)this;

    int phase = dComIfG_resLoad(actor_phase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        MTXIdentity(mBgMtx);

        phase = MoveBGCreate(l_arcName, 7, NULL, 0x2860, &mBgMtx);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
    }

    return phase;
}

/* 80C1B938-80C1B9CC 000138 0094+00 1/0 0/0 0/0 .text            CreateHeap__16daObjHBombkoya_cFv */
int daObjHBombkoya_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    Mtx m;
    MTXIdentity(m);
    mpModel->setBaseTRMtx(m);
    return 1;
}

/* ############################################################################################## */
/* 80C1C5F8-80C1C5FC 000000 0004+00 2/2 0/0 0/0 .rodata          @3699 */
SECTION_RODATA static f32 const lit_3699 = 200.0f;
COMPILER_STRIP_GATE(0x80C1C5F8, &lit_3699);

/* 80C1C738-80C1C77C 000004 0044+00 1/1 0/0 0/0 .data            l_cc_cyl_src */
static dCcD_SrcCyl l_cc_cyl_src = {
    {
        {0x0, {{AT_TYPE_BOMB, 0x4, 0x13}, {0x0, 0x0}, 0x0}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                   // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},                   // mGObjTg
        {0x0},                                                // mGObjCo
    },                                                        // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        1000.0f,             // mRadius
        1000.0f              // mHeight
    }                        // mCyl
};

/* 80C1B9CC-80C1BB34 0001CC 0168+00 1/0 0/0 0/0 .text            Create__16daObjHBombkoya_cFv */
int daObjHBombkoya_c::Create() {
    mpModel->setBaseScale(scale);
    fopAcM_SetMtx(this, NULL);

    cM3dGAab aab(*mpBgW->GetBnd());
    fopAcM_setCullSizeBox(this, aab.GetMinP()->x, aab.GetMinP()->y, aab.GetMinP()->z,
                          aab.GetMaxP()->x, aab.GetMaxP()->y + 200.0f, aab.GetMaxP()->z);
    mTimer = 0;

    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::scaleM(scale.x, scale.y, scale.z);
    MTXCopy(mDoMtx_stack_c::get(), mMtx);

    for (int i = 0; i < 9; i++) {
        mEmitterKeys[i] = 0;
    }

    mActive = false;
    mStts.Init(0xFF, 0, this);
    mCyl.Set(l_cc_cyl_src);
    mCyl.SetStts(&mStts);
    return 1;
}


/* 80C1BB34-80C1BB7C 000334 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
// cM3dGAab::~cM3dGAab() {
extern "C" void __dt__8cM3dGAabFv() {
    // NONMATCHING
}

/* 80C1BB7C-80C1BCA0 00037C 0124+00 1/1 0/0 0/0 .text
 * setParticle__16daObjHBombkoya_cFPUsiPQ216daObjHBombkoya_c7PSetTblii */
bool daObjHBombkoya_c::setParticle(u16* i_particleIDs, int i_particleMax,
                                   daObjHBombkoya_c::PSetTbl* i_setTbl, int i_tableMax,
                                   int i_timer) {
    bool particle_set = false;

    for (int i = 0; i < i_tableMax; i++) {
        if (i_timer == i_setTbl[i].m_startTime) {
            cXyz position;
            cXyz base_pos;

            base_pos = i_setTbl[i].m_position;
            MTXMultVec(mMtx, &base_pos, &position);

            cXyz scale;
            scale.z = i_setTbl[i].m_scale;
            scale.y = i_setTbl[i].m_scale;
            scale.x = i_setTbl[i].m_scale;

            for (int j = 0; j < i_particleMax; j++) {
                dComIfGp_particle_set(i_particleIDs[j], &position, NULL, &scale);
                particle_set = true;
            }
        }
    }

    return particle_set;
}

/* 80C1BCA0-80C1C098 0004A0 03F8+00 1/0 0/0 0/0 .text Execute__16daObjHBombkoya_cFPPA3_A4_f */
int daObjHBombkoya_c::Execute(Mtx** param_0) {
    *param_0 = &mBgMtx;

    if (fopAcM_isSwitch(this, getSwNo())) {
        if (fopAcM_isSwitch(this, getSw2No())) {
            mActive = false;
            fopAcM_delete(this);
        } else {
            if (mTimer == 180) {
                mActive = false;
            }

            u16 particle_ids[] = {0x858D, 0x858E, 0x858F, 0x8590, 0x8591, 0x8592, 0x8593, 0x8594};
            PSetTbl ptcl_set_table[8] = {
                {{0.0f, 235.0f, 0.0f}, 90, 0.8f},          {{-823.0f, 125.0f, -300.0f}, 110, 1.0f},
                {{-1000.0f, 1000.0f, -590.0f}, 115, 1.0f}, {{-525.0f, 863.0f, -261.0f}, 120, 0.8f},
                {{-1000.0f, 486.0f, -903.0f}, 140, 1.0f},  {{-485.0f, 12.0f, 0.0f}, 150, 0.8f},
                {{-480.0f, 614.0f, -462.0f}, 155, 1.0f},   {{-1000.0f, 116.0f, -469.0f}, 160, 1.0f},
            };

            if (setParticle(particle_ids, 8, ptcl_set_table, 8, mTimer)) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_BOMB_EXPLODE, &current.pos, 0, 0, 1.0f,
                                                1.0f, -1.0f, -1.0f, 0);
            }

            u16 particle_ids2[] = {0x8580, 0x8581, 0x8582};
            PSetTbl ptcl_set_table2[5] = {
                {{-165.0f, 500.0f, 106.0f}, 0, 1.0f},    {{-715.0f, 160.0f, -158.0f}, 0, 1.2f},
                {{-318.0f, 1120.0f, -514.0f}, 0, 1.1f},  {{-1000.0f, 140.0f, -792.0f}, 0, 1.2f},
                {{-921.0f, 1000.0f, -708.0f}, 0, 1.25f},
            };

            setParticle(particle_ids2, 3, ptcl_set_table2, 5, mTimer);

            static u16 id[] = {0x8577, 0x8578, 0x8579, 0x857A, 0x857B,
                               0x857C, 0x857D, 0x857E, 0x857F};

            if (mTimer < 170) {
                for (int i = 0; i < 9; i++) {
                    mEmitterKeys[i] = dComIfGp_particle_set(mEmitterKeys[i], id[i], &current.pos,
                                                            &shape_angle, NULL);
                }

                Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_BOMB_HOUSE_BURN, &current.pos, 900, 0,
                                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
            } else {
                fopAcM_onSwitch(this, getSw2No());

                if (mTimer == 170) {
                    Z2GetAudioMgr()->seStart(Z2SE_OBJ_BOMB_HOUSE_EXPLD, &current.pos, 0, 0,
                                                    1.0f, 1.0f, -1.0f, -1.0f, 0);
                }

                cXyz base_pos;
                cXyz cyl_pos;

                base_pos.x = -500.0f;
                base_pos.y = 0.0f;
                base_pos.z = -500.0f;

                MTXMultVec(mMtx, &base_pos, &cyl_pos);
                mCyl.SetC(cyl_pos);
                dComIfG_Ccsp()->Set(&mCyl);
            }

            struct ptbl {
                /* 0x00 */ u16 particle_id;
                /* 0x04 */ PSetTbl set_info;
            };

            static ptbl ptable[] = {
                {0x8583, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x8584, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x8585, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x8586, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x8587, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x8588, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x8589, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x858A, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x858B, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x858C, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
                {0x8595, {{-655.0f, 0.0f, -580.0f}, 0, 1.0f}},
                {0x8595, {{-100.0f, 0.0f, -640.0f}, 0, 1.25f}},
                {0x8595, {{-325.0f, 0.0f, -760.0f}, 0, 1.8f}},
                {0x8595, {{-710.0f, 0.0f, -205.0f}, 0, 1.35f}},
                {0x8595, {{36.0f, 0.0f, -28.0f}, 0, 0.8f}},
                {0x8596, {{0.0f, 0.0f, 0.0f}, 0, 1.0f}},
            };

            for (u32 i = 0; i < 16; i++) {
                if (mTimer == ptable[i].set_info.m_startTime) {
                    cXyz pos;
                    cXyz base_pos;

                    base_pos = ptable[i].set_info.m_position;
                    MTXMultVec(mMtx, &base_pos, &pos);

                    cXyz scale;
                    scale.z = ptable[i].set_info.m_scale;
                    scale.y = ptable[i].set_info.m_scale;
                    scale.x = ptable[i].set_info.m_scale;

                    dComIfGp_particle_set(ptable[i].particle_id, &pos, &current.angle, &scale);
                }
            }

            mTimer++;
        }
    }

    return 1;
}

/* 80C1C098-80C1C16C 000898 00D4+00 1/0 0/0 0/0 .text            Draw__16daObjHBombkoya_cFv */
int daObjHBombkoya_c::Draw() {
    if (mActive && !fopAcM_isSwitch(this, getSw2No())) {
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mpModel);
        dComIfGd_setList();
    }

    return 1;
}

/* 80C1C16C-80C1C1A8 00096C 003C+00 1/0 0/0 0/0 .text            Delete__16daObjHBombkoya_cFv */
int daObjHBombkoya_c::Delete() {
    request_of_phase_process_class* actor_phase = (request_of_phase_process_class*)this;
    dComIfG_resDelete(actor_phase, l_arcName);
    return 1;
}

/* ############################################################################################## */

/* 80C1C1A8-80C1C2BC 0009A8 0114+00 1/0 0/0 0/0 .text
 * daObjHBombkoya_create1st__FP16daObjHBombkoya_c               */
// vtable issues, read more below
#ifdef NONMATCHING
static int daObjHBombkoya_create1st(daObjHBombkoya_c* i_this) {
    fopAcM_SetupActor(i_this, daObjHBombkoya_c);

    return i_this->create1st();
}
#else
static void daObjHBombkoya_create1st(daObjHBombkoya_c* param_0) {
    // NONMATCHING
}
#endif

/* 80C1C2BC-80C1C304 000ABC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
// cM3dGCyl::~cM3dGCyl() {
extern "C" void __dt__8cM3dGCylFv() {
    // NONMATCHING
}

/* 80C1C304-80C1C360 000B04 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
// dCcD_GStts::~dCcD_GStts() {
extern "C" void __dt__10dCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C1C360-80C1C380 000B60 0020+00 1/0 0/0 0/0 .text
 * daObjHBombkoya_MoveBGDelete__FP16daObjHBombkoya_c            */
static int daObjHBombkoya_MoveBGDelete(daObjHBombkoya_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C1C380-80C1C3A0 000B80 0020+00 1/0 0/0 0/0 .text
 * daObjHBombkoya_MoveBGExecute__FP16daObjHBombkoya_c           */
static int daObjHBombkoya_MoveBGExecute(daObjHBombkoya_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C1C3A0-80C1C3CC 000BA0 002C+00 1/0 0/0 0/0 .text
 * daObjHBombkoya_MoveBGDraw__FP16daObjHBombkoya_c              */
static int daObjHBombkoya_MoveBGDraw(daObjHBombkoya_c* i_this) {
    return i_this->MoveBGDraw();
}

/**
 * Vtables for daObjHBombkoya_c mostly match, but __dt__17dEvLib_callback_cFv keeps getting
 * generated above after daObjHBombkoya_create1st instead of down here. If that can be fixed,
 * it should fix all vtable issues for this TU
 */

/* 80C1C3CC-80C1C414 000BCC 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
// cCcD_GStts::~cCcD_GStts() {
extern "C" void __dt__10cCcD_GSttsFv() {
    // NONMATCHING
}

/* 80C1C414-80C1C45C 000C14 0048+00 1/0 0/0 0/0 .text            __dt__17dEvLib_callback_cFv */
// dEvLib_callback_c::~dEvLib_callback_c() {
extern "C" void __dt__17dEvLib_callback_cFv() {
    // NONMATCHING
}

/* 80C1C45C-80C1C464 000C5C 0008+00 2/0 0/0 0/0 .text            eventStart__17dEvLib_callback_cFv
 */
// bool dEvLib_callback_c::eventStart()() {
extern "C" bool eventStart__17dEvLib_callback_cFv() {
    return true;
}

/* 80C1C464-80C1C46C 000C64 0008+00 2/0 0/0 0/0 .text            eventRun__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventRun() {
extern "C" bool eventRun__17dEvLib_callback_cFv() {
    return true;
}

/* 80C1C46C-80C1C474 000C6C 0008+00 2/0 0/0 0/0 .text            eventEnd__17dEvLib_callback_cFv */
// bool dEvLib_callback_c::eventEnd() {
extern "C" bool eventEnd__17dEvLib_callback_cFv() {
    return true;
}

/* 80C1C474-80C1C5E8 000C74 0174+00 2/1 0/0 0/0 .text            __dt__16daObjHBombkoya_cFv */
// daObjHBombkoya_c::~daObjHBombkoya_c() {
extern "C" void __dt__16daObjHBombkoya_cFv() {
    // NONMATCHING
}

/* 80C1C5E8-80C1C5F0 000DE8 0008+00 1/0 0/0 0/0 .text            @1448@__dt__16daObjHBombkoya_cFv */
static void func_80C1C5E8() {
    // NONMATCHING
}

/* 80C1C910-80C1C930 -00001 0020+00 1/0 0/0 0/0 .data            daObjHBombkoya_METHODS */
static actor_method_class daObjHBombkoya_METHODS = {
    (process_method_func)daObjHBombkoya_create1st__FP16daObjHBombkoya_c,
    (process_method_func)daObjHBombkoya_MoveBGDelete__FP16daObjHBombkoya_c,
    (process_method_func)daObjHBombkoya_MoveBGExecute__FP16daObjHBombkoya_c,
    0,
    (process_method_func)daObjHBombkoya_MoveBGDraw__FP16daObjHBombkoya_c,
};

/* 80C1C930-80C1C960 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_HBombkoya */
extern actor_process_profile_definition g_profile_Obj_HBombkoya = {
  fpcLy_CURRENT_e,         // mLayerID
  3,                       // mListID
  fpcPi_CURRENT_e,         // mListPrio
  PROC_Obj_HBombkoya,      // mProcName
  &g_fpcLf_Method.mBase,   // sub_method
  0x000007C0,              // mSize
  0,                       // mSizeOther
  0,                       // mParameters
  &g_fopAc_Method.base,    // sub_method
  675,                     // mPriority
  &daObjHBombkoya_METHODS, // sub_method
  0x00040100,              // mStatus
  fopAc_ACTOR_e,           // mActorType
  fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/* 80C1C960-80C1C96C 00022C 000C+00 3/3 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 80C1C96C-80C1C978 000238 000C+00 2/2 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 80C1C978-80C1C984 000244 000C+00 3/3 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 80C1C984-80C1C99C 000250 0018+00 3/3 0/0 0/0 .data            __vt__17dEvLib_callback_c */
SECTION_DATA extern void* __vt__17dEvLib_callback_c[6] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dEvLib_callback_cFv,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
};

/* 80C1C99C-80C1C9A8 000268 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 80C1C9A8-80C1C9EC 000274 0044+00 2/2 0/0 0/0 .data            __vt__16daObjHBombkoya_c */
SECTION_DATA extern void* __vt__16daObjHBombkoya_c[17] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)CreateHeap__16daObjHBombkoya_cFv,
    (void*)Create__16daObjHBombkoya_cFv,
    (void*)Execute__16daObjHBombkoya_cFPPA3_A4_f,
    (void*)Draw__16daObjHBombkoya_cFv,
    (void*)Delete__16daObjHBombkoya_cFv,
    (void*)IsDelete__16dBgS_MoveBgActorFv,
    (void*)ToFore__16dBgS_MoveBgActorFv,
    (void*)ToBack__16dBgS_MoveBgActorFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80C1C5E8,
    (void*)eventStart__17dEvLib_callback_cFv,
    (void*)eventRun__17dEvLib_callback_cFv,
    (void*)eventEnd__17dEvLib_callback_cFv,
    (void*)__dt__16daObjHBombkoya_cFv,
};