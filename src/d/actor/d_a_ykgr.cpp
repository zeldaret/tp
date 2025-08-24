/**
 * @file d_a_ykgr.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_ykgr.h"
#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "Z2AudioLib/Z2Instances.h"

inline daYkgr_HIO_c::daYkgr_HIO_c() {
    field_0x4 = 0;
    field_0x8 = 0xff;
    field_0xc = 3;
    field_0x10 = -16.0f;
    field_0x14 = -5.0f;
    field_0x18 = -3.0f;
    field_0x1c = 0.0f;
    field_0x20 = 1500.0f;
    field_0x24 = 500.0f;
}

inline dPa_YkgrPcallBack::dPa_YkgrPcallBack() {
    field_0x4[0][0] = 0.5f;
    field_0x4[0][1] = 0.0f;
    field_0x4[0][2] = 0.0f;
    field_0x4[1][0] = 0.0f;
    field_0x4[1][1] = 0.5f;
    field_0x4[1][2] = 0.0f;
    field_0x1c = 1;
}

/* 805A848C-805A84D4 0000EC 0048+00 1/0 0/0 0/0 .text
 * draw__17dPa_YkgrPcallBackFP14JPABaseEmitterP15JPABaseParticle */
void dPa_YkgrPcallBack::draw(JPABaseEmitter* param_0, JPABaseParticle* param_1) {
    GXSetIndTexMtx(GX_ITM_0, field_0x4, field_0x1c);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_A0);
}

/* 805A84D4-805A85D4 000134 0100+00 2/2 0/0 0/0 .text            setParam__17dPa_YkgrPcallBackFf */
void dPa_YkgrPcallBack::setParam(f32 param_1) {
    if (param_1 <= -17.0f || param_1 >= 47.0f) return; {
        if (param_1 >= 0.0f) {
            field_0x1c = param_1;
            f32 fVar1 = (param_1 - field_0x1c) * 0.5f + 0.5f;
            field_0x4[1][1] = fVar1;
            field_0x4[0][0] = fVar1;
        } else {
            f32 x = param_1 - 1.0f;
            field_0x1c = x;
            f32 fVar1 = (x - field_0x1c) * 0.5f + 1.0f;
            field_0x4[1][1] = fVar1;
            field_0x4[0][0] = fVar1;
        }
        field_0x4[0][1] = 0.0f;
        field_0x4[0][2] = 0.0f;
        field_0x4[1][0] = 0.0f;
        field_0x4[1][2] = 0.0f;
    }
}

/* 805A9104-805A912C 000054 0028+00 2/3 0/0 0/0 .bss             l_HIO */
static daYkgr_HIO_c l_HIO;

/* 805A85D4-805A882C 000234 0258+00 1/1 0/0 0/0 .text            getPosRate__8daYkgr_cFv */
f32 daYkgr_c::getPosRate() {
    if (m_path == NULL) {
        return 0.0f;
    } 
    f32 dVar11 = FLT_MAX;
    cXyz cStack_5c(dComIfGp_getPlayer(0)->current.pos);
    dPnt* iVar9 = m_path->m_points;
    int uVar2 = m_path->m_num;
    for (int iVar8 = 0; iVar8 < uVar2; iVar8++, iVar9++) {
        cXyz cStack_68(iVar9->m_position.x, iVar9->m_position.y, iVar9->m_position.z);
        f32 dVar10 = cStack_5c.absXZ(cStack_68);
        if (dVar10 < dVar11) {
            dVar11 = dVar10;
        }
    }
    if (dVar11 > l_HIO.field_0x20) {
        dVar11 = l_HIO.field_0x20;
    } else if (dVar11 < l_HIO.field_0x24) {
        dVar11 = l_HIO.field_0x24;
    }
    f32 y = (l_HIO.field_0x20);
    y = (dVar11 - l_HIO.field_0x24) / (y -l_HIO.field_0x24);
    return 1.0f - y;
}

/* 805A9138-805A9158 000088 0020+00 2/3 0/0 0/0 .bss             YkgrCB */
static dPa_YkgrPcallBack YkgrCB;

/* 805A882C-805A8A48 00048C 021C+00 1/0 0/0 0/0 .text            daYkgrCreate__FPv */
// NONMATCHING regalloc
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
            m_emitter->setParticleCallBackPtr(&YkgrCB);
            YkgrCB.setParam(-3.0f);
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

/* 805A8A48-805A8A50 0006A8 0008+00 1/0 0/0 0/0 .text            daYkgrDelete__FPv */
static int daYkgrDelete(void* param_0) {
    return 1;
}

/* 805A8A50-805A8BBC 0006B0 016C+00 1/0 0/0 0/0 .text            daYkgrExecute__FPv */
// NONMATCHING regalloc
inline int daYkgr_c::_execute() {
    cLib_addCalc2(&field_0x5a4, m_aim_rate, 0.25f, 0.05f);
    cLib_addCalc2(&m_aim_rate, l_HIO.field_0x1c, 0.25f, 0.05f);
    cLib_addCalc2(&field_0x5a8, getPosRate(), 0.25f, 0.05f);
    f32 fVar4 = field_0x5a8 * 0.5f + field_0x5a4 * 0.5f;
    YkgrCB.setParam(fVar4 * l_HIO.field_0x18 + (1.0f - fVar4) * l_HIO.field_0x14);
    if (m_alpha_flag == 0) {
        if (m_alpha != 0) {
            if (m_alpha > l_HIO.field_0xc) {
                m_alpha = m_alpha - l_HIO.field_0xc;
            } else {
                m_alpha = 0;
            }
        }
    } else if (m_alpha < 0xff) {
        if (m_alpha < 0xff - l_HIO.field_0xc) {
            m_alpha = m_alpha + l_HIO.field_0xc;
        } else {
            m_alpha = 0xff;
        }
    }
    return 1;
}

static int daYkgrExecute(void* i_this) {
    return static_cast<daYkgr_c*>(i_this)->_execute();
}

/* 805A8BBC-805A8D90 00081C 01D4+00 1/0 0/0 0/0 .text            daYkgrDraw__FPv */
inline int daYkgr_c::_draw() {
    bool rv;
    if (strcmp(dComIfGp_getStartStageName(), "D_MN04A") == 0) {
        f32 alpha = dComIfGs_BossLife_public_Get() / 100.0f;
        m_alpha = alpha * 255.0f;
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

/* 805A8D90-805A8D98 0009F0 0008+00 1/0 0/0 0/0 .text            daYkgrIsDelete__FPv */
static int daYkgrIsDelete(void* param_0) {
    return 1;
}

/* 805A8D98-805A8DF4 0009F8 005C+00 2/1 0/0 0/0 .text            __dt__12daYkgr_HIO_cFv */
daYkgr_HIO_c::~daYkgr_HIO_c() {
    /* empty function */
}

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
    &g_fpcLf_Method.base,
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

AUDIO_INSTANCES;
