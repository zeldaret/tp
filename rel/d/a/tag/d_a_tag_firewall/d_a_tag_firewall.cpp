/**
 * d_a_tag_firewall.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_firewall/d_a_tag_firewall.h"
#include "cmath.h"
#include "d/a/d_a_player.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_bomb.h"

struct Tag_FWall_n {
    static dCcD_SrcSph cc_sph_src;
    static u16 game_over_eff_name[];
};

/* 80D58938-80D58940 000078 0008+00 1/0 0/0 0/0 .text            daTag_FWall_Draw__FP13daTag_FWall_c
 */
static int daTag_FWall_Draw(daTag_FWall_c* i_this) {
    return 1;
}

/* 80D5950C-80D5954C 000000 0040+00 1/1 0/0 0/0 .data            cc_sph_src__11Tag_FWall_n */
dCcD_SrcSph Tag_FWall_n::cc_sph_src = {
    {
        {0x0, {{0x400, 0x1, 0xC}, {0x0, 0x0}, 0x0}},  // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0},          // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x2},           // mGObjTg
        {0x0},                                        // mGObjCo
    },                                                // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
    }                                // mSphAttr
};

/* 80D5954C-80D59554 000040 0008+00 1/1 0/0 0/0 .data            game_over_eff_name__11Tag_FWall_n
 */
u16 Tag_FWall_n::game_over_eff_name[] = {0x84CC, 0x84CD, 0x84CE, 0x84CF};

/* 80D595C0-80D595C4 000000 0004+00 1/1 0/0 0/0 .bss             fire_leader */
static daTag_FWall_c* fire_leader;

/* 80D595C4-80D595C8 000004 0004+00 2/2 0/0 0/0 .bss             None */
static u8 fire_num;

/* 80D58940-80D5901C 000080 06DC+00 1/1 0/0 0/0 .text            execute__13daTag_FWall_cFv */
int daTag_FWall_c::execute() {
    cXyz cam_eye = dCam_getBody()->Eye();
    cXyz pos;

    if (mSetGameoverEff) {
        pos.set(0.0f, 0.0f, 0.0f);

        for (int i = 0; i < 4; i++) {
            mUnkEmtrID0[i] = dComIfGp_particle_set(
                mUnkEmtrID0[i], Tag_FWall_n::game_over_eff_name[i], &pos, NULL, NULL);
        }

        return 1;
    }

    for (int i = 0; i <= fire_num; i++) {
        switch (mWallMode[i]) {
        case 0:
            mWallTimer[i] = 0;

            if (field_0x568 == 0xFF) {
                field_0x568 = i;

                for (int j = 0; j <= fire_num; j++) {
                    mCcSphs[j].Set(Tag_FWall_n::cc_sph_src);
                    mCcSphs[j].SetStts(&mCcStts);
                }
            }
            break;
        case 1:
            if (field_0x568 != 0xFF && mWallTimer[field_0x568] == mWallTimer[i]) {
                mWallMode[i] = 3;
                mCcSphs[i].OnAtSetBit();
            }
            break;
        case 2:
            mCcSphs[i].OnAtSetBit();

            if (i == field_0x568) {
                if (!dComIfGp_event_runCheck()) {
                    mWallTimer[field_0x568]++;
                }

                pos.set(0.0f, 0.0f, 0.0f);

                if (mWallTimer[field_0x568] > 850) {
                    mUnkEmtrID2 = dComIfGp_particle_set(mUnkEmtrID2, 0x84D2, &pos, NULL, NULL);
                }

                mUnkEmtrID1 = dComIfGp_particle_set(mUnkEmtrID1, 0x84BB, &pos, NULL, NULL);

                Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_BOMB_HOUSE_BURN, NULL,
                                              mWallTimer[field_0x568], 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                              0);

                if (mWallTimer[field_0x568] >= 900) {
                    daPy_getPlayerActorClass()->onForceGameOver();
                    mSetGameoverEff = true;
                    dComIfGp_getVibration().StartShock(8, 31, cXyz(0.0f, 1.0f, 0.0f));
                    return 1;
                }
            } else {
                mWallMode[i] = 3;
            }
        case 3:
            if (field_0x760[i] == 0) {
                mCcSphs[i].OnAtSetBit();

                pos = mWallPos[i];
                mCcSphs[i].SetC(pos);
                mCcSphs[i].SetR(90.0f);
                dComIfG_Ccsp()->Set(&mCcSphs[i]);
            }

            mUnkEmtrID0[i] =
                dComIfGp_particle_set(mUnkEmtrID0[i], 0x84BD, &mWallPos[i], NULL, NULL);

            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mUnkEmtrID0[i]);
            if (emitter != NULL) {
                pos = cam_eye - mWallPos[i];

                u8 target_alpha;
                if (pos.absXZ() < 250.0f && std::abs(pos.y) < 250.0f) {
                    target_alpha = 0;
                } else {
                    target_alpha = 0xFF;
                }

                u8 alpha = emitter->getGlobalAlpha();
                cLib_chaseUC(&alpha, target_alpha, 0x40);
                emitter->setGlobalAlpha(alpha);

                pos = mWallPos[i];
                if (alpha == 0) {
                    pos.y += 1000.0f;
                }

                emitter->setGlobalTranslation(JGeometry::TVec3<f32>(pos));
            }
            break;
        }

        if (mExplodeTime[i] != 0 && mWallTimer[field_0x568] == mExplodeTime[i]) {
            mExplodeTime[i] = 0;
            dBomb_c::createNormalBombExplode(&mWallPos[i]);
        }
    }

    return 1;
}

