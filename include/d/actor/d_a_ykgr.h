#ifndef D_A_YKGR_H
#define D_A_YKGR_H

#include "SSystem/SComponent/c_math.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_path.h"
#include "d/d_kankyo_rain.h"
#include "d/d_com_inf_game.h"
#include "d/d_particle.h"

struct daYkgr_HIO_c : public mDoHIO_entry_c {
    daYkgr_HIO_c();
    /* 805A8D98 */ virtual ~daYkgr_HIO_c();

    void genMessage(JORMContext*);

    /* 0x04 */ u8 field_0x4;
    /* 0x08 */ s32 field_0x8;
    /* 0x0C */ s32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
};

struct dPa_YkgrPcallBack : public JPAParticleCallBack {
    dPa_YkgrPcallBack();
    /* 805A8E3C */ ~dPa_YkgrPcallBack() {}
    /* 805A848C */ void draw(JPABaseEmitter*, JPABaseParticle*);
    /* 805A84D4 */ void setParam(f32);

    /* 0x04 */ f32 field_0x4[2][3];
    /* 0x1C */ s8 field_0x1c;
};

/**
 * @ingroup actors-unsorted
 * @class daYkgr_c
 * @brief Floor Gravity On/Off
 *
 * @details
 *
 */
class daYkgr_c : public fopAc_ac_c {
public:
    static void init() {
        m_emitter = 0;
        m_flag = false;
        m_alpha_flag = true;
        m_alpha = 255;
    }

    f32 getPosRate();
    static void setAlpha(u8 alpha) {
        m_alpha = alpha;
    }
    static void start() {
        if (m_emitter != NULL) {
            m_alpha_flag = true;
        }
    }
    static void stop() {
        if (m_emitter != NULL) {
            m_alpha_flag = false;
        }
    }

    void set_mtx() {
        camera_class* iVar1 = dComIfGp_getCamera(0);
        cXyz local_28;
        current.pos = *fopCamM_GetEye_p(iVar1);
        dKyr_get_vectle_calc(&iVar1->lookat.eye, &iVar1->lookat.center, &local_28);
        current.angle.y = cM_atan2s(local_28.x, local_28.z);
        current.angle.x = -cM_atan2s(
            local_28.y, JMAFastSqrt((local_28.x * local_28.x + local_28.z * local_28.z)));
        mDoMtx_stack_c::transS(current.pos.x, current.pos.y,
                               current.pos.z);
        mDoMtx_stack_c::YrotM(current.angle.y);
        mDoMtx_stack_c::XrotM(current.angle.x);
        MTXCopy(mDoMtx_stack_c::get(), field_0x570);
    }

    int _create();
    int _execute();
    int _draw();

    static JPABaseEmitter* m_emitter;
    static bool m_flag;
    static bool m_alpha_flag;
    static u8 m_alpha;
    static f32 m_aim_rate;
    static dPath* m_path;

    /* 0x568 */ u8 field_0x568[0x570 - 0x568];
    /* 0x570 */ Mtx field_0x570;
    /* 0x5A0 */ u32 field_0x5a0;
    /* 0x5A4 */ f32 field_0x5a4;
    /* 0x5A8 */ f32 field_0x5a8;
};

STATIC_ASSERT(sizeof(daYkgr_c) == 0x5AC);

#endif /* D_A_YKGR_H */
