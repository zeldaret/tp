#ifndef D_A_OBJ_LV4RAILWALL_H
#define D_A_OBJ_LV4RAILWALL_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_event_lib.h"

class daObjSwSpinner_c;

/**
 * @ingroup actors-objects
 * @class daObjLv4Wall_c
 * @brief Arbiters Grounds Spinner Rail Wall (Stallord Arena)
 *
 * @details
 *
 */
class daObjLv4Wall_c : public dBgS_MoveBgActor, public dEvLib_callback_c {
public:
    enum {
        MODE_WAIT,
        MODE_MOVE,
        MODE_DEAD,
    };

    daObjLv4Wall_c() : dEvLib_callback_c(this) {}

    /* 80C60AC4 */ void initBaseMtx();
    /* 80C60B00 */ void setBaseMtx();
    /* 80C60D40 */ int create1st();
    /* 80C60E90 */ void action();
    /* 80C60F4C */ void mode_init_wait();
    /* 80C60F58 */ void mode_wait();
    /* 80C61004 */ void mode_init_move();
    /* 80C61068 */ void mode_move();
    /* 80C613C0 */ void mode_init_dead();
    /* 80C613CC */ void mode_dead();

    /* 80C61940 */ virtual ~daObjLv4Wall_c() {}

    /* 80C60CD0 */ virtual int CreateHeap();
    /* 80C60B7C */ virtual int Create();
    /* 80C60DC4 */ virtual int Execute(Mtx**);
    /* 80C6143C */ virtual int Draw();
    /* 80C614E0 */ virtual int Delete();

    /* 80C613D0 */ virtual bool eventStart();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }

private:
    /* 0x5B0 */ request_of_phase_process_class mPhase;
    /* 0x5B8 */ J3DModel* mpModel;
    /* 0x5BC */ dBgS_ObjAcch field_0x5bc;
    /* 0x794 */ dBgS_AcchCir field_0x794;
    /* 0x7D4 */ dCcD_Stts field_0x7d4;
    /* 0x810 */ dCcD_Cyl field_0x810;
    /* 0x94C */ daObjSwSpinner_c* mpSwSpinner;
    /* 0x950 */ f32 mHeight;
    /* 0x954 */ int mRotCounter;
    /* 0x958 */ u16 mMoveCounter;
    /* 0x95A */ u8 mMode;
};

STATIC_ASSERT(sizeof(daObjLv4Wall_c) == 0x95c);


#endif /* D_A_OBJ_LV4RAILWALL_H */
