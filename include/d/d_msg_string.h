#ifndef D_MSG_D_MSG_STRING_H
#define D_MSG_D_MSG_STRING_H

#include "d/d_msg_string_base.h"

class COutFont_c;
class JUTFont;

class dMsgString_c : public dMsgStringBase_c {
public:
    /* 80249C20 */ dMsgString_c();
    /* 80249CA0 */ dMsgString_c(u8);
    /* 80249D28 */ ~dMsgString_c();

    /* 80191B6C */ virtual f32 getString(u32 param_0, J2DTextBox* param_1, J2DTextBox* param_2,
                                         JUTFont* param_3, COutFont_c* param_4, u8 param_5) {
        if (param_4 == NULL && mpOutFont != NULL) {
            return getStringLocal(param_0, param_1, param_2, param_3, mpOutFont, param_5);
        } else {
            return getStringLocal(param_0, param_1, param_2, param_3, param_4, param_5);
        }
    }
    /* 801E1D10 */ virtual f32 getStringPage(u32, u8, u8, J2DTextBox*, J2DTextBox*, JUTFont*, COutFont_c*,
                                      u8);
    /* 80249DB4 */ virtual void resetStringLocal(J2DTextBox*);
    /* 80249DE4 */ virtual void drawOutFontLocal(J2DTextBox*, f32);
    /* 80249ED0 */ virtual void drawFontLocal(J2DTextBox*, u8, f32, f32, f32, f32, u32, u8);

    void drawOutFont(J2DTextBox* param_0, f32 param_1) {
        drawOutFontLocal(param_0, param_1);
    }

private:
    /* 0x24 */ COutFont_c* mpOutFont;
    /* 0x28 */ u8 field_0x28;
};

#endif /* D_MSG_D_MSG_STRING_H */
