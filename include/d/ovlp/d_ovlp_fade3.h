#ifndef D_OVLP_D_OVLP_FADE3_H
#define D_OVLP_D_OVLP_FADE3_H

#include "d/com/d_com_inf_game.h"
#include "f_op/f_op_overlap_mng.h"

class dOvlpFd3_dlst_c : public dDlst_base_c {
public:
    /* 80252F28 */ virtual void draw();
    /* 802538E8 */ virtual ~dOvlpFd3_dlst_c() {}

    MtxP getMtx() { return mMtx; }
    void entry() { dComIfGd_set2DXlu(this); }

    /* 0x4 */ Mtx mMtx;
};

class dOvlpFd3_c : public overlap_task_class {
public:
    /* 8025343C */ dOvlpFd3_c();
    /* 80253518 */ void execFirstSnap();
    /* 802535AC */ void execFadeOut();
    /* 8025368C */ void execNextSnap();
    /* 80253730 */ void execFadeIn();

    inline void draw();
    inline void execute();

    typedef void (dOvlpFd3_c::*executeFn)();
    void setExecute(executeFn i_func) { mExecuteFn = i_func; }

    /* 0x0CC */ executeFn mExecuteFn;
    /* 0x0D8 */ dDlst_snapShot_c mSnapshot_c;
    /* 0x0DC */ dOvlpFd3_dlst_c mDlst_c;
    /* 0x110 */ s16 field_0x110;
    /* 0x112 */ s16 field_0x112;
    /* 0x114 */ s16 field_0x114;
    /* 0x118 */ f32 field_0x118;
    /* 0x11C */ u8 field_0x11c;
    /* 0x11D */ s8 mTimer;
    /* 0x11E */ u8 field_0x11e;
    /* 0x11F */ u8 field_0x11f;
};

#endif /* D_OVLP_D_OVLP_FADE3_H */
