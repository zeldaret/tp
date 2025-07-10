#ifndef D_A_OBJ_LV6BEMOS_H
#define D_A_OBJ_LV6BEMOS_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjL6Bm_c
 * @brief Temple of Time Beamos (Unused)
 *
 * @details
 *
 */
class daObjL6Bm_c : public dBgS_MoveBgActor {
public:
    typedef void (daObjL6Bm_c::*actionFunc)();

    /* 80C7CE24 */ void initBaseMtx();
    /* 80C7CE60 */ void setBaseMtx();
    /* 80C7CED4 */ int Create();
    /* 80C7CFD0 */ int CreateHeap();
    /* 80C7D2F8 */ void create1st();
    /* 80C7D3A4 */ int Execute(f32 (**)[3][4]);
    /* 80C7D4F4 */ void action();
    /* 80C7D598 */ void actionWait();
    /* 80C7D6CC */ void actionFindPlayer();
    /* 80C7D894 */ void actionAttack();
    /* 80C7D898 */ int Draw();
    /* 80C7DABC */ int Delete();

    void setAction(u8 action) { mAction = action; }

    /* 0x5A0 */ u8 field_0x5a0[0x5a8 - 0x5a0];
    /* 0x5A8 */ J3DModel* field_0x5a8;
    /* 0x5AC */ dCcD_Stts mStts;
    /* 0x5E8 */ dCcD_Cps field_0x5e8;
    /* 0x72C */ cM3dGCpsS field_0x72c;
    /* 0x748 */ dCcD_Sph field_0x748;
    /* 0x880 */ J3DModel* field_0x880;
    /* 0x884 */ u8 field_0x884[0x891 - 0x884];
    /* 0x891 */ u8 field_0x891;
    /* 0x892 */ s16 field_0x892;
    /* 0x894 */ cXyz field_0x894;
    /* 0x8A0 */ u8 field_0x8a0[0x910 - 0x8a0];
    /* 0x910 */ u8 mAction;
    /* 0x911 */ u8 field_0x911[0x914 - 0x911];
    /* 0x914 */ f32 field_0x914;
};

STATIC_ASSERT(sizeof(daObjL6Bm_c) == 0x918);


#endif /* D_A_OBJ_LV6BEMOS_H */
