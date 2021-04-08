#ifndef C_BG_S_SHDW_DRAW_H
#define C_BG_S_SHDW_DRAW_H

#include "dolphin/types.h"
#include "SSystem/SComponent/c_m3d_g_pla.h"
#include "SSystem/SComponent/c_xyz.h"

struct cBgD_Vtx_t;

typedef int (*cBgS_ShdwDraw_Callback)(class cBgS_ShdwDraw*, cBgD_Vtx_t*, int, int, int, cM3dGPla*);

class cBgS_ShdwDraw {
public:
    cBgS_ShdwDraw(void);
    ~cBgS_ShdwDraw(void);
    void Set(cXyz&, cXyz&);
    void SetCallback(cBgS_ShdwDraw_Callback);
};

#endif /* C_BG_S_SHDW_DRAW_H */
