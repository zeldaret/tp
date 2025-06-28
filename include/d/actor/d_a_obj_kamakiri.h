#ifndef D_A_OBJ_KAMAKIRI_H
#define D_A_OBJ_KAMAKIRI_H

#include "JSystem/JHostIO/JORMContext.h"
#include "JSystem/JHostIO/JORReflexible.h"
#include "d/d_cc_d.h"
#include "d/d_insect.h"
#include "d/actor/d_a_player.h"

/**
 * @ingroup actors-objects
 * @class daObjKAM_c
 * @brief Insect - Mantis
 *
 * @details
 *
 */
class daObjKAM_c : public dInsect_c {
public:
    /* 80C351BC */ void InitCcSph();
    /* 80C35228 */ void SetCcSph();
    /* 80C352A0 */ int CreateHeap();
    /* 80C35684 */ void ShopWaitAction();
    /* 80C357EC */ void WaitAction();
    /* 80C35970 */ int WallCheck();
    /* 80C35BE4 */ void SpeedSet();
    /* 80C35CF0 */ void WallWalk();
    /* 80C36138 */ void WalkAction();
    /* 80C36338 */ void MoveAction();
    /* 80C36B20 */ void Action();
    /* 80C36BE4 */ void ShopAction();
    /* 80C36CA0 */ void Insect_Release();
    /* 80C36CB8 */ void Z_BufferChk();
    /* 80C36E34 */ void ParticleSet();
    /* 80C36F58 */ void BoomChk();
    /* 80C37324 */ void ObjHit();
    /* 80C374AC */ int Execute();
    /* 80C37724 */ int Delete();
    /* 80C3778C */ void setBaseMtx();
    int Draw() {
        if (mDraw != 0) {
            Z_BufferChk();
            J3DModel* model = mpMorfSO->getModel();
            g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
            g_env_light.setLightTevColorType_MAJI(model, &tevStr);
            mpBtkAnm->entry(model->getModelData());
            mpBrkAnm->entry(model->getModelData());
            mpMorfSO->entryDL();
            if (field_0x9c0 == 0) {
                _GXTexObj* texObj = dDlst_shadowControl_c::getSimpleTex();
                dComIfGd_setSimpleShadow(&current.pos, mObjAcch.GetGroundH(), 15.0f, mObjAcch.m_gnd, 0, -0.6f, texObj);
            }
        }
        return 1;
    }
    /* 80C378F4 */ u8 CreateChk();
    /* 80C37AA0 */ int create();

private:
    /* 0x590 */ dCcD_Stts mStts;
    /* 0x5CC */ dCcD_Sph mSphere;
    /* 0x704 */ daPy_boomerangMove_c mBoomerangMove;
    /* 0x710 */ dBgS_AcchCir mAcchCir;
    /* 0x750 */ dBgS_ObjAcch mObjAcch;
    /* 0x928 */ dBgS_GndChk mGndChk;
    /* 0x928 */ u8 field_0x97c[0x980 - 0x97c];
    /* 0x980 */ u8 field_0x980;
    /* 0x981 */ u8 field_0x981;
    /* 0x982 */ s16 field_0x982[3];
    /* 0x988 */ f32 field_0x988;
    /* 0x98C */ f32 field_0x98c;
    /* 0x990 */ s16 field_0x990;
    /* 0x992 */ u8 field_0x992[0x99a - 0x992];
    /* 0x99A */ csXyz field_0x99a;
    /* 0x9A0 */ s16 field_0x9a0;
    /* 0x9A2 */ s16 mNormalYaw;
    /* 0x9A4 */ s16 field_0x9a4;
    /* 0x9A8 */ f32 field_0x9a8;
    /* 0x9AC */ f32 field_0x9ac;
    /* 0x9B0 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x9B4 */ mDoExt_btkAnm* mpBtkAnm;
    /* 0x9B8 */ f32 field_0x9b8;
    /* 0x9BC */ u32 field_0x9bc;
    /* 0x9C0 */ u8 field_0x9c0;
    /* 0x9C1 */ u8 field_0x9c1;
    /* 0x9C2 */ u8 field_0x9c2;
    /* 0x9C4 */ Z2Creature mCreatureSound;
    /* 0xA54 */ u8 field_0xa44[0xa58 - 0xa54];
    /* 0xA58 */ mDoExt_McaMorfSO* mpMorfSO;
    /* 0xA5C */ request_of_phase_process_class mPhase;
    /* 0xA64 */ u8 field_0xa64;
};

STATIC_ASSERT(sizeof(daObjKAM_c) == 0xa68);

class daObj_KamHIO_c : public JORReflexible {
public:
    /* 80C3518C */ daObj_KamHIO_c();
    /* 80C38360 */ virtual ~daObj_KamHIO_c() {}
    void genMessage(JORMContext* context) {
        // Golden insect (stag beetle)
        context->genLabel("黄金蟲(カブト)", 0x80000001, 0, NULL, -1, -1, 0x200, 0x18);
        // Model scale (male)
        context->genSlider("モデルスケール(オス)", &mModelScaleMale, 0.1f, 4.0f, 0, NULL, -1, -1, 0x200,
                           0x18);
        // Model scale (female)
        context->genSlider("モデルスケール(メス)", &mModelScaleFemale, 0.1f, 4.0f, 0, NULL, -1, -1, 0x200,
                           0x18);
    }

    s8 field_0x4;
    f32 mModelScaleFemale;
    f32 mModelScaleMale;
};


#endif /* D_A_OBJ_KAMAKIRI_H */
