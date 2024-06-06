/**
 * @file d_a_ykgr.cpp
 * 
*/

#include "rel/d/a/d_a_ykgr/d_a_ykgr.h"
#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "dol2asm.h"
#include "JSystem/JKernel/JKRHeap.h"

//
// Forward References:
//

extern "C" void draw__17dPa_YkgrPcallBackFP14JPABaseEmitterP15JPABaseParticle();
extern "C" void setParam__17dPa_YkgrPcallBackFf();
extern "C" void getPosRate__8daYkgr_cFv();
extern "C" static void daYkgrCreate__FPv();
extern "C" static bool daYkgrDelete__FPv();
extern "C" static void daYkgrExecute__FPv();
extern "C" static void daYkgrDraw__FPv();
extern "C" static bool daYkgrIsDelete__FPv();
extern "C" void __dt__12daYkgr_HIO_cFv();
extern "C" void __dt__14mDoHIO_entry_cFv();
extern "C" void __dt__17dPa_YkgrPcallBackFv();
extern "C" void execute__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle();
extern "C" void __sinit_d_a_ykgr_cpp();
extern "C" void draw__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle();
extern "C" extern char const* const d_a_ykgr__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_setStageLayer__FPv();
extern "C" void dComIfGs_BossLife_public_Get__Fv();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void dPath_GetRoomPath__Fii();
extern "C" void dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz();
extern "C" void cM_atan2s__Fff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void __dt__19JPAParticleCallBackFv();
extern "C" void func_802807E0();
extern "C" void __dl__FPv();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 m_aim_rate__8daYkgr_c[4];
extern "C" u8 m_path__8daYkgr_c[4];
extern "C" u8 m_emitter__8daYkgr_c[4];
extern "C" void __register_global_object();

//
// Declarations:
//

/* 805A848C-805A84D4 0000EC 0048+00 1/0 0/0 0/0 .text
 * draw__17dPa_YkgrPcallBackFP14JPABaseEmitterP15JPABaseParticle */
