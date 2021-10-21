#ifndef D_KANKYO_D_KANKYO_DATA_H
#define D_KANKYO_D_KANKYO_DATA_H

#include "dolphin/types.h"

// Invented name; Used as u8 `darkLv` in dKyd_darkworldTblEntry.
enum dKyd_DARKLV {
    FARON = 0,
    ELDIN = 1,
    LANAYRU = 2,
    TEST = 5,         // Only used with nonexistent test stages
    UNCLEARABLE = 6,  // Palace of Twilight stages
    ALWAYS_DARK = 8,  // Unused. Forces Twilight
};

// Invented name
struct dKyd_darkworldTblEntry {
    char* stageName;
    u8 darkLv;
};  // Size: 0x8

// Invented name; adjust as needed in the future.
// Notes (needs more investigation):
// startTime and endTime are in the range 0 to 360, which is the same as the current time of day.
// l_time_attribute and l_time_attribute_boss are arrays of dKyd_lightSchedjule, with their times
// set up such that the current time of day will fall in the range of one light_schejule. For
// exmaple, if the current time is 110.0f (7:20 AM), then the dKyd_lightSchedjule {105.0f, 135.0f,
// 1, 2} would be selected. If the time was 105.0f, we would use light 1. If the time was 135.0f, we
// would use light 2. Since 110.0f is closer to 105.0f than 135.0f, we get a blend of lights 1 and 2
// which is mostly 1. Blending the lights over time is how we get a smooth day-night transition.
struct dKyd_lightSchejule {
    float startTime;
    float endTime;
    u8 startTimeLight;
    u8 endTimeLight;
};  // Size: 0xC

void* dKyd_dmpalet_getp();
void* dKyd_dmpselect_getp();
void* dKyd_dmenvr_getp();
void* dKyd_dmvrbox_getp();
dKyd_lightSchejule* dKyd_schejule_getp();
dKyd_lightSchejule* dKyd_schejule_boss_getp();
void dKyd_xfog_table_set(u8);
void* dKyd_maple_col_getp();
dKyd_darkworldTblEntry* dKyd_darkworld_tbl_getp();
void* dKyd_light_size_tbl_getp();
void* dKyd_light_tw_size_tbl_getp();
void* dKyd_BloomInf_tbl_getp(int);

#endif /* D_KANKYO_D_KANKYO_DATA_H */
