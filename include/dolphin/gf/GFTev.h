#ifndef _DOLPHIN_GF_GFTEV_H
#define _DOLPHIN_GF_GFTEV_H

#ifdef __REVOLUTION_SDK__
#include <revolution/gf/GFTev.h>
#else
#include <dolphin/gx.h>

void GFSetTevColorS10(GXTevRegID reg, GXColorS10 color);

#endif
#endif /* _DOLPHIN_GF_GFTEV_H */
