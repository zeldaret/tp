#ifndef D_PANE_D_PANE_CLASS_ALPHA_H
#define D_PANE_D_PANE_CLASS_ALPHA_H

#include "JSystem/J2DGraph/J2DScreen.h"
#include "JSystem/J2DGraph/J2DWindow.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "dolphin/types.h"

struct CPaneMgrAlphaMorf {
    /* 80255C68 */ CPaneMgrAlphaMorf(J2DScreen*, u64, u8, JKRExpHeap*);
    /* 80255CAC */ ~CPaneMgrAlphaMorf();
    /* 80255D48 */ void initiateAlphaMorf();
    /* 80255DD0 */ void setBackupAlpha();
    /* 80255E28 */ void setAlphaMorfRate(f32);
    /* 80255E98 */ void childPaneBackupAlpha(J2DPane*);
    /* 80255F28 */ void childPaneSetAlphaMorf(J2DPane*, f32);
};

class CPaneMgrAlpha {
public:
    /* 8025546C */ virtual ~CPaneMgrAlpha();
    /* 80255758 */ virtual void setAlpha(u8);

    /* 802553EC */ CPaneMgrAlpha();
    /* 802553FC */ CPaneMgrAlpha(J2DScreen*, u64, u8, JKRExpHeap*);
    /* 802554E0 */ void initiateAlpha(J2DPane*, JKRExpHeap*);
    /* 802555C8 */ void show();
    /* 80255608 */ void hide();
    /* 8025564C */ void isVisible();
    /* 80255658 */ f32 rateCalc(s16, s16, u8);
    /* 802557D0 */ void setAlphaRate(f32);
    /* 80255828 */ f32 getAlphaRate();
    /* 80255878 */ void alphaAnime(s16, u8, u8, u8);
    /* 80255964 */ void alphaAnimeLoop(s16, u8, u8, u8);
    /* 80255A60 */ void childPaneCount(J2DPane*);
    /* 80255ACC */ void childPaneGetAlpha(J2DPane*);
    /* 80255B5C */ void childPaneSetAlpha(J2DPane*, u8);

    J2DPane* getPanePtr() { return (J2DPane*)mWindow; }
    u8 getAlpha() { return getPanePtr()->getAlpha(); }
    s16 getAlphaTimer() { return mAlphaTimer; }

    /* 0x04 */ J2DWindow* mWindow;
    /* 0x08 */ JKRExpHeap* heap;
    /* 0x0C */ void* mpFirstStackAlpha;
    /* 0x10 */ void* field_0x10;
    /* 0x14 */ s16 mChildPaneCount;
    /* 0x16 */ s16 mAlphaTimer;
    /* 0x18 */ u8 mInitAlpha;
    /* 0x19 */ u8 mFlags;
};

#endif /* D_PANE_D_PANE_CLASS_ALPHA_H */