// Needs inheritance
#ifdef NONMATCHING
void dPa_YkgrPcallBack::draw(JPABaseEmitter* param_0, JPABaseParticle* param_1) {
    GXSetIndTexMtx(GX_ITM_0, &field_0x4, field_0x1c);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dPa_YkgrPcallBack::draw(JPABaseEmitter* param_0, JPABaseParticle* param_1) {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/draw__17dPa_YkgrPcallBackFP14JPABaseEmitterP15JPABaseParticle.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805A8FBC-805A8FC0 000000 0004+00 6/6 0/0 0/0 .rodata          @3759 */
SECTION_RODATA static f32 const lit_3759 = -17.0f;
COMPILER_STRIP_GATE(0x805A8FBC, &lit_3759);

/* 805A8FC0-805A8FC4 000004 0004+00 0/1 0/0 0/0 .rodata          @3760 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3760 = 47.0f;
COMPILER_STRIP_GATE(0x805A8FC0, &lit_3760);
#pragma pop

/* 805A8FC4-805A8FC8 000008 0004+00 0/5 0/0 0/0 .rodata          @3761 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3761[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x805A8FC4, &lit_3761);
#pragma pop

/* 805A8FC8-805A8FCC 00000C 0004+00 0/4 0/0 0/0 .rodata          @3762 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3762 = 0.5f;
COMPILER_STRIP_GATE(0x805A8FC8, &lit_3762);
#pragma pop

/* 805A8FCC-805A8FD4 000010 0004+04 0/4 0/0 0/0 .rodata          @3763 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3763[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x805A8FCC, &lit_3763);
#pragma pop

/* 805A8FD4-805A8FDC 000018 0008+00 0/2 0/0 0/0 .rodata          @3766 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3766[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805A8FD4, &lit_3766);
#pragma pop

/* 805A84D4-805A85D4 000134 0100+00 2/2 0/0 0/0 .text            setParam__17dPa_YkgrPcallBackFf */
// Matches with literals
#ifdef NONMATCHING
void dPa_YkgrPcallBack::setParam(f32 param_1) {
    if (param_1 <= -17.0f || param_1 >= 47.0f) return; {
        if (param_1 >= 0.0f) {
            field_0x1c = param_1;
            f32 fVar1 = (param_1 - field_0x1c) * 0.5f + 0.5f;
            field_0x14 = fVar1;
            field_0x4 = fVar1;
        } else {
            f32 x = param_1 - 1.0f;
            field_0x1c = x;
            f32 fVar1 = (x - field_0x1c) * 0.5f + 1.0f;
            field_0x14 = fVar1;
            field_0x4 = fVar1;
        }
        field_0x8 = 0.0f;
        field_0xc = 0.0f;
        field_0x10 = 0.0f;
        field_0x18 = 0.0f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dPa_YkgrPcallBack::setParam(f32 param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/setParam__17dPa_YkgrPcallBackFf.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805A8FDC-805A8FE4 000020 0008+00 0/1 0/0 0/0 .rodata          @3846 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3846[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805A8FDC, &lit_3846);
#pragma pop

/* 805A8FE4-805A8FEC 000028 0008+00 0/1 0/0 0/0 .rodata          @3847 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3847[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805A8FE4, &lit_3847);
#pragma pop

/* 805A8FEC-805A8FF4 000030 0008+00 0/1 0/0 0/0 .rodata          @3848 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3848[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x805A8FEC, &lit_3848);
#pragma pop

/* 805A90B8-805A90BC 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 805A90BC-805A90C0 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 805A90C0-805A90C4 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 805A90C4-805A90C8 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 805A90C8-805A90CC 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 805A90CC-805A90D0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 805A90D0-805A90D4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 805A90D4-805A90D8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 805A90D8-805A90DC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 805A90DC-805A90E0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 805A90E0-805A90E4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 805A90E4-805A90E8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 805A90E8-805A90EC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 805A90EC-805A90F0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 805A90F0-805A90F4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 805A90F4-805A90F8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 805A90F8-805A9104 000048 000C+00 0/1 0/0 0/0 .bss             @3744 */
#pragma push
#pragma force_active on
static u8 lit_3744[12];
#pragma pop

/* 805A9104-805A912C 000054 0028+00 2/3 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[40];

/* 805A85D4-805A882C 000234 0258+00 1/1 0/0 0/0 .text            getPosRate__8daYkgr_cFv */
// Matches with literals
#ifdef NONMATCHING
f32 daYkgr_c::getPosRate() {
    if (m_path == NULL) {
        return 0.0f;
    } 
    f32 dVar11 = FLT_MAX;
    cXyz cStack_5c(dComIfGp_getPlayer(0)->current.pos);
    dStage_dPnt_c* iVar9 = m_path->m_points;
    int uVar2 = m_path->m_num;
    for (int iVar8 = 0; iVar8 < uVar2; iVar8++, iVar9++) {
        cXyz cStack_68(iVar9->m_position.x, iVar9->m_position.y, iVar9->m_position.z);
        f32 dVar10 = cStack_5c.absXZ(cStack_68);
        if (dVar10 < dVar11) {
            dVar11 = dVar10;
        }
    }
    if (dVar11 > ((daYkgr_HIO_c*)&l_HIO)->field_0x20) {
        dVar11 = ((daYkgr_HIO_c*)&l_HIO)->field_0x20;
    } else if (dVar11 < ((daYkgr_HIO_c*)&l_HIO)->field_0x24) {
        dVar11 = ((daYkgr_HIO_c*)&l_HIO)->field_0x24;
    }
    f32 y = (((daYkgr_HIO_c*)&l_HIO)->field_0x20);
    y = (dVar11 - ((daYkgr_HIO_c*)&l_HIO)->field_0x24) / (y -((daYkgr_HIO_c*)&l_HIO)->field_0x24);
    return 1.0f - y;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daYkgr_c::getPosRate() {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/getPosRate__8daYkgr_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805A8FF4-805A8FF8 000038 0004+00 0/2 0/0 0/0 .rodata          @3951 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3951 = -3.0f;
COMPILER_STRIP_GATE(0x805A8FF4, &lit_3951);
#pragma pop

/* 805A912C-805A9138 00007C 000C+00 0/1 0/0 0/0 .bss             @3851 */
#pragma push
#pragma force_active on
static u8 lit_3851[12];
#pragma pop

/* 805A9138-805A9158 000088 0020+00 2/3 0/0 0/0 .bss             YkgrCB */
static u8 YkgrCB[32];

/* 805A882C-805A8A48 00048C 021C+00 1/0 0/0 0/0 .text            daYkgrCreate__FPv */
// regalloc
#ifdef NONMATCHING
inline int daYkgr_c::_create() {
    dPath* path;
    s32 uVar1 = fopAcM_GetParam(this) ;
    uVar1 = (uVar1 >> 0x14) & 0xf;
    fopAcM_SetupActor(this, daYkgr_c);
    u32 uVar4 = (fopAcM_GetParam(this) >> 8) & 0xff;
    if (uVar4 != 0xff) {
        path = dPath_GetRoomPath(uVar4, fopAcM_GetRoomNo(this));
    } else {
        path = NULL;
    }
    m_path = path;

    if (m_emitter == NULL) {
        fopAc_ac_c* player = dComIfGp_getPlayer(0);
        this->current.pos = player->current.pos;
        m_emitter = dComIfGp_particle_set(0x80e2, &this->current.pos, NULL, NULL);
        if (m_emitter != NULL) {
            m_emitter->setParticleCallBackPtr((JPAParticleCallBack*)YkgrCB);
            ((dPa_YkgrPcallBack*)YkgrCB)->setParam(-3.0f);
        } else {
            return cPhs_ERROR_e;
        }
        fopAcM_setStageLayer(this);
        if (uVar1 == 1) {
            setAlpha(0xff);
            m_emitter->setGlobalAlpha(0xff);
            field_0x5a4 = 0.5f;
            field_0x5a8 = 0.0f;
            start();
        } else {
            setAlpha(0);
            m_emitter->setGlobalAlpha(0);
            field_0x5a4 = 0.5f;
            field_0x5a8 = 0.0f;
            stop();
        }
    } else {
        if (uVar1 == 1) {
            start();
        } else {
            stop();
        }
        return cPhs_UNK3_e;
    }
    return cPhs_COMPLEATE_e;
}

static int daYkgrCreate(void* i_this) {
    return static_cast<daYkgr_c*>(i_this)->_create();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daYkgrCreate(void* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/daYkgrCreate__FPv.s"
}
#pragma pop
#endif

/* 805A8A48-805A8A50 0006A8 0008+00 1/0 0/0 0/0 .text            daYkgrDelete__FPv */
static int daYkgrDelete(void* param_0) {
    return 1;
}

/* ############################################################################################## */
/* 805A8FF8-805A8FFC 00003C 0004+00 0/1 0/0 0/0 .rodata          @3976 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3976 = 0.25f;
COMPILER_STRIP_GATE(0x805A8FF8, &lit_3976);
#pragma pop

/* 805A8FFC-805A9000 000040 0004+00 0/1 0/0 0/0 .rodata          @3977 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3977 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x805A8FFC, &lit_3977);
#pragma pop

/* 805A8A50-805A8BBC 0006B0 016C+00 1/0 0/0 0/0 .text            daYkgrExecute__FPv */
// Matches with literals
#ifdef NONMATCHING
inline int daYkgr_c::_execute() {
    cLib_addCalc2(&field_0x5a4, m_aim_rate, 0.25f, 0.05f);
    cLib_addCalc2(&m_aim_rate, ((f32*)l_HIO)[7], 0.25f, 0.05f);
    cLib_addCalc2(&field_0x5a8, getPosRate(), 0.25f, 0.05f);
    f32 fVar4 = field_0x5a8 * 0.5f + field_0x5a4 * 0.5f;
    ((dPa_YkgrPcallBack*)YkgrCB)->setParam(fVar4 * ((f32*)l_HIO)[6] + (1.0f - fVar4) * ((f32*)l_HIO)[5]);
    if (m_alpha_flag == 0) {
        if (m_alpha != 0) {
            if (m_alpha > ((s32*)l_HIO)[3]) {
                m_alpha = m_alpha - ((s32*)l_HIO)[3];
            } else {
                m_alpha = 0;
            }
        }
    } else if (m_alpha < 0xff) {
        if (m_alpha < 0xff - ((s32*)l_HIO)[3]) {
            m_alpha = m_alpha + ((s32*)l_HIO)[3];
        } else {
            m_alpha = 0xff;
        }
    }
    return 1;
}

static int daYkgrExecute(void* i_this) {
    return static_cast<daYkgr_c*>(i_this)->_execute();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daYkgrExecute(void* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/daYkgrExecute__FPv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 805A9000-805A9004 000044 0004+00 0/1 0/0 0/0 .rodata          @4032 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4032 = 100.0f;
COMPILER_STRIP_GATE(0x805A9000, &lit_4032);
#pragma pop

/* 805A9004-805A9008 000048 0004+00 0/1 0/0 0/0 .rodata          @4033 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4033 = 255.0f;
COMPILER_STRIP_GATE(0x805A9004, &lit_4033);
#pragma pop

/* 805A9018-805A9018 00005C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_805A9018 = "D_MN04A";
#pragma pop

/* 805A8BBC-805A8D90 00081C 01D4+00 1/0 0/0 0/0 .text            daYkgrDraw__FPv */
// Matches with literals
#ifdef NONMATCHING
inline int daYkgr_c::_draw() {
    bool rv;
    if (strcmp(dComIfGp_getStartStageName(), "D_MN04A") == 0) {
        m_alpha = (dComIfGs_BossLife_public_Get() / 100.0f) * 255.0f;
        if (m_alpha == 0) {
            m_alpha++;
        }
    }
    if (m_alpha == 0) {
        rv = true;
    } else {
        set_mtx();
        if  (m_emitter != NULL) {
            m_emitter->setGlobalRTMatrix(field_0x570);
            m_emitter->setGlobalAlpha(m_alpha);
        }
        rv = true;
    }
    return rv;
}

static int daYkgrDraw(void* i_this) {
    return static_cast<daYkgr_c*>(i_this)->_draw();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daYkgrDraw(void* param_0) {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/daYkgrDraw__FPv.s"
}
#pragma pop
#endif

/* 805A8D90-805A8D98 0009F0 0008+00 1/0 0/0 0/0 .text            daYkgrIsDelete__FPv */
static int daYkgrIsDelete(void* param_0) {
    return 1;
}

/* ############################################################################################## */
/* 805A9020-805A9040 -00001 0020+00 1/0 0/0 0/0 .data            daYkgrMethodTable */
static actor_method_class daYkgrMethodTable = {
    daYkgrCreate,
    daYkgrDelete,
    daYkgrExecute,
    daYkgrIsDelete,
    daYkgrDraw,
};

extern actor_process_profile_definition g_profile_Ykgr = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Ykgr,
    &g_fpcLf_Method.mBase,
    sizeof(daYkgr_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x01AE,
    &daYkgrMethodTable,
    0x00044000,
    0,
    0,
};

/* 805A9070-805A9084 000050 0014+00 2/2 0/0 0/0 .data            __vt__17dPa_YkgrPcallBack */
SECTION_DATA extern void* __vt__17dPa_YkgrPcallBack[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__17dPa_YkgrPcallBackFv,
    (void*)execute__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle,
    (void*)draw__17dPa_YkgrPcallBackFP14JPABaseEmitterP15JPABaseParticle,
};

/* 805A9084-805A9098 000064 0014+00 1/1 0/0 0/0 .data            __vt__19JPAParticleCallBack */
SECTION_DATA extern void* __vt__19JPAParticleCallBack[5] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)NULL,
    (void*)execute__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle,
    (void*)draw__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle,
};

/* 805A9098-805A90A4 000078 000C+00 2/2 0/0 0/0 .data            __vt__12daYkgr_HIO_c */
SECTION_DATA extern void* __vt__12daYkgr_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daYkgr_HIO_cFv,
};

/* 805A90A4-805A90B0 000084 000C+00 3/3 0/0 0/0 .data            __vt__14mDoHIO_entry_c */
SECTION_DATA extern void* __vt__14mDoHIO_entry_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14mDoHIO_entry_cFv,
};

/* 805A8D98-805A8DF4 0009F8 005C+00 2/1 0/0 0/0 .text            __dt__12daYkgr_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daYkgr_HIO_c::~daYkgr_HIO_c() {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/__dt__12daYkgr_HIO_cFv.s"
}
#pragma pop

/* 805A8DF4-805A8E3C 000A54 0048+00 1/0 0/0 0/0 .text            __dt__14mDoHIO_entry_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __dt__14mDoHIO_entry_cFv() {
//asm mDoHIO_entry_c::~mDoHIO_entry_c() {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/__dt__14mDoHIO_entry_cFv.s"
}
#pragma pop

/* 805A8E3C-805A8E9C 000A9C 0060+00 2/1 0/0 0/0 .text            __dt__17dPa_YkgrPcallBackFv */
#ifdef NONMATCHING
dPa_YkgrPcallBack::~dPa_YkgrPcallBack() {
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dPa_YkgrPcallBack::~dPa_YkgrPcallBack() {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/__dt__17dPa_YkgrPcallBackFv.s"
}
#pragma pop
#endif

/* 805A8E9C-805A8EA0 000AFC 0004+00 2/0 0/0 0/0 .text
 * execute__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle */
void JPAParticleCallBack::execute(JPABaseEmitter* param_0, JPABaseParticle* param_1) {
    /* empty function */
}

/* ############################################################################################## */
/* 805A9008-805A900C 00004C 0004+00 0/1 0/0 0/0 .rodata          @4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4061 = -16.0f;
COMPILER_STRIP_GATE(0x805A9008, &lit_4061);
#pragma pop

/* 805A900C-805A9010 000050 0004+00 0/1 0/0 0/0 .rodata          @4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4062 = -5.0f;
COMPILER_STRIP_GATE(0x805A900C, &lit_4062);
#pragma pop

/* 805A9010-805A9014 000054 0004+00 0/1 0/0 0/0 .rodata          @4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4063 = 1500.0f;
COMPILER_STRIP_GATE(0x805A9010, &lit_4063);
#pragma pop

/* 805A9014-805A9018 000058 0004+00 0/1 0/0 0/0 .rodata          @4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4064 = 500.0f;
COMPILER_STRIP_GATE(0x805A9014, &lit_4064);
#pragma pop

/* 805A8EA0-805A8FA4 000B00 0104+00 0/0 1/0 0/0 .text            __sinit_d_a_ykgr_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_ykgr_cpp() {
    nofralloc
#include "asm/rel/d/a/d_a_ykgr/d_a_ykgr/__sinit_d_a_ykgr_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x805A8EA0, __sinit_d_a_ykgr_cpp);
#pragma pop

/* 805A8FA4-805A8FA8 000C04 0004+00 1/0 0/0 0/0 .text
 * draw__19JPAParticleCallBackFP14JPABaseEmitterP15JPABaseParticle */
void JPAParticleCallBack::draw(JPABaseEmitter* param_0, JPABaseParticle* param_1) {
    /* empty function */
}

/* ############################################################################################## */
/* 805A9158-805A915C 0000A8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_805A9158[4];
#pragma pop

/* 805A915C-805A9160 0000AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_805A915C[4];
#pragma pop

/* 805A9160-805A9164 0000B0 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_805A9160[4];
#pragma pop

/* 805A9164-805A9168 0000B4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_805A9164[4];
#pragma pop

/* 805A9168-805A916C 0000B8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805A9168[4];
#pragma pop

/* 805A916C-805A9170 0000BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805A916C[4];
#pragma pop

/* 805A9170-805A9174 0000C0 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_805A9170[4];
#pragma pop

/* 805A9174-805A9178 0000C4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_805A9174[4];
#pragma pop

/* 805A9178-805A917C 0000C8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_805A9178[4];
#pragma pop

/* 805A917C-805A9180 0000CC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_805A917C[4];
#pragma pop

/* 805A9180-805A9184 0000D0 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_805A9180[4];
#pragma pop

/* 805A9184-805A9188 0000D4 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_805A9184[4];
#pragma pop

/* 805A9188-805A918C 0000D8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_805A9188[4];
#pragma pop

/* 805A918C-805A9190 0000DC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805A918C[4];
#pragma pop

/* 805A9190-805A9194 0000E0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_805A9190[4];
#pragma pop

/* 805A9194-805A9198 0000E4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_805A9194[4];
#pragma pop

/* 805A9198-805A919C 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_805A9198[4];
#pragma pop

/* 805A919C-805A91A0 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_805A919C[4];
#pragma pop

/* 805A91A0-805A91A4 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_805A91A0[4];
#pragma pop

/* 805A91A4-805A91A8 0000F4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_805A91A4[4];
#pragma pop

/* 805A91A8-805A91AC 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_805A91A8[4];
#pragma pop

/* 805A91AC-805A91B0 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805A91AC[4];
#pragma pop

/* 805A91B0-805A91B4 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805A91B0[4];
#pragma pop

/* 805A91B4-805A91B8 000104 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_805A91B4[4];
#pragma pop

/* 805A91B8-805A91BC 000108 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_805A91B8[4];
#pragma pop

/* 805A9018-805A9018 00005C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
