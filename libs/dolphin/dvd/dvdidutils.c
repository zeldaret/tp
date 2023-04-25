#include "dolphin/dvd/dvdidutils.h"
#include "MSL_C/string.h"
#include "dolphin/dvd/dvd.h"

/* 8034BC04-8034BCFC 346544 00F8+00 0/0 1/1 0/0 .text            DVDCompareDiskID */
BOOL DVDCompareDiskID(DVDDiskID* id1, DVDDiskID* id2) {
    if (id1->game_name[0] && id2->game_name[0] &&
        strncmp(&id1->game_name[0], &id2->game_name[0], 4)) {
        return FALSE;
    }

    if (!id1->company[0] || !id2->company[0] || strncmp(&id1->company[0], &id2->company[0], 2)) {
        return FALSE;
    }

    if (id1->disk_number != 0xff && id2->disk_number != 0xff &&
        id1->disk_number != id2->disk_number) {
        return FALSE;
    }

    if (id1->game_version != 0xff && id2->game_version != 0xff &&
        id1->game_version != id2->game_version) {
        return FALSE;
    }

    return TRUE;
}
