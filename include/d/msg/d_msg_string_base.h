#ifndef D_MSG_D_MSG_STRING_BASE_H
#define D_MSG_D_MSG_STRING_BASE_H

#include "d/msg/d_msg_object.h"

class JUTFont;
struct jmessage_string_tControl;
struct jmessage_string_tReference;
struct jmessage_string_tSequenceProcessor;
struct jmessage_string_tRenderingProcessor;

class dMsgStringBase_c {
public:
    /* 802493B4 */ dMsgStringBase_c();
    /* 80249528 */ ~dMsgStringBase_c();
    /* 80249700 */ void getResource();
    /* 80249768 */ void getStringLocal(u32, J2DTextBox*, J2DTextBox*, JUTFont*, COutFont_c*, u8);
    /* 802498D8 */ void getStringPageLocal(u32, u8, u8, J2DTextBox*, J2DTextBox*, JUTFont*,
                                           COutFont_c*, u8);
    /* 80249A48 */ void getPageMax(int);
    /* 80249A70 */ void getMessageLocal(u32, char*);

    /* 80249BB0 */ virtual void getString(u32, J2DTextBox*, J2DTextBox*, JUTFont*, COutFont_c*, u8);
    /* 80249BD0 */ virtual void getStringPage(u32, u8, u8, J2DTextBox*, J2DTextBox*, JUTFont*, COutFont_c*,
                                      u8);
    /* 80249BF8 */ virtual void getMessage(u32, char*);
    /* 80249C18 */ virtual void resetStringLocal(J2DTextBox*);
    /* 80249C1C */ virtual void drawOutFontLocal(J2DTextBox*, f32);
    /* 80249BAC */ virtual void drawFontLocal(J2DTextBox*, u8, f32, f32, f32, f32, u32, u8);

private:
    /* 0x04 */ JMessage::TResourceContainer* mpResCont;
    /* 0x08 */ jmessage_string_tControl* mpCtrl;
    /* 0x0C */ jmessage_string_tReference* mpRefer;
    /* 0x10 */ jmessage_string_tSequenceProcessor* mpSeqProc;
    /* 0x14 */ jmessage_string_tRenderingProcessor* mpRenProc;
    /* 0x18 */ JMessage::TParse* mpParse;
    /* 0x1C */ void* field_0x1c;
    /* 0x20 */ u16 field_0x20;
};

#endif /* D_MSG_D_MSG_STRING_BASE_H */
