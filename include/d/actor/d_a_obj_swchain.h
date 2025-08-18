#ifndef D_A_OBJ_SWCHAIN_H
#define D_A_OBJ_SWCHAIN_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"

/**
 * @ingroup actors-objects
 * @class daObjSwChain_c
 * @brief Chain Switch
 *
 * @details
 *
 */
class daObjSwChain_c : public fopAc_ac_c {
public:
    struct chain_s {
    public:
        /* 80CF8B00 */ ~chain_s();
        /* 80CF8B3C */ chain_s();

        /* 0x00 */ u8 field_0x00[0x34 - 0x00];
        /* 0x00 */ cXyz field_0x34;
        /* 0x00 */ u8 field_0x40[0x50 - 0x40];
    };

    /* 80CF8768 */ void Create();
    /* 80CF89C0 */ void CreateHeap();
    /* 80CF8B48 */ void create1st();
    /* 80CF8ED0 */ void execute();
    /* 80CF94E4 */ void getChainBasePos(cXyz*);
    /* 80CF9500 */ void chain_control();
    /* 80CF99C0 */ void chain_control2();
    /* 80CFA05C */ void initChainMtx();
    /* 80CFA124 */ void setChainMtx();
    /* 80CFA4A8 */ void chain_count_control();
    /* 80CFAD50 */ void setTension();
    /* 80CFB450 */ void getTopChainNo();
    /* 80CFB464 */ void checkPlayerPull();
    /* 80CFB53C */ void draw();
    /* 80CFB5E8 */ void _delete();

    u8 getSwbit() { return fopAcM_GetParamBit(this, 0, 8); }
    u8 getChainID() { return fopAcM_GetParamBit(this, 28, 4); }
    BOOL checkDispEmphasis() { return fopAcM_isSwitch(this, getSwbit()) == FALSE; }
    bool checkCarry() { return mCarry == 1; }
    void setRatioForChandelier(f32 ratio) { mRatio = ratio; }

    /* 80C665A4 */ BOOL checkTight() {
        if (mCarry != 0 && (home.roomNo == 4 || home.roomNo == 6) && field_0xa64 >= field_0xa69 &&
            field_0xa9c == 0)
        {
            daPy_py_c* player = daPy_getPlayerActorClass();
            chain_s* swChain = &field_0xa74[field_0xa65] - field_0xa64 + 1;
            cXyz cStack_54;
            cXyz cStack_60;
            cStack_54 = swChain->field_0x34;
            cStack_60 = field_0xa74[field_0xa65].field_0x34;
            f32 dVar10 = cStack_60.abs(cStack_54);
            f32 dVar13 = (field_0xa67 - 2) * 35.0f;
            cXyz local_6c;
            cXyz cStack_78 = field_0xa74[0].field_0x34 - field_0xa74[field_0xa65].field_0x34;
            local_6c.x = player->getSpeedF() * cM_ssin(player->current.angle.y);
            local_6c.z = player->getSpeedF() * cM_scos(player->current.angle.y);
            if (cStack_78.inprodXZ(local_6c) < 0.0f && dVar10 > dVar13 - 35.0f) {
                return TRUE;
            }
        }
        return FALSE;
    }

private:
    /* 0x568 */ u8 field_0x568[0xa62 - 0x568];
    /* 0xA62 */ u8 mCarry;
    /* 0xA63 */ u8 field_0xa63;
    /* 0xA64 */ u8 field_0xa64;
    /* 0xA65 */ u8 field_0xa65;
    /* 0xA66 */ u8 field_0xa66;
    /* 0xA67 */ u8 field_0xa67;
    /* 0xA68 */ u8 field_0xa68;
    /* 0xA69 */ u8 field_0xa69;
    /* 0xA6A */ u8 field_0xa6a[0xa74 - 0xa6a];
    /* 0xA6A */ chain_s* field_0xa74;
    /* 0xA6A */ u8 field_0xa78[0xa98 - 0xa78];
    /* 0xA98 */ f32 mRatio;
    /* 0xA9C */ u8 field_0xa9c;
};

STATIC_ASSERT(sizeof(daObjSwChain_c) == 0xaa0);


#endif /* D_A_OBJ_SWCHAIN_H */
