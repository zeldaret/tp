#ifndef A_NPC_D_A_NPC_CD2_H
#define A_NPC_D_A_NPC_CD2_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/actor/d_a_tag_escape.h"
#include "d/d_npc_lib.h"
#include "d/d_path.h"
#include "dolphin/types.h"

enum {
    MdlMANa_e = 0,
    MdlMADa_e = 1,
    JntM_NUM_e = 0x13,
    JntW_NUM_e = 0x15,
};


enum AnmNum {
    CD2_ANM_0 = 0,
    CD2_ANM_14 = 14,
};

struct daNpcCd2_HIO_Jnt_c : public JORReflexible {
    /* 8015A6E8 */ virtual ~daNpcCd2_HIO_Jnt_c() {}
    /* 8015A788 */ daNpcCd2_HIO_Jnt_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ f32 field_0x04[3];
    /* 0x10 */ s16 field_0x10[3];
};

struct daNpcCd2_HIO_MChild_c {
    /* 8015A798 */ virtual ~daNpcCd2_HIO_MChild_c() {}
    /* 8015A808 */ daNpcCd2_HIO_MChild_c() {}

    /* 0x004 */ daNpcCd2_HIO_Jnt_c field_0x004[19];
    /* 0x1CE */ s16 mMaxLmtY_BACKBONE;
    /* 0x1CA */ s16 mMaxLmtX_BACKBONE;
    /* 0x1CC */ s16 mMinLmtY_BACKBONE;
    /* 0x1CE */ s16 mMinLmtX_BACKBONE;
    /* 0x1D0 */ s16 mMaxLmtY_NECK;
    /* 0x1D2 */ s16 mMaxLmtX_NECK;
    /* 0x1D4 */ s16 mMinLmtY_NECK;
    /* 0x1D6 */ s16 mMinLmtX_NECK;
    /* 0x1D0 */ s16 mMaxLmtY_HEAD;
    /* 0x1D2 */ s16 mMaxLmtX_HEAD;
    /* 0x1D4 */ s16 mMinLmtY_HEAD;
    /* 0x1D6 */ s16 mMinLmtX_HEAD;
    /* 0x1E0 */ f32 mScale;
    /* 0x1E4 */ s16 mAttn;
    /* 0x1E8 */ f32 mAnmPlaySpeed;
    /* 0x1EC */ f32 mWalkAnmPlaySpeed;
    /* 0x1F0 */ f32 mMaxSpeed;
    /* 0x1F4 */ f32 mWalkMaxSpeed;
    /* 0x1F8 */ f32 mCylH;
    /* 0x1FC */ f32 mCylR;
    /* 0x200 */ f32 mChkWallH;
    /* 0x204 */ f32 mChkWallR;
};

struct daNpcCd2_HIO_WChild_c {
    /* 8015A678 */ virtual ~daNpcCd2_HIO_WChild_c() {}
    /* 8015A730 */ daNpcCd2_HIO_WChild_c() {}

    /* 0x004 */ daNpcCd2_HIO_Jnt_c field_0x004[21];
    /* 0x1FE */ s16 mMaxLmtY_BACKBONE;
    /* 0x1FA */ s16 mMaxLmtX_BACKBONE;
    /* 0x1FC */ s16 mMinLmtY_BACKBONE;
    /* 0x1FE */ s16 mMinLmtX_BACKBONE;
    /* 0x200 */ s16 mMaxLmtY_NECK;
    /* 0x202 */ s16 mMaxLmtX_NECK;
    /* 0x204 */ s16 mMinLmtY_NECK;
    /* 0x206 */ s16 mMinLmtX_NECK;
    /* 0x200 */ s16 mMaxLmtY_HEAD;
    /* 0x202 */ s16 mMaxLmtX_HEAD;
    /* 0x204 */ s16 mMinLmtY_HEAD;
    /* 0x206 */ s16 mMinLmtX_HEAD;
    /* 0x218 */ f32 mScale;
    /* 0x21C */ s16 mAttn;
    /* 0x220 */ f32 mAnmPlaySpeed;
    /* 0x224 */ f32 mWalkAnmPlaySpeed;
    /* 0x228 */ f32 mMaxSpeed;
    /* 0x22C */ f32 mWalkMaxSpeed;
    /* 0x230 */ f32 mCylH;
    /* 0x234 */ f32 mCylR;
    /* 0x238 */ f32 mChkWallH;
    /* 0x23C */ f32 mChkWallR;
};

