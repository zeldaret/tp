#ifndef D_D_BRIGHT_CHECK_H
#define D_D_BRIGHT_CHECK_H

#include "d/d_com_inf_game.h"

class dMsgString_c;

class dDlst_BrightCheck_c : public dDlst_base_c {
public:
    /* 801935D0 */ virtual void draw();
    /* 80193648 */ virtual ~dDlst_BrightCheck_c() {}

    /* 0x04 */ J2DScreen* Scr;
    /* 0x08 */ u8 field_0x8[0xC - 0x8];
    /* 0x0C */ dMsgString_c* mMsgString;
};

class dBrightCheck_c {
public:
    enum Mode_e {
        MODE_WAIT_e,
        MODE_MOVE_e,
    };

    /* 80192F10 */ dBrightCheck_c(JKRArchive*);
    /* 80192F98 */ virtual ~dBrightCheck_c();

    // TODO: probably fake, probably going to break some other function
    // need to figure out this weird vtable padding issue
    virtual void dummy() = 0;
    virtual void dummy2() = 0;
    virtual void dummy3() = 0;

    /* 80193030 */ void screenSet();
    /* 801934D0 */ void _move();
    /* 80193508 */ void modeWait();
    /* 8019350C */ void modeMove();
    /* 80193594 */ void _draw();

    /* 0x04 */ JKRArchive* mArchive;
    /* 0x08 */ dDlst_BrightCheck_c mBrightCheck;
    /* 0x18 */ u8 mMode;
    /* 0x19 */ u8 mCompleteCheck;
};

#endif /* D_D_BRIGHT_CHECK_H */
