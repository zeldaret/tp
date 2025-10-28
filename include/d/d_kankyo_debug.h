#ifndef D_KANKYO_DEBUG_H
#define D_KANKYO_DEBUG_H

#include "d/d_kankyo.h"

void dKydb_color_HIO_update();
void dKydb_vrbox_HIO_update();
void dKydb_timedisp();
void dKydb_HIO_kcolor_debug(u8*, u8*, u8*, u8*);
void dKydb_HIO_vrbox_debug(u8*, u8*, u8*, u8*);
void dKydb_HIO_debug_TVdsp(f32, f32, int, int, u16);
void dKydb_HIO_debug_draw();
void dKydb_HIO_winddebug_draw();
void dKydb_HIO_debug_Wind();
void dKydb_winddisp_draw();
void dKydb_dungeonlight_draw();
void dKydb_efplight_monitor();
void dKydb_plight_monitor();

#endif