/* 80D59058-80D59078 000798 0020+00 1/0 0/0 0/0 .text daTag_FWall_Execute__FP13daTag_FWall_c */
static int daTag_FWall_Execute(daTag_FWall_c* i_this) {
    return i_this->execute();
}

/* 80D59078-80D59080 0007B8 0008+00 1/1 0/0 0/0 .text            _delete__13daTag_FWall_cFv */
int daTag_FWall_c::_delete() {
    return 1;
}

/* 80D59080-80D590A0 0007C0 0020+00 1/0 0/0 0/0 .text daTag_FWall_IsDelete__FP13daTag_FWall_c */
static int daTag_FWall_IsDelete(daTag_FWall_c* i_this) {
    return i_this->_delete();
}

/* 80D590A0-80D590A8 0007E0 0008+00 1/0 0/0 0/0 .text daTag_FWall_Delete__FP13daTag_FWall_c */
static int daTag_FWall_Delete(daTag_FWall_c* i_this) {
    return 1;
}

/* 80D590A8-80D592D0 0007E8 0228+00 1/1 0/0 0/0 .text            create__13daTag_FWall_cFv */
int daTag_FWall_c::create() {
    fopAcM_SetupActor(this, daTag_FWall_c);

    if (fire_num == 0) {
        field_0x568 = 0xFF;
        fire_leader = this;
        mCcStts.Init(0xFF, 0, this);
    }

    fire_leader->mWallTimer[fire_num] = (fopAcM_GetParam(this) >> 8) & 0xFFFF;
    fire_leader->mExplodeTime[fire_num] = current.angle.x & 0xFFFF;
    fire_leader->field_0x65c[fire_num] = fopAcM_GetParam(this);

    u8 temp_r0 = fopAcM_GetParam(this) >> 0x18;
    if (temp_r0 == 0xFF) {
        temp_r0 = 0;
    }

    fire_leader->field_0x760[fire_num] = temp_r0;

    fire_leader->mWallPos[fire_num] = current.pos;

    if (fire_leader->field_0x65c[fire_num] != 0xFF) {
        fire_leader->mWallMode[fire_num] = 0;
    } else {
        fire_leader->mWallMode[fire_num] = 1;
    }

    if (++fire_num > 1) {
        return cPhs_ERROR_e;
    }

    shape_angle.x = 0;
    current.angle.x = 0;
    return cPhs_COMPLEATE_e;
}

/* 80D594B4-80D594D4 000BF4 0020+00 1/0 0/0 0/0 .text daTag_FWall_Create__FP13daTag_FWall_c */
static int daTag_FWall_Create(daTag_FWall_c* i_this) {
    return i_this->create();
}

/* 80D59554-80D59574 -00001 0020+00 1/0 0/0 0/0 .data            l_daTag_FWall_Method */
static actor_method_class l_daTag_FWall_Method = {
    (process_method_func)daTag_FWall_Create,  (process_method_func)daTag_FWall_Delete,
    (process_method_func)daTag_FWall_Execute, (process_method_func)daTag_FWall_IsDelete,
    (process_method_func)daTag_FWall_Draw,
};

/* 80D59574-80D595A4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_FWall */
extern actor_process_profile_definition g_profile_Tag_FWall = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_Tag_FWall,
    &g_fpcLf_Method.mBase,
    sizeof(daTag_FWall_c),
    0,
    0,
    &g_fopAc_Method.base,
    197,
    &l_daTag_FWall_Method,
    0x60100,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};