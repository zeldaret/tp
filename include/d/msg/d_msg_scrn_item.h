#ifndef MSG_SCRN_D_MSG_SCRN_ITEM_H
#define MSG_SCRN_D_MSG_SCRN_ITEM_H

#include "dolphin/types.h"
#include "d/msg/d_msg_scrn_base.h"

class dMsgScrnArrow_c;
class dMsgScrn3Select_c;
class dMsgScrnLight_c;

struct dMsgScrnItem_c : public dMsgScrnBase_c {
    /* 8023E79C */ dMsgScrnItem_c(u8, u8, JKRExpHeap*);
    /* 8023F51C */ ~dMsgScrnItem_c();
    /* 8023F888 */ void exec();
    /* 8023FB24 */ void drawSelf();
    /* 8023FF30 */ void arwAnimeInit();
    /* 8023FF54 */ void arwAnimeMove();
    /* 8023FF78 */ void dotAnimeInit();
    /* 8023FF9C */ void dotAnimeMove();
    /* 8023FFC0 */ void setSelectString(char*, char*, char*);
    /* 8023FFE4 */ void setSelectRubyString(char*, char*, char*);
    /* 80240008 */ bool isSelect();
    /* 8024002C */ void selectAnimeInit(u8, u8, f32, u8);
    /* 8024005C */ bool selectAnimeMove(u8, u8, bool);
    /* 80240080 */ bool selectAnimeEnd();
    /* 802400A4 */ void fukiScale(f32);
    /* 802400A8 */ void fukiTrans(f32, f32);
    /* 802400CC */ void fukiAlpha(f32);
    /* 80240174 */ void fukiPosCalc(u8);
    /* 8024074C */ void setBtk0Animation(J2DAnmTextureSRTKey*);
    /* 802407E8 */ void setBpk0Animation(J2DAnmColor*);
    /* 80240844 */ void setBpk1Animation(J2DAnmColor*);
    /* 802408A4 */ bool isOugiID();

    /* 0x0C4 */ J2DScreen* mpTxScreen;
    /* 0x0C8 */ J2DPicture* mpItemPane[3];
    /* 0x0D4 */ void* mpItemTex[3];
    /* 0x0E0 */ ResTIMG* field_0x0e0[3];
    /* 0x0EC */ dMsgScrnArrow_c* mpArrow_c;
    /* 0x0F0 */ dMsgScrn3Select_c* mpSelect_c;
    /* 0x0F4 */ dMsgScrnLight_c* mpLight_c;
    /* 0x0F8 */ u8 field_0xf8[0x108 - 0xf8];
    /* 0x108 */ CPaneMgr* mpArw_c;
    /* 0x10C */ CPaneMgr* mpMg_c[2];
    /* 0x114 */ u32 field_0x114;
    /* 0x118 */ J2DAnmTextureSRTKey* field_0x118[1];
    /* 0x11C */ u32 field_0x11c;
    /* 0x120 */ u8 field_0x120[0x12c - 0x120];
    /* 0x12C */ J2DAnmColorKey* field_0x12c[2];
    /* 0x134 */ u32 field_0x134;
    /* 0x138 */ JKRExpHeap* field_0x138;
    /* 0x13C */ f32 field_0x13c;
    /* 0x140 */ f32 field_0x140[1];
    /* 0x13C */ u8 field_0x144[0x154 - 0x144];
    /* 0x154 */ f32 field_0x154[2];
    /* 0x15C */ f32 field_0x15c;
    /* 0x160 */ f32 field_0x160;
    /* 0x164 */ f32 field_0x164;
    /* 0x168 */ f32 field_0x168;
    /* 0x16C */ f32 field_0x16c;
    /* 0x170 */ f32 field_0x170;
    /* 0x174 */ f32 field_0x174;
    /* 0x178 */ f32 field_0x178;
    /* 0x17C */ f32 field_0x17c;
    /* 0x180 */ f32 field_0x180;
    /* 0x184 */ f32 field_0x184;
    /* 0x188 */ f32 field_0x188[3];
    /* 0x194 */ f32 field_0x194;
    /* 0x198 */ int mItemIndex;
    /* 0x19C */ u8 field_0x19c;
    /* 0x19D */ bool field_0x19d;
    /* 0x19E */ bool field_0x19e;
    /* 0x19F */ u8 field_0x19f;
};

#endif /* MSG_SCRN_D_MSG_SCRN_ITEM_H */
