#ifndef D_METER_D_METER_HAKUSHA_H
#define D_METER_D_METER_HAKUSHA_H

#include "d/d_meter2.h"

class dMeterHakusha_c : public dMeterSub_c {
public:
    struct hakusha_data {
        f32 pos_x;
        f32 pos_y;
        u8 flags;
    };

    /* 8020C320 */ dMeterHakusha_c(void*);
    /* 8020CC58 */ void alphaAnimeHakusha(u32);
    /* 8020CD6C */ void updateHakusha();
    /* 8020D258 */ void setAlphaHakushaAnimeMin();
    /* 8020D308 */ void setAlphaHakushaAnimeMax();
    /* 8020D3B8 */ void setAlphaButtonAnimeMin();
    /* 8020D41C */ void setAlphaButtonAnimeMax();
    /* 8020D480 */ int getHakushaNum();

    /* 8020C850 */ virtual void draw();
    /* 8020C384 */ virtual ~dMeterHakusha_c();
    /* 8020C400 */ virtual int _create();
    /* 8020C808 */ virtual int _execute(u32);
    /* 8020CABC */ virtual int _delete();

    /* 0x004 */ J2DScreen* field_0x004;
    /* 0x008 */ J2DScreen* mpHakushaScreen;
    /* 0x00C */ J2DScreen* mpButtonScreen;
    /* 0x010 */ CPaneMgr* mpHakushaParent;
    /* 0x014 */ CPaneMgr* mpHakushaPos[6];
    /* 0x02C */ CPaneMgr* mpHakushaOn;
    /* 0x030 */ CPaneMgr* mpHakushaOff;
    /* 0x034 */ CPaneMgr* mpButtonA;
    /* 0x038 */ hakusha_data mHakushaData[12];
    /* 0x0C8 */ f32 mHakushaAnimFrame[12];
    /* 0x0F8 */ f32 mButtonAPosX;
    /* 0x0FC */ f32 mButtonAPosY;
    /* 0x100 */ f32 field_0x100;
    /* 0x104 */ f32 field_0x104;
    /* 0x108 */ s16 mHakushaNum;
    /* 0x10A */ u8 mHakushaStatus[12];
};

#endif /* D_METER_D_METER_HAKUSHA_H */
