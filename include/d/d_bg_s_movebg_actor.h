#ifndef D_BG_D_BG_S_MOVEBG_ACTOR_H
#define D_BG_D_BG_S_MOVEBG_ACTOR_H

#include "f_op/f_op_actor.h"

class dBgW;
typedef void (*MoveBGActor_SetFunc)(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*, csXyz*,
                                    csXyz*);

class dBgS_MoveBgActor : public fopAc_ac_c {
public:
    /* 0x568 */ dBgW* mpBgW;
    /* 0x56C */ Mtx mBgMtx;

    /* 80078624 */ dBgS_MoveBgActor();
    /* 800786C8 */ int MoveBGCreateHeap();
    /* 800787BC */ int MoveBGCreate(char const* i_arcName, int i_dzb_id,
                                    MoveBGActor_SetFunc i_setFunc, u32 i_heapSize, Mtx* i_bgMtx);
    /* 800788DC */ int MoveBGDelete();
    /* 80078950 */ int MoveBGExecute();

    int MoveBGDraw() { return Draw(); }
    int MoveBGIsDelete() { return IsDelete(); }

    /* 80078688 */ virtual int CreateHeap();
    /* 80078690 */ virtual int Create();
    /* 80078698 */ virtual int Execute(Mtx**);
    /* 800786A0 */ virtual int Draw();
    /* 800786A8 */ virtual int Delete();
    /* 800786B0 */ virtual int IsDelete();
    /* 800786B8 */ virtual int ToFore();
    /* 800786C0 */ virtual int ToBack();

    static const char* m_name;
    static int m_dzb_id;
    static MoveBGActor_SetFunc m_set_func;
};

#endif /* D_BG_D_BG_S_MOVEBG_ACTOR_H */
