#ifndef D_S_D_S_LOGO_H
#define D_S_D_S_LOGO_H

#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"

class dLog_HIO_c {
public:
    /* 802560A4 */ dLog_HIO_c();
    /* 8025855C */ virtual ~dLog_HIO_c();
};  // Size: 0x8

class dScnLogo_c : public scene_class {
public:
    enum {
        /* 0x0 */ EXEC_WARNING_IN,
        /* 0x1 */ EXEC_WARNING_DISP,
        /* 0x2 */ EXEC_WARNING_OUT,
        /* 0x3 */ EXEC_NINTENDO_IN,
        /* 0x4 */ EXEC_NINTENDO_OUT,
        /* 0x5 */ EXEC_DOLBY_IN,
        /* 0x6 */ EXEC_DOLBY_OUT,
        /* 0x7 */ EXEC_DOLBY_OUT2,
        /* 0x8 */ EXEC_PROG_IN,
        /* 0x9 */ EXEC_PROG_SEL,
        /* 0xA */ EXEC_PROG_OUT,
        /* 0xB */ EXEC_PROG_SET,
        /* 0xC */ EXEC_PROG_SET2,
        /* 0xD */ EXEC_PROG_CHANGE,
        /* 0xE */ EXEC_DVD_WAIT,
        /* 0xF */ EXEC_SCENE_CHANGE,
    };

    /* 802560B4 */ void preLoad_dyl_create();
    /* 802560F8 */ void preLoad_dyl_remove();
    /* 8025611C */ bool preLoad_dyl();
    /* 80256198 */ void checkProgSelect();
    /* 80256210 */ int draw();
    /* 80256264 */ void progInDraw();
    /* 8025631C */ void progSelDraw();
    /* 802568E0 */ void progOutDraw();
    /* 80256A3C */ void progSetDraw();
    /* 80256AC0 */ void progSet2Draw();
    /* 80256B3C */ void progChangeDraw();
    /* 80256BF4 */ void warningInDraw();
    /* 80256C68 */ void warningDispDraw();
    /* 80256DC4 */ void warningOutDraw();
    /* 80256E48 */ void nintendoInDraw();
    /* 80256ECC */ void nintendoOutDraw();
    /* 80256F50 */ void dolbyInDraw();
    /* 80256FD4 */ void dolbyOutDraw();
    /* 80257058 */ void dolbyOutDraw2();
    /* 80257070 */ void dvdWaitDraw();
    /* 80257284 */ void nextSceneChange();
    /* 802572B8 */ ~dScnLogo_c();
    /* 80257AE0 */ int create();
    /* 80257C64 */ void logoInitGC();
    /* 80257FEC */ void dvdDataLoad();
    /* 802584D8 */ void setProgressiveMode(u8);
    /* 802584FC */ u8 getProgressiveMode();
    /* 80258520 */ bool isProgressiveMode();
    /* 8025854C */ void setRenderMode();

public:
    /* 0x1D0 */ JKRExpHeap* field_0x1d0;
    /* 0x1D4 */ JKRExpHeap* field_0x1d4;
    /* 0x1D8 */ JKRHeap* mpHeap;
    /* 0x1DC */ dDlst_2D_c* mWarning;
    /* 0x1E0 */ dDlst_2D_c* mWarningStart;
    /* 0x1E4 */ dDlst_2D_c* mNintendoLogo;
    /* 0x1E8 */ dDlst_2D_c* mDolbyLogo;
    /* 0x1EC */ dDlst_2D_c* mProgressiveChoice;
    /* 0x1F0 */ dDlst_2D_c* mProgressiveYes;
    /* 0x1F4 */ dDlst_2D_c* mProgressiveNo;
    /* 0x1F8 */ dDlst_2D_c* mProgressiveSel;
    /* 0x1FC */ request_of_phase_process_class* m_preLoad_dylPhase;
    /* 0x200 */ ResTIMG* mProgressivePro;
    /* 0x204 */ ResTIMG* mProgressiveInter;
    /* 0x208 */ u8 mExecCommand;
    /* 0x209 */ u8 field_0x209;
    /* 0x20A */ u8 field_0x20a;
    /* 0x20B */ u8 field_0x20b;
    /* 0x20C */ u16 mTimer;
    /* 0x20E */ u16 field_0x20e;
    /* 0x210 */ u16 field_0x210;
    /* 0x212 */ u16 field_0x212;
    /* 0x214 */ u16 field_0x214;
    /* 0x218 */ u32 field_0x218;
    /* 0x21C */ void* buffer;
    /* 0x220 */ mDoDvdThd_mountXArchive_c* mpField0Command;
    /* 0x224 */ mDoDvdThd_mountXArchive_c* mpAlAnmCommand;
    /* 0x228 */ u8 field_0x228[4];
    /* 0x22C */ mDoDvdThd_mountXArchive_c* mpFmapResCommand;
    /* 0x230 */ mDoDvdThd_mountXArchive_c* mpDmapResCommand;
    /* 0x234 */ mDoDvdThd_mountXArchive_c* mpCollectResCommand;
    /* 0x238 */ u8 field_0x238[4];
    /* 0x23C */ mDoDvdThd_mountXArchive_c* mpItemIconCommand;
    /* 0x240 */ mDoDvdThd_mountXArchive_c* mpRingResCommand;
    /* 0x244 */ u8 field_0x244[4];
    /* 0x248 */ mDoDvdThd_mountXArchive_c* mpPlayerNameCommand;
    /* 0x24C */ mDoDvdThd_mountXArchive_c* mpItemInfResCommand;
    /* 0x250 */ mDoDvdThd_mountXArchive_c* mpButtonCommand;
    /* 0x254 */ u8 field_0x254[4];
    /* 0x258 */ mDoDvdThd_mountXArchive_c* mpCardIconCommand;
    /* 0x25C */ mDoDvdThd_mountXArchive_c* mpBmgResCommand;
    /* 0x260 */ mDoDvdThd_mountXArchive_c* mpMsgComCommand;
    /* 0x264 */ mDoDvdThd_mountXArchive_c* mpMsgResCommand[7];
    /* 0x280 */ u8 field_0x280[0x10];
    /* 0x290 */ mDoDvdThd_mountXArchive_c* mpFontResCommand;
    /* 0x294 */ mDoDvdThd_mountXArchive_c* mpMain2DCommand;
    /* 0x298 */ mDoDvdThd_mountXArchive_c* mpRubyResCommand;
    /* 0x29C */ mDoDvdThd_toMainRam_c* mParticleCommand;
    /* 0x2A0 */ mDoDvdThd_toMainRam_c* mItemTableCommand;
    /* 0x2A4 */ mDoDvdThd_toMainRam_c* mEnemyItemCommand;
};

static int phase_0(dScnLogo_c* logo);
static int phase_1(dScnLogo_c* logo);
static int phase_2(dScnLogo_c* logo);

template <typename T>
T cLib_calcTimer(T* val);

#endif /* D_S_D_S_LOGO_H */
