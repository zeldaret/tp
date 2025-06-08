#ifndef D_A_COACH_2D_H
#define D_A_COACH_2D_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_pane_class.h"
#include "d/d_msg_scrn_light.h"
#include "d/d_drawlist.h"

/**
 * @ingroup actors-unsorted
 * @class daCoach2D_c
 * @brief Coach 2D
 *
 * @details
 *
 */
class daCoach2D_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    class c_list : public dDlst_base_c {
    public:
        c_list() { mpCoach2D = NULL; }

        /* 806569CC */ virtual void draw();
        /* 806577DC */ virtual ~c_list() {}

        void set(daCoach2D_c* i_coach2D) {
            mpCoach2D = i_coach2D;
        }

        /* 0x4 */ daCoach2D_c* mpCoach2D;
    };

    /* 80656A38 */ int createHeap();
    /* 80656D18 */ int create();
    /* 80656D94 */ int destroy();
    /* 80656DE4 */ int draw();
    /* 80656E94 */ int execute();
    /* 80656ED0 */ void drawMeter();
    /* 8065722C */ void initiate();
    /* 80657260 */ void update();
    /* 80657490 */ void setBrkAnime(bool);

    daCoach2D_c() { initiate(); }
    /* 80657824 */ virtual ~daCoach2D_c() {}

    void show() { mIsVisible = true; }
    void hide() { mIsVisible = false; }
    bool isVisible() { return mIsVisible ? true : false; }

    /* 0x574 */ J2DScreen* mpScrn;
    /* 0x578 */ J2DAnmTevRegKey* mpFireIconBrk;
    /* 0x57C */ dMsgScrnLight_c* mMsgLight;
    /* 0x580 */ CPaneMgr* mpPaneAll;
    /* 0x584 */ CPaneMgr* mpPaneBasha;
    /* 0x588 */ CPaneMgr* mpPaneFire;
    /* 0x58C */ CPaneMgr* mpPaneFireB;
    struct {
        /* 0x00 */ f32 pos_x;
        /* 0x04 */ f32 pos_y;
        /* 0x08 */ f32 pikari_pos_x;
        /* 0x0C */ f32 pikari_pos_y;
        /* 0x10 */ f32 pikari_anm_frame;
        /* 0x14 */ u8 field_0x14;
        /* 0x15 */ u8 field_0x15;
    }
    /* 0x590 */ mIconInfo[20];
    /* 0x770 */ c_list mList;
    /* 0x778 */ f32 mBrkFrame;
    /* 0x77C */ f32 mBrkSpeed;
    /* 0x780 */ u8 mHitCount;
    /* 0x781 */ u8 mMaxHitCount;
    /* 0x782 */ u8 mIsVisible;
};

STATIC_ASSERT(sizeof(daCoach2D_c) == 0x784);

class daCoach2D_HIO_c : public mDoHIO_entry_c {
public:
    struct Param {
        /* 0x00 */ f32 pos_x;
        /* 0x04 */ f32 pos_y;
        /* 0x08 */ f32 size;
        /* 0x0C */ f32 alpha;
        /* 0x10 */ f32 icon_space_x;
        /* 0x14 */ f32 icon_pos_x;
        /* 0x18 */ f32 icon_pos_y;
        /* 0x1C */ f32 icon_size;
        /* 0x20 */ f32 icon_alpha;
        /* 0x24 */ f32 coach_pos_x;
        /* 0x28 */ f32 coach_pos_y;
        /* 0x2C */ f32 coach_size;
        /* 0x30 */ f32 coach_alpha;
        /* 0x34 */ f32 blink_speed_min;
        /* 0x38 */ f32 blink_speed_max;
        /* 0x3C */ f32 pikari_scale;
        /* 0x40 */ f32 pikari_anim_speed;
        /* 0x44 */ u8 pikari_moyaR0_R;
        /* 0x45 */ u8 pikari_moyaR0_G;
        /* 0x46 */ u8 pikari_moyaR0_B;
        /* 0x47 */ u8 pikari_moyaR0_A;
        /* 0x48 */ u8 pikari_moyaR1_R;
        /* 0x49 */ u8 pikari_moyaR1_G;
        /* 0x4A */ u8 pikari_moyaR1_B;
        /* 0x4B */ u8 pikari_moyaR1_A;
        /* 0x4C */ u8 unk_0x4C;
        /* 0x4D */ u8 unk_0x4D;
        /* 0x4E */ u8 unk_0x4E;
        /* 0x4F */ u8 unk_0x4F;
        /* 0x50 */ u8 unk_0x50;
        /* 0x51 */ u8 unk_0x51;
        /* 0x52 */ u8 unk_0x52;
        /* 0x53 */ u8 unk_0x53;
        /* 0x54 */ u8 debug_ON;
        /* 0x55 */ u8 max_damage_num;
        /* 0x56 */ u8 now_damage_num;
        /* 0x57 */ u8 reverse_flag;
    };

    daCoach2D_HIO_c() {
        static Param aParam = {
            45.0f,
            -15.0f,
            1.0f,
            1.0f,
            7.5f,
            -6.5f,
            0.0f,
            0.5f,
            1.0f,
            0.0f,
            0.0f,
            1.0f,
            1.0f,
            1.0f,
            5.0f,
            3.0f,
            8.0f,
            0xFF, 0xFF, 0xFF, 0xB9,
            0x00, 0x9B, 0x00, 0x00,
            0xFF, 0xFF, 0xFF, 0x57,
            0x00, 0x73, 0x00, 0x00,
            false,
            20,
            0,
            1,
        };

        memcpy(&param, &aParam, sizeof(Param));
    }

    /* 80657738 */ virtual ~daCoach2D_HIO_c() {}
    void genMessage(JORMContext*) {}

    /* 0x4 */ Param param;
};

#endif /* D_A_COACH_2D_H */
