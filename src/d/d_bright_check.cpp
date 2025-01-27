/**
 * d_bright_check.cpp
 *
 */

#define NO_INLINE_DLSTBASE_DRAW

#include "d/d_bright_check.h"
#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DTextBox.h"
#include "d/d_msg_string.h"
#include "m_Do/m_Do_controller_pad.h"

// Need 0x10 bytes of padding with no symbol between dBrightCheck_c::__vtable and the end of .data
// This is likely caused by the vtable of an abstract base class getting put there and then stripped out.
// Not sure which abstract base class could go there though, so we simulate it with some dummy classes for now.
class dummy_abstract_class {
public:
    virtual void virt_func_0() = 0;
    virtual void virt_func_1() = 0;
};
class dummy_child_class : dummy_abstract_class {
    virtual void virt_func_0();
    virtual void virt_func_1();
};
static dummy_child_class dummy() {
    dummy_child_class temp;
    return temp;
}

/* 803BB5B0-803BB5BC 0186D0 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803BB5D4-803BB5EC 0186F4 0018+00 1/2 0/0 0/0 .data            brightChackProc */
typedef void (dBrightCheck_c::*procFunc)();
static procFunc brightChackProc[] = {
    &dBrightCheck_c::modeWait,
    &dBrightCheck_c::modeMove,
};

/* 80192F10-80192F98 18D850 0088+00 0/0 1/1 0/0 .text __ct__14dBrightCheck_cFP10JKRArchive */
dBrightCheck_c::dBrightCheck_c(JKRArchive* i_archive) {
    mArchive = i_archive;
    mBrightCheck.mMsgString = new dMsgString_c();
    JUT_ASSERT(mBrightCheck.mMsgString != 0);

    screenSet();
    mCompleteCheck = false;
    mMode = MODE_MOVE_e;
}

/* 80192F98-80193030 18D8D8 0098+00 1/0 0/0 0/0 .text            __dt__14dBrightCheck_cFv */
dBrightCheck_c::~dBrightCheck_c() {
    delete mBrightCheck.Scr;
    delete mBrightCheck.mMsgString;
}

/* 80193030-801934D0 18D970 04A0+00 1/1 0/0 0/0 .text            screenSet__14dBrightCheck_cFv */
void dBrightCheck_c::screenSet() {
    static u64 const tv_btnA[] = {
        'cont_at1', 'cont_at2', 'cont_at3', 'cont_at4', 'cont_at',
    };

    static u64 const ftv_btnA[] = {
        'font_a1', 'font_at2', 'font_at3', 'font_at4', 'font_at',
    };

    static u64 const txTV[] = {
        'menu_t61', 'menu_t2',  'menu_t91', 'menu_t1',  'menut101',
        'menu_t01', 'menu_t71', 'menu_t3',  'menu_t81', 'menu_t4',
    };

    static u64 const txTVhide[] = {
        'menu_6n', 'menu_9n', 'menu_10n', 'menu_7n', 'menu_8n',
    };

    mBrightCheck.Scr = new J2DScreen();
    JUT_ASSERT(mBrightCheck.Scr != 0);
    mBrightCheck.Scr->setPriority("zelda_option_check.blo", 0x1100000, mArchive);

    mBrightCheck.Scr->search('g_abtn_n')->hide();
    J2DTextBox* settings_text = (J2DTextBox*)mBrightCheck.Scr->search('f_t00');
    mBrightCheck.Scr->search('f_t00')->show();
    mBrightCheck.Scr->search('t_t00')->hide();

    settings_text->setFont(mDoExt_getRubyFont());
    settings_text->setString(0x40, "");
    mBrightCheck.mMsgString->getString(0x55C, settings_text, NULL, NULL, NULL, 0);  // "TV Settings"

    J2DTextBox* btna_text[5];
    for (int i = 0; i < 5; i++) {
        btna_text[i] = (J2DTextBox*)mBrightCheck.Scr->search(ftv_btnA[i]);
        mBrightCheck.Scr->search(tv_btnA[i])->hide();
        btna_text[i]->setFont(mDoExt_getMesgFont());
        btna_text[i]->setString(0x40, "");
        mBrightCheck.mMsgString->getString(0x564, btna_text[i], NULL, NULL, NULL, 0);  // "Complete"
    }

    for (int i = 0; i < 5; i++) {
        mBrightCheck.Scr->search(txTVhide[i])->hide();
    }

    for (int i = 0; i < 10; i++) {
        J2DTextBox* check_text = (J2DTextBox*)mBrightCheck.Scr->search(txTV[i]);
        check_text->setFont(mDoExt_getMesgFont());
        check_text->setCharSpace(0.0f);

        if (i < 2) {
            check_text->setString(0x100, "");
            mBrightCheck.mMsgString->getString(0x558, check_text, NULL, NULL, NULL, 0);
        } else if (i < 4) {
            check_text->setString(0x100, "");
            mBrightCheck.mMsgString->getString(0x557, check_text, NULL, NULL, NULL, 0);
        } else if (i < 6) {
            check_text->setString(0x100, "");
            mBrightCheck.mMsgString->getString(0x559, check_text, NULL, NULL, NULL, 0);
        } else if (i < 8) {
            check_text->setString(0x100, "");
            mBrightCheck.mMsgString->getString(0x55A, check_text, NULL, NULL, NULL, 0);
        } else {
            check_text->setString(0x100, "");
            mBrightCheck.mMsgString->getString(0x55B, check_text, NULL, NULL, NULL, 0);
        }
    }
}

/* 801934D0-80193508 18DE10 0038+00 0/0 1/1 0/0 .text            _move__14dBrightCheck_cFv */
void dBrightCheck_c::_move() {
    (this->*brightChackProc[mMode])();
}

/* 80193508-8019350C 18DE48 0004+00 1/0 0/0 0/0 .text            modeWait__14dBrightCheck_cFv */
void dBrightCheck_c::modeWait() {}

/* 8019350C-80193594 18DE4C 0088+00 1/0 0/0 0/0 .text            modeMove__14dBrightCheck_cFv */
void dBrightCheck_c::modeMove() {
    if (mDoCPd_c::getTrigA(PAD_1) || mDoCPd_c::getTrigStart(PAD_1)) {
        mDoAud_seStart(Z2SE_ENTER_GAME, NULL, 0, 0);
        mCompleteCheck = true;
        mMode = MODE_WAIT_e;
    }
}

/* 80193594-801935D0 18DED4 003C+00 0/0 1/1 0/0 .text            _draw__14dBrightCheck_cFv */
void dBrightCheck_c::_draw() {
    dComIfGd_set2DOpa(&mBrightCheck);
}

/* 801935D0-80193608 18DF10 0038+00 1/0 0/0 0/0 .text            draw__19dDlst_BrightCheck_cFv */
void dDlst_BrightCheck_c::draw() {
    J2DGrafContext* graf_ctx = dComIfGp_getCurrentGrafPort();
    Scr->draw(0.0f, 0.0f, graf_ctx);
}
