#ifndef D_A_OBJ_YEL_BAG_H
#define D_A_OBJ_YEL_BAG_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_YBag_c
 * @brief Ilia's Bag
 *
 * @details
 *
 */
class daObj_YBag_c : public fopAc_ac_c {
public:
    /* 80D3C0EC */ daObj_YBag_c();
    /* 80D3C408 */ ~daObj_YBag_c();
    /* 80D3C610 */ void create();
    /* 80D3C898 */ void CreateHeap();
    /* 80D3C93C */ void Delete();
    /* 80D3C970 */ void Execute();
    /* 80D3D32C */ void Draw();
    /* 80D3D438 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80D3D458 */ bool getTypeFromParam();
    /* 80D3D460 */ bool isDelete();
    /* 80D3D468 */ void setEnvTevColor();
    /* 80D3D4C4 */ void setRoomNo();
    /* 80D3D508 */ void reset();
    /* 80D3D5C8 */ void setMtx();
    /* 80D3D69C */ void calcRollAngle(s16, int);
    /* 80D3D73C */ void getWallAngle(s16, s16*);
    /* 80D3D8CC */ void setSmokePrtcl();
    /* 80D3D948 */ void setWaterPrtcl();
    /* 80D3DA70 */ void setHamonPrtcl();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0xa3c - 0x568];
};

STATIC_ASSERT(sizeof(daObj_YBag_c) == 0xa3c);

class daObj_YBag_Param_c {
public:
    /* 80D3DC20 */ ~daObj_YBag_Param_c();

    static u8 const m[44];
};


#endif /* D_A_OBJ_YEL_BAG_H */
