#ifndef D_A_BG_H
#define D_A_BG_H

#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_w_kcol.h"

class daBg_btkAnm_c {
public:
    /* 80457F34 */ int create(J3DModelData*, J3DAnmTextureSRTKey*, int);
    /* 80458088 */ void entry(J3DModelData*);
    /* 804580CC */ void play();

    void entryFrame() { mpBtk->entryFrame(); }
    void playspeed(f32 speed) { mpBtk->setPlaySpeed(speed); }

    /* 0x0 */ mDoExt_btkAnm* mpBtk;
    /* 0x4 */ u8 field_0x4;
};

class daBg_brkAnm_c {
public:
    /* 804580F0 */ int create(J3DModelData*, J3DAnmTevRegKey*, int);
    /* 80458230 */ void entry(J3DModelData*);
    /* 80458274 */ void play();

    void entryFrame() { mpBrk->entryFrame(); }
    void entryFrame(f32 frame) { mpBrk->entryFrame(frame); }
    f32 getEndFrame() { return mpBrk->getEndFrame(); }

    /* 0x0 */ mDoExt_brkAnm* mpBrk;
    /* 0x4 */ u8 field_0x4;
};

struct daBg_unkData {
    /* 0x00 */ J3DModel* mpBgModel;
    /* 0x04 */ daBg_btkAnm_c* mpBgBtk;
    /* 0x08 */ daBg_brkAnm_c* mpBgBrk;
    /* 0x0C */ dKy_tevstr_c* mpTevStr;
    /* 0x10 */ f32 mBtkAnmSpeed;
};  // Size: 0x14

class daBg_c : public fopAc_ac_c {
public:
    /* 80457BF8 */ const char* setArcName();
    /* 804582B8 */ int createHeap();
    /* 80458788 */ ~daBg_c();
    /* 804588C4 */ int draw();
    /* 8045906C */ int create();

    inline int execute();

private:
    /* 0x568 */ u8 field_0x568[0x570 - 0x568];
    /* 0x570 */ daBg_unkData mBgData[6];
    /* 0x5E8 */ dBgW* mpBgW;
    /* 0x5EC */ dBgWKCol* mpKCol;
    /* 0x5F0 */ u8 field_0x5f0;
    /* 0x5F0 */ u8 field_0x5f1;
};

STATIC_ASSERT(sizeof(daBg_c) == 0x5F4);


#endif /* D_A_BG_H */
