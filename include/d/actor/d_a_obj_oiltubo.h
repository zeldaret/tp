#ifndef D_A_OBJ_OILTUBO_H
#define D_A_OBJ_OILTUBO_H

#include "d/d_com_inf_game.h"

/**
 * @ingroup actors-objects
 * @class daObj_Oiltubo_c
 * @brief Oil Jar
 *
 * @details
 *
 */
class daObj_Oiltubo_c : public fopAc_ac_c {
public:
    typedef int (daObj_Oiltubo_c::*processFn)(void*);

    /* 80CA6718 */ int create();
    /* 80CA6B28 */ int CreateHeap();
    /* 80CA6C5C */ int Delete();
    /* 80CA6CA0 */ int Execute();
    /* 80CA6EDC */ int Draw();
    /* 80CA6FC8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80CA6FE8 */ const char* getResName();
    /* 80CA6FF8 */ void restart();
    /* 80CA7068 */ void initialize();
    /* 80CA720C */ int setProcess(processFn);
    /* 80CA72BC */ void setParam();
    /* 80CA7318 */ void setEnvTevColor();
    /* 80CA7374 */ void setRoomNo();
    /* 80CA73B8 */ void setMtx();
    /* 80CA7430 */ void setAttnPos();
    /* 80CA7478 */ BOOL chkEvent();
    /* 80CA74C8 */ int wait(void*);

    static const dCcD_SrcGObjInf mCcDObjInfo;
    static dCcD_SrcCyl mCcDCyl;

private:
    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ J3DModel* mpBModel;
    /* 0x578 */ mDoExt_btkAnm mBtk;
    /* 0x590 */ dBgS_ObjAcch mAcch;
    /* 0x768 */ dCcD_Stts mCcStts;
    /* 0x7A4 */ dBgS_AcchCir mAcchCir;
    /* 0x7E4 */ dCcD_Cyl mCcAtCyl;
    /* 0x920 */ dCcD_Cyl mCcCoCyl;
    /* 0xA5C */ cBgS_GndChk mGroundChk;
    /* 0xA98 */ processFn mProcess;
    /* 0xAA4 */ Z2SoundObjSimple mSound;
    /* 0xAC4 */ f32 mGroundHeight;
    /* 0xAC8 */ u32 mShadowKey;
    /* 0xACC */ u16 mMode;

public:
    /* 80CA7628 */ virtual ~daObj_Oiltubo_c() {}
};

STATIC_ASSERT(sizeof(daObj_Oiltubo_c) == 0xAD4);

#endif /* D_A_OBJ_OILTUBO_H */
