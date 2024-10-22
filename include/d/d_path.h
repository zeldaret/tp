#ifndef D_D_PATH_H
#define D_D_PATH_H

#include "dolphin/types.h"

class cBgS_PolyInfo;
struct cXyz;
struct dStage_dPnt_c;

struct dPath {
    /* 0x0 */ u16 m_num;
    /* 0x2 */ u16 m_nextID;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ bool m_closed;
    /* 0x6 */ u8 field_0x6;
    /* 0x8 */ dStage_dPnt_c* m_points;
};

inline BOOL dPath_ChkClose(dPath* i_path) { return i_path->m_closed & 1; }

dPath* dPath_GetRoomPath(int path_index, int room_no);
dPath* dPath_GetNextRoomPath(dPath const* i_path, int room_no);
dStage_dPnt_c* dPath_GetPnt(dPath const* i_path, int pnt_index);
u8 dPath_GetPolyRoomPathVec(cBgS_PolyInfo const& poly, cXyz* p_pathVec, int* param_2);

#endif /* D_D_PATH_H */
