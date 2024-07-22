#ifndef D_BG_D_BG_W_SV_H
#define D_BG_D_BG_W_SV_H

#include "d/bg/d_bg_w.h"

class dBgWSv : public dBgW {
public:
    dBgWSv() {
        field_0xc0 = NULL;
    }

    /* 80082F98 */ u8 Set(cBgD_t*, u32);
    /* 80083020 */ void CopyBackVtx();
    /* 8008308C */ bool CrrPosWork(cXyz*, int, int, int);
    /* 80083300 */ bool TransPosWork(cXyz*, int, int, int);

    /* 800835DC */ virtual ~dBgWSv() {}
    /* 80083244 */ virtual void CrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*);
    /* 8008351C */ virtual void TransPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*);
    /* 800835D8 */ virtual void MatrixCrrPos(cBgS_PolyInfo const&, void*, bool, cXyz*, csXyz*, csXyz*);

    /* 0xC0 */ Vec* field_0xc0;
    /* 0xC4 */ u8 field_0xc4;
};

#endif /* D_BG_D_BG_W_SV_H */
