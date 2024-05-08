#ifndef D_A_TAG_SPPATH_H
#define D_A_TAG_SPPATH_H

#include "d/cc/d_cc_d.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_path.h"

class daTagSppath_c : public fopAc_ac_c {
public:
    /* 80D61C18 */ int create();
    /* 80D61EC4 */ ~daTagSppath_c();
    /* 80D62024 */ int getNearPathPos(cXyz*, dPath*);
    /* 80D629C0 */ int execute();

    /* 0x568 */ dPath* mpInitPath;
    /* 0x56C */ dPath* mpBestPath;
    /* 0x570 */ dCcD_Cyl mCyl;
    /* 0x6AC */ dCcD_Stts mStts;
    /* 0x6E8 */ u8 field_0x6e8;
    /* 0x6E9 */ u8 mSwNo1;
    /* 0x6EA */ u8 mSwNo2;
    /* 0x6EC */ u16 mBestNo;
    /* 0x6F0 */ f32 mHeight;
};

#endif /* D_A_TAG_SPPATH_H */
