#ifndef D_BG_D_BG_S_SPH_CHK_H
#define D_BG_D_BG_S_SPH_CHK_H

#include "d/bg/d_bg_s_chk.h"
#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_m3d_g_sph.h"
#include "SSystem/SComponent/c_m3d_g_pla.h"
#include "dolphin/types.h"

struct cBgD_Vtx_t;

class dBgS_SphChk;
typedef void* (*SphChk_Callback)(dBgS_SphChk*, cBgD_Vtx_t*, int, int, int, cM3dGPla*, void*);

class dBgS_SphChk : public cM3dGSph, public cBgS_PolyInfo, public cBgS_Chk, public dBgS_Chk {
public:
    /* 80078A14 */ dBgS_SphChk();

    /* 80078AC0 */ virtual ~dBgS_SphChk();

private:
    /* 0x50 */ SphChk_Callback mCallback;
};

#endif /* D_BG_D_BG_S_SPH_CHK_H */
