#ifndef D_A_BALLOON_2D_H
#define D_A_BALLOON_2D_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/d_drawlist.h"
#include "d/s/d_s_play.h"

class J2DScreen;
class CPaneMgr;
class J2DPicture;
class J2DPane;
class J2DTextBox;

class daBalloon2D_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    class c_list 
    #ifdef NONMATCHING
    : public dDlst_base_c 
    #endif
    {
    public:
        c_list() { mBalloon = NULL; }
        void set(daBalloon2D_c* i_this) { mBalloon = i_this; }

        #ifdef NONMATCHING
        /* 806534CC */ virtual void draw();
        /* 8065544C */ virtual ~c_list();
        #else
        void draw();
        ~c_list();
        void* vtable;
        #endif

        daBalloon2D_c* mBalloon;
    };

    class CHeadScore {
    public:
        /* 80655304 */ ~CHeadScore();
        /* 80655340 */ CHeadScore();
    };

    daBalloon2D_c() {
        initiate();
    }

    /* 80653538 */ int createHeap();
    /* 80653D24 */ int create();
    /* 80653DB4 */ int destroy();
    /* 80653E10 */ int draw();
    /* 80653EC0 */ int execute();
    /* 80653F04 */ void drawMeter();
    /* 80653F58 */ void setComboCount(u8, u8);
    /* 80653FC0 */ void setScoreCount(u32);
    /* 80653FEC */ void addScoreCount(cXyz*, u32, u8);
    /* 806540B4 */ void initiate();
    /* 806540B8 */ void update();
    /* 806540BC */ void setComboNum(u8);
    /* 806541B4 */ void setBalloonSize(u8);
    /* 80654258 */ void setScoreNum(int);
    /* 80654440 */ void setAllAlpha();
    /* 8065464C */ void setComboAlpha();
    /* 80654730 */ void drawAddScore();
    /* 80654E8C */ void setHIO(bool);
    /* 80655494 */ 
    #ifdef NONMATCHING
    virtual
    #endif
    ~daBalloon2D_c();

    void show() { mIsVisible = 1; }
    void hide() { mIsVisible = 0; }
    u8 isVisible() { return mIsVisible; }

    static daBalloon2D_c* myclass;

    struct ScoreCount {
        cXyz field_0x0;
        u16 field_0xc;
        u8 field_0xe;
        u8 field_0xf;
    };

    #ifdef NONMATCHING
    #else
    /* 0x570 */ u32 vtable;
    #endif
    /* 0x574 */ J2DScreen* mScreen;
    /* 0x578 */ CPaneMgr* field_0x578;
    /* 0x57C */ CPaneMgr* field_0x57c;
    /* 0x580 */ CPaneMgr* field_0x580;
    /* 0x584 */ CPaneMgr* field_0x584;
    /* 0x588 */ CPaneMgr* field_0x588;
    /* 0x58C */ CPaneMgr* field_0x58c;
    /* 0x590 */ CPaneMgr* field_0x590;
    /* 0x594 */ CPaneMgr* field_0x594;
    /* 0x598 */ CPaneMgr* field_0x598;
    /* 0x59C */ CPaneMgr* field_0x59c;
    /* 0x5A0 */ CPaneMgr* field_0x5a0;
    /* 0x5A4 */ CPaneMgr* field_0x5a4;
    /* 0x5A8 */ J2DPicture* field_0x5a8[7];
    /* 0x5A4 */ J2DPicture* field_0x5c4[10];
    /* 0x5EC */ J2DPicture* field_0x5ec;
    /* 0x5F0 */ c_list field_0x5f0;
    /* 0x5F8 */ ScoreCount field_0x5f8[20];
    /* 0x738 */ f32 mAllAlpha;
    /* 0x73C */ f32 mComboAlpha;
    /* 0x740 */ u32 mScoreCount;
    /* 0x744 */ u8 mComboNum;
    /* 0x745 */ u8 mBalloonSize;
    /* 0x746 */ u8 mIsVisible;
};

class daBalloon2D_HIO_c /*: public mDoHIO_entry_c */ {
public:
    /* 806553A8 */ /* virtual */ ~daBalloon2D_HIO_c();
    /* 0x00 */ u32 field_0x00;
    /* 0x04 */ u8 field_0x04;
    /* 0x00 */ u8 field_0x05[0x20 - 5];
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3c;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4c;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5c;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ f32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ f32 field_0x78;
    /* 0x7C */ f32 field_0x7c;
    /* 0x80 */ f32 field_0x80;
    /* 0x84 */ f32 field_0x84;
    /* 0x88 */ f32 field_0x88;
    /* 0x8C */ f32 field_0x8c;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ f32 field_0x98;
    /* 0x9C */ f32 field_0x9c;
    /* 0xA0 */ f32 field_0xa0;
    /* 0xA4 */ f32 field_0xa4;
    /* 0xA8 */ f32 field_0xa8;
    /* 0xAC */ f32 field_0xac;
    /* 0xB0 */ f32 field_0xb0;
    /* 0xB4 */ f32 field_0xb4;
    /* 0xB8 */ f32 field_0xb8;
    /* 0xBC */ f32 field_0xbc;
    /* 0xC0 */ f32 field_0xc0;
    /* 0xC4 */ f32 field_0xc4;
};
#include "f_op/f_op_actor_mng.h"

class JMSMesgEntry_c : public fopEn_enemy_c {
private:
    /* 0x5ac */ u8 field_0x5ac[0x748 - 0x5ac];
};

STATIC_ASSERT(sizeof(JMSMesgEntry_c) == 0x748);

struct JKRExpHeap {};


#endif /* D_A_BALLOON_2D_H */
