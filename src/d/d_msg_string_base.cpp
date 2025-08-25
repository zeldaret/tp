//
// d_msg_string_base
//

#include "d/dolzel.h"

#include "d/d_msg_string_base.h"
#include "d/d_msg_class.h"
#include "d/d_com_inf_game.h"
#include "d/d_meter2_info.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "JSystem/J2DGraph/J2DTextBox.h"

/* 802493B4-80249528 243CF4 0174+00 0/0 2/2 0/0 .text            __ct__16dMsgStringBase_cFv */
dMsgStringBase_c::dMsgStringBase_c() {
    field_0x20 = 0;
    getResource();
    mpResCont = new JMessage::TResourceContainer();
    JUT_ASSERT(33, mpResCont != 0);
    mpCtrl = new jmessage_string_tControl();
    JUT_ASSERT(36, mpCtrl != 0);
    mpRefer = new jmessage_string_tReference();
    JUT_ASSERT(39, mpRefer != 0);
    mpSeqProc = new jmessage_string_tSequenceProcessor(mpRefer, mpCtrl);
    JUT_ASSERT(42, mpSeqProc != 0);
    mpRenProc = new jmessage_string_tRenderingProcessor(mpRefer);
    JUT_ASSERT(45, mpRenProc != 0);
    mpParse = new JMessage::TParse(mpResCont);
    JUT_ASSERT(48, mpParse != 0);
    mpRefer->setResourceContainer(mpResCont);
    mpCtrl->setSequenceProcessor(mpSeqProc);
    mpCtrl->setRenderingProcessor(mpRenProc);
    mpParse->parse(field_0x1c, 0);
    mpCtrl->reset();
    mpCtrl->resetResourceCache();
}

/* 80249528-80249700 243E68 01D8+00 0/0 1/1 0/0 .text            __dt__16dMsgStringBase_cFv */
dMsgStringBase_c::~dMsgStringBase_c() {
    mpResCont->destroyResource_all();
    delete mpResCont;
    mpResCont = NULL;
    delete mpCtrl;
    mpCtrl = NULL;
    delete mpRefer;
    mpRefer = NULL;
    delete mpSeqProc;
    mpSeqProc = NULL;
    delete mpRenProc;
    mpRenProc = NULL;
    delete mpParse;
    mpParse = NULL;
   
    void* iVar1 = dMeter2Info_getMsgResource();
    if (iVar1 == NULL) {
        dComIfGp_getMsgDtArchive(0)->removeResourceAll();
    }
}

/* 80249700-80249768 244040 0068+00 1/1 2/2 0/0 .text            getResource__16dMsgStringBase_cFv
 */
void dMsgStringBase_c::getResource() {
    field_0x1c = dMeter2Info_getMsgResource();
    if (field_0x1c == NULL) {
        field_0x1c = JKRGetTypeResource('ROOT', "zel_00.bmg", dComIfGp_getMsgDtArchive(0));
    }
}

/* 80249768-802498D8 2440A8 0170+00 1/1 1/1 0/0 .text
 * getStringLocal__16dMsgStringBase_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc */
f32 dMsgStringBase_c::getStringLocal(u32 param_1, J2DTextBox* param_2, J2DTextBox* param_3,
                                          JUTFont* param_4, COutFont_c* param_5, u8 param_6) {
    if (dMeter2Info_getMsgResource() != NULL) {
        if (param_1 > 5000) {
            if (field_0x1c != dMeter2Info_getStageMsgResource()) {
                field_0x1c = dMeter2Info_getStageMsgResource();
                mpParse->parse(field_0x1c, 0x80);
            }
        } else {
            if (field_0x1c != dMeter2Info_getMsgResource()) {
                field_0x1c = dMeter2Info_getMsgResource();
                mpParse->parse(field_0x1c, 0x80);
            }
        }
    }
    mpRefer->init(param_2, param_3, param_4, param_5, param_6);
    mpRefer->setColor(param_2->getCharColor(), param_2->getGradColor());
    mpCtrl->setMessageID(param_1, 0, NULL);
    mpCtrl->update();
    mpCtrl->render();
    f32 lineLength = mpRefer->getLineLength(0);
    mpCtrl->reset();
    mpCtrl->resetResourceCache();
    return lineLength;
}

/* 802498D8-80249A48 244218 0170+00 1/1 1/1 0/0 .text
 * getStringPageLocal__16dMsgStringBase_cFUlUcUcP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc
 */
