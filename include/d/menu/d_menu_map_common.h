#ifndef D_MENU_D_MENU_MAP_COMMON_H
#define D_MENU_D_MENU_MAP_COMMON_H

#include "dolphin/types.h"

class J2DPicture;
class JKRArchive;
class dSelect_cursor_c;

struct dMenuMapCommon_c {
    /* 801C2718 */ dMenuMapCommon_c();
    /* 801C27B4 */ virtual ~dMenuMapCommon_c();
    /* 801C28D8 */ void initiate(JKRArchive*);
    /* 801C38E4 */ void drawIcon(f32, f32, f32, f32);
    /* 801C3EC4 */ void iconScale(int, f32, f32, f32);
    /* 801C43A8 */ bool setIconInfo(u8, f32, f32, f32, f32, f32, u8);
    /* 801C443C */ void clearIconInfo();
    /* 801C4494 */ void setBlendRatio(u8, f32, f32);
    /* 801C452C */ void blinkMove(s16);
    /* 801C4600 */ void moveLightDropAnime();
    /* 801C4738 */ float getIconSizeX(u8 index);
    /* 801C4778 */ float getIconSizeY(u8 index);
    /* 801C47C4 */ void debugIcon();

    void setCenterPosX(f32 center_pos, u8 param_2) {
        mCenterPosX = center_pos;
        _c90 = param_2;
    }

    struct data {
        /* 0x00 */ float _0;
        /* 0x04 */ float _4;
        /* 0x08 */ float _8;
        /* 0x0C */ float _C;
        /* 0x10 */ float _10;
        /* 0x14 */ u8 _14;
        /* 0x15 */ u8 _15;
    };

    struct Stage_c {
        // Incomplete or wrong

        struct Stage_c_data {
            /* 0x00 */ char mName[8];
            /* 0x08 */ u8 field_0x8;
            /* 0x09 */ u8 field_0x9;
            /* 0x0C */ f32 field_0xc;
            /* 0x10 */ f32 field_0x10;
        };

        /* 0x0 */ u32 field_0x0;
        /* 0x4 */ Stage_c_data field_0x4[0];
    };

    /* 0x004 */ J2DPicture* mPictures[23];
    /* 0x060 */ J2DPicture* _60;
    /* 0x064 */ dSelect_cursor_c* mpDrawCursor;
    /* 0x068 */ dSelect_cursor_c* mpPortalIcon;
    /* 0x06C */ u32 _6c;
    /* 0x070 */ data _70[128];
    /* 0xC70 */ u16 mIconNum;
    /* 0xC72 */ s16 _c72;
    /* 0xC74 */ s16 _c74;
    /* 0xC76 */ u16 _c76;
    /* 0xC78 */ float _c78;
    /* 0xC7C */ float _c7c;
    /* 0xC80 */ float _c80;
    /* 0xC84 */ float _c84;
    /* 0xC88 */ float _c88;
    /* 0xC8C */ float mCenterPosX;
    /* 0xC90 */ u8 _c90;
};

#endif /* D_MENU_D_MENU_MAP_COMMON_H */
