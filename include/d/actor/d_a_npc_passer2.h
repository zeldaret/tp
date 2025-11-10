#ifndef D_A_NPC_PASSER2_H
#define D_A_NPC_PASSER2_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_npc_cd.h"
#include "d/actor/d_a_npc_cd2.h"

/**
 * @ingroup actors-npcs
 * @class daNpcPasser2_c
 * @brief Low-Poly Hylian Passerby
 *
 * @details
 *
*/

class daNpcPasser2_c : public daNpcCd_c {
public:
    typedef void (daNpcPasser2_c::*actionFunc)();

    enum Mode_e {
        /* 0x0 */ MODE_MAX_e,
    };

    /* 80AA755C */ void setAction(daNpcPasser2_c::Mode_e);
    /* 80AA75A0 */ void callInit();
    /* 80AA75C8 */ void callExecute();
    /* 80AA75F4 */ void initPath();
    /* 80AA774C */ void executePath();
    /* 80AA790C */ void setAngle();
    /* 80AA7918 */ void pathMoveF();
    /* 80AA7CD8 */ void create();
    /* 80AA7F78 */ void create_init();
    /* 80AA8270 */ ~daNpcPasser2_c();

    inline int createHeap();
    inline void setSpeed(f32, f32, f32*, int);
    u8 getMoveType() { return (fopAcM_GetParam(this) >> 24) & 0xF; }
    u8 getWalkMotionType() { return (fopAcM_GetParam(this) >> 28) & 3; }
    u8 getRunMotionType() { return fopAcM_GetParam(this) >> 30; }

    static actionFunc ActionTable[1][2];

private:
    /* 0x9EC */ J3DModel* mpModel;
    /* 0x9F0 */ PathTrace_c m_path;
    /* 0xA18 */ actionFunc* mAction;
    /* 0xA1C */ Mode_e mActionIdx;
    /* 0xA20 */ int mPrevActionIdx;
    /* 0xA24 */ int m_objNum;
    /* 0xA28 */ int m_dayOfWeek;
    /* 0xA2C */ int m_endTime;
    /* 0xA30 */ f32 field_0xa30;
    /* 0xA34 */ f32 field_0xa34;
    /* 0xA38 */ f32 field_0xa38;
    /* 0xA3C */ u32 field_0xa3c;
    /* 0xA40 */ u8 field_0xa40;
    /* 0xA41 */ u8 field_0xa41;
    /* 0xA42 */ u8 field_0xa42;
    /* 0xA43 */ u8 field_0xa43;
};

STATIC_ASSERT(sizeof(daNpcPasser2_c) == 0xa44);

#endif /* D_A_NPC_PASSER2_H */
