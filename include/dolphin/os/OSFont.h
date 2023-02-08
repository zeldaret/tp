#ifndef OSFONT_H
#define OSFONT_H

#include "dolphin/types.h"

#ifdef __cplusplus
extern "C" {
#endif

static u32 GetFontCode(s16 param_0, u32 param_1);
u16 OSGetFontEncode(void);
static char* ParseStringS(s16 param_0, char* param_1, void* param_2, u32* param_3, u32 param_4, void* param_5);

#ifdef __cplusplus
};
#endif

#endif /* OSFONT_H */
