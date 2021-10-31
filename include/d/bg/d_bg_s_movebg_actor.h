#ifndef D_BG_D_BG_S_MOVEBG_ACTOR_H
#define D_BG_D_BG_S_MOVEBG_ACTOR_H

#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "d/bg/d_bg_w.h"
#include "dolphin/types.h"

class dBgW;
typedef void (*MoveBGActor_SetFunc)(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*, csXyz*,
                                    csXyz*);

class dBgS_MoveBgActor : public fopAc_ac_c {
private:
    /* 0x568 */ dBgW* field_0x568;
    /* 0x56C */ Mtx field_0x56c;

public:
    /* 80078624 */ dBgS_MoveBgActor();
    /* 800786C8 */ int MoveBGCreateHeap();
    /* 800787BC */ int MoveBGCreate(char const*, int, MoveBGActor_SetFunc, u32, Mtx*);
    /* 800788DC */ bool MoveBGDelete();
    /* 80078950 */ bool MoveBGExecute();

    /* 80078688 */ virtual s32 CreateHeap();
    /* 80078690 */ virtual bool Create();
    /* 80078698 */ virtual bool Execute(f32 (**)[3][4]);
    /* 800786A0 */ virtual bool Draw();
    /* 800786A8 */ virtual bool Delete();
    /* 800786B0 */ virtual bool IsDelete();
    /* 800786B8 */ virtual bool ToFore();
    /* 800786C0 */ virtual bool ToBack();

    static const char* m_name;
    static int m_dzb_id;
    static MoveBGActor_SetFunc m_set_func;
};

#endif /* D_BG_D_BG_S_MOVEBG_ACTOR_H */
