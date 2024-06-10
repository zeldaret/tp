#ifndef D_A_B_BQ_H
#define D_A_B_BQ_H

#include "f_op/f_op_actor_mng.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_uty.h"

/**
 * @ingroup actors-enemies
 * @class b_bq_class
 * @brief Diababa
 *
 * @details Forest Temple dungeon boss.
 *
 */
class b_bq_class : public fopEn_enemy_c {
public:
    /* 805B9B3C */ b_bq_class();

private:
    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x05B8 */ mDoExt_brkAnm* field_0x5b8;
    /* 0x05BC */ mDoExt_btkAnm* field_0x5bc;
    /* 0x05C0 */ s8 field_0x5c0;
    /* 0x05C4 */ J3DModel* field_0x5c4;
    /* 0x05C8 */ s8 field_0x5c8;
    /* 0x05CC */ cXyz field_0x5cc;
    /* 0x05D8 */ f32 field_0x5d8;
    /* 0x05DC */ s16 field_0x5dc;
    /* 0x05E0 */ Z2CreatureEnemy mSound;
    /* 0x0684 */ Z2SoundObjSimple field_0x684;
    /* 0x06A4 */ Z2SoundObjSimple field_0x6a4;
    /* 0x06C4 */ int mAnmID;
    /* 0x06C8 */ s16 field_0x6c8;
    /* 0x06CA */ s16 mAction;
    /* 0x06CC */ s16 mMode;
    /* 0x06CE */ s16 mAngleToPlayer;
    /* 0x06D0 */ f32 mDistToPlayer;
    /* 0x06D4 */ s16 field_0x6d4[5];
    /* 0x06DE */ s16 field_0x6de;
    /* 0x06E0 */ int field_0x6e0;
    /* 0x06E4 */ int field_0x6e4;
    /* 0x06E8 */ fopAc_ac_c* mpMBactor;
    /* 0x06EC */ u8 field_0x6ec;
    /* 0x06ED */ u8 field_0x6ed;
    /* 0x06F0 */ f32 field_0x6f0;
    /* 0x06F4 */ s16 field_0x6f4;
    /* 0x06F6 */ s16 field_0x6f6;
    /* 0x06F8 */ s8 field_0x6f8;
    /* 0x06F9 */ u8 field_0x6f9;
    /* 0x06FA */ u8 field_0x6fa;
    /* 0x06FB */ u8 field_0x6fb;
    /* 0x06FC */ u8 field_0x6fc;
    /* 0x06FE */ s16 field_0x6fe;
    /* 0x0700 */ dCcD_Stts field_0x700;
    /* 0x073C */ dCcD_Sph field_0x73c;
    /* 0x0874 */ dCcD_Stts field_0x874;
    /* 0x08B0 */ dCcD_Sph field_0x8b0;
    /* 0x09E8 */ dCcD_Sph field_0x9e8;
    /* 0x0B20 */ dCcD_Sph field_0xb20[4];
    /* 0x1000 */ dCcD_Sph field_0x1000;
    /* 0x1138 */ cXyz field_0x1138;
    /* 0x1144 */ cXyz field_0x1144;
    /* 0x1150 */ s8 field_0x1150;
    /* 0x1151 */ u8 field_0x1151;
    /* 0x1154 */ dCcU_AtInfo mAtInfo;
    /* 0x1178 */ f32 field_0x1178;
    /* 0x117C */ u8 field_0x117C[0x1180 - 0x117C];
    /* 0x1180 */ u32 field_0x1180;
    /* 0x1184 */ u32 field_0x1184;
    /* 0x1188 */ u32 field_0x1188;
    /* 0x118C */ u32 field_0x118c;
    /* 0x1190 */ u32 field_0x1190;
    /* 0x1194 */ u32 field_0x1194[5];
    /* 0x11A8 */ u32 field_0x11a8[12];
    /* 0x11D8 */ f32 field_0x11d8;
    /* 0x11DC */ u8 field_0x11DC[0x11FC - 0x11DC];
    /* 0x11FC */ s8 field_0x11fc;
    /* 0x1200 */ u32 field_0x1200[4];
    /* 0x1210 */ u32 field_0x1210[2];
    /* 0x1218 */ u8 field_0x1218[0x1220 - 0x1218];
    /* 0x1220 */ u32 field_0x1220;
    /* 0x1224 */ u32 field_0x1224;
    /* 0x1228 */ u32 field_0x1228[4];
    /* 0x1238 */ s16 field_0x1238;
    /* 0x123A */ s16 field_0x123a;
    /* 0x123C */ u8 field_0x123C[0x1240 - 0x123C];
    /* 0x1240 */ cXyz field_0x1240;
    /* 0x124C */ cXyz field_0x124c;
    /* 0x1258 */ cXyz field_0x1258;
    /* 0x1264 */ cXyz field_0x1264;
    /* 0x1270 */ cXyz field_0x1270;
    /* 0x127C */ cXyz field_0x127c;
    /* 0x1288 */ cXyz field_0x1288;
    /* 0x1294 */ u8 field_0x1294[0x1298 - 0x1294];
    /* 0x1298 */ f32 field_0x1298;
    /* 0x129C */ f32 field_0x129c;
    /* 0x12A0 */ f32 field_0x12a0;
    /* 0x12A4 */ f32 field_0x12a4;
    /* 0x12A8 */ f32 field_0x12a8;
    /* 0x12AC */ s16 field_0x12ac;
    /* 0x12AE */ s16 field_0x12ae;
    /* 0x12B0 */ cXyz field_0x12b0;
    /* 0x12BC */ cXyz field_0x12bc;
    /* 0x12C8 */ cXyz field_0x12c8[16];
    /* 0x1388 */ int field_0x1388;
    /* 0x138C */ s16 field_0x138c;
    /* 0x138E */ s16 field_0x138e;
    /* 0x1390 */ s16 field_0x1390;
    /* 0x1392 */ u8 field_0x1392;
    /* 0x1393 */ s8 field_0x1393;
    /* 0x1394 */ u8 field_0x1394;
    /* 0x1395 */ u8 field_0x1395;
    /* 0x1396 */ u8 field_0x1396;
    /* 0x1397 */ s8 field_0x1397;
    /* 0x1398 */ f32 field_0x1398;
    /* 0x139C */ u8 field_0x139c;
};

STATIC_ASSERT(sizeof(b_bq_class) == 0x13A0);

class daB_BQ_HIO_c {
public:
    /* 805B356C */ daB_BQ_HIO_c();
    /* 805B9FFC */ virtual ~daB_BQ_HIO_c();

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 mModelSize;
    /* 0x0C */ s16 mChanceTime;
    /* 0x0E */ s16 mWaterSprayTime;
};

#endif /* D_A_B_BQ_H */
