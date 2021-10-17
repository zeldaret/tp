#ifndef D_KANKYO_D_KANKYO_DATA_H
#define D_KANKYO_D_KANKYO_DATA_H

#include "dolphin/types.h"

struct fishpig {
    char* stageName;
    u8 val;
};

void* dKyd_dmpalet_getp();
void* dKyd_dmpselect_getp();
void* dKyd_dmenvr_getp();
void* dKyd_dmvrbox_getp();
void* dKyd_schejule_getp();
void* dKyd_schejule_boss_getp();
void dKyd_xfog_table_set(u8);
void* dKyd_maple_col_getp();
fishpig* dKyd_darkworld_tbl_getp();
void* dKyd_light_size_tbl_getp();
void* dKyd_light_tw_size_tbl_getp();
void* dKyd_BloomInf_tbl_getp(int);

#endif /* D_KANKYO_D_KANKYO_DATA_H */
