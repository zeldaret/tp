#ifndef D_A_NPC_KS_H
#define D_A_NPC_KS_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_obj_so.h"
#include "d/actor/d_a_obj_sw.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-npcs
 * @class npc_ks_class
 * @brief Monkey NPC
 *
 * @details
 *
 */
class npc_ks_class {
public:
    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 mRoomMonkeyID;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ int field_0x5b8;
    /* 0x5BC */ int bitTRB;
    /* 0x5C0 */ char* mResName;
    /* 0x5C4 */ f32 field_0x5c4;
    /* 0x5C8 */ s16 field_0x5c8;
    /* 0x5CC */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5D0 */ int field_0x5d0;
    /* 0x5D4 */ f32 field_0x5d4;
    /* 0x5D8 */ mDoExt_btpAnm* mBtp1;
    /* 0x5DC */ mDoExt_btpAnm* mBtp2;
    /* 0x5E0 */ s16 field_0x5e0;
    /* 0x5E2 */ s16 field_0x5e2;
    /* 0x5E4 */ s8 field_0x5e4;
    /* 0x5E5 */ u8 field_0x5e5;
    /* 0x5E6 */ s16 field_0x5e6;
    /* 0x5E8 */ s16 mActionID;
    /* 0x5EA */ s16 mMode;
    /* 0x5EC */ u32 mShadowKey;
    /* 0x5F0 */ s16 mTimers[4];
    /* 0x5F8 */ s16 field_0x5f8;
    /* 0x5FA */ s16 field_0x5fa;
    /* 0x5FC */ s8 field_0x5fc;
    /* 0x5FD */ s8 field_0x5fd;
    /* 0x5FE */ s16 field_0x5fe;
    /* 0x600 */ s16 field_0x600;
    /* 0x602 */ s16 field_0x602;
    /* 0x604 */ s16 field_0x604;
    /* 0x606 */ s16 field_0x606;
    /* 0x608 */ s16 field_0x608;
    /* 0x60C */ f32 field_0x60c;
    /* 0x610 */ s16 field_0x610;
    /* 0x614 */ cXyz field_0x614;
    /* 0x620 */ s8 field_0x620;
    /* 0x621 */ s8 field_0x621;
    /* 0x622 */ u8 field_0x622;
    /* 0x623 */ u8 field_0x623;
    /* 0x624 */ cXyz field_0x624;
    /* 0x630 */ int field_0x630;
    /* 0x634 */ f32 field_0x634;
    /* 0x638 */ f32 field_0x638;
    /* 0x63C */ f32 field_0x63c;
    /* 0x640 */ dBgS_AcchCir mAcchCir;
    /* 0x680 */ dBgS_ObjAcch mObjAcch;
    /* 0x858 */ u32 field_0x858;
    /* 0x85C */ u32 field_0x85c;
    /* 0x860 */ Z2Creature mSound;
    /* 0x8F0 */ cXyz field_0x8f0;
    /* 0x8FC */ csXyz field_0x8fc;
    /* 0x904 */ int field_0x904;
    /* 0x908 */ f32 field_0x908;
    /* 0x90C */ s8 field_0x90c;
    /* 0x910 */ cXyz field_0x910;
    /* 0x91C */ cXyz field_0x91c;
    /* 0x928 */ f32 field_0x928;
    /* 0x92C */ s8 field_0x92c;
    /* 0x930 */ void* field_0x930;
    /* 0x934 */ obj_sw_class* field_0x934;
    /* 0x938 */ fpc_ProcID field_0x938;
    /* 0x93C */ int field_0x93c;
    /* 0x940 */ cXyz field_0x940;
    /* 0x94C */ s16 field_0x94c;
    /* 0x94E */ s16 field_0x94e;
    /* 0x950 */ dCcD_Stts mStts;
    /* 0x98C */ dCcD_Cyl field_0x98c;
    /* 0xAC8 */ u8 field_0xac8[0xaec - 0xac8];
    /* 0xAEC */ s8 field_0xaec;
    /* 0xAED */ s8 field_0xaed;
    /* 0xAEE */ s16 field_0xaee;
    /* 0xAF0 */ s16 field_0xaf0;
    /* 0xAF4 */ dMsgFlow_c mMsgFlow;
    /* 0xB40 */ u8 field_0xb40;
    /* 0xB41 */ u8 field_0xb41;
    /* 0xB42 */ s16 field_0xb42;
    /* 0xB44 */ s16 field_0xb44;
    /* 0xB48 */ cXyz field_0xb48;
    /* 0xB54 */ cXyz field_0xb54;
    /* 0xB60 */ cXyz field_0xb60;
    /* 0xB6C */ cXyz field_0xb6c;
    /* 0xB78 */ cXyz field_0xb78;
    /* 0xB84 */ cXyz field_0xb84;
    /* 0xB90 */ u8 field_0xb90[0xba8 - 0xb90];
    /* 0xBA8 */ cXyz field_0xba8;
    /* 0xBB4 */ f32 field_0xbb4;
    /* 0xBB8 */ f32 field_0xbb8;
    /* 0xBBC */ u8 field_0xbbc[0xbc0 - 0xbbc];
    /* 0xBC0 */ npc_ks_class* field_0xbc0;
    /* 0xBC4 */ f32 field_0xbc4;
    /* 0xBC8 */ cXyz field_0xbc8;
    /* 0xBD4 */ s16 field_0xbd4;
    /* 0xBD6 */ u8 field_0xbd6;
    /* 0xBD7 */ s8 field_0xbd7;
    /* 0xBD8 */ s8 field_0xbd8;
    /* 0xBD9 */ s8 field_0xbd9;
    /* 0xBDA */ u8 field_0xbda;
    /* 0xBDB */ s8 field_0xbdb;
    /* 0xBDC */ s8 field_0xbdc;
    /* 0xBDD */ s8 field_0xbdd;
    /* 0xBDE */ s16 field_0xbde;
    /* 0xBE0 */ s8 field_0xbe0;
    /* 0xBE4 */ u32 field_0xbe4[4];
    /* 0xBF4 */ u32 field_0xbf4;
    /* 0xBF8 */ u8 field_0xbf8[0xbfc - 0xbf8];
    /* 0xBFC */ J3DModel* field_0xbfc;
    /* 0xC00 */ J3DModel* field_0xc00;
    /* 0xC04 */ cXyz field_0xc04;
    /* 0xC10 */ f32 field_0xc10;
    /* 0xC14 */ s16 field_0xc14;
    /* 0xC16 */ s8 field_0xc16;
    /* 0xC17 */ s8 field_0xc17;
    /* 0xC18 */ dPath* field_0xc18;
    /* 0xC1C */ u8 field_0xc1c;

    u32 fopAcM_checkHawkCarryNow(fopAc_ac_c* param_1) {
        return fopAcM_checkStatus(param_1, 0x80000000);
    }
};

STATIC_ASSERT(sizeof(npc_ks_class) == 0xc20);

class daNpc_Ks_HIO_c : public JORReflexible {
public:
    /* 80A48F8C */ daNpc_Ks_HIO_c();
    /* 80A5DA90 */ virtual ~daNpc_Ks_HIO_c() {};

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ u8 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
};


#endif /* D_A_NPC_KS_H */
