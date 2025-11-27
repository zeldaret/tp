#ifndef D_A_NPC_GUARD_H
#define D_A_NPC_GUARD_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_npc_cd2.h"

/**
 * @ingroup actors-npcs
 * @class daNpcGuard_c
 * @brief Guard (Hyrule Castle Town Guard?)
 *
 * @details
 *
 */
class daNpcGuard_c : public daNpcCd2_c {
public:
    typedef void (daNpcGuard_c::*actionFunc)();

    enum Mode_e {
        /* 0 */ MODE_PATH_e,
        /* 1 */ MODE_RUN_e,
        /* 2 */ MODE_FIGHT_WAIT_e,
        /* 3 */ MODE_FIGHT_STEP_e,
        /* 4 */ MODE_FIGHT_MENACE_e,
        /* 5 */ MODE_FEAR_e,
        /* 6 */ MODE_MAX_e,  // Escape
    };

    /* 809EFE20 */ void setAction(daNpcGuard_c::Mode_e);
    /* 809EFE64 */ void callInit();
    /* 809EFE8C */ void callExecute();
    /* 809EFEB8 */ void initPath();
    /* 809EFF1C */ void executePath();
    /* 809F0184 */ void initRun();
    /* 809F01E8 */ void executeRun();
    /* 809F03FC */ void initFightWait();
    /* 809F04B4 */ void executeFightWait();
    /* 809F06F4 */ void initFightStep();
    /* 809F0700 */ void executeFightStep();
    /* 809F0778 */ void initFightMenace();
    /* 809F07F8 */ void executeFightMenace();
    /* 809F08DC */ void initFear();
    /* 809F0960 */ void executeFear();
    /* 809F0A50 */ void initEscape();
    /* 809F0B20 */ void executeEscape();
    /* 809F0DD4 */ void setAngle();
    /* 809F0DE0 */ inline void setSpeed(f32, f32, f32*, int);
    /* 809F0ED4 */ void pathMoveF();
    /* 809F12F0 */ int create();
    /* 809F14CC */ inline void create_init();
    /* 809F17D0 */ inline void setMtx();
    /* 809F1878 */ inline void lookat();
    /* 809F1F74 */ inline virtual ~daNpcGuard_c();
    /* 809F2044 */ int execute();

    inline int createHeap();
    inline int draw();
    inline void setCollision();
    inline void initCollision();

    u32 getPathID() { return fopAcM_GetParam(this) >> 0x10 & 0xFF; }

    static actionFunc ActionTable[7][2];

private:
    /* 0xAC8 */ J3DModel* mpModel;
    /* 0xACC */ J3DModel* mpModel2;
    /* 0xAD0 */ J3DAnmTransformKey* mpAnmKey;
    /* 0xAD4 */ J3DAnmTransformKey* mpAnmKey2;
    /* 0xAD8 */ PathTrace_c m_path;
    /* 0xB00 */ daNpcT_ActorMngr_c mActorMngr;
    /* 0xB08 */ daNpcGuard_c::actionFunc* mAction;
    /* 0xB0C */ Mode_e mActionIdx;
    /* 0xB10 */ Mode_e mPrevActionIdx;
    /* 0xB14 */ dCcD_Sph mSpheres[2];
    /* 0xD84 */ int mObjNum;
    /* 0xD88 */ int field_0xd88;
    /* 0xD8C */ f32 field_0xd8c;
    /* 0xD90 */ f32 field_0xd90;
    /* 0xD94 */ f32 field_0xd94;
    /* 0xD98 */ f32 field_0xd98;
    /* 0xD9C */ u32 field_0xd9c;
    /* 0xDA0 */ s16 field_0xda0;
    /* 0xDA2 */ u8 field_0xda2;
    /* 0xDA3 */ u8 field_0xda3[0xDA5 - 0xDA3];
    /* 0xDA5 */ u8 field_0xda5;
};

STATIC_ASSERT(sizeof(daNpcGuard_c) == 0xda8);

#endif /* D_A_NPC_GUARD_H */
