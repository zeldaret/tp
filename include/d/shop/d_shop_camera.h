#ifndef D_SHOP_D_SHOP_CAMERA_H
#define D_SHOP_D_SHOP_CAMERA_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

class ShopCam_action_c;
typedef int (ShopCam_action_c::*shopCamActionFn)();

class ShopCam_action_c {
public:
    /* 80195C9C */ int shop_cam_action_init();
    /* 80195E18 */ int shop_cam_action();
    /* 8019630C */ void Save();
    /* 8019635C */ void EventRecoverNotime();
    /* 801963B4 */ void Reset();
    /* 801964C8 */ void move();
    /* 80196544 */ void setCamDataIdx(fopAc_ac_c*, fopAc_ac_c*, fopAc_ac_c*, fopAc_ac_c*, cXyz*,
                                      cXyz*);
    /* 80196608 */ void setCamDataIdx2(fopAc_ac_c*, fopAc_ac_c*, fopAc_ac_c*, fopAc_ac_c*,
                                       fopAc_ac_c*, fopAc_ac_c*, fopAc_ac_c*, cXyz*, cXyz*);
    /* 801966D4 */ void _debugSetCamera();
    /* 801968B8 */ void setMasterCamCtrPos(cXyz*);

    void setCameraSpeed(f32 param_0, f32 param_1, f32 param_2, f32 param_3) {
        field_0xc0 = param_0;
        field_0xc4 = param_1;
        field_0xc8 = param_2;
        field_0xcc = param_3;
    }

    void SetSelectIdx(s16 idx) {
        mSelectIdx = idx;
        setCameraSpeed(0.25f, 20.0f, 0.25f, 5.0f);
    }

    void setCamAction(shopCamActionFn i_actionFunc) { mCamActionFunc = i_actionFunc; }

    /* 0x00 */ shopCamActionFn mCamActionFunc;
    /* 0x0C */ u8 field_0xc[0xC];
    /* 0x18 */ fopAc_ac_c* field_0x18;
    /* 0x1C */ fopAc_ac_c* field_0x1c;
    /* 0x20 */ fopAc_ac_c* field_0x20;
    /* 0x24 */ fopAc_ac_c* field_0x24;
    /* 0x28 */ fopAc_ac_c* field_0x28;
    /* 0x2C */ fopAc_ac_c* field_0x2c;
    /* 0x30 */ fopAc_ac_c* field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ cXyz field_0x38;
    /* 0x44 */ cXyz field_0x44;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ cXyz field_0x54;
    /* 0x60 */ cXyz field_0x60;
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ cXyz field_0x70;
    /* 0x7C */ cXyz field_0x7c;
    /* 0x88 */ cXyz field_0x88;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ cXyz field_0x98;
    /* 0xA4 */ cXyz field_0xa4;
    /* 0xB0 */ cXyz field_0xb0;
    /* 0xBC */ f32 field_0xbc;
    /* 0xC0 */ f32 field_0xc0;
    /* 0xC4 */ f32 field_0xc4;
    /* 0xC8 */ f32 field_0xc8;
    /* 0xCC */ f32 field_0xcc;
    /* 0xD0 */ u8 field_0xd0[4];
    /* 0xD4 */ s16 mSelectIdx;
    /* 0xD6 */ s16 field_0xd6;
    /* 0xD8 */ s16 field_0xd8;
    /* 0xDA */ u8 field_0xda;
};

#endif /* D_SHOP_D_SHOP_CAMERA_H */
