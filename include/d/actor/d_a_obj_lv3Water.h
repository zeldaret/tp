#ifndef D_A_OBJ_LV3WATER_H
#define D_A_OBJ_LV3WATER_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_event_lib.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daLv3Water_c
 * @brief Lakebed Temple Water
 *
 * @details
 *
 */
class daLv3Water_c : public dBgS_MoveBgActor,
                     public request_of_phase_process_class,
                     public dEvLib_callback_c {
public:
    typedef void (daLv3Water_c::*modeFunc)();

    enum Mode {
        WAIT,
        LEVEL_CTRL,
    };

    daLv3Water_c() : dEvLib_callback_c(this) {}

    /* 80C58838 */ void setBaseMtx();
    /* 80C5891C */ virtual int CreateHeap();
    /* 80C58ABC */ int create();
    /* 80C58D68 */ virtual int Execute(Mtx**);
    /* 80C58E20 */ void effectSet();
    /* 80C596F4 */ void mode_proc_wait();
    /* 80C59754 */ void mode_init_levelCtrl();
    /* 80C597FC */ void mode_proc_levelCtrl();
    /* 80C598BC */ virtual int Draw();
    /* 80C59AA0 */ virtual int Delete();

    /* 80C59D80 */ virtual ~daLv3Water_c();
    /* 80C59AE0 */ virtual BOOL eventStart();

    int getParam() { return fpcM_GetParam(this) >> 0xC & 0x0FFF; }
    int getParamSw() { return fpcM_GetParam(this) & 0xFF; }
    int getParamEvent() { return shape_angle.x & 0xFF; }
    u8 getParamType() { return (shape_angle.x >> 8) & 0xFF; }
    u8 getType() { return mType; }

private:
    /* 0x5B8 */ request_of_phase_process_class mPhase;
    /* 0x5C0 */ J3DModel* mpModel1;
    /* 0x5C4 */ J3DModel* mpModel2;
    /* 0x5C8 */ mDoExt_btkAnm mBtk1;
    /* 0x5E0 */ mDoExt_btkAnm mBtk2;
    /* 0x5F8 */ u8 mMode;
    /* 0x5F9 */ u8 mType;
    /* 0x5FC */ f32 field_0x5fc;
    /* 0x600 */ u8 field_0x600;
    /* 0x601 */ u8 field_0x601;
    /* 0x602 */ u8 mSwitch1;
    /* 0x603 */ u8 mSwitch2;
    /* 0x604 */ u8 field_0x604;
    /* 0x605 */ u8 field_0x605;
    /* 0x608 */ u32 mEmitterIDs[8];
};

STATIC_ASSERT(sizeof(daLv3Water_c) == 0x628);

class daLv3Water_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C587CC */ daLv3Water_HIO_c();
    /* 80C59C34 */ virtual ~daLv3Water_HIO_c();

    /* 0x00 */ /* vtable */

    /* 0x04 */ u8 field_0x04;
};

#endif /* D_A_OBJ_LV3WATER_H */
