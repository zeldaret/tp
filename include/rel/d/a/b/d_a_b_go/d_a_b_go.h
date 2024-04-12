#ifndef D_A_B_GO_H
#define D_A_B_GO_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/cc/d_cc_uty.h"

#define GORON_CHILD_MAX 31

/**
 * @ingroup actors-enemies
 * @brief Goron Golem
 * 
 * Unused golem boss made up of several small Gorons.
 * 
 */
class b_go_class : public fopEn_enemy_c {
public:
    /* 80603CA0 */ b_go_class();

    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x5B8 */ Z2CreatureEnemy mSound;
    /* 0x65C */ int mAnmID;
    /* 0x660 */ u8 unk_0x660;
    /* 0x661 */ u8 field_0x661[0x668 - 0x661];
    /* 0x668 */ s16 unk_0x668;
    /* 0x66A */ s16 mActionID;
    /* 0x66C */ s16 mMode;
    /* 0x66E */ u8 field_0x66e[0x67e - 0x66e];
    /* 0x67E */ s16 mAngleToPlayer;
    /* 0x680 */ f32 mDistToPlayer;
    /* 0x684 */ u8 field_0x684[4];
    /* 0x688 */ s16 mTimers[4];
    /* 0x690 */ s16 unk_0x690;
    /* 0x692 */ s16 field_0x692;
    /* 0x694 */ dBgS_AcchCir mAcchCir;
    /* 0x6D4 */ dBgS_ObjAcch mAcch;
    /* 0x8AC */ dCcD_Stts mStts;
    /* 0x8E8 */ dCcD_Sph field_0x8e8;
    /* 0xA20 */ dCcD_Sph field_0xa20;
    /* 0xB58 */ dCcD_Cyl field_0xb58;
    /* 0xC94 */ dCcU_AtInfo mAtInfo;
    /* 0xCB8 */ u32 mGoronChildIDs[GORON_CHILD_MAX];
    /* 0xD34 */ u8 field_0xd34;
};

#endif /* D_A_B_GO_H */
