#ifndef D_A_OBJ_GRZ_ROCK_H
#define D_A_OBJ_GRZ_ROCK_H

#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daObjGrzRock_c
 * @brief Hidden Village Rockslide
 *
 * @details
 *
*/

class daObjGrzRock_c : public dBgS_MoveBgActor {
public:
    /* 80C14BD8 */ void setBaseMtx();
    /* 80C14C54 */ void setEnvTevColor();
    /* 80C14CB0 */ void setRoomNo();
    /* 80C14CF0 */ void setPrtcl();
    /* 80C14DA0 */ int Create();
    /* 80C14EE0 */ int CreateHeap();
    /* 80C14F50 */ cPhs__Step create();
    /* 80C1514C */ int Execute(Mtx**);
    /* 80C151A4 */ int Draw();
    /* 80C15248 */ int Delete();

    void setSmashFlag(u8 i_smashFlag) { mSmashFlag = i_smashFlag; }

private:
    /* 0x568 */ request_of_phase_process_class mPhase[1];
    /* 0x5A0 */ J3DModel* mpModel;
    /* 0x5AC */ dBgS_ObjAcch mBgc;
    /* 0x784 */ dBgS_AcchCir mAcchCir;
    /* 0x7C4 */ cBgS_GndChk mGndChk;
    /* 0x800 */ u8 field_0x800;
    /* 0x801 */ u8 mSmashFlag;
};

STATIC_ASSERT(sizeof(daObjGrzRock_c) == 0x804);


#endif /* D_A_OBJ_GRZ_ROCK_H */
