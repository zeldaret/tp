#ifndef D_A_D_A_ITEMBASE_H
#define D_A_D_A_ITEMBASE_H

#include "dolphin/types.h"

class daItemBase_c {
public:
    u8 getItemNo();
    void hide();
    void show();
    void changeDraw();
    u8 chkDraw();
    void dead();
    u8 chkDead();
    void CreateItemHeap(char const*, s16, s16, s16, s16, s16, s16, s16);
    void DeleteBase(char const*);
    bool clothCreate();
    bool __CreateHeap();
    void DrawBase();
    void RotateYBase();
    void setListStart();
    void setListEnd();
    void settingBeforeDraw();
    void setTevStr();
    void setShadow();
    void animEntry();
    void animPlay(f32, f32, f32, f32, f32, f32);
    void chkFlag(int);
    void getTevFrm();
    void getBtpFrm();
    void getShadowSize();
    void getCollisionH();
    void getCollisionR();
    void getData();

    static u8 const m_data[56];

private:
    u8 unk0[0x92a];
    u8 mItemNo;
    u8 unk2347;
};

#endif /* D_A_D_A_ITEMBASE_H */
