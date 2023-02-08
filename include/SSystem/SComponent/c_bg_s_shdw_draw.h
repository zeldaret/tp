#ifndef C_BG_S_SHDW_DRAW_H
#define C_BG_S_SHDW_DRAW_H

#include "SSystem/SComponent/c_bg_s_chk.h"
#include "SSystem/SComponent/c_m3d_g_aab.h"
#include "SSystem/SComponent/c_m3d_g_pla.h"
#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

struct cBgD_Vtx_t;

typedef int (*cBgS_ShdwDraw_Callback)(class cBgS_ShdwDraw*, cBgD_Vtx_t*, int, int, int, cM3dGPla*);

class cBgS_ShdwDraw : cBgS_Chk {
public:
    cBgS_ShdwDraw(void);
    virtual ~cBgS_ShdwDraw(void);
    void Set(cXyz&, cXyz&);
    void SetCallback(cBgS_ShdwDraw_Callback);

private:
    /* 0x14 */ cM3dGAab mM3dGAab;
    /* 0x30 */ cBgS_ShdwDraw_Callback mCallbackFun;
};

#endif /* C_BG_S_SHDW_DRAW_H */
