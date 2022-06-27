#ifndef D_MSG_D_MSG_STRING_H
#define D_MSG_D_MSG_STRING_H

#include "d/msg/d_msg_string_base.h"
#include "d/msg/d_msg_out_font.h"

class dMsgString_c {
public:
    
    /* 80249C20 */ dMsgString_c();
    /* 80249CA0 */ dMsgString_c(u8);
    /* 80249D28 */ ~dMsgString_c();

    /* 80191B6C */ virtual void getString(u32, J2DTextBox*, J2DTextBox*, JUTFont*, COutFont_c*, u8);
    /* 801E1D10 */ virtual void getStringPage(u32, u8, u8, J2DTextBox*, J2DTextBox*, JUTFont*, COutFont_c*,
                                      u8);
    /* 80249DB4 */ virtual void resetStringLocal(J2DTextBox*);
    /* 80249DE4 */ virtual void drawOutFontLocal(J2DTextBox*, f32);
    /* 80249ED0 */ virtual void drawFontLocal(J2DTextBox*, u8, f32, f32, f32, f32, u32, u8);

private:
    /* 0x24 */ COutFont_c* mpOutFont;
    /* 0x28 */ u8 field_0x28;
};

#endif /* D_MSG_D_MSG_STRING_H */
