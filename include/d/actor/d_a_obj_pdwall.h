#ifndef D_A_OBJ_PDWALL_H
#define D_A_OBJ_PDWALL_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"

/**
 * @ingroup actors-objects
 * @class daObjPDwall_c
 * @brief P - D Wall?
 *
 * @details
 *
 */
class daObjPDwall_c : public dBgS_MoveBgActor, public request_of_phase_process_class {
public:
    /* 80CAC7F8 */ int create1st();
    /* 80CAC8DC */ void setMtx();

    /* 80CACA44 */ virtual int CreateHeap();
    /* 80CACBA8 */ virtual int Create();
    /* 80CACCE0 */ virtual int Execute(Mtx**);
    /* 80CACF14 */ virtual int Draw();
    /* 80CACFD4 */ virtual int Delete();
    /* 80CAD140 */ virtual ~daObjPDwall_c() {}

    int getSwNo() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5A8 */ Mtx field_0x5a8;
    /* 0x5D8 */ J3DModel* mpModels[10];
    /* 0x600 */ Mtx field_0x600[10];
    /* 0x7E0 */ f32 field_0x7e0[10];
    /* 0x808 */ f32 field_0x808[10];
    /* 0x830 */ u8 field_0x830[10];
    /* 0x83C */ dBgW* mpBgw[9];
    /* 0x860 */ Mtx mMtx[9];
    /* 0xA10 */ u8 field_0xa10;
    /* 0xA14 */ int field_0xa14;
};

STATIC_ASSERT(sizeof(daObjPDwall_c) == 0xa18);


#endif /* D_A_OBJ_PDWALL_H */
