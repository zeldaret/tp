#ifndef F_OP_ACTOR_ENEMY_H_
#define F_OP_ACTOR_ENEMY_H_

#include "SSystem/SComponent/c_math.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/actor/d_a_midna.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_s_play.h"

// NONMATCHING ?
static int setMidnaBindEffect(fopEn_enemy_c* i_actorP, Z2CreatureEnemy* i_creatureP, cXyz* i_effPos,
                              cXyz* i_effSize) {
    static GXColor e_prim[] = {
        {0xFF, 0x78, 0x00, 0x00},
        {0xFF, 0x64, 0x78, 0x00},
    };
    static GXColor e_env[] = {
        {0x5A, 0x2D, 0x2D, 0x00},
        {0x3C, 0x1E, 0x1E, 0x00},
    };

    daPy_py_c* player = daPy_getPlayerActorClass();
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_actorP;

    if (player->getMidnaActor() && player->checkWolfLock(a_this)) {
        cXyz sp48;

        BOOL darkworld_check;
        if (dKy_darkworld_check()) {
            darkworld_check = 1;
        } else {
            darkworld_check = 0;
        }

        if (i_actorP->getMidnaBindMode() == 0) {
            i_actorP->setMidnaBindMode(1);

            csXyz sp68;
            MTXCopy(player->getMidnaActor()->getMtxHairTop(), mDoMtx_stack_c::get());

            cXyz sp54(nREG_F(8) + 100.0f, nREG_F(9), nREG_F(10));
            mDoMtx_stack_c::multVec(&sp54, &sp48);

            cXyz sp60 = sp48 - *i_effPos;

            sp68.y = cM_atan2s(sp60.x, sp60.z);
            sp68.x = -cM_atan2s(sp60.y, JMAFastSqrt(sp60.x * sp60.x + sp60.z * sp60.z));
            sp68.z = 0;

            s32 room_no = fopAcM_GetRoomNo(a_this);
            JPABaseEmitter* emitter = dComIfGp_particle_set(
                0x29B, i_effPos, &a_this->tevStr, &sp68, i_effSize, 0xFF, NULL, room_no,
                &e_prim[darkworld_check], &e_env[darkworld_check], NULL);

            if (emitter != NULL) {
                emitter->setGlobalParticleHeightScale((JREG_F(7) + 0.01f) * sp60.abs());
            }

            room_no = fopAcM_GetRoomNo(a_this);
            dComIfGp_particle_set(0x29C, i_effPos, &a_this->tevStr, &a_this->shape_angle, i_effSize,
                                  0xFF, NULL, room_no, &e_prim[darkworld_check],
                                  &e_env[darkworld_check], NULL);

            i_creatureP->startCreatureSound(Z2SE_MIDNA_BIND_LOCK_ON, 0, -1);
        }

        for (int i = 0; i < 3; i++) {
            static u16 eff_id[] = {0x29D, 0x29E, 0x29F};

            u32* bind_id = i_actorP->getMidnaBindID(i);
            *bind_id = dComIfGp_particle_set(*bind_id, eff_id[i], i_effPos, &a_this->tevStr,
                                             &a_this->shape_angle, i_effSize, 0xFF, NULL,
                                             fopAcM_GetRoomNo(a_this), &e_prim[darkworld_check],
                                             &e_env[darkworld_check], NULL);
        }

        i_creatureP->startCreatureSound(Z2SE_MIDNA_BIND_LOCK_SUS, 0, -1);
        return 1;
    }

    i_actorP->setMidnaBindMode(0);
    return 0;
}

#endif