struct daNpcCd2_HIO_c : public fOpAcm_HIO_entry_c {
    /* 8015A4D8 */ daNpcCd2_HIO_c();
    /* 8015A860 */ virtual ~daNpcCd2_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x0004 */ daNpcCd2_HIO_MChild_c field_0x0004[16];
    /* 0x20C4 */ daNpcCd2_HIO_WChild_c field_0x20c4[14];
};

extern daNpcCd2_HIO_c l_Cd2_HIO;

inline s16 Cd2_HIO_atnOfs(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mAttn;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mAttn;
    }
    return rv;
}

inline f32 Cd2_HIO_objScale(int param_1) {
    return (f32)(param_1 < 16 ? l_Cd2_HIO.field_0x0004[param_1].mScale : l_Cd2_HIO.field_0x20c4[param_1 - 16].mScale);

}

inline f32 Cd2_HIO_walkMaxSpeed(int param_1) {
    f32 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mWalkMaxSpeed;
    } else {
        return l_Cd2_HIO.field_0x20c4[param_1 - 16].mWalkMaxSpeed;
    }
    return rv;
}

inline f32 Cd2_HIO_walkAnmPlaySpeed(int param_1) {
    f32 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mWalkAnmPlaySpeed;
    } else {
        return l_Cd2_HIO.field_0x20c4[param_1 - 16].mWalkAnmPlaySpeed;
    }
    return rv;
}

inline f32 Cd2_HIO_maxSpeed(int param_1) {
    f32 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMaxSpeed;
    } else {
        return l_Cd2_HIO.field_0x20c4[param_1 - 16].mMaxSpeed;
    }
    return rv;
}

inline f32 Cd2_HIO_anmPlaySpeed(int param_1) {
    return (f32)(param_1 < 16 ? l_Cd2_HIO.field_0x0004[param_1].mAnmPlaySpeed : l_Cd2_HIO.field_0x20c4[param_1 - 16].mAnmPlaySpeed);
}

inline f32 Cd2_HIO_chkWallH(int param_1) {
    return param_1 < 16 ? l_Cd2_HIO.field_0x0004[param_1].mChkWallH : l_Cd2_HIO.field_0x20c4[param_1 - 16].mChkWallH;
}

inline f32 Cd2_HIO_chkWallR(int param_1) {
    return param_1 < 16 ? l_Cd2_HIO.field_0x0004[param_1].mChkWallR : l_Cd2_HIO.field_0x20c4[param_1 - 16].mChkWallR;
}

inline f32 Cd2_HIO_cylR(int param_1) {
    return param_1 < 16 ? l_Cd2_HIO.field_0x0004[param_1].mCylR : l_Cd2_HIO.field_0x20c4[param_1 - 16].mCylR;
}

inline f32 Cd2_HIO_cylH(int param_1) {
    return param_1 < 16 ? l_Cd2_HIO.field_0x0004[param_1].mCylH : l_Cd2_HIO.field_0x20c4[param_1 - 16].mCylH;
}

inline int Cd2_HIO_maxLmtX_BACKBONE(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMaxLmtX_BACKBONE;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMaxLmtX_BACKBONE;
    }
    return rv;
}

inline int Cd2_HIO_maxLmtY_BACKBONE(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMaxLmtY_BACKBONE;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMaxLmtY_BACKBONE;
    }
    return rv;
}

inline int Cd2_HIO_maxLmtX_NECK(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMaxLmtX_NECK;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMaxLmtX_NECK;
    }
    return rv;
}

inline int Cd2_HIO_maxLmtY_NECK(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMaxLmtY_NECK;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMaxLmtY_NECK;
    }
    return rv;
}

inline int Cd2_HIO_maxLmtX_HEAD(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMaxLmtX_HEAD;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMaxLmtX_HEAD;
    }
    return rv;
}

