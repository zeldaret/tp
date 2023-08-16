#ifndef D_BG_D_BG_S_MOVEBG_ACTOR_H
#define D_BG_D_BG_S_MOVEBG_ACTOR_H

#include "f_op/f_op_actor.h"

class dBgW;
typedef void (*MoveBGActor_SetFunc)(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*, csXyz*,
                                    csXyz*);

class dBgS_MoveBgActor : public fopAc_ac_c {
public:
    /* 0x568 */ dBgW* field_0x568;
    /* 0x56C */ Mtx field_0x56c;

    /* 80078624 */ dBgS_MoveBgActor();
    /* 800786C8 */ int MoveBGCreateHeap();
    /* 800787BC */ int MoveBGCreate(char const*, int, MoveBGActor_SetFunc, u32, Mtx*);
    /* 800788DC */ int MoveBGDelete();
    /* 80078950 */ int MoveBGExecute();

    int MoveBGDraw() { return Draw(); }

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
