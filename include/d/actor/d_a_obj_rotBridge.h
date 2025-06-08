#ifndef D_A_OBJ_ROTBRIDGE_H
#define D_A_OBJ_ROTBRIDGE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daRotBridge_c
 * @brief Rotating Bridge
 *
 * @details
 *
 */
class daRotBridge_c : public fopAc_ac_c {
public:
    /* 80CBEA24 */ void setBaseMtx();
    /* 80CBEB38 */ void CreateHeap();
    /* 80CBECBC */ void create();
    /* 80CBEF1C */ void rideCallBack(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80CBEF34 */ void Execute(f32 (**)[3][4]);
    /* 80CBF050 */ void playerAreaCheck();
    /* 80CBF1EC */ void moveBridge();
    /* 80CBF404 */ void Draw();
    /* 80CBF4BC */ void Delete();

    u8 getPlayerRide() const { return mPlayerRide; }
    u8 getBridgeAngle() const { return mBridgeAngle; }
private:
    /* 0x568 */ u8 field_0x568[0x5af - 0x568];
    /* 0x5af */ u8 mPlayerRide;
    /* 0x5b0 */ u8 field_0x5b0[0x5b8 - 0x5b0];
    /* 0x5b8 */ u8 mBridgeAngle;
    /* 0x5b9 */ u8 field_0x5b9[0x610 - 0x5b9];
};

STATIC_ASSERT(sizeof(daRotBridge_c) == 0x610);

class daRotBridge_HIO_c {
public:
    /* 80CBE98C */ daRotBridge_HIO_c();
    /* 80CBF5BC */ ~daRotBridge_HIO_c();
};


#endif /* D_A_OBJ_ROTBRIDGE_H */
