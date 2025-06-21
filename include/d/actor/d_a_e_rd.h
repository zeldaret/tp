#ifndef D_A_E_RD_H
#define D_A_E_RD_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_jnt_col.h"
#include "d/d_msg_flow.h"
#include "d/d_path.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_rd_class
 * @brief Bulblin
 * 
 * @details 
 * 
 */
class e_rd_class : public fopEn_enemy_c {
public:
    /* 80517AE0 */ e_rd_class();

    /* 0x05AC */ request_of_phase_process_class mPhase;
    /* 0x05B4 */ s16 field_0x5b4;
    /* 0x05B6 */ u8 field_0x5b6;
    /* 0x05B7 */ u8 field_0x5b7;
    /* 0x05B8 */ u8 field_0x5b8;
    /* 0x05B9 */ u8 field_0x5b9;
    /* 0x05BA */ u8 field_0x5ba;
    /* 0x05BB */ u8 field_0x5bb;
    /* 0x05BC */ u8 field_0x5bc;
    /* 0x05BD */ s8 field_0x5bd;
    /* 0x05BE */ u8 field_0x5be[0x5d0 - 0x5be];
    /* 0x05D0 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x05D4 */ Z2CreatureEnemy mSound;
    /* 0x0678 */ char* mResName;
    /* 0x067C */ int mAnmID;
    /* 0x0680 */ int field_0x680;
    /* 0x0684 */ dJntCol_c mJntCol;
    /* 0x0694 */ J3DModel* field_0x694;
    /* 0x0698 */ mDoExt_McaMorfSO* field_0x698;
    /* 0x069C */ mDoExt_McaMorf* mpMorfHornAnm;
    /* 0x06A0 */ s8 field_0x6a0;
    /* 0x06A1 */ u8 field_0x6a1[3];
    /* 0x06A4 */ cXyz field_0x6a4;
    /* 0x06B0 */ cXyz field_0x6b0;
    /* 0x06BC */ u8 field_0x6bc[2];
    /* 0x06BE */ s16 field_0x6be;
    /* 0x06C0 */ s16 field_0x6c0;
    /* 0x06C2 */ s8 field_0x6c2;
    /* 0x06C3 */ u8 field_0x6c3;
    /* 0x06C4 */ J3DModel* field_0x6c4[2];
    /* 0x06CC */ f32 field_0x6cc;
    /* 0x06D0 */ f32 field_0x6d0;
    /* 0x06D4 */ J3DModel* field_0x6d4[14];
    /* 0x070C */ u8 field_0x70c[14];
    /* 0x071A */ u8 field_0x71a[2];
    /* 0x071C */ cXyz field_0x71c[14];
    /* 0x07C4 */ cXyz field_0x7c4[14];
    /* 0x086C */ csXyz field_0x86c[14];
    /* 0x08C0 */ u8 field_0x8c0[0x970 - 0x8c0];
    /* 0x0970 */ s16 field_0x970;
    /* 0x0972 */ s16 mAction;
    /* 0x0974 */ u8 field_0x974[4];
    /* 0x0978 */ f32 field_0x978;
    /* 0x097C */ s16 field_0x97c;
    /* 0x097E */ u8 field_0x97e[2];
    /* 0x0980 */ f32 field_0x980;
    /* 0x0984 */ u8 field_0x984[4];
    /* 0x0988 */ u32 field_0x988;
    /* 0x098C */ u32 mWbActorID;
    /* 0x0990 */ s16 field_0x990[4];
    /* 0x0998 */ s16 field_0x998;
    /* 0x099A */ s16 field_0x99a;
    /* 0x099C */ s16 field_0x99c;
    /* 0x099E */ s16 field_0x99e;
    /* 0x09A0 */ u8 field_0x9a0;
    /* 0x09A1 */ s8 field_0x9a1;
    /* 0x09A2 */ s8 field_0x9a2;
    /* 0x09A3 */ s8 field_0x9a3;
    /* 0x09A4 */ u8 field_0x9a4[2];
    /* 0x09A6 */ s16 field_0x9a6;
    /* 0x09A8 */ s16 field_0x9a8;
    /* 0x09AA */ u8 field_0x9aa;
    /* 0x09AB */ s8 field_0x9ab;
    /* 0x09AC */ s8 field_0x9ac;
    /* 0x09AD */ s8 field_0x9ad;
    /* 0x09AE */ u8 field_0x9ae[0x9bc - 0x9ae];
    /* 0x09BC */ s8 field_0x9bc;
    /* 0x09BD */ u8 field_0x9bd[0x9d4 - 0x9bd];
    /* 0x09D4 */ cXyz field_0x9d4;
    /* 0x09E0 */ u8 field_0x9e0[0x9ec - 0x9e0];
    /* 0x09EC */ f32 field_0x9ec;
    /* 0x09F0 */ u8 field_0x9f0[6];
    /* 0x09F6 */ s16 field_0x9f6;
    /* 0x09F8 */ u8 field_0x9f8;
    /* 0x09F9 */ u8 field_0x9f9[0xa0c - 0x9f9];
    /* 0x0A0C */ s16 field_0xa0c;
    /* 0x0A0E */ s16 field_0xa0e;
    /* 0x0A10 */ u8 field_0xa10[2];
    /* 0x0A12 */ s16 field_0xa12;
    /* 0x0A14 */ u8 field_0xa14[2];
    /* 0x0A16 */ s16 field_0xa16;
    /* 0x0A18 */ u8 field_0xa18[7];
    /* 0x0A1F */ s8 field_0xa1f;
    /* 0x0A20 */ u32 field_0xa20;
    /* 0x0A24 */ u8 field_0xa24[0xa32 - 0xa24];
    /* 0x0A32 */ csXyz field_0xa32[11];
    /* 0x0A74 */ csXyz field_0xa74[11];
    /* 0x0AB6 */ u8 field_0xab6[0xaec - 0xab6];
    /* 0x0AEC */ f32 field_0xaec;
    /* 0x0AF0 */ s16 field_0xaf0;
    /* 0x0AF2 */ s16 field_0xaf2;
    /* 0x0AF4 */ u8 field_0xaf4[7];
    /* 0x0AFB */ s8 field_0xafb;
    /* 0x0AFC */ dPath* mPath;
    /* 0x0B00 */ u8 field_0xb00[4];
    /* 0x0B04 */ dBgS_AcchCir mAcchCir;
    /* 0x0B44 */ dBgS_ObjAcch mObjAcch;
    /* 0x0D1C */ dCcD_Stts mStts;
    /* 0x0D58 */ dCcD_Sph field_0xd58[3];
    /* 0x1100 */ dCcD_Sph field_0x1100;
    /* 0x1238 */ dCcU_AtInfo mAtInfo;
    /* 0x125C */ u8 field_0x125c;
    /* 0x125D */ u8 field_0x125d[0x1274 - 0x125d];
    /* 0x1274 */ u32 field_0x1274[2];
    /* 0x127C */ cXyz field_0x127c;
    /* 0x1288 */ u32 field_0x1288[2];
    /* 0x1290 */ u8 field_0x1290[4];
    /* 0x1294 */ s8 field_0x1294;
    /* 0x1295 */ s8 field_0x1295;
    /* 0x1296 */ u8 field_0x1296;
    /* 0x1297 */ s8 field_0x1297;
    /* 0x1298 */ s8 field_0x1298;
    /* 0x1299 */ u8 field_0x1299;
    /* 0x129A */ s8 field_0x129a;
    /* 0x129B */ u8 field_0x129b[0x12a0 - 0x129b];
    /* 0x12A0 */ int field_0x12a0;
    /* 0x12A4 */ u8 field_0x12a4[4];
    /* 0x12A8 */ cXyz field_0x12a8;
    /* 0x12B4 */ cXyz field_0x12b4;
    /* 0x12C0 */ u8 field_0x12c0[0x12d8 - 0x12c0];
    /* 0x12D8 */ cXyz field_0x12d8;
    /* 0x12E4 */ cXyz field_0x12e4;
    /* 0x12F0 */ u8 field_0x12f0[0x130c - 0x12f0];
    /* 0x130C */ f32 field_0x130c;
    /* 0x1310 */ u8 field_0x1310[0x131c - 0x1310];
    /* 0x131C */ dMsgFlow_c mMsgFlow;
};

