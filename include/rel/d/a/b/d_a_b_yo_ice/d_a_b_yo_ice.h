#ifndef D_A_B_YO_ICE_H
#define D_A_B_YO_ICE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daB_YOI_c
 * @brief Blizzeta Second Phase Ice Block
 *
 * @details Snowpeak Ruins dungeon boss second phase ice blocks.
 *
 */
class daB_YOI_c : public fopEn_enemy_c {
public:
    /* 8063A17C */ void draw();
    /* 8063A2D8 */ void setActionMode(int, int);
    /* 8063A2E4 */ void damage_check();
    /* 8063A480 */ void setOperate(int);
    /* 8063A628 */ void setWeight(u8);
    /* 8063A638 */ void setBreakIceEffect();
    /* 8063A6F8 */ void setWallBreakIceEffect();
    /* 8063A79C */ void setApperEffect();
    /* 8063A824 */ void setApperEffect2();
    /* 8063A8C8 */ void setLandingEffect();
    /* 8063A96C */ void executeFirst();
    /* 8063ABC0 */ void getSingleFallPos();
    /* 8063ACCC */ void executeRiseUp();
    /* 8063B238 */ void executeSingleFall();
    /* 8063BB40 */ void executeYose();
    /* 8063C3F0 */ void executeYoseFall();
    /* 8063C76C */ void executeDemoRevival();
    /* 8063C900 */ void executeDamage();
    /* 8063CC90 */ void executeDeath();
    /* 8063CD14 */ void crack_execute();
    /* 8063CD90 */ void action();
    /* 8063D0C8 */ void mtx_set();
    /* 8063D1B0 */ void cc_set();
    /* 8063D350 */ void execute();
    /* 8063D45C */ void _delete();
    /* 8063D4F8 */ void CreateHeap();
    /* 8063D5D0 */ void create();
    /* 8063D8FC */ daB_YOI_c();

private:
    /* 0x5ac */ u8 field_0x5ac[0xb3c - 0x5ac];
};
STATIC_ASSERT(sizeof(daB_YOI_c) == 0xb3c);

class daB_YOI_HIO_c {
public:
    /* 8063A14C */ daB_YOI_HIO_c();
    /* 8063DBD0 */ ~daB_YOI_HIO_c();
};

#endif /* D_A_B_YO_ICE_H */
