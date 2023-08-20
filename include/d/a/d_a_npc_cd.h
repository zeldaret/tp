#ifndef A_NPC_D_A_NPC_CD_H
#define A_NPC_D_A_NPC_CD_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/bg/d_bg_s_acch.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daNpcCd_c : public fopAc_ac_c {
public:
    /* 8015605C */ int NpcCreate(int);
    /* 801561E8 */ J3DModel* ObjCreate(int);
    /* 80156228 */ void isM_();
    /* 80156248 */ void getAnmP(int, int);
    /* 801563C8 */ void setAttention(int);
    /* 80156B4C */ int loadResrc(int, int);
    /* 80156C50 */ int removeResrc(int, int);
    /* 80156D1C */ void setEnvTevCol();
    /* 80156D78 */ void setRoomNo();
    /* 80156DBC */ void animation();
    /* 80156E20 */ void setAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 80156E8C */ void drawObj(int, J3DModel*, f32);
    /* 80156F74 */ void drawNpc();
    /* 80157084 */ void jntNodeCB(J3DJoint*, J3DModel*);
    /* 8015736C */ void setHitodamaParticle();
    /* 80157524 */ J3DModelData* getNpcMdlDataP(int);
    /* 80157588 */ J3DModelData* getObjMdlDataP(int);

    static u8 const m_cylDat[68];

    /* 0x568 */ u8 field_0x568[4]; //sneaky vtable? 
    /* 0x56C */ request_of_phase_process_class mPhase1;
    /* 0x574 */ request_of_phase_process_class mPhase2;
    /* 0x57C */ request_of_phase_process_class mPhase3;
    /* 0x584 */ request_of_phase_process_class mPhase4;
    /* 0x58C */ mDoExt_McaMorfSO* mpMorf;
    /* 0x590 */ Z2CreatureCitizen mCreature;
    /* 0x634 */ dBgS_ObjAcch mObjAcch;

    /* 0x80C */ u8 field_0x80c[0x9C4 - 0x80C];
    /* 0x9C4 */ u32 field_0x9c4;
    /* 0x9C8 */ int field_0x9c8;
    /* 0x9CC */ u8 field_0x9cc[0x9E8 - 0x9CC];
    /* 0x9E8 */ bool field_0x9e8;
};

#endif /* A_NPC_D_A_NPC_CD_H */
