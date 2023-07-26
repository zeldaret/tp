#ifndef D_A_OBJ_DIGPLACE_H
#define D_A_OBJ_DIGPLACE_H

#include "d/d_path.h"
#include "f_op/f_op_actor_mng.h"

class daObjDigpl_c : public fopAc_ac_c {
public:
    /* 8057BF98 */ int create();
    /* 8057C1EC */ int execute();

    /* 0x568 */ u8 mType;
    /* 0x569 */ u8 mSwitch;
    /* 0x56A */ u8 mDigFlg;
    /* 0x56B */ u8 field_0x56b;
    /* 0x56C */ u8 mCurrentDigPoint;
    /* 0x570 */ Mtx field_0x570;
    /* 0x5A0 */ int mUsedDigFlags[6];
    /* 0x5B8 */ dPath* mpDigPoints;

    /* 8057C158 */ virtual ~daObjDigpl_c();

    u8 getSceneNum() { return (fopAcM_GetParam(this) >> 0xC) & 0xFF; }
    int getItemNum() { return getSceneNum(); }
};

#endif /* D_A_OBJ_DIGPLACE_H */
