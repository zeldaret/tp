#ifndef A_NPC_D_A_NPC_CD_H
#define A_NPC_D_A_NPC_CD_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"

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
    /* 80AA8694 */ virtual ~daNpcCd_c();

    static u8 const m_cylDat[68];

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
    /* 0x9C4 */ u32 field_0x9c4;
    /* 0x9C8 */ int field_0x9c8;
    /* 0x9CC */ int field_0x9cc[3];
    /* 0x9D8 */ cXyz field_0x9d8;
    /* 0x9E4 */ u16 field_0x9e4;
    /* 0x9E6 */ s16 field_0x9e6;
    /* 0x9E8 */ bool field_0x9e8;
};

#endif /* A_NPC_D_A_NPC_CD_H */
