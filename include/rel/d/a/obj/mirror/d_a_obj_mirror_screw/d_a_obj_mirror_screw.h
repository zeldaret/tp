#ifndef D_A_OBJ_MIRROR_SCREW_H
#define D_A_OBJ_MIRROR_SCREW_H

#include "rel/d/a/obj/d_a_obj_swspinner/d_a_obj_swspinner.h"
#include "rel/d/a/obj/mirror/d_a_obj_mirror_6pole/d_a_obj_mirror_6pole.h"
#include "rel/d/a/obj/mirror/d_a_obj_mirror_chain/d_a_obj_mirror_chain.h"
#include "rel/d/a/obj/mirror/d_a_obj_mirror_sand/d_a_obj_mirror_sand.h"
#include "rel/d/a/obj/mirror/d_a_obj_mirror_table/d_a_obj_mirror_table.h"
#include "rel/d/a/tag/d_a_tag_sppath/d_a_tag_sppath.h"

class daObjMirrorScrew_c;
typedef void (daObjMirrorScrew_c::*daObjMirrorScrew_actionFunc)();

class daObjMirrorScrew_c : public dBgS_MoveBgActor {
public:
    struct attr {
        f32 mDownDist;
        f32 mRotSpeedThreshold;
        int mSpinCount;
        int mResetSpinCount;
        f32 mSpeedStep;
        f32 mDownSpeed;
    };

    enum Action {
        /* 0 */ ACT_WAIT,
        /* 1 */ ACT_DOWN,
    };

    /* 80C98AD8 */ void initWait();
    /* 80C98AE4 */ void executeWait();
    /* 80C98C00 */ void initDown();
    /* 80C98F04 */ void executeDown();
    inline cPhs__Step create();
    /* 80C992F4 */ int CreateHeap();
    inline void setBaseMtx();
    inline void initBaseMtx();
    /* 80C99364 */ int Create();
    /* 80C99490 */ int Execute(Mtx**);
    /* 80C99608 */ int Draw();
    /* 80C996AC */ int Delete();

    u8 getSwitchNo() { return (fopAcM_GetParam(this) >> 8) & 0xff; }
    u8 getEventID() { return (fopAcM_GetParam(this) >> 0x10) & 0xff; }

    void setAction(int i_action) {
        mAction = i_action;
        mpActionFunc = ActionTable[mAction];
        callInit();
    }

    void callInit() {
        (this->*mpActionFunc[0])();
    }

    void callExecute() {
        (this->*mpActionFunc[1])();
    }

    /* 0x5A0 */ J3DModel* mpModel;
    /* 0x5A4 */ request_of_phase_process_class mPhaseReq;
    /* 0x5AC */ daObjMirrorScrew_actionFunc* mpActionFunc;
    /* 0x5B0 */ int mAction;
    /* 0x5B4 */ daObjSwSpinner_c* mpSwSpinner;
    /* 0x5B8 */ daTagSppath_c* mpSpPath;
    /* 0x5BC */ daObjMirrorChain_c* mpChain;
    /* 0x5C0 */ daObjMirrorTable_c* mpTable;
    /* 0x5C4 */ daObjMirror6Pole_c* mp6Pole;
    /* 0x5C8 */ daObjMirrorSand_c* mpSand;
    /* 0x5CC */ int mSpinCount;
    /* 0x5D0 */ u8 field_0x5d0[8];
    /* 0x5D8 */ cBgS_PolyInfo field_0x5d8;

    static attr const M_attr;
    static daObjMirrorScrew_actionFunc ActionTable[2][2];
};

STATIC_ASSERT(sizeof(daObjMirrorScrew_c) == 0x5E8);

#endif /* D_A_OBJ_MIRROR_SCREW_H */
