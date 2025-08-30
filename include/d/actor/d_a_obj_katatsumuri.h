#ifndef D_A_OBJ_KATATSUMURI_H
#define D_A_OBJ_KATATSUMURI_H

#include "JSystem/JHostIO/JORMContext.h"
#include "JSystem/JHostIO/JORReflexible.h"
#include "d/d_cc_d.h"
#include "d/d_insect.h"
#include "d/actor/d_a_player.h"

/**
 * @ingroup actors-objects
 * @class daObjKAT_c
 * @brief Insect - Snail (Katatsumuri)
 *
 * @details
 *
 */
class daObjKAT_c : public dInsect_c {
public:
    /* 80C39994 */ void InitCcSph();
    /* 80C39A00 */ void SetCcSph();
    /* 80C39A58 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80C39B98 */ int CreateHeap();
    /* 80C39F0C */ void WallWalk();
    /* 80C3A4D8 */ void MoveAction();
    /* 80C3A628 */ void Action();
    /* 80C3A680 */ void Insect_Release();
    /* 80C3A698 */ void checkGround();
    /* 80C3A8C8 */ void F_MoveAction();
    /* 80C3A95C */ void FallAction();
    /* 80C3A990 */ void ParticleSet();
    /* 80C3AAB4 */ void BoomChk();
    /* 80C3ADC8 */ void ObjHit();
    /* 80C3AEC8 */ int Execute();
    /* 80C3B754 */ void Z_BufferChk();
    /* 80C3B8D0 */ int Delete();
    /* 80C3B938 */ void setBaseMtx();
    int Draw() {
        if (mDraw) {
            Z_BufferChk();
            J3DModel* model = mpMorfSO->getModel();
            g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
            g_env_light.setLightTevColorType_MAJI(model, &tevStr);
            mpBtkAnm->entry(model->getModelData());
            mpBrkAnm->entry(model->getModelData());
            fopAcM_setEffectMtx(this, model->getModelData());
            mpMorfSO->entryDL();
            if (field_0x808 == 0) {
                dComIfGd_setSimpleShadow(&current.pos, mAcch.GetGroundH(), 15.0f, mAcch.m_gnd, 0,
                                         -0.6f, dDlst_shadowControl_c::getSimpleTex());
            }
        }
        return 1;
    }
    /* 80C3BAAC */ bool CreateChk();
    /* 80C3BC58 */ int create();

private:
    /* 0x590 */ dBgS_ObjAcch mAcch;
    /* 0x768 */ dBgS_GndChk mGndChk;
    /* 0x7BC */ u8 field_0x7bc[0x7c0 - 0x7bc];
    /* 0x7C0 */ u8 field_0x7c0;
    /* 0x7C1 */ u8 field_0x7c1;
    /* 0x7C2 */ csXyz field_0x7c2;
    /* 0x7C8 */ cXyz field_0x7c8;
    /* 0x7D4 */ s16 field_0x7d4;
    /* 0x7D8 */ f32 field_0x7d8;
    /* 0x7DC */ u8 field_0x7dc[0x7e0 - 0x7dc];
    /* 0x7E0 */ s16 field_0x7e0;
    /* 0x7E2 */ u8 field_0x7e2[0x7e8 - 0x7e2];
    /* 0x7E8 */ u8 field_0x7e8;
    /* 0x7EA */ csXyz field_0x7ea;
    /* 0x7F0 */ u8 field_0x7f0[0x7f2 - 0x7f0];
    /* 0x7F2 */ s16 field_0x7f2;
    /* 0x7F4 */ s16 field_0x7f4;
    /* 0x7F6 */ s16 field_0x7f6;
    /* 0x7F8 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x7FC */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x800 */ f32 field_0x800;
    /* 0x804 */ u32 field_0x804;
    /* 0x808 */ u8 field_0x808;
    /* 0x809 */ f32 field_0x80c;
    /* 0x810 */ dCcD_Stts mStts;
    /* 0x84C */ dCcD_Sph mSph;
    /* 0x984 */ daPy_boomerangMove_c mBoomerangMove;
    /* 0x990 */ u8 field_0x990;
    /* 0x994 */ Z2Creature mCreatureSound;
    /* 0xA24 */ dBgS_AcchCir field_0xa24;
    /* 0xA64 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0xA68 */ request_of_phase_process_class mPhase;
    /* 0xA70 */ u8 field_0xa70;
};

STATIC_ASSERT(sizeof(daObjKAT_c) == 0xa74);

class daObj_KatHIO_c : public JORReflexible {
public:
    /* 80C3996C */ daObj_KatHIO_c();
    /* 80C3C5CC */ virtual ~daObj_KatHIO_c() {}

    void genMessage(JORMContext* ctx) {
        // Golden Snail
        ctx->genLabel("黄金蟲(カタツムリ)", 0x80000001, 0, NULL, -1, -1, 0x200, 24);
        // Model scale (male)
        ctx->genSlider("モデルスケール(オス)", &this->mScaleMale, 0.1f, 4.0f, 0, NULL, -1, -1,
                       0x200, 24);
        // Model scale (female)
        ctx->genSlider("モデルスケール(メス)", &this->mScaleFemale, 0.1f, 4.0f, 0, NULL, -1, -1,
                       0x200, 24);
    }

    s8 field_0x4;
    f32 mScaleFemale;
    f32 mScaleMale;
};

#endif /* D_A_OBJ_KATATSUMURI_H */
