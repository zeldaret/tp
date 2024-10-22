#ifndef A_NPC_D_A_NPC_CD2_H
#define A_NPC_D_A_NPC_CD2_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_npc_lib.h"
#include "dolphin/types.h"

class PathTrace_c {
public:
    /* 80159A38 */ void setPath(int, int, int, cXyz*, bool);
    /* 80159C14 */ void checkPoint(cXyz, f32);
    /* 80159DC0 */ void checkPathEnd(cXyz, f32);
    /* 80159E54 */ void getTargetPoint(Vec*);
    /* 80159ECC */ void setAvoidPoint();
    /* 8015A0D0 */ void setNextPoint();
    /* 80159F98 */ void setNextPoint(cXyz&);
    /* 8015A264 */ void incIndex(int);
    /* 8015A294 */ void decIndex(int);
    /* 8015A370 */ fopAc_ac_c* checkObstacle(fopAc_ac_c*);
    /* 8015A3E4 */ void* checkObstacleSub(fopAc_ac_c*);

    /* 0x00 */ fopAc_ac_c* field_0x00;
    /* 0x04 */ fopAc_ac_c* field_0x04;
};

class daNpcCd2_c : public fopAc_ac_c {
public:
    /* 80157D00 */ void NpcCreate(int);
    /* 80157F28 */ J3DModel* ObjCreate(int);
    /* 80157F68 */ void ChairCreate(f32);
    /* 801580A8 */ bool isM_();
    /* 801580F0 */ void* getAnmP(int, int);
    /* 80158420 */ void setAttention(int);
    /* 80158BB8 */ int loadResrc(int, int);
    /* 80158CBC */ int removeResrc(int, int);
    /* 80158D88 */ void setEnvTevCol();
    /* 80158DE4 */ void setRoomNo();
    /* 80158E28 */ void animation(int);
    /* 80158F00 */ void setAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 80158F6C */ int drawShadow(f32);
    /* 80158FF0 */ int drawObj(int, J3DModel*, f32);
    /* 801590FC */ int drawNpc();
    /* 80159258 */ void jntNodeCB(J3DJoint*, J3DModel*);
    /* 80159550 */ void setHitodamaParticle();
    /* 801597C0 */ void* getEscapeTag();
    /* 80159818 */ void checkFearSituation();
    /* 801598E8 */ void getNpcMdlDataP(int);
    /* 8015994C */ J3DModelData* getObjMdlDataP(int);
    /* 801599C4 */ void getTexAnmP(int);
    /* 8097F030 */ virtual ~daNpcCd2_c();

    static u8 const m_cylDat[68];

    /* 0x56C */ request_of_phase_process_class mPhase1;
    /* 0x574 */ request_of_phase_process_class mPhase2;
    /* 0x57C */ request_of_phase_process_class mPhase3;
    /* 0x584 */ request_of_phase_process_class mPhase4;
    /* 0x58C */ mDoExt_McaMorfSO* mpMorf;
    /* 0x590 */ mDoExt_btpAnm* mpBtpAnm;
    /* 0x594 */ Z2CreatureCitizen mCitizen;
    /* 0x638 */ dBgS_Acch mAcch;
    /* 0x810 */ dBgS_AcchCir mAcchCir;
    /* 0x850 */ dCcD_Stts mStts;
    /* 0x88C */ dCcD_Cyl mCyl;
    /* 0x9C8 */ dNpcLib_lookat_c mLookat;
    /* 0xA98 */ u8 field_0xa98[0xAC4 - 0xA98];
    /* 0xAC4 */ s16 field_0xac4;
    /* 0xAC6 */ bool field_0xac6;
};

#endif /* A_NPC_D_A_NPC_CD2_H */
