#ifndef D_A_NPC_GRZ_H
#define D_A_NPC_GRZ_H

#include "d/actor/d_a_npc4.h"
#include "d/d_particle_copoly.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Grz_c
 * @brief Darbus
 *
 * @details
 *
*/

struct daNpc_Grz_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ s16 color_time;              // カラータイム - Color Time    
    /* 0x6E */ s16 color_r;                 // カラーR - Color R         
    /* 0x70 */ s16 color_g;                 // カラーG - Color G         
    /* 0x72 */ s16 color_b;                 // カラーB - Color B         
    /* 0x74 */ f32 walk_speed;              // 歩き速度 - Walk Speed        
    /* 0x78 */ f32 rotation_movement_speed; // 回転移動速度 - Rotational Movement Speed    
    /* 0x7C */ f32 demo_start_distance;     // デモ開始距離 - Demo Start Distance    
};

class daNpc_Grz_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_Grz_HIOParam param;
};

class daNpc_Grz_c : public daNpcF_c {
public:
    typedef int (daNpc_Grz_c::*actionFunc)(void*);
    typedef int (daNpc_Grz_c::*cutFunc)(int);

    class daNpc_GrZ_prtclMngr_c {
    public:
        /* 0x00 */ u8 field_0x0;
        /* 0x04 */ cXyz mPos;
        /* 0x10 */ csXyz mAngle;
        /* 0x18 */ cXyz mScale;
        /* 0x24 */ dPaPo_c mPaPo;
    };

    /* 809E840C */ daNpc_Grz_c();
    /* 809E88C0 */ ~daNpc_Grz_c();
    /* 809E8BA0 */ cPhs__Step create();
    /* 809E8E68 */ int CreateHeap();
    /* 809E92AC */ int Delete();
    /* 809E92E0 */ int Execute();
    /* 809E9324 */ int Draw();
    /* 809E9568 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 809E979C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809E97BC */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809E9808 */ void setParam();
    /* 809E9954 */ BOOL main();
    /* 809E9AD4 */ BOOL ctrlBtk();
    /* 809E9BB4 */ void setAttnPos();
    /* 809EA1DC */ void setCollisionPunch();
    /* 809EA734 */ bool setExpressionAnm(int, bool);
    /* 809EAA08 */ bool setExpressionBtp(int);
    /* 809EAB34 */ void setExpression(int, f32);
    /* 809EAB60 */ void setMotionAnm(int, f32);
    /* 809EAD4C */ void setMotion(int, f32, int);
    /* 809EAD90 */ int drawDbgInfo();
    /* 809EAD98 */ void drawOtherMdls();
    /* 809EAD9C */ int getTypeFromParam();
    /* 809EADE8 */ BOOL isDelete();
    /* 809EAE88 */ void reset();
    /* 809EB154 */ void resetCol();
    /* 809EB234 */ void playExpression();
    /* 809EB5C0 */ void playMotion();
    /* 809EBA3C */ BOOL chkAction(actionFunc);
    /* 809EBA68 */ BOOL setAction(actionFunc);
    /* 809EBB10 */ BOOL selectAction();
    /* 809EBC04 */ void doNormalAction(int);
    /* 809EBD18 */ BOOL doEvent();
    /* 809EC0CC */ bool setSkipZev(int, int);
    /* 809EC164 */ void setLookMode(int);
    /* 809EC188 */ void lookat();
    /* 809EC424 */ void setExpressionTalkAfter();
    /* 809EC4C4 */ int wait(void*);
    /* 809EC854 */ int waitSmash(void*);
    /* 809ECBF0 */ int lieDown(void*);
    /* 809ECCA0 */ int waitWeak(void*);
    /* 809ECD50 */ int talk(void*);
    /* 809ECF88 */ int test(void*);
    /* 809ED06C */ int setPrtcl();
    /* 809ED18C */ int doWaitCut(int);
    /* 809ED228 */ int doRebirthCut(int);
    /* 809ED3D4 */ int doTalkStandCut(int);
    /* 809ED5EC */ int doGoOutCut(int);
    /* 809EDBA4 */ int doStoneSmashCut(int);
    /* 809EE5F0 */ int doStoneSmashSkipCut(int);
    /* 809EF184 */ void adjustShapeAngle() {}

    u8 getPathNoFromParam() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }

    static char* mEvtCutNameList[7];
    static cutFunc mEvtCutList[7];

private:
    /* 0x0B48 */ Z2Creature mSound;
    /* 0x0BD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0x0BDC */ daNpcF_Lookat_c mLookat;
    /* 0x0C78 */ daNpcF_Path_c mPath;
    /* 0x12A8 */ daNpcF_ActorMngr_c mActorMngrs[4];
    /* 0x12C8 */ daNpc_Grz_HIO_c* mHIO;
    /* 0x12CC */ dCcD_Cyl mCyl1;
    /* 0x1408 */ dCcD_Cyl mCyl2;
    /* 0x1544 */ dCcD_Sph mSphs[4];
    /* 0x1A24 */ actionFunc mNextAction;
    /* 0x1A30 */ actionFunc mAction;
    /* 0x1A3C */ request_of_phase_process_class mPhases[5];
    /* 0x1A64 */ int field_0x1a64;
    /* 0x1A68 */ int field_0x1a68;
    /* 0x1A6C */ int field_0x1a6c;
    /* 0x1A70 */ int field_0x1a70;
    /* 0x1A74 */ int mMsgNo;
    /* 0x1A78 */ s16 mLookMode;
    /* 0x1A7A */ u16 mMode;
    /* 0x1A7C */ u8 mType;
    /* 0x1A80 */ int mAnm;
    /* 0x1A84 */ int field_0x1a84;
    /* 0x1A88 */ int field_0x1a88;
    /* 0x1A8C */ int mTimer;
    /* 0x1A90 */ J3DGXColorS10 mColor;
    /* 0x1A98 */ u8 mSwNo;
    /* 0x1A9C */ int field_0x1a9c;
    /* 0x1AA0 */ u32 field_0x1aa0[3];
    /* 0x1AAC */ daNpc_GrZ_prtclMngr_c mPrtclMngr[1];
};

STATIC_ASSERT(sizeof(daNpc_Grz_c) == 0x1b08);

class daNpc_Grz_Param_c {
public:
    /* 809EF188 */ virtual ~daNpc_Grz_Param_c() {}

    static daNpc_Grz_HIOParam const m;
};

#endif /* D_A_NPC_GRZ_H */
