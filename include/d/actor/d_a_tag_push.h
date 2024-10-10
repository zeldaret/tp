#ifndef D_A_TAG_PUSH_H
#define D_A_TAG_PUSH_H

#include "d/actor/d_a_npc.h"
#include "f_op/f_op_actor_mng.h"

class daTag_Push_c : public fopAc_ac_c {
public:
    /* 804902B8 */ static void* srchActor(void*, void*);
    /* 80490418 */ int create();
    /* 804904D4 */ int Delete();
    /* 804904DC */ int Execute();
    /* 804906BC */ int Draw();
    /* 804906C4 */ int isDelete();
    /* 80490724 */ int chkPointInArea(cXyz);

    u32 getId() {
        u32 id = fopAcM_GetParam(this) >> 0x18;
        if (id != 0xFF) {
            return id;
        }
        return -1;
    }

    u8 getBitSW() { return fopAcM_GetParam(this) & 0xFF; }

    u8 getBitSW2() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }

    u32 getFlowNodeNo() {
        if (home.angle.x == 0xFFFF) {
            return 0xFFFFFFFF;
        } else {
            return home.angle.x & 0xFFFF;
        }
    }

    /* 0x568 */ daNpcT_ActorMngr_c mActorMngr;

    /* 804908CC */ virtual ~daTag_Push_c();
};

STATIC_ASSERT(sizeof(daTag_Push_c) == 0x574);

#endif /* D_A_TAG_PUSH_H */
