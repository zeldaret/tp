#ifndef D_A_OBJ_CHANDELIER_H
#define D_A_OBJ_CHANDELIER_H

#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"

class daObjChandelier_c;
typedef void (daObjChandelier_c::*daObjChandelier_proc)();

/**
 * @ingroup actors-objects
 * @class daObjChandelier_c
 * @brief Hyrule Castle Chandelier
 *
 * @details
 *
 */
class daObjChandelier_c : public dBgS_MoveBgActor, public request_of_phase_process_class {
public:
    enum Mode {
        MODE_WAIT = 0,
        MODE_START_SWG = 1,
        MODE_DOWN = 2,
        MODE_END_SWG = 3,
        MODE_HOOK_SWG = 4,
    };

    /* 80BC7F38 */ daObjChandelier_c();
    /* 80BC8008 */ int CreateHeap();
    /* 80BC8160 */ int Delete();
    /* 80BC8194 */ int Draw();
    /* 80BC8238 */ int Execute(f32 (**)[3][4]);
    /* 80BC82C0 */ void exeModeWait();
    /* 80BC834C */ void exeModeStartSwg();
    /* 80BC83E4 */ void exeModeDown();
    /* 80BC84C0 */ void exeModeEndSwg();
    /* 80BC851C */ void exeModeHookSwg();
    /* 80BC85E4 */ void init();
    /* 80BC86FC */ void setModelMtx();
    /* 80BC8780 */ void moveSwing(f32, f32, f32, f32);
    /* 80BC89B0 */ void moveSwingFall();
    /* 80BC8B20 */ void hookSwingInitParm();

    /* 80BC8078 */ virtual cPhs__Step create1st();
    /* 80BC7F74 */ virtual ~daObjChandelier_c();

    u8 getSW_0() { return fopAcM_GetParamBit(this, 4, 8); }
    s32 getArg_0() { return fopAcM_GetParamBit(this, 0, 4); }

    void moveHookOn() { field_0x60a = 1; }

private:
    /* 0x5A8 */ cXyz field_0x5a8;
    /* 0x5B4 */ Mtx mMtx;
    /* 0x5E4 */ u8 field_0x5e4[4];
    /* 0x5E8 */ J3DModel* mpModel;
    /* 0x5EC */ f32 field_0x5ec;
    /* 0x5F0 */ f32 field_0x5f0;
    /* 0x5F4 */ f32 field_0x5f4;
    /* 0x5F8 */ f32 field_0x5f8;
    /* 0x5FC */ s32 field_0x5fc;
    /* 0x600 */ s32 mTimer;
    /* 0x604 */ s16 field_0x604;
    /* 0x606 */ s16 field_0x606;
    /* 0x608 */ s8 field_0x608;
    /* 0x609 */ u8 mMode;
    /* 0x60A */ u8 field_0x60a;
    /* 0x60B */ u8 field_0x60b;

    static daObjChandelier_proc s_exeProc[5];
};

STATIC_ASSERT(sizeof(daObjChandelier_c) == 0x60C);

#endif /* D_A_OBJ_CHANDELIER_H */
