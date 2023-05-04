#ifndef D_D_KANTERA_ICON_METER_H
#define D_D_KANTERA_ICON_METER_H

#include "d/d_drawlist.h"
#include "dolphin/types.h"

class CPaneMgr;

class dDlst_KanteraIcon_c : public dDlst_base_c {
public:
    /* 801AECB8 */ virtual void draw();
    /* 801AED1C */ virtual ~dDlst_KanteraIcon_c();

    void setScreen(J2DScreen* screen) { mp_scrn = screen; }
    J2DScreen* getScreen() { return mp_scrn; }

private:
    /* 0x04 */ J2DScreen* mp_scrn;
};

class dKantera_icon_c {
public:
    /* 801AE938 */ dKantera_icon_c();
    /* 801AEA68 */ void initiate();
    /* 801AEB7C */ void setAlphaRate(f32);
    /* 801AEBA0 */ void setPos(f32, f32);
    /* 801AEBF4 */ void setScale(f32, f32);
    /* 801AEC44 */ void setNowGauge(u16, u16);

    /* 801AE974 */ virtual ~dKantera_icon_c();

    void drawSelf() { mpKanteraIcon->draw(); }

private:
    /* 0x04 */ dDlst_KanteraIcon_c* mpKanteraIcon;
    /* 0x08 */ CPaneMgr* mpParent;
    /* 0x0C */ CPaneMgr* mpGauge;
};

#endif /* D_D_KANTERA_ICON_METER_H */