f32 dMsgStringBase_c::getStringPageLocal(u32 param_1, u8 param_2, u8 param_3,
                                              J2DTextBox* param_4, J2DTextBox* param_5,
                                              JUTFont* param_6, COutFont_c* param_7, u8 param_8) {
    if (dMeter2Info_getMsgResource() != NULL) {
        if (param_1 > 5000) {
            if (field_0x1c != dMeter2Info_getStageMsgResource()) {
                field_0x1c = dMeter2Info_getStageMsgResource();
                mpParse->parse(field_0x1c, 0x80);
            }
        } else {
            if (field_0x1c != dMeter2Info_getMsgResource()) {
                field_0x1c = dMeter2Info_getMsgResource();
                mpParse->parse(field_0x1c, 0x80);
            }
        }
    }
    mpRefer->init(param_4, param_5, param_6, param_7, param_8);
    mpRefer->setNowPage(param_2);
    mpRefer->setLineMax(param_3);
    mpRefer->setColor(param_4->getCharColor(), param_4->getGradColor());
    mpCtrl->setMessageID(param_1, 0, NULL);
    mpCtrl->update();
    mpCtrl->render();
    mpCtrl->reset();
    mpCtrl->resetResourceCache();
    return 0.0f;
}

/* 80249A48-80249A70 244388 0028+00 0/0 1/1 0/0 .text            getPageMax__16dMsgStringBase_cFi */
u8 dMsgStringBase_c::getPageMax(int param_0) {
    s16 lineCount = mpRefer->getLineCount();
    u8 pageMax = (lineCount / param_0) & 0xff;
    if (lineCount % param_0 != 0) {
        return pageMax + 1;
    }
    return pageMax;
}

/* 80249A70-80249BAC 2443B0 013C+00 1/1 0/0 0/0 .text getMessageLocal__16dMsgStringBase_cFUlPc */
f32 dMsgStringBase_c::getMessageLocal(u32 param_1, char* param_2) {
    if (dMeter2Info_getMsgResource() != NULL) {
        if (param_1 > 5000) {
            if (field_0x1c != dMeter2Info_getStageMsgResource()) {
                field_0x1c = dMeter2Info_getStageMsgResource();
                mpParse->parse(field_0x1c, 0x80);
            }
        } else {
            if (field_0x1c != dMeter2Info_getMsgResource()) {
                field_0x1c = dMeter2Info_getMsgResource();
                mpParse->parse(field_0x1c, 0x80);
            }
        }
    }
    mpRefer->init(NULL, NULL, NULL, NULL, 0);
    mpCtrl->setMessageID(param_1, 0, NULL);
    mpCtrl->update();
    mpCtrl->render();
    mpCtrl->reset();
    mpCtrl->resetResourceCache();
    strcpy(param_2, mpRenProc->getString());
    return 0.0f;
}

/* 80249BAC-80249BB0 2444EC 0004+00 1/0 0/0 0/0 .text
 * drawFontLocal__16dMsgStringBase_cFP10J2DTextBoxUcffffUlUc    */
void dMsgStringBase_c::drawFontLocal(J2DTextBox* param_0, u8 param_1, f32 param_2, f32 param_3,
                                     f32 param_4, f32 param_5, u32 param_6, u8 param_7) {
}

/* 80249BB0-80249BD0 2444F0 0020+00 1/0 0/0 0/0 .text
 * getString__16dMsgStringBase_cFUlP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc */
f32 dMsgStringBase_c::getString(u32 param_0, J2DTextBox* param_1, J2DTextBox* param_2,
                                     JUTFont* param_3, COutFont_c* param_4, u8 param_5) {
    return getStringLocal(param_0, param_1, param_2, param_3, param_4, param_5);
}

/* 80249BD0-80249BF8 244510 0028+00 1/0 0/0 0/0 .text
 * getStringPage__16dMsgStringBase_cFUlUcUcP10J2DTextBoxP10J2DTextBoxP7JUTFontP10COutFont_cUc */
f32 dMsgStringBase_c::getStringPage(u32 param_0, u8 param_1, u8 param_2, J2DTextBox* param_3,
                                         J2DTextBox* param_4, JUTFont* param_5, COutFont_c* param_6,
                                         u8 param_7) {
    return getStringPageLocal(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7);
}

/* 80249BF8-80249C18 244538 0020+00 1/0 1/0 0/0 .text            getMessage__16dMsgStringBase_cFUlPc
 */
f32 dMsgStringBase_c::getMessage(u32 param_0, char* param_1) {
    return getMessageLocal(param_0, param_1);
}

/* 80249C18-80249C1C 244558 0004+00 1/0 0/0 0/0 .text
 * resetStringLocal__16dMsgStringBase_cFP10J2DTextBox           */
void dMsgStringBase_c::resetStringLocal(J2DTextBox* param_0) {
}

/* 80249C1C-80249C20 24455C 0004+00 1/0 0/0 0/0 .text
 * drawOutFontLocal__16dMsgStringBase_cFP10J2DTextBoxf          */
void dMsgStringBase_c::drawOutFontLocal(J2DTextBox* param_0, f32 param_1) {
}

/* ############################################################################################## */
/* 80399CA3-80399CB0 026303 0008+05 0/0 0/0 0/0 .rodata          None */
static char const* const stringBase_80399CA3 = "\x1B" "CR[%d]";

/* 80399C98-80399C98 0262F8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
