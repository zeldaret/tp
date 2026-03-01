#ifndef _DOLPHIN_GF_GFLIGHT_H
#define _DOLPHIN_GF_GFLIGHT_H

#ifdef __REVOLUTION_SDK__
#include <revolution/gf/GFLight.h>
#else
#include <dolphin/gx.h>

void GFSetChanAmbColor(GXChannelID chan, GXColor color);

#endif
#endif /* _DOLPHIN_GF_GFLIGHT_H */
