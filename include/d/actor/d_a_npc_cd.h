#ifndef A_NPC_D_A_NPC_CD_H
#define A_NPC_D_A_NPC_CD_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/actor/d_a_npc.h"

class daNpcCd_c : public fopAc_ac_c {
public:
    /* 8015605C */ int NpcCreate(int);
    /* 801561E8 */ J3DModel* ObjCreate(int);
    /* 80156228 */ BOOL isM_();
    /* 80156248 */ J3DAnmTransform* getAnmP(int, int);
    /* 801563C8 */ int setAttention(int);
    /* 80156B4C */ int loadResrc(int, int);
    /* 80156C50 */ int removeResrc(int, int);
    /* 80156D1C */ void setEnvTevCol();
    /* 80156D78 */ void setRoomNo();
    /* 80156DBC */ void animation();
    /* 80156E20 */ void setAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 80156E8C */ int drawObj(int, J3DModel*, f32);
    /* 80156F74 */ int drawNpc();
    /* 80157084 */ int jntNodeCB(J3DJoint*, J3DModel*);
    /* 8015736C */ void setHitodamaParticle();
    /* 80157524 */ J3DModelData* getNpcMdlDataP(int);
    /* 80157588 */ J3DModelData* getObjMdlDataP(int);
    /* 80AA8694 */ virtual ~daNpcCd_c();

    static dCcD_SrcCyl const m_cylDat;

    /* 0x56C */ request_of_phase_process_class mPhase1;
    /* 0x574 */ request_of_phase_process_class mPhase2;
    /* 0x57C */ request_of_phase_process_class mPhase3;
    /* 0x584 */ request_of_phase_process_class mPhase4;
    /* 0x58C */ mDoExt_McaMorfSO* mpMorf;
    /* 0x590 */ Z2CreatureCitizen mCreature;
    /* 0x634 */ dBgS_ObjAcch mAcch;
    /* 0x80C */ dBgS_AcchCir mAcchCir;
    /* 0x84C */ dCcD_Stts mStts;
    /* 0x888 */ dCcD_Cyl mCyl;
    /* 0x9C4 */ int field_0x9c4;
    /* 0x9C8 */ int field_0x9c8;
    /* 0x9CC */ int mHitodamaEmitters[2];
    /* 0x9D4 */ int field_0x9d4;
    /* 0x9D8 */ cXyz field_0x9d8;
    /* 0x9E4 */ s16 field_0x9e4;
    /* 0x9E6 */ s16 field_0x9e6;
    /* 0x9E8 */ bool mIsDarkWorld;
};

STATIC_ASSERT(sizeof(daNpcCd_c) == 0x9EC);


struct daNpcCd_HIO_Jnt_c : public JORReflexible {
    /* 80157810 */ virtual ~daNpcCd_HIO_Jnt_c() {}
    /* 801578B0 */ daNpcCd_HIO_Jnt_c() {}

#ifdef DEBUG
    void genMessage(JORMContext*);
#endif

    /* 0x04 */ Vec jntT;
    /* 0x10 */ SVec jntR;
};

struct daNpcCd_HIO_Child_c : public JORReflexible {
    /* 801577A0 */ virtual ~daNpcCd_HIO_Child_c() {}
    /* 80157858 */ daNpcCd_HIO_Child_c() {}

#ifdef DEBUG
    void genMessage(JORMContext*);
#endif

    /* 0x004 */ daNpcCd_HIO_Jnt_c field_0x4[12];
    /* 0x128 */ s16 field_0x128[0x0E];
    /* 0x136 */ s16 mAtn;
    /* 0x156 */ s16 field_0x146[0x10];
};

STATIC_ASSERT(sizeof(daNpcCd_HIO_Child_c) == 0x164);

class daNpcCd_HIO_c : public fOpAcm_HIO_entry_c {
public:
    /* 80157600 */ daNpcCd_HIO_c();
    /* 801577A0 */ virtual ~daNpcCd_HIO_c() {}

#ifdef DEBUG
    void genMessage(JORMContext*);
#endif

    /* 0x0004 */ daNpcCd_HIO_Child_c field_0x0004[16];
    /* 0x1648 */ daNpcCd_HIO_Child_c field_0x1648[14];
};

STATIC_ASSERT(sizeof(daNpcCd_HIO_c) == 0x29BC);

extern daNpcCd_HIO_c l_Cd_HIO;
inline f32 HIO_atnOfs(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd_HIO.field_0x0004[param_1].mAtn;
    } else {
        rv = l_Cd_HIO.field_0x1648[param_1 - 16].mAtn;
    }
    return rv;
}

inline s16 HIO_jntRX(int param_1, int param_2) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd_HIO.field_0x0004[param_1].field_0x4[param_2].jntR.x;
    } else {
        rv = l_Cd_HIO.field_0x1648[param_1 - 16].field_0x4[param_2].jntR.x;
    }
    return 182.04444885253906f * rv;
}

inline s16 HIO_jntRY(int param_1, int param_2) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd_HIO.field_0x0004[param_1].field_0x4[param_2].jntR.y;
    } else {
        rv = l_Cd_HIO.field_0x1648[param_1 - 16].field_0x4[param_2].jntR.y;
    }
    return 182.04444885253906f * rv;
}

inline s16 HIO_jntRZ(int param_1, int param_2) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd_HIO.field_0x0004[param_1].field_0x4[param_2].jntR.z;
    } else {
        rv = l_Cd_HIO.field_0x1648[param_1 - 16].field_0x4[param_2].jntR.z;
    }
    return 182.04444885253906f * rv;
}

static inline f32 HIO_jntTX(int param_1, int param_2) {
    f32 rv;
    if (param_1 < 16) {
        rv = l_Cd_HIO.field_0x0004[param_1].field_0x4[param_2].jntT.x;
    } else {
        rv = l_Cd_HIO.field_0x1648[param_1 - 16].field_0x4[param_2].jntT.x;
    }
    return 10.0f * rv;
}

static inline f32 HIO_jntTY(int param_1, int param_2) {
    f32 rv;
    if (param_1 < 16) {
        rv = l_Cd_HIO.field_0x0004[param_1].field_0x4[param_2].jntT.y;
    } else {
        rv = l_Cd_HIO.field_0x1648[param_1 - 16].field_0x4[param_2].jntT.y;
    }
    return 10.0f * rv;
}

static inline f32 HIO_jntTZ(int param_1, int param_2) {
    f32 rv;
    if (param_1 < 16) {
        rv = l_Cd_HIO.field_0x0004[param_1].field_0x4[param_2].jntT.z;
    } else {
        rv = l_Cd_HIO.field_0x1648[param_1 - 16].field_0x4[param_2].jntT.z;
    }
    return 10.0f * rv;
}

#endif /* A_NPC_D_A_NPC_CD_H */
