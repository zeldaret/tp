#ifndef D_A_OBJ_MGATE_H
#define D_A_OBJ_MGATE_H

#include "d/bg/d_bg_s_movebg_actor.h"
#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class daObjMGate_c : public dBgS_MoveBgActor {
public:
    enum Kind_e {
        /* 0 */ KIND_IZUMI,  // Spring
        /* 1 */ KIND_HASHI,  // Bridge
    };

    enum Type_e {
        /* 0 */ TYPE_LEFT,
        /* 1 */ TYPE_RIGHT,
    };

    /* 805935B8 */ void initBaseMtx();
    /* 80593630 */ void setBaseMtx();
    /* 8059388C */ int create1st();

    /* 805937AC */ virtual int CreateHeap();
    /* 80593760 */ virtual int Create();
    /* 80593988 */ virtual int Execute(f32 (**)[3][4]);
    /* 80593C4C */ virtual int Draw();
    /* 80593D18 */ virtual int Delete();

    u8 getType() { return fopAcM_GetParamBit(this, 0, 1); }
    u8 getKind() { return fopAcM_GetParamBit(this, 1, 4); }
    bool checkLock() { return fopAcM_GetParamBit(this, 5, 1); }
    u8 checkOpen() { return fopAcM_GetParamBit(this, 8, 4); }

private:
    /* 0x5A0 */ request_of_phase_process_class mPhase;
    /* 0x5A8 */ request_of_phase_process_class mKeyPhase;
    /* 0x5B0 */ J3DModel* mpModel;
    /* 0x5B4 */ J3DModel* mpKeyModel;
    /* 0x5B8 */ u8 mType;
    /* 0x5B9 */ u8 mKind;
    /* 0x5BA */ csXyz mGateAngle;
    /* 0x5C0 */ f32 mGateKeySwingMultiplier;
    /* 0x5C4 */ f32 mGateSwingMultiplier;
    /* 0x5C8 */ int mCounter;
    /* 0x5CC */ s16 mGateKeyAngle;
};

#endif /* D_A_OBJ_MGATE_H */