inline int Cd2_HIO_maxLmtY_HEAD(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMaxLmtY_HEAD;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMaxLmtY_HEAD;
    }
    return rv;
}

inline int Cd2_HIO_minLmtX_BACKBONE(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMinLmtX_BACKBONE;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMinLmtX_BACKBONE;
    }
    return rv;
}

inline int Cd2_HIO_minLmtY_BACKBONE(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMinLmtY_BACKBONE;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMinLmtY_BACKBONE;
    }
    return rv;
}

inline int Cd2_HIO_minLmtX_NECK(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMinLmtX_NECK;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMinLmtX_NECK;
    }
    return rv;
}

inline int Cd2_HIO_minLmtY_NECK(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMinLmtY_NECK;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMinLmtY_NECK;
    }
    return rv;
}

inline int Cd2_HIO_minLmtX_HEAD(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMinLmtX_HEAD;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMinLmtX_HEAD;
    }
    return rv;
}

inline int Cd2_HIO_minLmtY_HEAD(int param_1) {
    s16 rv;
    if (param_1 < 16) {
        rv = l_Cd2_HIO.field_0x0004[param_1].mMinLmtY_HEAD;
    } else {
        rv = l_Cd2_HIO.field_0x20c4[param_1 - 16].mMinLmtY_HEAD;
    }
    return rv;
}

class PathTrace_c {
public:
    /* 80159A38 */ bool setPath(int, int, int, cXyz*, bool);
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
    bool isPath() { return mPath != NULL; }
    s8 getArg0() { return mPath->m_points[field_0x20].mArg0; }
    s8 getArg1() { return mPath->m_points[field_0x20].mArg1; }
    Vec getPoint(int index) { return mPath->m_points[index].m_position; }
    void setLastPointNum() { field_0x20 = mPath->m_num - 1; }
    u16 getLastPointNum() {
        u32 rv;
        if (field_0x24 == 1) {
            rv = mPath->m_num - 1;
        } else {
            return 0;
        }
        return rv;
    }

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
    /* 801580F0 */ J3DAnmTransform* getAnmP(int, int);
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
    /* 801597C0 */ daTagEscape_c* getEscapeTag();
    /* 80159818 */ bool checkFearSituation();
    /* 801598E8 */ J3DModelData* getNpcMdlDataP(int);
    /* 8015994C */ J3DModelData* getObjMdlDataP(int);
    /* 801599C4 */ J3DAnmTexPattern* getTexAnmP(int);
    /* 8097F030 */ virtual ~daNpcCd2_c() {}

    static dCcD_SrcCyl const m_cylDat;

    /* 0x56C */ request_of_phase_process_class mPhase1;
    /* 0x574 */ request_of_phase_process_class mPhase2;
    /* 0x57C */ request_of_phase_process_class mPhase3;
    /* 0x584 */ request_of_phase_process_class mPhase4;
    /* 0x58C */ mDoExt_McaMorfSO* mpMorf;
    /* 0x590 */ mDoExt_btpAnm* mpBtpAnm;
    /* 0x594 */ Z2CreatureCitizen mCitizen;
    /* 0x638 */ dBgS_ObjAcch mAcch;
    /* 0x810 */ dBgS_AcchCir mAcchCir;
    /* 0x850 */ dCcD_Stts mStts;
    /* 0x88C */ dCcD_Cyl mCyl;
    /* 0x9C8 */ dNpcLib_lookat_c mLookat;
    /* 0xA98 */ int m_type;
    /* 0xA9C */ int field_0xa9c;
    /* 0xAA4 */ int field_0xaa0;
    /* 0xAA4 */ int field_0xaa4;
    /* 0xAA8 */ int mHitodamaEmitters[2];
    /* 0xAB0 */ daTagEscape_c* mEscapeTag;
    /* 0xAB4 */ cXyz field_0xab4;
    /* 0xAC0 */ s16 field_0xac0;
    /* 0xAC2 */ s16 field_0xac2;
    /* 0xAC4 */ s16 field_0xac4;
    /* 0xAC6 */ bool mIsDarkWorld;
};

#endif /* A_NPC_D_A_NPC_CD2_H */
