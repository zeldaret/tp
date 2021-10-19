#ifndef D_KANKYO_D_KANKYO_DATA_H
#define D_KANKYO_D_KANKYO_DATA_H

#include "dolphin/types.h"

enum dKyd_DARKLV {
    FARON = 0,
    ELDIN = 1,
    LANAYRU = 2,
    TEST = 5,
    UNCLEARABLE = 6,
    ALWAYS_DARK = 8,
};

struct dKyd_darkworldTblEntry {
    char* stageName;
    u8 darkLv;
};

// Notes (needs more investigation):
// startTime and endTime are in the range 0 to 360, which is the same as the current time of day.
// l_time_attribute and l_time_attribute_boss are arrays of light_schejule, with their times set up
// such that the current time of day will fall in the range of one light_schejule. For exmaple, if
// the current time is 110.0f (7:20 AM), then the light_schejule {105.0f, 135.0f, 1, 2} would be
// selected. If the time was 105.0f, we would use light 1. If the time was 135.0f, we would use
// light 2. Since 110.0f is closer to 105.0f than 135.0f, we get a blend of lights 1 and 2 which is
// mostly 1.
// Move this to the header and adjust names as needed in the future.
struct light_schejule {
    float startTime;
    float endTime;
    u8 startTimeLight;
    u8 endTimeLight;
};

void* dKyd_dmpalet_getp();
void* dKyd_dmpselect_getp();
void* dKyd_dmenvr_getp();
void* dKyd_dmvrbox_getp();
light_schejule* dKyd_schejule_getp();
light_schejule* dKyd_schejule_boss_getp();
void dKyd_xfog_table_set(u8);
void* dKyd_maple_col_getp();
dKyd_darkworldTblEntry* dKyd_darkworld_tbl_getp();
void* dKyd_light_size_tbl_getp();
void* dKyd_light_tw_size_tbl_getp();
void* dKyd_BloomInf_tbl_getp(int);

#endif /* D_KANKYO_D_KANKYO_DATA_H */
