#ifndef D_METER_D_METER_HAIHAI_H
#define D_METER_D_METER_HAIHAI_H

#include "d/meter/d_meter2.h"

class J2DScreen;
class CPaneMgr;
class J2DAnmTransformKey;
class J2DAnmTextureSRTKey;
class J2DAnmColor;

class dMeterHaihai_c : public dMeterSub_c {
public:
    enum {
        DIR_LEFT_e = (1 << 0),
        DIR_DOWN_e = (1 << 1),
        DIR_RIGHT_e = (1 << 2),
        DIR_UP_e = (1 << 3),
    };

    /* 8020AE8C */ dMeterHaihai_c(u8);
    /* 8020B814 */ void drawHaihai(u8, f32, f32, f32, f32);
    /* 8020B518 */ void drawHaihai(u8);
    /* 8020B9B0 */ void drawHaihaiLeft(f32, f32);
    /* 8020BA4C */ void drawHaihaiRight(f32, f32);
    /* 8020BAE8 */ void drawHaihaiTop(f32, f32);
    /* 8020BB84 */ void drawHaihaiBottom(f32, f32);
    /* 8020BC20 */ void setScale(f32);
    /* 8020BEA0 */ void alphaAnimeHaihai(u32);
    /* 8020BEA4 */ void updateHaihai();
    /* 8020BF00 */ void playBckAnime(J2DAnmTransformKey*);
    /* 8020C078 */ void playBtkAnime(J2DAnmTextureSRTKey*);
    /* 8020C1CC */ void playBpkAnime(J2DAnmColor*);

    /* 8020B140 */ virtual void draw();
    /* 8020AEF0 */ virtual ~dMeterHaihai_c();
    /* 8020AF6C */ virtual int _create();
    /* 8020B0F4 */ virtual int _execute(u32);
    /* 8020BDAC */ virtual int _delete();

    void onPlayAllAnime() { mPlayAnimFlags = 0xFF; }
    bool checkPlayAnime(int i_flag) { return mPlayAnimFlags & (1 << i_flag); }

    /* 0x04 */ J2DScreen* mpHaihaiScreen;
    /* 0x08 */ CPaneMgr* mpParent;
    /* 0x0C */ J2DAnmTransformKey* mpCursorBck;
    /* 0x10 */ J2DAnmTextureSRTKey* mpCursorBtk;
    /* 0x14 */ J2DAnmColor* mpCursorBpk;
    /* 0x18 */ f32 mBckFrame;
    /* 0x1C */ f32 mBtkFrame;
    /* 0x20 */ f32 mBpkFrame;
    /* 0x24 */ u32 mFlags;
    /* 0x28 */ u8 mType;
    /* 0x29 */ u8 mPlayAnimFlags;
};

#endif /* D_METER_D_METER_HAIHAI_H */