STATIC_ASSERT(sizeof(e_rd_class) == 0x1368);

class daE_RD_HIO_c : public JORReflexible {
public:
    /* 80504A6C */ daE_RD_HIO_c();
    /* 8051801C */ virtual ~daE_RD_HIO_c() {};

    void genMessage(JORMContext*);

    /* 0x00 */ s8 field_0x4;
    
    /* ライダー (Rider) */
    /* 0x08 */ f32 model_size;              // 基本サイズ          (Basic size)
    /* 0x0C */ f32 field_0xc;               // リーダーサイズ比     (Leader size ratio)
    /* 0x10 */ f32 movement_speed;          // 移動速度            (Movement speed)

    /* 〜〜  こん棒兵の場合  〜〜 (In the case of the club soldier) */
    /* 0x14 */ f32 dash_speed;              // 突進速度            (Rush speed)
    /* 0x18 */ f32 battle_init_range;       // 戦闘開始範囲         (Battle starting range)
    /* 0x1C */ f32 attack_init_range;       // 攻撃開始範囲         (Attack starting range)
    /* 0x20 */ f32 swing_speed;             // 振り速さ            (Swing speed)

    /* 〜〜  矢兵の場合  〜〜 (In the case of arrow soldiers) */
    /* 0x24 */ s16 field_0x24;              // 号令→構えの間        (Command → Preparation)
    /* 0x26 */ u8 padding[2];
    /* 0x28 */ f32 attack_range;            // 攻撃範囲            (Attack range)
    /* 0x2C */ f32 mounted_launch_distance; // 騎乗発射距離         (Mounted launch distance)
    /* 0x30 */ f32 wolf_falling_power_y;    // 狼倒れ力Y           (Wolf falling power Y)
    /* 0x34 */ f32 wolf_falling_power_z;    // 狼倒れ力Z           (Wolf falling power Z)

    /* 0x38 */ u8 field_0x38;
    /* 0x39 */ u8 invulnerable;             // 不死身              (Invulnerability)
    /* 0x3A */ u8 eye_polygon;              // 目ポリゴン          (Eye polygon)
    /* 0x3B */ u8 one_hit_kill;             // 一撃必殺            (One hit kill)
    /* 0x3C */ f32 field_0x3c;              // 一騎（ダ）サイズ     (One-man army (Da) size)
    /* 0x40 */ f32 jump_g;                  // 飛びＧ              (Jump G)
    /* 0x44 */ f32 jump_z;                  // 飛びＺ              (Jump Z)
    /* 0x48 */ f32 field_0x48;              // 飛びＺ（騎乗停止）   (Jump Z (Stop riding))
    /* 0x4C */ f32 jump_y;                  // 飛びＹ              (Jump Y)


};


#endif /* D_A_E_RD_H */
