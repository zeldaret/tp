#ifndef A_NPC_D_A_NPC_CD2_H
#define A_NPC_D_A_NPC_CD2_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_npc_lib.h"
#include "d/d_path.h"
#include "dolphin/types.h"

enum {
    MdlMANa_e = 0,
    MdlMADa_e = 1,
    JntM_NUM_e = 0x13,
    JntW_NUM_e = 0x15,
};

class PathTrace_c {
public:
    /* 80159A38 */ BOOL setPath(int, int, int, cXyz*, bool);
    /* 80159C14 */ bool checkPoint(cXyz, f32);
    /* 80159DC0 */ bool checkPathEnd(cXyz, f32);
    /* 80159E54 */ void getTargetPoint(Vec*);
    /* 80159ECC */ void setAvoidPoint();
    /* 8015A0D0 */ void setNextPoint();
    /* 80159F98 */ void setNextPoint(cXyz&);
    /* 8015A264 */ int incIndex(int);
    /* 8015A294 */ int decIndex(int);
    /* 8015A370 */ fopAc_ac_c* checkObstacle(fopAc_ac_c*);
    /* 8015A3E4 */ void checkObstacleSub(fopAc_ac_c*);

    void getAvoidPoint(Vec* avoidPoint) { *avoidPoint = mAvoidPoint; }
    BOOL isClose() { return dPath_ChkClose(mPath); }

    /* 0x00 */ fopAc_ac_c* mMyself;
    /* 0x04 */ fopAc_ac_c* mObstacle;
    /* 0x08 */ dPath* mPath;
    /* 0x0C */ Vec mAvoidPoint;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 mNextPoint;
    /* 0x20 */ int field_0x20;
    /* 0x24 */ s8 field_0x24;
};

class daNpcCd2_c : public fopAc_ac_c {
public:
    /* 80157D00 */ int NpcCreate(int);
    /* 80157F28 */ J3DModel* ObjCreate(int);
    /* 80157F68 */ J3DModel* ChairCreate(f32);
    /* 801580A8 */ bool isM_();
    /* 801580F0 */ void* getAnmP(int, int);
    /* 80158420 */ int setAttention(int);
    /* 80158BB8 */ int loadResrc(int, int);
    /* 80158CBC */ int removeResrc(int, int);
    /* 80158D88 */ void setEnvTevCol();
    /* 80158DE4 */ void setRoomNo();
    /* 80158E28 */ void animation(int);
    /* 80158F00 */ void setAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 80158F6C */ int drawShadow(f32);
    /* 80158FF0 */ int drawObj(int, J3DModel*, f32);
    /* 801590FC */ int drawNpc();
    /* 80159258 */ int jntNodeCB(J3DJoint*, J3DModel*);
    /* 80159550 */ void setHitodamaParticle();
    /* 801597C0 */ void* getEscapeTag();
    /* 80159818 */ bool checkFearSituation();
    /* 801598E8 */ J3DModelData* getNpcMdlDataP(int);
    /* 8015994C */ J3DModelData* getObjMdlDataP(int);
    /* 801599C4 */ J3DAnmTexPattern* getTexAnmP(int);
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
    /* 0xA98 */ int m_type;
    /* 0xA9C */ u8 field_0xa9c[0xAA0 - 0xA9C];
    /* 0xAA4 */ int field_0xaa0;
    /* 0xAA4 */ int field_0xaa4;
    /* 0xAA8 */ int mHitodamaEmitters[2];
    /* 0xAB0 */ int field_0xab0;
    /* 0xAB4 */ f32 field_0xab4;
    /* 0xAB8 */ f32 field_0xab8;
    /* 0xABC */ f32 field_0xabc;
    /* 0xAC0 */ s16 field_0xac0;
    /* 0xAC2 */ s16 field_0xac2;
    /* 0xAC4 */ s16 field_0xac4;
    /* 0xAC6 */ bool field_0xac6;
};

#endif /* A_NPC_D_A_NPC_CD2_H */
