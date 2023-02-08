#ifndef D_KANKYO_D_KANKYO_RAIN_H
#define D_KANKYO_D_KANKYO_RAIN_H

#include "dolphin/types.h"

struct cXyz;
struct _GXColor;

void dKyr_drawSun(f32 (*param_0)[4], cXyz* param_1, _GXColor& param_2, u8** param_3);
void dKyr_drawLenzflare(f32 (*param_0)[4], cXyz* param_1, _GXColor& param_2, u8** param_3);
void dKyr_drawSibuki(f32 (*param_0)[4], u8** param_1);
void dKyr_drawRain(f32 (*param_0)[4], u8** param_1);
void dKyr_drawSnow(f32 (*param_0)[4], u8** param_1);
void dKyr_drawStar(f32 (*param_0)[4], u8** param_1);
void drawCloudShadow(f32 (*param_0)[4], u8** param_1);
void dKyr_drawHousi(f32 (*param_0)[4], u8** param_1);
void drawVrkumo(f32 (*param_0)[4], _GXColor& param_1, u8** param_2);
void dKyr_odour_draw(f32 (*param_0)[4], u8** param_1);
void dKyr_mud_draw(f32 (*param_0)[4], u8** param_1);
void dKyr_evil_draw(f32 (*param_0)[4], u8** param_1);
void dKyr_thunder_init();
void dKyr_thunder_move();
void dKyr_snow_init();
void dKyr_snow_move();
void dKyr_evil_init();
void dKyr_evil_move();
void dKyr_mud_init();
void dKyr_mud_move();
void dKyr_rain_init();
void dKyr_rain_move();
void cloud_shadow_move();
void dKyr_odour_init();
void dKyr_odour_move();
void dKyr_housi_init();
void dKyr_housi_move();
void dKyr_sun_move();
void dKyr_lenzflare_move();
void dKyr_star_init();
void dKyr_shstar_init();
void dKyr_star_move();
void dKyr_shstar_move();

#endif /* D_KANKYO_D_KANKYO_RAIN_H */
