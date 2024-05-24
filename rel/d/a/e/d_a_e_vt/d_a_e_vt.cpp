/**
 * @file d_a_e_vt.cpp
 * 
*/

#include "rel/d/a/e/d_a_e_vt/d_a_e_vt.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "SSystem/SComponent/c_math.h"
#include "Z2AudioLib/Z2Creature.h"
#include "c/c_damagereaction.h"
#include "cmath.h"
#include "d/a/d_a_player.h"
#include "d/cc/d_cc_uty.h"
#include "d/com/d_com_inf_game.h"
#include "d/s/d_s_play.h"
#include "dol2asm.h"

//
// Types:
//

class daE_VA_c : public fopEn_enemy_c {
public:
    enum ACTION_e {
        ACTION_DEMO_OP_WAIT_e,
        ACTION_DEMO_OP_e,
        ACTION_CLEAR_WAIT_e,
        ACTION_CLEAR_CHASE_e,
        ACTION_CLEAR_ATTACK_e,
        ACTION_TRANS_WAIT_e,
        ACTION_TRANS_ATTACK_e,
        ACTION_TRANS_CHASE_e,
        ACTION_TRANS_DAMAGE_e,
        ACTION_TRANS_BITE_DAMAGE_e,
        ACTION_TRANS_THROUGH_e,
        ACTION_OPACI_WAIT_e,
        ACTION_OPACI_FLY_e,
        ACTION_OPACI_DOWN_e,
        ACTION_OPACI_DOWN_DAMAGE_e,
        ACTION_OPACI_CHASE_e,
        ACTION_OPACI_ATTACK_e,
        ACTION_OPACI_DAMAGE_e,
        ACTION_OPACI_FLIP_e,
        ACTION_OPACI_FADE_AWAY_e,
        ACTION_OPACI_DEATH_e,
    };

    /* 807C267C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 807C284C */ static int JointCallBack(J3DJoint*, int);
    /* 807C2898 */ void calcJointNeck();
    /* 807C2A4C */ void calcJointSleeve();
    /* 807C3264 */ int draw();
    /* 807C3818 */ void setBck(int, u8, f32, f32);
    /* 807C38BC */ bool checkBck(int);
    /* 807C3918 */ void setActionMode(int, int);
    /* 807C39C4 */ int getWolfCutType();
    /* 807C3A1C */ void onSwordAtBit();
    /* 807C3A50 */ void offSwordShield();
    /* 807C3AB0 */ void setTransDamage(cXyz*);
    /* 807C3B58 */ void damage_check();
    /* 807C4844 */ void setFireEffect(int);
    /* 807C49B4 */ void setFootEffect();
    /* 807C4B54 */ void setWeponEffect();
    /* 807C4DFC */ void setBugsEffect();
    /* 807C4F10 */ void setWeponLandEffect();
    /* 807C4FCC */ void setWeponGlow();
    /* 807C50A4 */ void setWeponFlashScreen();
    /* 807C5188 */ void setMagicEffect(int);
    /* 807C5258 */ void setMagicHitEffect(int);
    /* 807C5338 */ void demo_skip(int);
    /* 807C53A8 */ static int DemoSkipCallBack(void*, int);
    /* 807C53DC */ f32 getRopeLength(int);
    /* 807C53FC */ void calcOpRopePos();
    /* 807C5CF0 */ void onRopeCutStatus(int, int, int);
    /* 807C5DF4 */ void setVibRope(f32, f32);
    /* 807C5EAC */ void setVibTag(int, int);
    /* 807C6164 */ void calcTagAngle();
    /* 807C638C */ void calcRopeFirePos();
    /* 807C6564 */ void executeDemoOpWait();
    /* 807C67A4 */ void executeDemoOp();
    /* 807C7534 */ void executeClearWait();
    /* 807C7640 */ void executeClearChase();
    /* 807C783C */ void executeClearAttack();
    /* 807C7A8C */ void executeTransWait();
    /* 807C7C74 */ void executeTransChase();
    /* 807C7ED4 */ void executeTransAttack();
    /* 807C839C */ void executeTransBiteDamage();
    /* 807C8860 */ void executeTransDamage();
    /* 807C8A84 */ void executeTransThrough();
    /* 807C8B78 */ void executeOpaciWait();
    /* 807C915C */ void executeOpaciFly();
    /* 807C9A40 */ void executeOpaciDamage();
    /* 807C9C8C */ void executeOpaciChase();
    /* 807CA364 */ void executeOpaciAttack();
    /* 807CA73C */ void executeOpaciDown();
    /* 807CAA80 */ void executeOpaciDownDamage();
    /* 807CACE0 */ void executeOpaciFlip();
    /* 807CADB8 */ void executeOpaciFadeAway();
    /* 807CB1C4 */ void executeOpaciDeath();
    /* 807CB8CC */ void calcMagicMove();
    /* 807CBC00 */ void setAlphaType();
    /* 807CC004 */ void action();
    /* 807CC4D0 */ void mtx_set();
    /* 807CC864 */ void cc_set();
    /* 807CCD24 */ int execute();
    /* 807CCF64 */ int _delete();
    /* 807CD048 */ int CreateHeap();
    /* 807CD668 */ int create();
    /* 807CDAD8 */ daE_VA_c();

    /* 0x005AC */ request_of_phase_process_class mPhase;
    /* 0x005B4 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x005B8 */ mDoExt_McaMorfSO* mpEndEfMorf;
    /* 0x005BC */ J3DModel* mpWeaponModel;
    /* 0x005C0 */ J3DModel* mpCardModels[40];
    /* 0x00660 */ csXyz field_0x660[40];
    /* 0x00750 */ csXyz field_0x750[40];
    /* 0x00840 */ csXyz field_0x840[40];
    /* 0x00930 */ u8 mCardModelType[40];
    /* 0x00958 */ mDoExt_3DlineMat1_c mRope;
    /* 0x00994 */ cXyz field_0x994[100];
    /* 0x00E44 */ csXyz field_0xe44[100];
    /* 0x0109C */ u8 field_0x109c[10];
    /* 0x010A6 */ u8 field_0x10A6[0x01100 - 0x010A6];
    /* 0x01100 */ u8 field_0x1100;
    /* 0x01101 */ u8 field_0x1101[0x01104 - 0x01101];
    /* 0x01104 */ f32 field_0x1104[10];
    /* 0x0112C */ s16 field_0x112c[10];
    /* 0x01140 */ cXyz field_0x1140[10];
    /* 0x011B8 */ f32 field_0x11b8[10];
    /* 0x011E0 */ cXyz field_0x11e0[2];
    /* 0x011F8 */ cXyz field_0x11f8[2];
    /* 0x01210 */ cXyz field_0x1210[2];
    /* 0x01228 */ u8 field_0x1228[3];
    /* 0x0122C */ cXyz field_0x122c;
    /* 0x01238 */ csXyz field_0x1238;
    /* 0x0123E */ s16 field_0x123e;
    /* 0x01240 */ u8 field_0x1240;
    /* 0x01244 */ mDoExt_invisibleModel mInvisModel;
    /* 0x0124C */ mDoExt_brkAnm* mpWeaponBrk;
    /* 0x01250 */ mDoExt_brkAnm* mpEndEfBrk;
    /* 0x01254 */ Z2CreatureEnemy mSound;
    /* 0x012F8 */ cXyz field_0x12f8;
    /* 0x01304 */ csXyz field_0x1304;
    /* 0x0130A */ u8 field_0x130A[0x0130C - 0x0130A];
    /* 0x0130C */ s16 field_0x130c;
    /* 0x0130E */ s16 field_0x130e;
    /* 0x01310 */ f32 field_0x1310;
    /* 0x01314 */ f32 field_0x1314;
    /* 0x01318 */ f32 field_0x1318;
    /* 0x0131C */ int mAction;
    /* 0x01320 */ int mMode;
    /* 0x01324 */ int field_0x1324;
    /* 0x01328 */ u8 field_0x1328[0x0132C - 0x01328];
    /* 0x0132C */ u32 field_0x132c;
    /* 0x01330 */ s16 field_0x1330;
    /* 0x01332 */ s16 field_0x1332;
    /* 0x01334 */ s16 field_0x1334;
    /* 0x01336 */ s16 field_0x1336;
    /* 0x01338 */ s16 field_0x1338;
    /* 0x0133A */ s16 field_0x133a;
    /* 0x0133C */ s16 field_0x133c;
    /* 0x0133E */ s16 field_0x133e;
    /* 0x01340 */ int field_0x1340;
    /* 0x01344 */ int field_0x1344;
    /* 0x01348 */ int field_0x1348;
    /* 0x0134C */ int field_0x134c;
    /* 0x01350 */ int field_0x1350;
    /* 0x01354 */ int field_0x1354;
    /* 0x01358 */ int field_0x1358;
    /* 0x0135C */ int field_0x135c;
    /* 0x01360 */ u8 field_0x1360[0x01364 - 0x01360];
    /* 0x01364 */ int field_0x1364;
    /* 0x01368 */ int field_0x1368;
    /* 0x0136C */ u8 field_0x136C[0x01370 - 0x0136C];
    /* 0x01370 */ int field_0x1370;
    /* 0x01374 */ int field_0x1374;
    /* 0x01378 */ u8 field_0x1378;
    /* 0x01379 */ u8 field_0x1379;
    /* 0x0137A */ u8 field_0x137a;
    /* 0x0137B */ u8 field_0x137b;
    /* 0x0137C */ u8 field_0x137c;
    /* 0x0137D */ u8 field_0x137d;
    /* 0x0137E */ u8 field_0x137e;
    /* 0x0137F */ u8 field_0x137f;
    /* 0x01380 */ u8 field_0x1380;
    /* 0x01381 */ u8 field_0x1381;
    /* 0x01382 */ u8 field_0x1382;
    /* 0x01383 */ u8 field_0x1383;
    /* 0x01384 */ u8 field_0x1384;
    /* 0x01385 */ u8 field_0x1385;
    /* 0x01386 */ u8 field_0x1386;
    /* 0x01387 */ u8 field_0x1387;
    /* 0x01388 */ u8 field_0x1388;
    /* 0x01389 */ u8 field_0x1389;
    /* 0x0138A */ u8 field_0x138a;
    /* 0x0138B */ u8 field_0x138b;
    /* 0x0138C */ u8 field_0x138c;
    /* 0x0138D */ u8 field_0x138d;
    /* 0x0138E */ u8 field_0x138e;
    /* 0x0138F */ u8 field_0x138f;
    /* 0x01390 */ u8 field_0x1390;
    /* 0x01391 */ u8 field_0x1391;
    /* 0x01392 */ u8 field_0x1392;
    /* 0x01393 */ u8 field_0x1393;
    /* 0x01394 */ s16 field_0x1394;
    /* 0x01396 */ s16 field_0x1396;
    /* 0x01398 */ s16 field_0x1398;
    /* 0x0139C */ mDoExt_3DlineMat0_c field_0x139c;
    /* 0x013B8 */ cXyz field_0x13b8;
    /* 0x013C4 */ cXyz field_0x13c4;
    /* 0x013D0 */ cXyz field_0x13d0[5];
    /* 0x0140C */ cXyz field_0x140c[5];
    /* 0x01448 */ csXyz field_0x1448[5];
    /* 0x01466 */ csXyz field_0x1466[5];
    /* 0x01484 */ u8 field_0x1484;
    /* 0x01485 */ u8 field_0x1485;
    /* 0x01486 */ u8 field_0x1486;
    /* 0x01488 */ cXyz field_0x1488;
    /* 0x01494 */ cXyz field_0x1494;
    /* 0x014A0 */ f32 field_0x14a0;
    /* 0x014A4 */ f32 field_0x14a4;
    /* 0x014A8 */ f32 field_0x14a8;
    /* 0x014AC */ s16 field_0x14ac;
    /* 0x014B0 */ f32 field_0x14b0;
    /* 0x014B4 */ u8 field_0x14B4[0x014B8 - 0x014B4];
    /* 0x014B8 */ dBgS_AcchCir mAcchCir;
    /* 0x014F8 */ dBgS_ObjAcch mAcch;
    /* 0x016D0 */ dBgS_AcchCir field_0x16d0[2];
    /* 0x01750 */ dBgS_ObjAcch field_0x1750[2];
    /* 0x01B00 */ dCcD_Stts field_0x1b00;
    /* 0x01B3C */ dCcD_Stts field_0x1b3c;
    /* 0x01B78 */ dCcD_Sph mNeckSph;
    /* 0x01CB0 */ dCcD_Cyl mBodyCyls[3];
    /* 0x02064 */ dCcD_Sph mAttackSphs[4];
    /* 0x02544 */ dCcD_Sph mLineSphs[190];
    /* 0x10CD4 */ dCcD_Sph mMagicSphs[2];
    /* 0x10F44 */ dCcU_AtInfo mAtInfo;
    /* 0x10F68 */ u32 field_0x10f68[3];
    /* 0x10F74 */ u32 field_0x10f74;
    /* 0x10F78 */ u32 field_0x10f78[2];
    /* 0x10F80 */ u32 field_0x10f80[3];
    /* 0x10F8C */ u8 field_0x10F8C[0x10FF8 - 0x10F8C];
    /* 0x10FF8 */ u8 mInitHIO;
};

class daE_VA_HIO_c {
public:
    /* 807C25EC */ daE_VA_HIO_c();
    /* 807CE2AC */ virtual ~daE_VA_HIO_c();

    /* 0x04 */ s8 field_0x04;
    /* 0x08 */ f32 mModelSize;
    /* 0x0C */ f32 mAttackRange;
    /* 0x10 */ f32 mBiteCount;
    /* 0x14 */ f32 mCircleAttackRadius;
    /* 0x18 */ f32 mMaterializeTime;
    /* 0x1C */ f32 mDownTime;
    /* 0x20 */ f32 mDownHP;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 mKRegLightR;
    /* 0x34 */ f32 mKRegLightG;
    /* 0x38 */ f32 mKRegLightB;
    /* 0x3C */ f32 mKRegLightA;
};

static void setMidnaBindEffect(fopEn_enemy_c*, Z2CreatureEnemy*, cXyz*, cXyz*);

//
// Forward References:
//

extern "C" void __ct__12daE_VA_HIO_cFv();
extern "C" void ctrlJoint__8daE_VA_cFP8J3DJointP8J3DModel();
extern "C" void JointCallBack__8daE_VA_cFP8J3DJointi();
extern "C" void calcJointNeck__8daE_VA_cFv();
extern "C" void calcJointSleeve__8daE_VA_cFv();
extern "C" void draw__8daE_VA_cFv();
extern "C" static void daE_VA_Draw__FP8daE_VA_c();
extern "C" void setBck__8daE_VA_cFiUcff();
extern "C" void checkBck__8daE_VA_cFi();
extern "C" void setActionMode__8daE_VA_cFii();
extern "C" void getWolfCutType__8daE_VA_cFv();
extern "C" void onSwordAtBit__8daE_VA_cFv();
extern "C" void offSwordShield__8daE_VA_cFv();
extern "C" void setTransDamage__8daE_VA_cFP4cXyz();
extern "C" void damage_check__8daE_VA_cFv();
extern "C" void __as__8dCcD_CylFRC8dCcD_Cyl();
extern "C" void __as__12dCcD_GObjInfFRC12dCcD_GObjInf();
extern "C" void __dt__8dCcD_CylFv();
extern "C" void __dt__8cM3dGCylFv();
extern "C" void __dt__8cM3dGAabFv();
extern "C" void setFireEffect__8daE_VA_cFi();
extern "C" void setFootEffect__8daE_VA_cFv();
extern "C" void setWeponEffect__8daE_VA_cFv();
extern "C" void setBugsEffect__8daE_VA_cFv();
extern "C" void setWeponLandEffect__8daE_VA_cFv();
extern "C" void setWeponGlow__8daE_VA_cFv();
extern "C" void setWeponFlashScreen__8daE_VA_cFv();
extern "C" void setMagicEffect__8daE_VA_cFi();
extern "C" void setMagicHitEffect__8daE_VA_cFi();
extern "C" void demo_skip__8daE_VA_cFi();
extern "C" void DemoSkipCallBack__8daE_VA_cFPvi();
extern "C" void getRopeLength__8daE_VA_cFi();
extern "C" void calcOpRopePos__8daE_VA_cFv();
extern "C" void onRopeCutStatus__8daE_VA_cFiii();
extern "C" void setVibRope__8daE_VA_cFff();
extern "C" void setVibTag__8daE_VA_cFii();
extern "C" void calcTagAngle__8daE_VA_cFv();
extern "C" void calcRopeFirePos__8daE_VA_cFv();
extern "C" void executeDemoOpWait__8daE_VA_cFv();
extern "C" void executeDemoOp__8daE_VA_cFv();
extern "C" void executeClearWait__8daE_VA_cFv();
extern "C" void executeClearChase__8daE_VA_cFv();
extern "C" void executeClearAttack__8daE_VA_cFv();
extern "C" void executeTransWait__8daE_VA_cFv();
extern "C" void executeTransChase__8daE_VA_cFv();
extern "C" void executeTransAttack__8daE_VA_cFv();
extern "C" void executeTransBiteDamage__8daE_VA_cFv();
extern "C" void executeTransDamage__8daE_VA_cFv();
extern "C" void executeTransThrough__8daE_VA_cFv();
extern "C" void executeOpaciWait__8daE_VA_cFv();
extern "C" void executeOpaciFly__8daE_VA_cFv();
extern "C" void executeOpaciDamage__8daE_VA_cFv();
extern "C" void executeOpaciChase__8daE_VA_cFv();
extern "C" void executeOpaciAttack__8daE_VA_cFv();
extern "C" void executeOpaciDown__8daE_VA_cFv();
extern "C" void executeOpaciDownDamage__8daE_VA_cFv();
extern "C" void executeOpaciFlip__8daE_VA_cFv();
extern "C" void executeOpaciFadeAway__8daE_VA_cFv();
extern "C" void executeOpaciDeath__8daE_VA_cFv();
extern "C" void calcMagicMove__8daE_VA_cFv();
extern "C" void setAlphaType__8daE_VA_cFv();
extern "C" void action__8daE_VA_cFv();
extern "C" void mtx_set__8daE_VA_cFv();
extern "C" void cc_set__8daE_VA_cFv();
extern "C" void execute__8daE_VA_cFv();
extern "C" static void daE_VA_Execute__FP8daE_VA_c();
extern "C" static bool daE_VA_IsDelete__FP8daE_VA_c();
extern "C" void _delete__8daE_VA_cFv();
extern "C" static void daE_VA_Delete__FP8daE_VA_c();
extern "C" void CreateHeap__8daE_VA_cFv();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void useHeapInit__FP10fopAc_ac_c();
extern "C" void create__8daE_VA_cFv();
extern "C" void __ct__8daE_VA_cFv();
extern "C" void __ct__8dCcD_SphFv();
extern "C" void __ct__8dCcD_CylFv();
extern "C" void __dt__8dCcD_SphFv();
extern "C" void __dt__8cM3dGSphFv();
extern "C" void __dt__10dCcD_GSttsFv();
extern "C" void __ct__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_ObjAcchFv();
extern "C" void __dt__12dBgS_AcchCirFv();
extern "C" void __ct__4cXyzFv();
extern "C" void __ct__5csXyzFv();
extern "C" static void daE_VA_Create__FP8daE_VA_c();
extern "C" void __dt__10cCcD_GSttsFv();
extern "C" void __dt__12daE_VA_HIO_cFv();
extern "C" void __sinit_d_a_e_vt_cpp();
extern "C" static void func_807CE7E0();
extern "C" static void func_807CE7E8();
extern "C" static void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz();
extern "C" void __dt__5csXyzFv();
extern "C" void __dt__4cXyzFv();
extern "C" void checkNowWolf__9daPy_py_cFv();
extern "C" extern char const* const d_a_e_vt__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotS__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void mDoMtx_MtxToRot__FPA4_CfP5csXyz();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void transM__14mDoMtx_stack_cFRC4cXyz();
extern "C" void scaleM__14mDoMtx_stack_cFfff();
extern "C" void ZXYrotM__14mDoMtx_stack_cFRC5csXyz();
extern "C" void play__14mDoExt_baseAnmFv();
extern "C" void init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss();
extern "C" void entry__13mDoExt_brkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void create__21mDoExt_invisibleModelFP8J3DModelUc();
extern "C" void entryDL__21mDoExt_invisibleModelFP4cXyz();
extern "C" void
__ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl();
extern "C" void setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff();
extern "C" void play__16mDoExt_McaMorfSOFUlSc();
extern "C" void entryDL__16mDoExt_McaMorfSOFv();
extern "C" void modelCalc__16mDoExt_McaMorfSOFv();
extern "C" void init__19mDoExt_3DlineMat0_cFUsUsi();
extern "C" void init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi();
extern "C" void update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c();
extern "C" void setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_SetMin__FP10fopAc_ac_cfff();
extern "C" void fopAcM_SetMax__FP10fopAc_ac_cfff();
extern "C" void fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz();
extern "C" void fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorAngleX__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs();
extern "C" void fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc();
extern "C" void fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData();
extern "C" void dStage_changeScene__FifUlScsi();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void dComIfGp_getReverb__Fi();
extern "C" void dComIfGs_onOneZoneSwitch__Fii();
extern "C" void dComIfGs_offOneZoneSwitch__Fii();
extern "C" void dComIfGs_isOneZoneSwitch__Fii();
extern "C" void
dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj();
extern "C" void onDungeonItem__12dSv_memBit_cFi();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void getRes__14dRes_control_cFPCclP11dRes_info_ci();
extern "C" void reset__14dEvt_control_cFv();
extern "C" void setSkipProc__14dEvt_control_cFPvPFPvi_ii();
extern "C" void onSkipFade__14dEvt_control_cFv();
extern "C" void getEmitter__Q213dPa_control_c7level_cFUl();
extern "C" void setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl();
extern "C" void
set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void
set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf();
extern "C" void addReal__21dDlst_shadowControl_cFUlP8J3DModel();
extern "C" void StartShock__12dVibration_cFii4cXyz();
extern "C" void StartQuake__12dVibration_cFii4cXyz();
extern "C" void StopQuake__12dVibration_cFi();
extern "C" void __ct__12dBgS_AcchCirFv();
extern "C" void SetWall__12dBgS_AcchCirFff();
extern "C" void __dt__9dBgS_AcchFv();
extern "C" void __ct__9dBgS_AcchFv();
extern "C" void Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz();
extern "C" void CrrPos__9dBgS_AcchFR4dBgS();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void __ct__10dCcD_GSttsFv();
extern "C" void Move__10dCcD_GSttsFv();
extern "C" void Init__9dCcD_SttsFiiP10fopAc_ac_c();
extern "C" void __ct__12dCcD_GObjInfFv();
extern "C" void __dt__12dCcD_GObjInfFv();
extern "C" void ChkAtHit__12dCcD_GObjInfFv();
extern "C" void ChkTgHit__12dCcD_GObjInfFv();
extern "C" void GetTgHitObj__12dCcD_GObjInfFv();
extern "C" void Set__8dCcD_CylFRC11dCcD_SrcCyl();
extern "C" void Set__8dCcD_SphFRC11dCcD_SrcSph();
extern "C" void def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c();
extern "C" void cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo();
extern "C" void checkMasterSwordEquip__9daPy_py_cFv();
extern "C" void checkNowWolfEyeUp__9daPy_py_cFv();
extern "C" void Start__9dCamera_cFv();
extern "C" void Stop__9dCamera_cFv();
extern "C" void SetTrimSize__9dCamera_cFl();
extern "C" void Set__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyzfs();
extern "C" void Reset__9dCamera_cF4cXyz4cXyz();
extern "C" void dCam_getBody__Fv();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void dKy_custom_colset__FUcUcf();
extern "C" void dKy_darkworld_check__Fv();
extern "C" void Set__4cCcSFP8cCcD_Obj();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void __dv__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void cM_rndF__Ff();
extern "C" void __dt__13cBgS_PolyInfoFv();
extern "C" void __dt__8cM3dGCirFv();
extern "C" void SetC__8cM3dGCylFRC4cXyz();
extern "C" void SetH__8cM3dGCylFf();
extern "C" void SetR__8cM3dGCylFf();
extern "C" void SetC__8cM3dGSphFRC4cXyz();
extern "C" void SetR__8cM3dGSphFf();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void cLib_addCalc2__FPffff();
extern "C" void cLib_addCalcAngleS__FPsssss();
extern "C" void cLib_chaseUC__FPUcUcUc();
extern "C" void cLib_chaseF__FPfff();
extern "C" void cLib_chasePos__FP4cXyzRC4cXyzf();
extern "C" void cLib_chasePosXZ__FP4cXyzRC4cXyzf();
extern "C" void cLib_chaseAngleS__FPsss();
extern "C" void cLib_targetAngleY__FPC3VecPC3Vec();
extern "C" void cLib_targetAngleX__FPC4cXyzPC4cXyz();
extern "C" void cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz();
extern "C" void deleteAllParticle__14JPABaseEmitterFv();
extern "C" void func_80280808();
extern "C" void seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc();
extern "C" void subBgmStart__8Z2SeqMgrFUl();
extern "C" void subBgmStop__8Z2SeqMgrFv();
extern "C" void bgmStreamPrepare__8Z2SeqMgrFUl();
extern "C" void bgmStreamPlay__8Z2SeqMgrFv();
extern "C" void bgmStreamStop__8Z2SeqMgrFUl();
extern "C" void changeSubBgmStatus__8Z2SeqMgrFl();
extern "C" void __ct__15Z2CreatureEnemyFv();
extern "C" void init__15Z2CreatureEnemyFP3VecP3VecUcUc();
extern "C" void setEnemyName__15Z2CreatureEnemyFPCc();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void checkPass__12J3DFrameCtrlFf();
extern "C" void __copy();
extern "C" void __construct_array();
extern "C" void _savegpr_14();
extern "C" void _savegpr_17();
extern "C" void _savegpr_19();
extern "C" void _savegpr_22();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_26();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_14();
extern "C" void _restgpr_17();
extern "C" void _restgpr_19();
extern "C" void _restgpr_22();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_26();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__19mDoExt_3DlineMat1_c[5];
extern "C" extern void* __vt__19mDoExt_3DlineMat0_c[5];
extern "C" extern void* __vt__8dCcD_Sph[36];
extern "C" extern void* __vt__8dCcD_Cyl[36];
extern "C" extern void* __vt__9dCcD_Stts[11];
extern "C" extern void* __vt__12cCcD_SphAttr[25];
extern "C" extern void* __vt__12cCcD_CylAttr[25];
extern "C" extern void* __vt__14cCcD_ShapeAttr[22];
extern "C" extern void* __vt__9cCcD_Stts[8];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mSimpleTexObj__21dDlst_shadowControl_c[32];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" extern u8 j3dZModeTable[96];
extern "C" u8 sincosTable___5JMath[65536];
extern "C" extern u8 struct_80450C98[4];
extern "C" u8 m_midnaActor__9daPy_py_c[4];
extern "C" u8 mAudioMgrPtr__10Z2AudioMgr[4 + 4 /* padding */];
extern "C" void __register_global_object();

//
// Declarations:
//

/* ############################################################################################## */
/* 807CECA8-807CECAC 000000 0004+00 36/36 0/0 0/0 .rodata          @3907 */
SECTION_RODATA static f32 const lit_3907 = 100.0f;
COMPILER_STRIP_GATE(0x807CECA8, &lit_3907);

/* 807CECAC-807CECB0 000004 0004+00 4/36 0/0 0/0 .rodata          @3908 */
SECTION_RODATA static u8 const lit_3908[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x807CECAC, &lit_3908);

/* 807CECB0-807CECB8 000008 0004+04 11/34 0/0 0/0 .rodata          @3909 */
SECTION_RODATA static f32 const lit_3909[1 + 1 /* padding */] = {
    1.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807CECB0, &lit_3909);

/* 807CECB8-807CECC0 000010 0008+00 0/3 0/0 0/0 .rodata          @3910 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3910[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CECB8, &lit_3910);
#pragma pop

/* 807CECC0-807CECC8 000018 0008+00 0/3 0/0 0/0 .rodata          @3911 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3911[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CECC0, &lit_3911);
#pragma pop

/* 807CECC8-807CECD0 000020 0008+00 0/3 0/0 0/0 .rodata          @3912 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_3912[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CECC8, &lit_3912);
#pragma pop

/* 807CECD0-807CECD4 000028 0004+00 0/2 0/0 0/0 .rodata          @3913 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3913 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x807CECD0, &lit_3913);
#pragma pop

/* 807CECD4-807CECD8 00002C 0004+00 0/1 0/0 0/0 .rodata          @3928 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3928 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CECD4, &lit_3928);
#pragma pop

/* 807CECD8-807CECDC 000030 0004+00 0/3 0/0 0/0 .rodata          @3929 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3929 = 500.0f;
COMPILER_STRIP_GATE(0x807CECD8, &lit_3929);
#pragma pop

/* 807CECDC-807CECE0 000034 0004+00 0/1 0/0 0/0 .rodata          @3930 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3930 = 7.0f;
COMPILER_STRIP_GATE(0x807CECDC, &lit_3930);
#pragma pop

/* 807CECE0-807CECE4 000038 0004+00 0/1 0/0 0/0 .rodata          @3931 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3931 = 2500.0f;
COMPILER_STRIP_GATE(0x807CECE0, &lit_3931);
#pragma pop

/* 807CECE4-807CECE8 00003C 0004+00 0/3 0/0 0/0 .rodata          @3932 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3932 = 1000.0f;
COMPILER_STRIP_GATE(0x807CECE4, &lit_3932);
#pragma pop

/* 807CECE8-807CECEC 000040 0004+00 0/1 0/0 0/0 .rodata          @3933 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3933 = 800.0f;
COMPILER_STRIP_GATE(0x807CECE8, &lit_3933);
#pragma pop

/* 807CECEC-807CECF0 000044 0004+00 1/3 0/0 0/0 .rodata          @3934 */
SECTION_RODATA static f32 const lit_3934 = 0.5f;
COMPILER_STRIP_GATE(0x807CECEC, &lit_3934);

/* 807CECF0-807CECF4 000048 0004+00 0/16 0/0 0/0 .rodata          @3935 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3935 = 3.0f;
COMPILER_STRIP_GATE(0x807CECF0, &lit_3935);
#pragma pop

/* 807CECF4-807CECF8 00004C 0004+00 0/2 0/0 0/0 .rodata          @3936 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3936 = -50.0f;
COMPILER_STRIP_GATE(0x807CECF4, &lit_3936);
#pragma pop

/* 807CECF8-807CECFC 000050 0004+00 0/6 0/0 0/0 .rodata          @3937 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3937 = 40.0f;
COMPILER_STRIP_GATE(0x807CECF8, &lit_3937);
#pragma pop

/* 807CECFC-807CED00 000054 0004+00 0/1 0/0 0/0 .rodata          @3938 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3938 = 35.0f;
COMPILER_STRIP_GATE(0x807CECFC, &lit_3938);
#pragma pop

/* 807CED00-807CED04 000058 0004+00 0/1 0/0 0/0 .rodata          @3939 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3939 = 82.0f;
COMPILER_STRIP_GATE(0x807CED00, &lit_3939);
#pragma pop

/* 807CED04-807CED08 00005C 0004+00 0/2 0/0 0/0 .rodata          @3940 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_3940 = 210.0f;
COMPILER_STRIP_GATE(0x807CED04, &lit_3940);
#pragma pop

/* 807CEF08-807CEF14 000000 000C+00 3/3 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 807CEF14-807CEF28 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 807CEF28-807CEF30 000020 0008+00 0/1 0/0 0/0 .data            e_prim$3786 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_prim[8] = {
    0xFF, 0x78, 0x00, 0x00, 0xFF, 0x64, 0x78, 0x00,
};
#pragma pop

/* 807CEF30-807CEF38 000028 0008+00 0/1 0/0 0/0 .data            e_env$3787 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 e_env[8] = {
    0x5A, 0x2D, 0x2D, 0x00, 0x3C, 0x1E, 0x1E, 0x00,
};
#pragma pop

/* 807CEF38-807CEF40 000030 0006+02 0/1 0/0 0/0 .data            eff_id$3795 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 eff_id[6 + 2 /* padding */] = {
    0x02,
    0x9D,
    0x02,
    0x9E,
    0x02,
    0x9F,
    /* padding */
    0x00,
    0x00,
};
#pragma pop

/* 807CEF40-807CEF80 000038 0040+00 0/1 0/0 0/0 .data cc_vt_neck_src__22@unnamed@d_a_e_vt_cpp@ */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_vt_neck_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x80000000, 0x3}, 0x0}},  // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0},               // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4},                // mGObjTg
        {0x0},                                             // mGObjCo
    },                                                     // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
    }  // mSphAttr
};
#pragma pop

/* 807CEF80-807CEFC4 000078 0044+00 0/1 0/0 0/0 .data cc_vt_body_src__22@unnamed@d_a_e_vt_cpp@ */
#pragma push
#pragma force_active on
static dCcD_SrcCyl cc_vt_body_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x43}, 0x75}},  // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0},                 // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        150.0f,              // mRadius
        158.0f               // mHeight
    }  // mCyl
};
#pragma pop

/* 807CEFC4-807CF004 0000BC 0040+00 0/1 0/0 0/0 .data cc_vt_attack_src__22@unnamed@d_a_e_vt_cpp@
 */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_vt_attack_src = {
    {
        {0x0, {{0x100000, 0x2, 0xD}, {0xD8FBFDFF, 0x43}, 0x75}},  // mObj
        {dCcD_SE_METAL, 0x0, 0x1, 0x0, 0x0},                      // mGObjAt
        {dCcD_SE_NONE, 0x2, 0x0, 0x0, 0x2},                       // mGObjTg
        {0x0},                                                    // mGObjCo
    },                                                            // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
    }  // mSphAttr
};
#pragma pop

/* 807CF004-807CF044 0000FC 0040+00 0/1 0/0 0/0 .data cc_vt_line_src__22@unnamed@d_a_e_vt_cpp@ */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_vt_line_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xD8FBFDFF, 0x43}, 0x75}},  // mObj
        {dCcD_SE_METAL, 0x0, 0x0, 0x0, 0x0},                 // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
    }  // mSphAttr
};
#pragma pop

/* 807CF044-807CF084 00013C 0040+00 0/1 0/0 0/0 .data cc_vt_magic_src__22@unnamed@d_a_e_vt_cpp@ */
#pragma push
#pragma force_active on
static dCcD_SrcSph cc_vt_magic_src = {
    {
        {0x0, {{0x400, 0x2, 0xD}, {0xD8FBFDFF, 0x0}, 0x0}},  // mObj
        {0xD, 0x0, 0x1, 0x0, 0x0},                           // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x6},                  // mGObjTg
        {0x0},                                               // mGObjCo
    },                                                       // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 40.0f}  // mSph
    }  // mSphAttr
};
#pragma pop

/* 807CF084-807CF0AC 00017C 0027+01 1/1 0/0 0/0 .data va_tag_set_size__22@unnamed@d_a_e_vt_cpp@ */
SECTION_DATA static u8 va_tag_set_size[39] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x02, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x02, 0x02, 0x02, 0x02, 0x02,
};

/* 807CF0AC-807CF0D4 0001A4 0027+01 3/4 0/0 0/0 .data va_tag_set_num__22@unnamed@d_a_e_vt_cpp@ */
SECTION_DATA static u8 va_tag_set_num[39] = {
    0x01, 0x0C, 0x16, 0x1F, 0x21, 0x2A, 0x2B, 0x02, 0x04, 0x0D, 0x0F, 0x15, 0x18,
    0x20, 0x2C, 0x03, 0x05, 0x06, 0x0B, 0x10, 0x17, 0x19, 0x1A, 0x22, 0x24, 0x29,
    0x2D, 0x34, 0x49, 0x52, 0x36, 0x3E, 0x54, 0x5C, 0x39, 0x41, 0x4C, 0x56, 0x5E,
};

/* 807CF0D4-807CF170 0001CC 009C+00 1/1 0/0 0/0 .data va_tag_offset__22@unnamed@d_a_e_vt_cpp@ */
SECTION_DATA static f32 va_tag_offset[39] = {
    20.0f, 20.0f, 20.0f, 20.0f, 20.0f, 0.0f,  40.0f, 0.0f, 30.0f, 10.0f, 0.0f,  0.0f,  20.0f,
    0.0f,  10.0f, 20.0f, 40.0f, 0.0f,  20.0f, 0.0f,  0.0f, 20.0f, 0.0f,  10.0f, 0.0f,  0.0f,
    20.0f, 10.0f, 20.0f, 30.0f, 0.0f,  10.0f, 20.0f, 0.0f, 0.0f,  10.0f, 20.0f, 30.0f, 0.0f,
};

/* 807CF170-807CF174 000268 0004+00 1/1 0/0 0/0 .data            l_color$4364 */
SECTION_DATA static u8 l_color[4] = {
    0x64,
    0x46,
    0x00,
    0xFF,
};

/* 807CF174-807CF17C 00026C 0008+00 1/1 0/0 0/0 .data            va_foot_smoke_id$5094 */
SECTION_DATA static u8 va_foot_smoke_id[8] = {
    0x88, 0x91, 0x88, 0x92, 0x85, 0xC4, 0x85, 0xC5,
};

/* 807CF17C-807CF184 000274 0006+02 1/1 0/0 0/0 .data            va_wepon_eff_id1 */
SECTION_DATA static u16 va_wepon_eff_id1[] = {
    0x85D8,
    0x85D9,
    0x85DA,
};

/* 807CF184-807CF18C 00027C 0006+02 1/1 0/0 0/0 .data            va_wepon_eff_id2 */
SECTION_DATA static u16 va_wepon_eff_id2[] = {
    0x85C6,
    0x85C7,
    0x85C8,
};

/* 807CF18C-807CF1A4 000284 0018+00 1/1 0/0 0/0 .data            va_bugs_eff_jnt */
SECTION_DATA static u16 va_bugs_eff_jnt[] = {
    0x01, 0x02, 0x22, 0x04, 0x05, 0x07, 0x10, 0x11, 0x13, 0x2C, 0x2F, 0x32,
};

/* 807CF1A4-807CF1BC 00029C 0018+00 1/1 0/0 0/0 .data            va_bugs_eff_id */
SECTION_DATA static u16 va_bugs_eff_id[] = {
    0x85E1, 0x85E2, 0x85E3, 0x85DB, 0x85DC, 0x85DD, 0x85DE, 0x85DF, 0x85E0, 0x85E4, 0x85E5, 0x85E6,
};

/* 807CF1BC-807CF1C4 0002B4 0006+02 1/1 0/0 0/0 .data            va_weapon_land_eff_id */
SECTION_DATA static u16 va_weapon_land_eff_id[] = {
    0x85C9,
    0x85CA,
    0x85CB,
};

/* 807CF1C4-807CF1CC 0002BC 0006+02 1/1 0/0 0/0 .data            va_magic_eff_id */
SECTION_DATA static u16 va_magic_eff_id[] = {
    0x8848,
    0x8849,
    0x884A,
};

/* 807CF1CC-807CF1F8 0002C4 002C+00 1/1 0/0 0/0 .data            line_pull_power */
SECTION_DATA static f32 line_pull_power[] = {
    0.0f, 0.1f, 0.2f, 0.3f, 0.4f, 0.5f, 0.6f, 0.7f, 0.8f, 0.9f, 1.0f,
};

/* 807CF1F8-807CF200 0002F0 0008+00 1/2 0/0 0/0 .data            TAG_VIB_ANGLE */
SECTION_DATA static s16 TAG_VIB_ANGLE[] = {
    -0x800,
    0x800,
    -0x1000,
    0x1000,
};

/* 807CF200-807CF210 0002F8 0010+00 0/1 0/0 0/0 .data            TAG_VIB_WIDTH */
#pragma push
#pragma force_active on
SECTION_DATA static s16 TAG_VIB_WIDTH[] = {
    0x1C0, 0x280, 0x180, 0x240, 0x380, 0x500, 0x300, 0x480,
};
#pragma pop

/* 807CF210-807CF23C -00001 002C+00 1/1 0/0 0/0 .data            @6371 */
SECTION_DATA static void* lit_6371[11] = {
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x70),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x1FC),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x2B4),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0xCF4),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x3B4),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x4F8),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x6F0),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x700),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0x874),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0xA60),
    (void*)(((char*)executeDemoOp__8daE_VA_cFv) + 0xB0C),
};

/* 807CF23C-807CF27C -00001 0040+00 1/1 0/0 0/0 .data            @7005 */
SECTION_DATA static void* lit_7005[16] = {
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x4C),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x124),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5CC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x2BC),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x2F8),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x41C),
    (void*)(((char*)executeOpaciWait__8daE_VA_cFv) + 0x5B0),
};

/* 807CF27C-807CF2D8 -00001 005C+00 1/1 0/0 0/0 .data            @7243 */
SECTION_DATA static void* lit_7243[23] = {
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x90),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x1D4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x420),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x478),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x4E4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x6FC),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x70C),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x73C),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x8C4),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x90),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x90),
    (void*)(((char*)executeOpaciFly__8daE_VA_cFv) + 0x90),
};

/* 807CF2D8-807CF304 -00001 002C+00 1/1 0/0 0/0 .data            @7741 */
SECTION_DATA static void* lit_7741[11] = {
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x16C),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x188),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x250),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x278),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x330),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x394),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x3CC),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x3CC),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x3CC),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x3CC),
    (void*)(((char*)executeOpaciFadeAway__8daE_VA_cFv) + 0x5C),
};

/* 807CF304-807CF330 -00001 002C+00 1/1 0/0 0/0 .data            @7924 */
SECTION_DATA static void* lit_7924[11] = {
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x7C),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x268),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x37C),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x4B8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x548),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x6A8),
    (void*)(((char*)executeOpaciDeath__8daE_VA_cFv) + 0x22C),
};

/* 807CF330-807CF384 -00001 0054+00 1/1 0/0 0/0 .data            @8207 */
SECTION_DATA static void* lit_8207[21] = {
    (void*)(((char*)action__8daE_VA_cFv) + 0x11C), (void*)(((char*)action__8daE_VA_cFv) + 0x12C),
    (void*)(((char*)action__8daE_VA_cFv) + 0x13C), (void*)(((char*)action__8daE_VA_cFv) + 0x148),
    (void*)(((char*)action__8daE_VA_cFv) + 0x154), (void*)(((char*)action__8daE_VA_cFv) + 0x160),
    (void*)(((char*)action__8daE_VA_cFv) + 0x178), (void*)(((char*)action__8daE_VA_cFv) + 0x16C),
    (void*)(((char*)action__8daE_VA_cFv) + 0x190), (void*)(((char*)action__8daE_VA_cFv) + 0x184),
    (void*)(((char*)action__8daE_VA_cFv) + 0x19C), (void*)(((char*)action__8daE_VA_cFv) + 0x1A8),
    (void*)(((char*)action__8daE_VA_cFv) + 0x1B4), (void*)(((char*)action__8daE_VA_cFv) + 0x1C0),
    (void*)(((char*)action__8daE_VA_cFv) + 0x1CC), (void*)(((char*)action__8daE_VA_cFv) + 0x1D8),
    (void*)(((char*)action__8daE_VA_cFv) + 0x1E4), (void*)(((char*)action__8daE_VA_cFv) + 0x1F0),
    (void*)(((char*)action__8daE_VA_cFv) + 0x1FC), (void*)(((char*)action__8daE_VA_cFv) + 0x208),
    (void*)(((char*)action__8daE_VA_cFv) + 0x214),
};

/* 807CF384-807CF3A4 -00001 0020+00 1/0 0/0 0/0 .data            l_daE_VA_Method */
static actor_method_class l_daE_VA_Method = {
    (process_method_func)daE_VA_Create__FP8daE_VA_c,
    (process_method_func)daE_VA_Delete__FP8daE_VA_c,
    (process_method_func)daE_VA_Execute__FP8daE_VA_c,
    (process_method_func)daE_VA_IsDelete__FP8daE_VA_c,
    (process_method_func)daE_VA_Draw__FP8daE_VA_c,
};

/* 807CF3A4-807CF3D4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_E_VT */
extern actor_process_profile_definition g_profile_E_VT = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_E_VT,              // mProcName
  &g_fpcLf_Method.mBase,  // sub_method
  sizeof(daE_VA_c),       // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  756,                    // mPriority
  &l_daE_VA_Method,       // sub_method
  0x00040000,             // mStatus
  fopAc_ENEMY_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 807CF3D4-807CF3E0 0004CC 000C+00 1/1 0/0 0/0 .data            __vt__12dBgS_AcchCir */
SECTION_DATA extern void* __vt__12dBgS_AcchCir[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_AcchCirFv,
};

/* 807CF3E0-807CF3EC 0004D8 000C+00 2/2 0/0 0/0 .data            __vt__10cCcD_GStts */
SECTION_DATA extern void* __vt__10cCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10cCcD_GSttsFv,
};

/* 807CF3EC-807CF3F8 0004E4 000C+00 1/1 0/0 0/0 .data            __vt__10dCcD_GStts */
SECTION_DATA extern void* __vt__10dCcD_GStts[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__10dCcD_GSttsFv,
};

/* 807CF3F8-807CF404 0004F0 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGSph */
SECTION_DATA extern void* __vt__8cM3dGSph[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGSphFv,
};

/* 807CF404-807CF428 0004FC 0024+00 3/3 0/0 0/0 .data            __vt__12dBgS_ObjAcch */
SECTION_DATA extern void* __vt__12dBgS_ObjAcch[9] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12dBgS_ObjAcchFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807CE7E8,
    (void*)NULL,
    (void*)NULL,
    (void*)func_807CE7E0,
};

/* 807CF428-807CF43C 000520 0014+00 1/1 0/0 0/0 .data            __vt__18mDoExt_3DlineMat_c */
SECTION_DATA extern void* __vt__18mDoExt_3DlineMat_c[5] = {
    (void*)NULL /* RTTI */, (void*)NULL, (void*)NULL, (void*)NULL, (void*)NULL,
};

/* 807CF43C-807CF448 000534 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 807CF448-807CF454 000540 000C+00 4/4 0/0 0/0 .data            __vt__8cM3dGCyl */
SECTION_DATA extern void* __vt__8cM3dGCyl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGCylFv,
};

/* 807CF454-807CF460 00054C 000C+00 7/7 0/0 0/0 .data            __vt__8cM3dGAab */
SECTION_DATA extern void* __vt__8cM3dGAab[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__8cM3dGAabFv,
};

/* 807CF460-807CF46C 000558 000C+00 2/2 0/0 0/0 .data            __vt__12daE_VA_HIO_c */
SECTION_DATA extern void* __vt__12daE_VA_HIO_c[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12daE_VA_HIO_cFv,
};

/* 807C25EC-807C267C 0000EC 0090+00 1/1 0/0 0/0 .text            __ct__12daE_VA_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_VA_HIO_c::daE_VA_HIO_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__12daE_VA_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CF478-807CF47C 000008 0001+03 1/1 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 807CF47C-807CF480 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 807CF480-807CF484 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 807CF484-807CF488 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 807CF488-807CF48C 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 807CF48C-807CF490 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 807CF490-807CF494 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 807CF494-807CF498 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 807CF498-807CF49C 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 807CF49C-807CF4A0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 807CF4A0-807CF4A4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 807CF4A4-807CF4A8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 807CF4A8-807CF4AC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 807CF4AC-807CF4B0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 807CF4B0-807CF4B4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 807CF4B4-807CF4B8 -00001 0004+00 2/2 0/0 0/0 .bss             None */
/* 807CF4B4 0001+00 data_807CF4B4 @1009 */
/* 807CF4B5 0003+00 data_807CF4B5 None */
#pragma push
#pragma force_active on
static u8 struct_807CF4B4;
#pragma pop

#pragma push
#pragma force_active on
static u8 init_hio;
#pragma pop

/* 807CF4B8-807CF4C4 000048 000C+00 0/1 0/0 0/0 .bss             @3923 */
#pragma push
#pragma force_active on
static u8 lit_3923[12];
#pragma pop

/* 807CF4C4-807CF504 000054 0040+00 17/18 0/0 0/0 .bss             l_HIO */
#ifdef NONMATCHING
static daE_VA_HIO_c l_HIO;
#else
static u8 l_HIO[64];
#endif

/* 807C267C-807C284C 00017C 01D0+00 1/1 0/0 0/0 .text ctrlJoint__8daE_VA_cFP8J3DJointP8J3DModel */
// matches with HIO
#ifdef NONMATCHING
int daE_VA_c::ctrlJoint(J3DJoint* i_joint, J3DModel* i_model) {
    int joint_no = i_joint->getJntNo();
    mDoMtx_stack_c::copy(i_model->getAnmMtx(joint_no));

    switch (joint_no) {
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
        if (field_0x138b) {
            mDoMtx_stack_c::transS(field_0x140c[joint_no - 11]);
            mDoMtx_stack_c::YrotM(field_0x130c);
            mDoMtx_stack_c::ZrotM(field_0x130e);
            mDoMtx_stack_c::ZrotM(field_0x1448[joint_no - 11].z);
            mDoMtx_stack_c::YrotM(field_0x1448[joint_no - 11].y);
            mDoMtx_stack_c::scaleM(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);
        }
        break;
    case 0x1B:
        mDoMtx_stack_c::YrotM(field_0x1398);
        if (field_0x1391 == 1) {
            mDoMtx_stack_c::XrotM(field_0x1394);
            mDoMtx_stack_c::ZrotM(field_0x1396);
        }
        break;
    case 0x21:
        mDoMtx_stack_c::YrotM(field_0x1398);
        if (field_0x1391 == 2) {
            mDoMtx_stack_c::XrotM(field_0x1394);
        }
        break;
    case 0x22:
        if (field_0x1391 == 2) {
            mDoMtx_stack_c::ZrotM(field_0x1396);
        }
        break;
    }

    i_model->setAnmMtx(joint_no, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daE_VA_c::ctrlJoint(J3DJoint* param_0, J3DModel* param_1) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/ctrlJoint__8daE_VA_cFP8J3DJointP8J3DModel.s"
}
#pragma pop
#endif

/* 807C284C-807C2898 00034C 004C+00 1/1 0/0 0/0 .text JointCallBack__8daE_VA_cFP8J3DJointi */
int daE_VA_c::JointCallBack(J3DJoint* i_joint, int param_1) {
    if (param_1 == 0) {
        J3DModel* model = j3dSys.getModel();
        daE_VA_c* a_this = (daE_VA_c*)model->getUserArea();

        if (a_this != NULL) {
            a_this->ctrlJoint(i_joint, model);
        }
    }

    return 1;
}

/* 807C2898-807C2A4C 000398 01B4+00 1/1 0/0 0/0 .text            calcJointNeck__8daE_VA_cFv */
void daE_VA_c::calcJointNeck() {
    csXyz sp18;

    if (field_0x1391 != 0) {
        s16 temp_r4 = fopAcM_searchPlayerAngleY(this) - shape_angle.y;
        if (temp_r4 > 0x3000) {
            temp_r4 = 0x3000;
        }
        if (temp_r4 < -0x3000) {
            temp_r4 = -0x3000;
        }
        cLib_addCalcAngleS(&field_0x1394, temp_r4, 8, 0x800, 0x40);

        s16 temp_r4_2 = 0x1400 - fopAcM_searchPlayerAngleX(this);
        if (temp_r4_2 > 0x3000) {
            temp_r4_2 = 0x3000;
        }
        if (temp_r4_2 < -0x3000) {
            temp_r4_2 = -0x3000;
        }
        cLib_addCalcAngleS(&field_0x1396, temp_r4_2, 8, 0x800, 0x40);

        if (checkBck(0x1F) || checkBck(0x20)) {
            cLib_addCalcAngleS(&field_0x1398, -0x800, 8, 0x80, 0x40);
        } else if (checkBck(0x21)) {
            cLib_addCalcAngleS(&field_0x1398, -0x1800, 8, 0x80, 0x40);
        } else {
            cLib_addCalcAngleS(&field_0x1398, -0x1800, 8, 0x100, 0x40);
        }

        field_0x1392 = field_0x1391;
    } else {
        field_0x1391 = field_0x1392;
        cLib_addCalcAngleS(&field_0x1394, 0, 8, 0x100, 0x40);
        cLib_addCalcAngleS(&field_0x1396, 0, 8, 0x100, 0x40);
        cLib_addCalcAngleS(&field_0x1398, 0, 8, 0x100, 0x40);
    }
}

/* ############################################################################################## */
/* 807CED08-807CED0C 000060 0004+00 0/1 0/0 0/0 .rodata          @4314 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4314 = 74.0f;
COMPILER_STRIP_GATE(0x807CED08, &lit_4314);
#pragma pop

/* 807CED0C-807CED10 000064 0004+00 0/2 0/0 0/0 .rodata          @4315 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4315 = 11.0f;
COMPILER_STRIP_GATE(0x807CED0C, &lit_4315);
#pragma pop

/* 807CED10-807CED14 000068 0004+00 1/4 0/0 0/0 .rodata          @4316 */
SECTION_RODATA static f32 const lit_4316 = 60.0f;
COMPILER_STRIP_GATE(0x807CED10, &lit_4316);

/* 807CED14-807CED18 00006C 0004+00 0/3 0/0 0/0 .rodata          @4317 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4317 = 80.0f;
COMPILER_STRIP_GATE(0x807CED14, &lit_4317);
#pragma pop

/* 807CED18-807CED1C 000070 0004+00 1/7 0/0 0/0 .rodata          @4318 */
SECTION_RODATA static f32 const lit_4318 = 50.0f;
COMPILER_STRIP_GATE(0x807CED18, &lit_4318);

/* 807CED1C-807CED20 000074 0004+00 0/7 0/0 0/0 .rodata          @4319 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4319 = 30.0f;
COMPILER_STRIP_GATE(0x807CED1C, &lit_4319);
#pragma pop

/* 807CED20-807CED24 000078 0004+00 0/1 0/0 0/0 .rodata          @4320 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4320 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CED20, &lit_4320);
#pragma pop

/* 807CED24-807CED28 00007C 0004+00 0/5 0/0 0/0 .rodata          @4321 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4321 = -10.0f;
COMPILER_STRIP_GATE(0x807CED24, &lit_4321);
#pragma pop

/* 807CED28-807CED2C 000080 0004+00 0/5 0/0 0/0 .rodata          @4322 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4322 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x807CED28, &lit_4322);
#pragma pop

/* 807C2A4C-807C3264 00054C 0818+00 1/1 0/0 0/0 .text            calcJointSleeve__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::calcJointSleeve() {
    csXyz sp128;
    cXyz sp90(field_0x13b8);

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(11));
    mDoMtx_stack_c::multVecZero(&field_0x13b8);
    mDoMtx_MtxToRot(mDoMtx_stack_c::get(), &sp128);

    f32 anm_frame = mpMorf->getFrame();
    if ((checkBck(0x12) && anm_frame >= 74.0f) || (checkBck(0x13) && anm_frame <= 11.0f) ||
        (checkBck(0x25) && anm_frame >= 60.0f) || checkBck(0x26) ||
        (checkBck(0x27) && anm_frame <= 60.0f))
    {
        sp128.y = field_0x1466[0].y;
    }

    field_0x13c4 = field_0x13b8 - sp90;

    cXyz sp9C;
    cXyz spA8;
    cXyz spB4;

    field_0x13d0[0] = field_0x13c4;
    field_0x140c[0] = field_0x13b8;
    cXyz* line_pos = field_0x139c.getPos(0);
    *line_pos = field_0x140c[0];
    field_0x1466[0].set(-0x8000, sp128.y, -0x8000);
    line_pos++;
    for (int i = 1; i < 5; i++, line_pos++) {
        f32 var_f29;
        if (i == 1) {
            var_f29 = ZREG_F(0) + 80.0f;
        }
        if (i == 2) {
            var_f29 = ZREG_F(1) + 80.0f;
        }
        if (i == 3) {
            var_f29 = ZREG_F(2) + 50.0f;
        }
        if (i == 4) {
            var_f29 = ZREG_F(3) + 50.0f;
        }

        if (field_0x140c[i].abs(field_0x140c[i - 1]) > (var_f29 + 30.0f) + nREG_F(3)) {
            spA8 = field_0x140c[i - 1] - field_0x140c[i];
            f32 temp_f28 = spA8.abs();

            spA8.normalizeZP();
            spA8 = spA8 * (temp_f28 - var_f29);

            field_0x13d0[i].x = spA8.x;
            field_0x13d0[i].z = spA8.z;

            if (std::abs(field_0x140c[i].y - field_0x140c[i - 1].y) > var_f29) {
                field_0x13d0[i].y = spA8.y;
            } else if (spA8.y >= 0.0f) {
                if (field_0x13d0[i].y < spA8.y) {
                    field_0x13d0[i].y = spA8.y;
                }
            } else {
                field_0x13d0[i].y -= l_HIO.field_0x28;

                if (field_0x140c[i].y < field_0x140c[i - 1].y - (var_f29 * 0.8f)) {
                    if (field_0x13d0[i].y <= -10.0f) {
                        field_0x13d0[i].y = -10.0f;
                    }
                } else if (field_0x13d0[i].y <= l_HIO.field_0x2c) {
                    field_0x13d0[i].y = l_HIO.field_0x2c;
                }
            }
        } else {
            field_0x13d0[i].x *= l_HIO.field_0x24;
            field_0x13d0[i].z *= l_HIO.field_0x24;
            field_0x13d0[i].y -= l_HIO.field_0x28;

            if (field_0x140c[i].y < field_0x140c[i - 1].y - (var_f29 * 0.8f)) {
                if (field_0x13d0[i].y <= -10.0f) {
                    field_0x13d0[i].y = -10.0f;
                }
            } else if (field_0x13d0[i].y <= l_HIO.field_0x2c) {
                field_0x13d0[i].y = l_HIO.field_0x2c;
            }
        }

        if (field_0x1354 != 0) {
            field_0x13d0[i].y -= l_HIO.field_0x28;

            if (field_0x13d0[i].y <= l_HIO.field_0x2c) {
                field_0x13d0[i].y = l_HIO.field_0x2c;
            }
        }

        field_0x140c[i] += field_0x13d0[i];
        if (field_0x140c[i].y < 0.0f) {
            field_0x13d0[i] *= 0.1f;
            field_0x13d0[i].y = 0.0f;
            field_0x140c[i].y = 0.0f;
        }

        spA8 = field_0x140c[i] - field_0x140c[i - 1];
        spA8.normalizeZP();

        field_0x140c[i] = field_0x140c[i - 1] + (spA8 * var_f29);

        line_pos[0] = field_0x140c[i];
        spA8 = line_pos[0] - line_pos[-1];

        mDoMtx_stack_c::YrotS(-sp128.y);
        mDoMtx_stack_c::transM(spA8);
        mDoMtx_stack_c::multVecZero(&spA8);

        field_0x1466[i].x = cM_atan2s(spA8.z, spA8.y);
        field_0x1466[i].y = cM_atan2s(spA8.x, spA8.z);
        field_0x1466[i].z = cM_atan2s(spA8.x, spA8.y);
    }

    field_0x130c = sp128.y;
    field_0x130e = -0x4000;

    cXyz sp80;
    cXyz sp74;
    cXyz sp68;
    cXyz sp5C;

    for (int i = 0; i < 4; i++) {
        field_0x1448[i].y = field_0x1466[i + 1].x - field_0x1466[0].x;
        field_0x1448[i].z = field_0x1466[0].z - field_0x1466[i + 1].z;

        if (abs(field_0x1448[i].z) >= 0x4000) {
            field_0x1448[i].y = 0x8000 - field_0x1448[i].y;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcJointSleeve(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcJointSleeve__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CED2C-807CED30 000084 0004+00 0/1 0/0 0/0 .rodata          @4452 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4452 = 255.0f;
COMPILER_STRIP_GATE(0x807CED2C, &lit_4452);
#pragma pop

/* 807CED30-807CED34 000088 0004+00 0/1 0/0 0/0 .rodata          @4453 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4453 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CED30, &lit_4453);
#pragma pop

/* 807CED34-807CED38 00008C 0004+00 0/2 0/0 0/0 .rodata          @4454 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4454 = 2000.0f;
COMPILER_STRIP_GATE(0x807CED34, &lit_4454);
#pragma pop

/* 807CED38-807CED40 000090 0008+00 0/1 0/0 0/0 .rodata          @4458 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4458[8] = {
    0x43, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CED38, &lit_4458);
#pragma pop

/* 807C3264-807C37F8 000D64 0594+00 1/1 0/0 0/0 .text            draw__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
int daE_VA_c::draw() {
    J3DModel* model = mpMorf->getModel();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);

    if (!field_0x138a) {
        if (!field_0x1387) {
            g_env_light.setLightTevColorType_MAJI(model, &tevStr);

            J3DModelData* modelData = model->getModelData();
            for (u16 i = 0; i < modelData->getMaterialNum(); i++) {
                J3DMaterial* material = modelData->getMaterialNodePointer(i);

                material->getZMode()->setUpdateEnable(1);
                material->setZCompLoc(1);
                material->setMaterialMode(4);

                if (i == 0) {
                    material->getTevKColor(3)->a = field_0x137a;
                } else {
                    material->getTevKColor(0)->r = field_0x137c;
                    material->getTevKColor(0)->g = field_0x137d;
                    material->getTevKColor(0)->b = field_0x137e;

                    if (!field_0x1318) {
                        material->getTevColor(0)->r = field_0x1380;
                        material->getTevColor(0)->g = field_0x1380;
                        material->getTevColor(0)->b = field_0x1380;
                    } else {
                        material->getTevColor(0)->r = field_0x1318;
                        material->getTevColor(0)->g = field_0x1318;
                        material->getTevColor(0)->b = field_0x1318;
                    }

                    material->getTevKColor(3)->a = field_0x1378;
                }

                J3DBlend* blend = material->getBlend();
                if (field_0x1370 >= 2) {
                    blend->setDstFactor(5);
                } else {
                    blend->setDstFactor(1);
                }
            }

            mInvisModel.entryDL(NULL);
        }
    } else {
        model = mpEndEfMorf->getModel();
        g_env_light.setLightTevColorType_MAJI(model, &tevStr);
        mpEndEfBrk->entry(model->getModelData());
        mpEndEfMorf->entryDL();
    }

    f32 var_f31 = tevStr.field_0x344;
    if (field_0x1370 == 2) {
        f32 temp_f2 = (1000.0f - current.pos.y) / 1000.0f;
        if (temp_f2 < 0.0f) {
            temp_f2 = 0.0f;
        }

        if (temp_f2 > 1.0f) {
            temp_f2 = 1.0f;
        }

        tevStr.field_0x344 = temp_f2 * ((var_f31 * (f32)field_0x1378) / 255.0f);
        if (tevStr.field_0x344 > 0.4f) {
            tevStr.field_0x344 = 0.4f;
        }

        field_0x132c =
            dComIfGd_setShadow(field_0x132c, 0, model, &current.pos, nREG_F(19) + 2000.0f, 0.0f,
                               current.pos.y, mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f,
                               dDlst_shadowControl_c::getSimpleTex());
    }

    if (mpWeaponModel != NULL && field_0x1240 != 2) {
        g_env_light.setLightTevColorType_MAJI(mpWeaponModel, &tevStr);
        mpWeaponBrk->entry(mpWeaponModel->getModelData());
        fopAcM_setEffectMtx(this, mpWeaponModel->getModelData());
        mDoExt_modelUpdateDL(mpWeaponModel);

        if (field_0x1370 == 2) {
            dComIfGd_addRealShadow(field_0x132c, mpWeaponModel);
        } else {
            tevStr.field_0x344 = var_f31;
            field_0x132c = dComIfGd_setShadow(field_0x132c, 1, mpWeaponModel, &current.pos,
                                              nREG_F(19) + 2000.0f, 0.0f, current.pos.y,
                                              mAcch.GetGroundH(), mAcch.m_gnd, &tevStr, 0, 1.0f,
                                              dDlst_shadowControl_c::getSimpleTex());
        }
    }

    if (field_0x1387 != 0) {
        if (field_0x1100 != 0) {
            static GXColor l_color = {0x64, 0x46, 0x00, 0xFF};

            mRope.update(110, l_color, &tevStr);
            dComIfGd_set3DlineMatDark(&mRope);
        }

        for (int i = 0; i < 40; i++) {
            if (!(mCardModelType[i] & 0x80)) {
                g_env_light.setLightTevColorType_MAJI(mpCardModels[i], &tevStr);
                mDoExt_modelUpdateDL(mpCardModels[i]);
            }
        }
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daE_VA_c::draw() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/draw__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C37F8-807C3818 0012F8 0020+00 1/0 0/0 0/0 .text            daE_VA_Draw__FP8daE_VA_c */
static int daE_VA_Draw(daE_VA_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 807CED40-807CED44 000098 0004+00 1/3 0/0 0/0 .rodata          @4473 */
SECTION_RODATA static f32 const lit_4473 = -1.0f;
COMPILER_STRIP_GATE(0x807CED40, &lit_4473);

/* 807CEEFC-807CEEFC 000254 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807CEEFC = "E_VA";
#pragma pop

/* 807C3818-807C38BC 001318 00A4+00 19/19 0/0 0/0 .text            setBck__8daE_VA_cFiUcff */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setBck(int i_anmID, u8 i_attr, f32 i_morf, f32 i_rate) {
    mpMorf->setAnm((J3DAnmTransform*)dComIfG_getObjectRes("E_VA", i_anmID), i_attr, i_morf, i_rate,
                   0.0f, -1.0f);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setBck(int param_0, u8 param_1, f32 param_2, f32 param_3) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setBck__8daE_VA_cFiUcff.s"
}
#pragma pop
#endif

/* 807C38BC-807C3918 0013BC 005C+00 8/8 0/0 0/0 .text            checkBck__8daE_VA_cFi */
bool daE_VA_c::checkBck(int i_anmID) {
    J3DAnmTransform* pbck = (J3DAnmTransform*)dComIfG_getObjectRes("E_VA", i_anmID);
    return mpMorf->getAnm() == pbck ? TRUE : FALSE;
}

/* 807C3918-807C39C4 001418 00AC+00 21/21 0/0 0/0 .text            setActionMode__8daE_VA_cFii */
void daE_VA_c::setActionMode(int i_action, int i_mode) {
    if (dComIfGs_isOneZoneSwitch(6, fopAcM_GetRoomNo(this)) && i_action != 13 && i_action != 14) {
        dComIfGs_offOneZoneSwitch(6, fopAcM_GetRoomNo(this));

        if (!dComIfGs_isOneZoneSwitch(7, fopAcM_GetRoomNo(this))) {
            dComIfGs_onOneZoneSwitch(7, fopAcM_GetRoomNo(this));
        }
    }

    field_0x1381 = 0;
    mAction = i_action;
    mMode = i_mode;
    field_0x137f = 0;
}

/* 807C39C4-807C3A1C 0014C4 0058+00 1/1 0/0 0/0 .text            getWolfCutType__8daE_VA_cFv */
int daE_VA_c::getWolfCutType() {
    switch (daPy_getPlayerActorClass()->getCutType()) {
    case daPy_py_c::CUT_TYPE_WOLF_B_LEFT:
    case daPy_py_c::CUT_TYPE_WOLF_B_RIGHT:
        return 1;
    case daPy_py_c::CUT_TYPE_WOLF_UNK_39:
        return 2;
    case daPy_py_c::CUT_TYPE_WOLF_B_FRONT:
    case daPy_py_c::CUT_TYPE_WOLF_B_BACK:
    case daPy_py_c::CUT_TYPE_WOLF_UNK_30:
    case daPy_py_c::CUT_TYPE_WOLF_UNK_31:
    case daPy_py_c::CUT_TYPE_WOLF_UNK_32:
    case daPy_py_c::CUT_TYPE_WOLF_TURN_LEFT:
    case daPy_py_c::CUT_TYPE_WOLF_TURN_RIGHT:
    case daPy_py_c::CUT_TYPE_WOLF_UNK_35:
    case daPy_py_c::CUT_TYPE_WOLF_LOCK:
        return 3;
    }

    return 0;
}

/* 807C3A1C-807C3A50 00151C 0034+00 3/3 0/0 0/0 .text            onSwordAtBit__8daE_VA_cFv */
void daE_VA_c::onSwordAtBit() {
    mAttackSphs[0].OnAtSetBit();
    mAttackSphs[1].OnAtSetBit();
    mAttackSphs[2].OnAtSetBit();
    mAttackSphs[3].OnAtSetBit();
}

/* 807C3A50-807C3AB0 001550 0060+00 3/3 0/0 0/0 .text            offSwordShield__8daE_VA_cFv */
void daE_VA_c::offSwordShield() {
    if (daPy_getPlayerActorClass()->getCutType() == daPy_py_c::CUT_TYPE_WOLF_UNK_39) {
        field_0x133e = 3;

        for (int i = 0; i < 4; i++) {
            mAttackSphs[i].OffCoSetBit();
            mAttackSphs[i].OffTgShield();
            mAttackSphs[i].OnTgNoHitMark();
        }
    }
}

/* 807C3AB0-807C3B58 0015B0 00A8+00 1/1 0/0 0/0 .text            setTransDamage__8daE_VA_cFP4cXyz */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setTransDamage(cXyz* param_0) {
    u16 hitmark;
    if (field_0x138f >= 4)
        hitmark = 3;
    else
        hitmark = 1;

    dComIfGp_setHitMark(hitmark, this, param_0, NULL, NULL, 0);
    dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
    setActionMode(ACTION_TRANS_DAMAGE_e, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setTransDamage(cXyz* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setTransDamage__8daE_VA_cFP4cXyz.s"
}
#pragma pop
#endif

/* 807C3B58-807C440C 001658 08B4+00 1/1 0/0 0/0 .text            damage_check__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::damage_check() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    int cut_type = getWolfCutType();
    field_0x1b00.Move();

    if (field_0x1338 == 0) {
        for (int i = 0; i < 4; i++) {
            if (mAttackSphs[i].ChkTgHit()) {
                if (mAttackSphs[i].GetTgHitObj()->ChkAtType(0xD8000000)) {
                    field_0x1338 = 20;
                } else {
                    field_0x1338 = 10;
                }

                def_se_set(&mSound, mAttackSphs[i].GetTgHitObj(), 0x2A, this);
                mAttackSphs[i].ClrTgHit();
            }
        }
    }

    if (field_0x1387 != 0) {
        if (mAction == ACTION_DEMO_OP_WAIT_e) {
            for (int i = 0; i < 190; i++) {
                if (mLineSphs[i].ChkTgHit()) {
                    if (mLineSphs[i].GetTgHitObj()->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
                        setActionMode(ACTION_DEMO_OP_e, 0);
                    } else {
                        int var_r24 = i / 19;
                        field_0x1104[var_r24] = nREG_F(17) + 1.0f;
                        field_0x112c[var_r24] = 0;
                        setVibTag(0, var_r24);
                    }
                }
            }
        }
    } else {
        if (field_0x133a == 0 && mNeckSph.ChkTgHit()) {
            mAtInfo.mpCollider = mNeckSph.GetTgHitObj();

            if (mAtInfo.mpCollider->ChkAtType(0xD8000000)) {
                if (cut_type == 1) {
                    field_0x133a = 15;
                } else {
                    field_0x133a = 20;
                }
            } else {
                field_0x133a = 10;
            }

            if (mAtInfo.mAttackPower <= 1) {
                field_0x133a = KREG_S(8) + 10;
            }

            field_0x133e = field_0x133a;

            if (cut_type != 1 && mAtInfo.mpCollider->ChkAtType(AT_TYPE_WOLF_ATTACK) &&
                player->onWolfEnemyHangBite(this))
            {
                setActionMode(ACTION_TRANS_BITE_DAMAGE_e, 0);
                mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 31);
                field_0x133c = 20;
                return;
            }

            if (field_0x1370 == 1 && field_0x137f != 0) {
                mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 32);
                setTransDamage(mNeckSph.GetTgHitPosP());
                return;
            }

            if (cut_type == 2) {
                setActionMode(ACTION_TRANS_THROUGH_e, 0);
                mNeckSph.ClrTgHit();
                return;
            }

            field_0x133a = 0;
            field_0x133e = 0;
        }

        if (field_0x133c == 0) {
            int var_r25_3 = 0;
            dCcD_Cyl cyl;

            if (mBodyCyls[0].ChkTgHit()) {
                mAtInfo.mpCollider = mBodyCyls[0].GetTgHitObj();
                var_r25_3 = 1;
                cyl = mBodyCyls[0];
            }

            if (mBodyCyls[1].ChkTgHit()) {
                mAtInfo.mpCollider = mBodyCyls[1].GetTgHitObj();
                var_r25_3 = 1;
                cyl = mBodyCyls[1];
            }

            if (var_r25_3 != 0) {
                if (field_0x1370 != 2 && mAtInfo.mpCollider->ChkAtType(0xD8000000) &&
                    field_0x137f == 0)
                {
                    mBodyCyls[0].ClrTgHit();
                    mBodyCyls[1].ClrTgHit();
                    return;
                }

                mAtInfo.field_0x18 = 0;
                health = 100;
                cc_at_check(this, &mAtInfo);
                field_0x1368 = 100 - health;

                if (mAtInfo.mpCollider->ChkAtType(0xD8000000)) {
                    field_0x133c = 20;
                } else {
                    field_0x133c = 10;
                }

                if (mAtInfo.mAttackPower <= 1) {
                    field_0x133c = KREG_S(8) + 10;
                }

                field_0x133e = field_0x133c;

                if (field_0x1370 == 1) {
                    setTransDamage(cyl.GetTgHitPosP());
                } else if (field_0x1370 == 2) {
                    if (field_0x1381 == 0) {
                        field_0x1385 = 0;

                        if (mAction == ACTION_OPACI_FLY_e) {
                            if (mAtInfo.mpCollider->ChkAtType(0x16060)) {
                                setActionMode(ACTION_OPACI_DAMAGE_e, 0);
                            }
                        } else if (mAtInfo.mpCollider->ChkAtType(0x14050)) {
                            if (field_0x1386 != 0) {
                                setActionMode(ACTION_OPACI_DOWN_DAMAGE_e, 2);
                                field_0x1344 = l_HIO.mDownTime;
                                field_0x1381 = 1;
                            } else {
                                dComIfGp_getVibration().StopQuake(31);
                                setActionMode(ACTION_OPACI_DAMAGE_e, 10);
                            }
                        } else if (mAtInfo.mAttackPower != 0) {
                            setActionMode(ACTION_OPACI_DOWN_e, 0);
                            field_0x1381 = 1;
                        }
                    } else {
                        BOOL var_r26 = false;

                        if (player->getCutCount() >= 4) {
                            if (field_0x1383 != 0) {
                                var_r26 = true;
                            }
                        } else if (((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSpl() == 1) {
                            field_0x1385++;

                            if (field_0x1385 >= 2) {
                                var_r26 = true;
                            }
                        }

                        int var_r29 = 0;

                        if (mAtInfo.mpCollider->ChkAtType(AT_TYPE_NORMAL_SWORD)) {
                            if (mAtInfo.mpCollider->GetAtAtp() >= 4) {
                                if (player->checkMasterSwordEquip()) {
                                    if (player->getSwordAtUpTime() != 0) {
                                        var_r29 = 6;
                                    } else {
                                        var_r29 = 2;
                                    }
                                } else if (player->getSwordAtUpTime() != 0) {
                                    var_r29 = 2;
                                } else {
                                    var_r29 = 1;
                                }
                            } else if (player->checkMasterSwordEquip()) {
                                if (player->getSwordAtUpTime() != 0 || var_r26) {
                                    var_r29 = 2;
                                }
                            } else if (var_r26) {
                                if (player->getSwordAtUpTime() != 0) {
                                    var_r29 = 2;
                                } else {
                                    var_r29 = 1;
                                }
                            }
                        } else if (mAtInfo.mpCollider->ChkAtType(0xD8000000) &&
                                   (((dCcD_GObjInf*)mAtInfo.mpCollider)->GetAtSpl() == 1 ||
                                    mAtInfo.mpCollider->GetAtAtp() >= 4))
                        {
                            var_r29 = 1;
                        }

                        field_0x1383++;

                        if (var_r29 != 0) {
                            field_0x1385 = 0;
                            field_0x1384 += var_r29;
                            setActionMode(ACTION_OPACI_DOWN_e, 5);
                        } else if (mAtInfo.mpCollider->ChkAtType(0x4050)) {
                            setActionMode(ACTION_OPACI_DOWN_DAMAGE_e, 2);
                        } else {
                            if (player->getCutCount() > 1) {
                                field_0x1382 ^= 1;
                            } else if (cM_rnd() < 0.5f) {
                                field_0x1382 = 0;
                            } else {
                                field_0x1382 = 1;
                            }

                            setActionMode(ACTION_OPACI_DOWN_DAMAGE_e, field_0x1382);
                        }

                        field_0x1381 = 1;
                    }
                }

                mBodyCyls[0].ClrTgHit();
                mBodyCyls[1].ClrTgHit();
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::damage_check() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/damage_check__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C440C-807C44A0 001F0C 0094+00 1/1 0/0 0/0 .text            __as__8dCcD_CylFRC8dCcD_Cyl */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dCcD_Cyl::operator=(dCcD_Cyl const& param_0) {
extern "C" asm void __as__8dCcD_CylFRC8dCcD_Cyl() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__as__8dCcD_CylFRC8dCcD_Cyl.s"
}
#pragma pop

/* 807C44A0-807C46E8 001FA0 0248+00 1/1 0/0 0/0 .text __as__12dCcD_GObjInfFRC12dCcD_GObjInf */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dCcD_GObjInf::operator=(dCcD_GObjInf const& param_0) {
extern "C" asm void __as__12dCcD_GObjInfFRC12dCcD_GObjInf() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__as__12dCcD_GObjInfFRC12dCcD_GObjInf.s"
}
#pragma pop

/* 807C46E8-807C47B4 0021E8 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_CylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cyl::~dCcD_Cyl() {
extern "C" asm void __dt__8dCcD_CylFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8dCcD_CylFv.s"
}
#pragma pop

/* 807C47B4-807C47FC 0022B4 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGCylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGCyl::~cM3dGCyl() {
extern "C" asm void __dt__8cM3dGCylFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8cM3dGCylFv.s"
}
#pragma pop

/* 807C47FC-807C4844 0022FC 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGAabFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGAab::~cM3dGAab() {
extern "C" asm void __dt__8cM3dGAabFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8cM3dGAabFv.s"
}
#pragma pop

/* 807C4844-807C49B4 002344 0170+00 1/1 0/0 0/0 .text            setFireEffect__8daE_VA_cFi */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setFireEffect(int param_0) {
    cXyz sp28(1.0f, 1.0f, 1.0f);
    int idx = param_0 * 3;

    field_0x10f80[idx] =
        dComIfGp_particle_set(field_0x10f80[idx], 0x3AD, &field_0x1140[param_0], NULL, &sp28);
    field_0x10f80[idx + 1] =
        dComIfGp_particle_set(field_0x10f80[idx + 1], 0x3AF, &field_0x1140[param_0], NULL, &sp28);
    field_0x10f80[idx + 2] =
        dComIfGp_particle_set(field_0x10f80[idx + 2], 0x3AE, &field_0x1140[param_0], NULL, &sp28);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setFireEffect(int param_0){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setFireEffect__8daE_VA_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CED44-807CED48 00009C 0004+00 0/0 0/0 0/0 .rodata          @5085 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5085 = 16.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CED44, &lit_5085);
#pragma pop

/* 807CED48-807CED4C 0000A0 0004+00 1/12 0/0 0/0 .rodata          @5146 */
SECTION_RODATA static f32 const lit_5146 = 10.0f;
COMPILER_STRIP_GATE(0x807CED48, &lit_5146);

/* 807C49B4-807C4B54 0024B4 01A0+00 1/1 0/0 0/0 .text            setFootEffect__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setFootEffect() {
    if (!field_0x1388) {
        int var_r6 = 0;
        if (current.pos.y < 10.0f) {
            var_r6 = 2;
        }

        cXyz sp1C(current.pos);
        cXyz sp28(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);

        static u16 va_foot_smoke_id[] = {0x8891, 0x8892, 0x85C4, 0x85C5};
        field_0x10f78[0] =
            dComIfGp_particle_set(field_0x10f78[0], va_foot_smoke_id[var_r6], &sp1C, &tevStr,
                                  &shape_angle, &sp28, 0xFF, NULL, -1, NULL, NULL, NULL);
        field_0x10f78[1] =
            dComIfGp_particle_set(field_0x10f78[1], va_foot_smoke_id[var_r6 + 1], &sp1C, &tevStr,
                                  &shape_angle, &sp28, 0xFF, NULL, -1, NULL, NULL, NULL);

        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x10f78[0]);
        if (emitter != NULL) {
            emitter->setGlobalAlpha(field_0x1379);
        }

        emitter = dComIfGp_particle_getEmitter(field_0x10f78[1]);
        if (emitter != NULL) {
            emitter->setGlobalAlpha(field_0x1379);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setFootEffect(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setFootEffect__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CED4C-807CED50 0000A4 0004+00 0/1 0/0 0/0 .rodata          @5224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5224 = -7.0f;
COMPILER_STRIP_GATE(0x807CED4C, &lit_5224);
#pragma pop

/* 807C4B54-807C4DFC 002654 02A8+00 1/1 0/0 0/0 .text            setWeponEffect__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setWeponEffect() {
    cXyz sp38;
    cXyz sp44(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);

    switch (field_0x1389) {
    case 1:
        sp38.set(11.0f, 0.0f, -7.0f);
        for (int i = 0; i < 3; i++) {
            field_0x10f68[i] =
                dComIfGp_particle_set(field_0x10f68[i], va_wepon_eff_id1[i], &sp38, &tevStr,
                                      &shape_angle, &sp44, 0xFF, NULL, -1, NULL, NULL, NULL);
        }
        break;
    case 2:
        sp38.set(11.0f, 0.0f, -7.0f);
        field_0x10f74 = dComIfGp_particle_set(field_0x10f74, 0x8601, &sp38, &tevStr, &shape_angle,
                                              &sp44, 0xFF, NULL, -1, NULL, NULL, NULL);
    case 3:
        sp38 = current.pos;
        MtxP model_mtx = mpWeaponModel->getBaseTRMtx();
        mSound.startCreatureSoundLevel(Z2SE_EN_VA_SWD_FLY, 0, -1);

        for (int i = 0; i < 3; i++) {
            field_0x10f68[i] =
                dComIfGp_particle_set(field_0x10f68[i], va_wepon_eff_id2[i], &sp38, &tevStr,
                                      &shape_angle, &sp44, 0xFF, NULL, -1, NULL, NULL, NULL);

            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x10f68[i]);
            if (emitter != NULL) {
                emitter->setGlobalSRTMatrix(model_mtx);
            }
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setWeponEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setWeponEffect__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C4DFC-807C4F10 0028FC 0114+00 1/1 0/0 0/0 .text            setBugsEffect__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setBugsEffect() {
    J3DModel* model = mpMorf->getModel();
    JGeometry::TVec3<f32> scale(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);

    for (int i = 0; i < 12; i++) {
        JPABaseEmitter* emitter =
            dComIfGp_particle_set(va_bugs_eff_id[i], &current.pos, NULL, NULL);
        if (emitter != NULL) {
            emitter->setGlobalSRTMatrix(model->getAnmMtx(va_bugs_eff_jnt[i]));
            emitter->setGlobalParticleScale(scale);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setBugsEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setBugsEffect__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C4F10-807C4FCC 002A10 00BC+00 4/4 0/0 0/0 .text            setWeponLandEffect__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setWeponLandEffect() {
    cXyz sp28(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);

    for (int i = 0; i < 3; i++) {
        dComIfGp_particle_set(va_weapon_land_eff_id[i], &current.pos, &tevStr, &shape_angle, &sp28);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setWeponLandEffect() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setWeponLandEffect__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C4FCC-807C50A4 002ACC 00D8+00 1/1 0/0 0/0 .text            setWeponGlow__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setWeponGlow() {
    field_0x10f68[0] = dComIfGp_particle_set(field_0x10f68[0], 0x8600, &current.pos, &tevStr);

    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x10f68[0]);
    if (emitter != NULL) {
        emitter->setGlobalSRTMatrix(mpWeaponModel->getBaseTRMtx());
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setWeponGlow() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setWeponGlow__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C50A4-807C5188 002BA4 00E4+00 1/1 0/0 0/0 .text            setWeponFlashScreen__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setWeponFlashScreen() {
    cXyz sp18(0.0f, 0.0f, 0.0f);
    dComIfGp_particle_set(0x85FE, &sp18, &tevStr, NULL, NULL);
    dComIfGp_particle_set(0x85FF, &sp18, &tevStr, NULL, NULL);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setWeponFlashScreen() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setWeponFlashScreen__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C5188-807C5258 002C88 00D0+00 1/1 0/0 0/0 .text            setMagicEffect__8daE_VA_cFi */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setMagicEffect(int param_0) {
    int idx = param_0 * 3;

    for (int i = 0; i < 3; i++) {
        field_0x10f80[idx + i] = dComIfGp_particle_set(field_0x10f80[idx + i], va_magic_eff_id[i],
                                                       &field_0x11e0[param_0], NULL, NULL);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setMagicEffect(int param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setMagicEffect__8daE_VA_cFi.s"
}
#pragma pop
#endif

/* 807C5258-807C5338 002D58 00E0+00 1/1 0/0 0/0 .text            setMagicHitEffect__8daE_VA_cFi */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setMagicHitEffect(int param_0) {
    dComIfGp_particle_set(0x8846, &field_0x11e0[param_0], NULL, NULL);
    dComIfGp_particle_set(0x8847, &field_0x11e0[param_0], NULL, NULL);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setMagicHitEffect(int param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setMagicHitEffect__8daE_VA_cFi.s"
}
#pragma pop
#endif

/* 807C5338-807C53A8 002E38 0070+00 1/1 0/0 0/0 .text            demo_skip__8daE_VA_cFi */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::demo_skip(int param_0) {
    Z2GetAudioMgr()->bgmStreamStop(30);
    cDmr_SkipInfo = 1;
    dStage_changeScene(1, 0.0f, 0, fopAcM_GetRoomNo(this), 0, -1);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::demo_skip(int param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/demo_skip__8daE_VA_cFi.s"
}
#pragma pop
#endif

/* 807C53A8-807C53DC 002EA8 0034+00 1/1 0/0 0/0 .text            DemoSkipCallBack__8daE_VA_cFPvi */
int daE_VA_c::DemoSkipCallBack(void* i_this, int param_1) {
    if (i_this != NULL) {
        ((daE_VA_c*)i_this)->demo_skip(param_1);
        return 1;
    }

    return 0;
}

/* ############################################################################################## */
/* 807CED50-807CED54 0000A8 0004+00 1/1 0/0 0/0 .rodata          @5407 */
SECTION_RODATA static f32 const lit_5407 = 115.0f;
COMPILER_STRIP_GATE(0x807CED50, &lit_5407);

/* 807CED54-807CED58 0000AC 0004+00 1/2 0/0 0/0 .rodata          @5408 */
SECTION_RODATA static f32 const lit_5408 = 65.0f;
COMPILER_STRIP_GATE(0x807CED54, &lit_5408);

/* 807C53DC-807C53FC 002EDC 0020+00 2/2 0/0 0/0 .text            getRopeLength__8daE_VA_cFi */
// matches with literals
#ifdef NONMATCHING
f32 daE_VA_c::getRopeLength(int param_0) {
    if (param_0 < 5) {
        return nREG_F(18) + 115.0f;
    } else {
        return nREG_F(19) + 65.0f;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm f32 daE_VA_c::getRopeLength(int param_0){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/getRopeLength__8daE_VA_cFi.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CED58-807CED5C 0000B0 0004+00 0/2 0/0 0/0 .rodata          @5833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5833 = 150.0f;
COMPILER_STRIP_GATE(0x807CED58, &lit_5833);
#pragma pop

/* 807CED5C-807CED60 0000B4 0004+00 0/2 0/0 0/0 .rodata          @5834 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5834 = -150.0f;
COMPILER_STRIP_GATE(0x807CED5C, &lit_5834);
#pragma pop

/* 807CED60-807CED64 0000B8 0004+00 0/2 0/0 0/0 .rodata          @5835 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5835 = 400.0f;
COMPILER_STRIP_GATE(0x807CED60, &lit_5835);
#pragma pop

/* 807CED64-807CED68 0000BC 0004+00 0/2 0/0 0/0 .rodata          @5836 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5836 = -400.0f;
COMPILER_STRIP_GATE(0x807CED64, &lit_5836);
#pragma pop

/* 807CED68-807CED6C 0000C0 0004+00 0/4 0/0 0/0 .rodata          @5837 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5837 = -5.0f;
COMPILER_STRIP_GATE(0x807CED68, &lit_5837);
#pragma pop

/* 807CED6C-807CED70 0000C4 0004+00 0/4 0/0 0/0 .rodata          @5838 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5838 = 5.0f;
COMPILER_STRIP_GATE(0x807CED6C, &lit_5838);
#pragma pop

/* 807CED70-807CED74 0000C8 0004+00 0/2 0/0 0/0 .rodata          @5839 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5839 = -3.0f;
COMPILER_STRIP_GATE(0x807CED70, &lit_5839);
#pragma pop

/* 807CED74-807CED78 0000CC 0004+00 0/4 0/0 0/0 .rodata          @5840 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5840 = 300.0f;
COMPILER_STRIP_GATE(0x807CED74, &lit_5840);
#pragma pop

/* 807CED78-807CED80 0000D0 0004+04 0/1 0/0 0/0 .rodata          @5841 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5841[1 + 1 /* padding */] = {
    1.0f / 5.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x807CED78, &lit_5841);
#pragma pop

/* 807CED80-807CED88 0000D8 0008+00 3/10 0/0 0/0 .rodata          @5843 */
SECTION_RODATA static u8 const lit_5843[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x807CED80, &lit_5843);

/* 807CF504-807CF510 000094 000C+00 0/1 0/0 0/0 .bss             @5409 */
#pragma push
#pragma force_active on
static u8 lit_5409[12];
#pragma pop

/* 807CF510-807CF51C 0000A0 000C+00 0/1 0/0 0/0 .bss             @5410 */
#pragma push
#pragma force_active on
static u8 lit_5410[12];
#pragma pop

/* 807CF51C-807CF528 0000AC 000C+00 0/1 0/0 0/0 .bss             @5411 */
#pragma push
#pragma force_active on
static u8 lit_5411[12];
#pragma pop

/* 807CF528-807CF534 0000B8 000C+00 0/1 0/0 0/0 .bss             @5412 */
#pragma push
#pragma force_active on
static u8 lit_5412[12];
#pragma pop

/* 807CF534-807CF540 0000C4 000C+00 0/1 0/0 0/0 .bss             @5413 */
#pragma push
#pragma force_active on
static u8 lit_5413[12];
#pragma pop

/* 807CF540-807CF54C 0000D0 000C+00 0/1 0/0 0/0 .bss             @5414 */
#pragma push
#pragma force_active on
static u8 lit_5414[12];
#pragma pop

/* 807CF54C-807CF558 0000DC 000C+00 0/1 0/0 0/0 .bss             @5415 */
#pragma push
#pragma force_active on
static u8 lit_5415[12];
#pragma pop

/* 807CF558-807CF564 0000E8 000C+00 0/1 0/0 0/0 .bss             @5416 */
#pragma push
#pragma force_active on
static u8 lit_5416[12];
#pragma pop

/* 807CF564-807CF570 0000F4 000C+00 0/1 0/0 0/0 .bss             @5417 */
#pragma push
#pragma force_active on
static u8 lit_5417[12];
#pragma pop

/* 807CF570-807CF57C 000100 000C+00 0/1 0/0 0/0 .bss             @5418 */
#pragma push
#pragma force_active on
static u8 lit_5418[12];
#pragma pop

/* 807CF57C-807CF5F4 00010C 0078+00 1/2 0/0 0/0 .bss             line_end_pos */
#ifdef NONMATCHING
static cXyz line_end_pos[] = {
    cXyz(0.0f, 5.0f, 990.0f),     cXyz(971.0f, 5.0f, 326.0f),  cXyz(582.0f, 5.0f, -801.0f),
    cXyz(-582.0f, 5.0f, -801.0f), cXyz(-942.0f, 5.0f, 306.0f), cXyz(202.0f, 5.0f, 501.0f),
    cXyz(559.0f, 5.0f, -17.0f),   cXyz(458.0f, 5.0f, -306.0f), cXyz(-131.0f, 5.0f, -524.0f),
    cXyz(-414.0f, 5.0f, 347.0f),
};
#else
static u8 line_end_pos[120];
#endif

/* 807CF5F4-807CF600 000184 000C+00 0/1 0/0 0/0 .bss             @5419 */
#pragma push
#pragma force_active on
static u8 lit_5419[12];
#pragma pop

/* 807CF600-807CF60C 000190 000C+00 0/1 0/0 0/0 .bss             @5420 */
#pragma push
#pragma force_active on
static u8 lit_5420[12];
#pragma pop

/* 807CF60C-807CF618 00019C 000C+00 0/1 0/0 0/0 .bss             @5421 */
#pragma push
#pragma force_active on
static u8 lit_5421[12];
#pragma pop

/* 807CF618-807CF624 0001A8 000C+00 0/1 0/0 0/0 .bss             @5422 */
#pragma push
#pragma force_active on
static u8 lit_5422[12];
#pragma pop

/* 807CF624-807CF630 0001B4 000C+00 0/1 0/0 0/0 .bss             @5423 */
#pragma push
#pragma force_active on
static u8 lit_5423[12];
#pragma pop

/* 807CF630-807CF63C 0001C0 000C+00 0/1 0/0 0/0 .bss             @5424 */
#pragma push
#pragma force_active on
static u8 lit_5424[12];
#pragma pop

/* 807CF63C-807CF648 0001CC 000C+00 0/1 0/0 0/0 .bss             @5425 */
#pragma push
#pragma force_active on
static u8 lit_5425[12];
#pragma pop

/* 807CF648-807CF654 0001D8 000C+00 0/1 0/0 0/0 .bss             @5426 */
#pragma push
#pragma force_active on
static u8 lit_5426[12];
#pragma pop

/* 807CF654-807CF660 0001E4 000C+00 0/1 0/0 0/0 .bss             @5427 */
#pragma push
#pragma force_active on
static u8 lit_5427[12];
#pragma pop

/* 807CF660-807CF66C 0001F0 000C+00 0/1 0/0 0/0 .bss             @5428 */
#pragma push
#pragma force_active on
static u8 lit_5428[12];
#pragma pop

/* 807CF66C-807CF6E4 0001FC 0078+00 1/2 0/0 0/0 .bss             line_start_pos */
#ifdef NONMATCHING
static cXyz line_start_pos[] = {
    cXyz(-5.0f, -10.0f, -15.0f), cXyz(0.0f, 0.0f, -10.0f), cXyz(0.0f, -10.0f, -10.0f),
    cXyz(0.0f, 0.0f, -5.0f),     cXyz(0.0f, -5.0f, -5.0f), cXyz(0.0f, 25.0f, -15.0f),
    cXyz(0.0f, 5.0f, -10.0f),    cXyz(3.0f, 25.0f, -3.0f), cXyz(8.0f, 25.0f, 0.0f),
    cXyz(-8.0f, 23.0f, 8.0f),
};
#else
static u8 line_start_pos[120];
#endif

/* 807C53FC-807C5CF0 002EFC 08F4+00 2/2 0/0 0/0 .text            calcOpRopePos__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::calcOpRopePos() {
    cXyz sp60;
    cXyz sp6C;
    cXyz sp78;
    cXyz sp84;
    cXyz sp90;

    int idx;
    s16 var_r30;

    for (int i = 0; i < 10; i++) {
        int temp_3C = i * 10;
        mDoMtx_stack_c::transS(field_0x122c);
        mDoMtx_stack_c::transM(0.0f, 150.0f, 0.0f);
        mDoMtx_stack_c::ZXYrotM(field_0x1238);
        mDoMtx_stack_c::transM(0.0f, -150.0f, 0.0f);
        mDoMtx_stack_c::transM(0.0f, 400.0f, 0.0f);
        mDoMtx_stack_c::XrotM(field_0x123e);
        mDoMtx_stack_c::transM(0.0f, -400.0f, 0.0f);
        mDoMtx_stack_c::transM(line_start_pos[i]);
        mDoMtx_stack_c::multVecZero(&sp60);

        sp6C = line_end_pos[i];
        if (i == nREG_S(0)) {
            sp6C.x += nREG_F(8);
            sp6C.z += nREG_F(9);
        }

        f32 var_f31 = 0.0f;

        if (field_0x1104[i]) {
            field_0x112c[i] += nREG_S(0) + 0x800;
            cLib_chaseF(&field_0x1104[i], 0.0f, nREG_F(19) + 0.01f);

            var_r30 = (s16)cLib_targetAngleY(&sp60, &sp6C);
            var_f31 = field_0x1104[i] * cM_ssin(field_0x112c[i]);
        }

        for (int j = 0; j < 10; j++) {
            idx = temp_3C + j;

            if (field_0x109c[idx] & 2) {
                if (j == 0) {
                    field_0x994[idx] = sp60;
                } else {
                    field_0xe44[idx].y = 0x3130;

                    if (abs(field_0xe44[idx].z) <= 0x20 && abs(field_0xe44[idx].x + 0x4000) <= 0x20)
                    {
                        field_0xe44[idx].x = -0x4000;
                        field_0xe44[idx].z = 0;
                    } else if (field_0xe44[idx].x < -0x4000) {
                        field_0xe44[idx].z += 0x20;
                    } else {
                        field_0xe44[idx].z -= 0x20;
                    }

                    cLib_chaseAngleS(&field_0xe44[idx].z, 0, 8);
                    field_0xe44[idx].x += field_0xe44[idx].z;

                    f32 rope_len = getRopeLength(i);
                    sp84.y = rope_len * cM_ssin(field_0xe44[idx].x);

                    f32 temp_f31_2 = rope_len * cM_scos(field_0xe44[idx].x);
                    sp84.x = temp_f31_2 * cM_scos(field_0xe44[idx].y);
                    sp84.z = temp_f31_2 * cM_ssin(field_0xe44[idx].y);

                    sp78 = field_0x994[idx - 1] + sp84;
                    cLib_chasePos(&field_0x994[idx], sp78, 10.0f);
                }
            } else if (field_0x109c[idx] & 4) {
                field_0x994[idx].y += -5.0f;
                if (field_0x994[idx].y < 5.0f) {
                    field_0x994[idx].y = 5.0f;
                }
            } else if (field_0x109c[idx] & 8) {
                field_0x994[idx].y += -3.0f;
                if (field_0x994[idx].y < 5.0f) {
                    field_0x994[idx].y = 5.0f;
                }
            } else {
                if (j == 0) {
                    field_0x994[idx] = sp60;
                } else if (j == 9) {
                    field_0x994[idx] = sp6C;
                } else {
                    sp84 = field_0x994[idx] - sp60;
                    sp84.normalizeZP();

                    sp90 = sp6C - field_0x994[idx];
                    sp90.normalizeZP();

                    sp78 = (sp84 * line_pull_power[10 - j]) * (nREG_F(12) + 300.0f);
                    sp78 += (sp90 * line_pull_power[j]) * (nREG_F(13) + 300.0f);
                    sp78.y += -5.0f;
                    sp78.normalizeZP();

                    field_0x994[idx] = field_0x994[idx - 1] + (sp78 * getRopeLength(i));
                    if (field_0x994[idx].y < 5.0f) {
                        field_0x994[idx].y = 5.0f;
                    }

                    if (var_f31) {
                        f32 temp_f29 = (nREG_F(16) + 0.2f) * ((f32)(10 - j) * var_f31);
                        field_0x994[idx].x += temp_f29 * cM_scos(var_r30);
                        field_0x994[idx].z += temp_f29 * cM_ssin(var_r30);
                    }
                }
            }
        }
    }
    cXyz* pos;
    for (int i = 0; i < 11; i++) {
        pos = mRope.getPos(i);
        int temp_r5_2;
        if (i != 10) {
            int temp_r5 = i * 10;
            int sp68 = field_0x11b8[i] / getRopeLength(i);

            for (int j = 0; j < 10; j++, pos++) {
                temp_r5_2 = temp_r5 + j;
                *pos = field_0x994[temp_r5_2];

                if (sp68 >= 4) {
                    if (j <= sp68 && field_0x11b8[i]) {
                        *pos = field_0x1140[i];
                        field_0x109c[temp_r5_2] |= 1;
                    } else if ((field_0x109c[temp_r5_2] & 0x10) && j < 4) {
                        *pos = field_0x994[temp_r5 + 4];
                    }
                } else if ((field_0x109c[temp_r5_2] & 0x10) && j < 4) {
                    *pos = field_0x994[temp_r5 + 4];
                } else if (j <= sp68 && field_0x11b8[i]) {
                    *pos = field_0x1140[i];
                    field_0x109c[temp_r5_2] |= 1;
                }
            }

        } else {
            int temp_r5 = 50;
            int sp68 = field_0x11b8[5] / getRopeLength(5);

            for (int j = 0; j < 10; j++, pos++) {
                temp_r5_2 = temp_r5 + j;
                *pos = field_0x994[temp_r5_2];

                if (sp68 > 3) {
                    *pos = field_0x994[temp_r5 + 9];
                } else if (j <= sp68 && field_0x11b8[5]) {
                    *pos = field_0x1140[5];
                } else if ((field_0x109c[temp_r5_2] & 0x10) && j >= 3) {
                    *pos = field_0x994[temp_r5 + 3];
                }
            }
        }
    }

    for (int i = 0; i < 40; i++) {
        int idx = va_tag_set_num[i];

        if (field_0x109c[idx] & 1) {
            mCardModelType[i] |= 0x80;
        }

        if (field_0x109c[idx] & 0xC) {
            mCardModelType[i] |= 0x8;
        }

        field_0x660[i].y = cLib_targetAngleY(&field_0x994[idx - 1], &field_0x994[idx + 1]) + 0x4000;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcOpRopePos() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcOpRopePos__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C5CF0-807C5DF4 0037F0 0104+00 1/1 0/0 0/0 .text            onRopeCutStatus__8daE_VA_cFiii */
void daE_VA_c::onRopeCutStatus(int param_0, int param_1, int param_2) {
    int var_r31 = param_0 * 10;

    for (int i = 0; i < 10; i++) {
        int var_r24 = var_r31 + i;

        if (param_2 == 0) {
            field_0x109c[var_r24] |= 0x10;
        }

        if (i < param_1) {
            field_0x109c[var_r24] |= 2;

            if (param_2 == 0) {
                field_0xe44[var_r24].x =
                    cLib_targetAngleX(&field_0x994[var_r24 - 1], &field_0x994[var_r24]);
                field_0xe44[var_r24].y =
                    cLib_targetAngleY(&field_0x994[var_r24 - 1], &field_0x994[var_r24]);
                field_0xe44[var_r24].z = 0;
            }
        } else if (param_2 == 0) {
            field_0x109c[var_r24] |= 4;
        } else {
            field_0x109c[var_r24] |= 8;
        }
    }
}

/* ############################################################################################## */
/* 807CED88-807CED8C 0000E0 0004+00 1/1 0/0 0/0 .rodata          @5877 */
SECTION_RODATA static f32 const lit_5877 = 7168.0f;
COMPILER_STRIP_GATE(0x807CED88, &lit_5877);

/* 807C5DF4-807C5EAC 0038F4 00B8+00 1/1 0/0 0/0 .text            setVibRope__8daE_VA_cFff */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setVibRope(f32 param_0, f32 param_1) {
    field_0x1336 += (s16)(param_1 * 7168.0f);
    field_0x122c.y += (s16)(param_0 * cM_ssin(field_0x1336));
    field_0x123e += (s16)(param_0 * 50.0f * cM_ssin(field_0x1336));
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setVibRope(f32 param_0, f32 param_1){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setVibRope__8daE_VA_cFff.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CED8C-807CED90 0000E4 0004+00 1/1 0/0 0/0 .rodata          @5913 */
SECTION_RODATA static f32 const lit_5913 = 39.0f / 10.0f;
COMPILER_STRIP_GATE(0x807CED8C, &lit_5913);

/* 807CED90-807CED94 0000E8 0004+00 1/1 0/0 0/0 .rodata          @5914 */
SECTION_RODATA static f32 const lit_5914 = 4.0f;
COMPILER_STRIP_GATE(0x807CED90, &lit_5914);

/* 807C5EAC-807C6164 0039AC 02B8+00 2/2 0/0 0/0 .text            setVibTag__8daE_VA_cFii */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setVibTag(int param_0, int param_1) {
    for (int i = 0; i < 40; i++) {
        if (param_1 == -1 || param_1 == va_tag_set_num[i] / 10) {
            mCardModelType[i] |= 4;

            if (!(mCardModelType[i] & 8)) {
                switch (param_0) {
                case 0:
                    field_0x750[i].x += TAG_VIB_ANGLE[(int)cM_rndF(3.9f)];
                    field_0x750[i].z += TAG_VIB_ANGLE[(int)cM_rndF(3.9f)];
                    field_0x840[i].x = TAG_VIB_WIDTH[(int)(cM_rndF(3.9f) + 4.0f)];
                    field_0x840[i].z = TAG_VIB_WIDTH[(int)(cM_rndF(3.9f) + 4.0f)];
                    break;
                case 1:
                    field_0x750[i].x += TAG_VIB_ANGLE[i & 3];
                    field_0x750[i].z += TAG_VIB_ANGLE[(i >> 1) & 3];
                    field_0x840[i].x = TAG_VIB_WIDTH[i & 3];
                    field_0x840[i].z = TAG_VIB_WIDTH[(i >> 2) & 3];
                    break;
                case 2:
                    field_0x750[i].x += TAG_VIB_ANGLE[(i & 1) + 2];
                    field_0x750[i].z += TAG_VIB_ANGLE[((i >> 1) & 1) + 2];
                    field_0x840[i].x = TAG_VIB_WIDTH[(i & 3) + 4];
                    field_0x840[i].z = TAG_VIB_WIDTH[((i >> 2) & 3) + 4];
                    break;
                }

                field_0x660[i].x = field_0x840[i].x * cM_ssin(field_0x750[i].x);
                field_0x660[i].z = field_0x840[i].z * cM_ssin(field_0x750[i].z);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setVibTag(int param_0, int param_1){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setVibTag__8daE_VA_cFii.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CED94-807CED98 0000EC 0004+00 0/1 0/0 0/0 .rodata          @5960 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5960 = 160.0f;
COMPILER_STRIP_GATE(0x807CED94, &lit_5960);
#pragma pop

/* 807C6164-807C638C 003C64 0228+00 2/2 0/0 0/0 .text            calcTagAngle__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::calcTagAngle() {
    for (int i = 0; i < 40; i++) {
        if (mCardModelType[i] & 8) {
            f32 var_f30;
            switch (mCardModelType[i] & 3) {
            case 0:
                var_f30 = 160.0f;
                break;
            case 1:
                var_f30 = 100.0f;
                break;
            case 2:
                var_f30 = 50.0f;
                break;
            }

            f32 var_f31 = field_0x994[va_tag_set_num[i]].y - 5.0f;
            if (var_f31 < var_f30) {
                if (var_f31) {
                    f32 var_f29 = JMAFastSqrt(var_f30 * var_f30 - var_f31 * var_f31);
                    if (field_0x660[i].x < 0) {
                        field_0x660[i].x = -cM_atan2s(var_f29, var_f31);
                    } else {
                        field_0x660[i].x = cM_atan2s(var_f29, var_f31);
                    }
                }

                field_0x660[i].z = 0;
                mCardModelType[i] |= 4;
            }
        }

        if (!(mCardModelType[i] & 4)) {
            field_0x750[i].x += TAG_VIB_ANGLE[i & 1];
            field_0x750[i].z += TAG_VIB_ANGLE[(i >> 1) & 1];

            cLib_chaseAngleS(&field_0x840[i].x, 0, 4);
            cLib_chaseAngleS(&field_0x840[i].z, 0, 4);

            field_0x660[i].x = field_0x840[i].x * cM_ssin(field_0x750[i].x);
            field_0x660[i].z = field_0x840[i].z * cM_ssin(field_0x750[i].z);
        }

        mCardModelType[i] &= ~4;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcTagAngle() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcTagAngle__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C638C-807C6564 003E8C 01D8+00 1/1 0/0 0/0 .text            calcRopeFirePos__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::calcRopeFirePos() {
    int temp_r28;
    int var_r24;
    f32 var_f29;
    BOOL var_r31;

    cXyz sp48;
    for (int i = 0; i < 10; i++) {
        field_0x11b8[i] += nREG_F(15) + 60.0f;

        var_r24 = field_0x11b8[i] / getRopeLength(i);
        var_f29 = field_0x11b8[i] - ((f32)var_r24 * getRopeLength(i));
        var_r31 = 1;

        if (var_r24 < 9) {
            temp_r28 = var_r24 + (i * 10);
            sp48 = field_0x994[temp_r28 + 1] - field_0x994[temp_r28];
            sp48.normalizeZP();
            field_0x1140[i] = field_0x994[temp_r28] + (sp48 * var_f29);
        } else if (cLib_chasePos(&field_0x1140[i], field_0x994[(i * 10) + 9], nREG_F(15) + 60.0f)) {
            var_r31 = 0;
        }

        if (var_r31) {
            setFireEffect(i);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcRopeFirePos(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcRopeFirePos__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CED98-807CED9C 0000F0 0004+00 0/1 0/0 0/0 .rodata          @6069 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6069 = 110.0f;
COMPILER_STRIP_GATE(0x807CED98, &lit_6069);
#pragma pop

/* 807CED9C-807CEDA0 0000F4 0004+00 0/1 0/0 0/0 .rodata          @6070 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6070 = 275.0f;
COMPILER_STRIP_GATE(0x807CED9C, &lit_6070);
#pragma pop

/* 807CEDA0-807CEDA4 0000F8 0004+00 0/1 0/0 0/0 .rodata          @6071 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6071 = 51.0f;
COMPILER_STRIP_GATE(0x807CEDA0, &lit_6071);
#pragma pop

/* 807C6564-807C67A4 004064 0240+00 1/1 0/0 0/0 .text            executeDemoOpWait__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeDemoOpWait() {
    cXyz sp34;

    switch (mMode) {
    case 0:
        field_0x1387 = 1;
        mpWeaponBrk->setPlaySpeed(0.0f);
        mpWeaponBrk->setFrame(0.0f);

        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 10; j++) {
                if (i < 5) {
                    field_0x994[j + i * 10].x = j * 110.0f * cM_ssin(i * 0x3333);
                    field_0x994[j + i * 10].z = j * 110.0f * cM_scos(i * 0x3333);
                    field_0x994[j + i * 10].y = 275.0f - j * 30.0f;
                } else {
                    field_0x994[j + i * 10].x = j * 60.0f * cM_ssin(i * 0x3333);
                    field_0x994[j + i * 10].z = j * 60.0f * cM_scos(i * 0x3333);
                    field_0x994[j + i * 10].y = 275.0f - j * 30.0f;
                }
            }
        }

        field_0x122c.set(51.0f, 0.0f, 0.0f);
        field_0x1238.set(0, -0x5000, -0x8000);
        field_0x123e = 0;
        mMode = 1;
        field_0x1100 = 1;
    case 1:
        for (int i = 0; i < 190; i++) {
            if (!daPy_getPlayerActorClass()->i_checkNowWolf()) {
                mLineSphs[i].OffTgShield();
            } else {
                mLineSphs[i].OnTgShield();
            }
        }
        calcOpRopePos();
        break;
    }

    calcTagAngle();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeDemoOpWait(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeDemoOpWait__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEDA4-807CEDA8 0000FC 0004+00 0/1 0/0 0/0 .rodata          @6345 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6345 = 270.0f;
COMPILER_STRIP_GATE(0x807CEDA4, &lit_6345);
#pragma pop

/* 807CEDA8-807CEDAC 000100 0004+00 0/2 0/0 0/0 .rodata          @6346 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6346 = 600.0f;
COMPILER_STRIP_GATE(0x807CEDA8, &lit_6346);
#pragma pop

/* 807CEDAC-807CEDB0 000104 0004+00 0/1 0/0 0/0 .rodata          @6347 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6347 = 180.0f;
COMPILER_STRIP_GATE(0x807CEDAC, &lit_6347);
#pragma pop

/* 807CEDB0-807CEDB4 000108 0004+00 0/4 0/0 0/0 .rodata          @6348 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6348 = 200.0f;
COMPILER_STRIP_GATE(0x807CEDB0, &lit_6348);
#pragma pop

/* 807CEDB4-807CEDB8 00010C 0004+00 0/1 0/0 0/0 .rodata          @6349 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6349 = 2.5f;
COMPILER_STRIP_GATE(0x807CEDB4, &lit_6349);
#pragma pop

/* 807C67A4-807C7534 0042A4 0D90+00 2/1 0/0 0/0 .text            executeDemoOp__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeDemoOp() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    cXyz sp2C;
    cXyz sp38;
    daPy_py_c* player = daPy_getPlayerActorClass();

    calcOpRopePos();

    switch (mMode) {
    case 0:
        if (!eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
            eventInfo.i_onCondition(2);
            return;
        }

        dComIfGs_onOneZoneSwitch(9, fopAcM_GetRoomNo(this));
        player->changeOriginalDemo();

        sp38.set(270.0f, 0.0f, 210.0f);
        player->setPlayerPosAndAngle(&sp38, -0x6000, 0);
        player->changeDemoMode(1, 0, 0, 0);

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        field_0x1494.set(300.0f, 300.0f, 600.0f);
        field_0x1488.set(100.0f, 180.0f, 200.0f);
        field_0x14a0 = 60.0f;
        field_0x1340 = nREG_S(4) + 60;
        field_0x14a8 = 2.5f;

        onRopeCutStatus(5, 4, 0);

        Z2GetAudioMgr()->seStart(Z2SE_EN_VA_OPENING1, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        mMode = 1;
        Z2GetAudioMgr()->bgmStreamPrepare(0x200000A);
        Z2GetAudioMgr()->bgmStreamPlay();
        return;
    case 1:
        sp38.set(270.0f, 0.0f, 210.0f);
        player->setPlayerPosAndAngle(&sp38, -0x6000, 0);
        sp38.set(-50.0f, 90.0f, -100.0f);

        cLib_chasePos(&field_0x1494, sp38, field_0x14a8);
        cLib_chasePos(&field_0x1488, sp38, field_0x14a8);

        if (field_0x1340 == 0) {
            field_0x1344 = 0x62;
            mpWeaponBrk->setPlaySpeed(nREG_F(1) + 1.0f);
            mpWeaponBrk->setFrame(0.0f);
            field_0x1336 = 0;
            mMode = 2;
            field_0x1340 = 60 - nREG_S(4);
        }
        break;
    case 2:
        if (mpWeaponBrk->checkFrame(48.0f)) {
            mpWeaponBrk->setPlaySpeed(0.0f);
        }

        if (field_0x1340 != 0) {
            sp38.set(-50.0f, 90.0f, -100.0f);
            cLib_chasePos(&field_0x1494, sp38, field_0x14a8);
            cLib_chasePos(&field_0x1488, sp38, field_0x14a8);

            if (field_0x1340 < 25) {
                cLib_chaseF(&field_0x14a8, 0.0f, 0.1f);

                if (field_0x1340 > 15 && field_0x1340 < 25) {
                    setVibRope(1.0f, 1.0f);
                }

                if (field_0x1340 > 12 && field_0x1340 < 22) {
                    setVibTag(1, -1);
                }

                if (field_0x1340 == 0) {
                    mMode = 3;
                }
            }
        } else if (field_0x1344 == 0) {
            mMode = 4;
            field_0x1340 = 75;
        }
        break;
    case 4:
        setWeponGlow();

        if (field_0x1340 < 50) {
            setVibRope(1.0f, 1.3f);

            if (field_0x1340 < 45) {
                setVibTag(2, -1);
            }

            if (field_0x1340 == 0) {
                setWeponFlashScreen();
                mMode = 5;
                field_0x1340 = 50;

                for (int i = 0; i < 10; i++) {
                    field_0x1140[i] = field_0x994[i * 10];
                    onRopeCutStatus(i, 0, 1);
                }

                field_0x14a8 = 50.0f;

                dComIfGp_getVibration().StartQuake(6, 31, cXyz(0.0f, 1.0f, 0.0f));
                sp38.set(400.0f, 0.0f, 300.0f);
                player->setPlayerPosAndAngle(&sp38, -0x6000, 0);
                player->changeDemoMode(0x17, 0, 0, 0);
                return;
            }
        }
        break;
    case 5:
        sp38.set(459.0f, 394.0f, 920.0f);
        cLib_chasePos(&field_0x1494, sp38, field_0x14a8);

        sp38.set(259.0f, 275.0f, 519.0f);
        cLib_chasePos(&field_0x1488, sp38, field_0x14a8);
        cLib_chaseF(&field_0x14a8, 0.0f, 1.0f);

        if (field_0x1340 == 20) {
            dComIfGp_getVibration().StopQuake(31);
        }

        setVibRope(1.0f, 1.3f);
        setVibTag(2, -1);
        calcRopeFirePos();

        if (field_0x1340 == 0) {
            sp38.set(800.0f, 0.0f, 380.0f);
            player->setPlayerPosAndAngle(&sp38, -0x5000, 0);
            mMode = 6;

            mpWeaponBrk->setPlaySpeed(1.0f);
            field_0x1488.set(field_0x122c.x, 150.0f, field_0x122c.z);
            field_0x14ac = 0x1800;
            cLib_chaseAngleS(&field_0x14ac, 0x2800, 0x20);

            sp38.set(0.0f, 150.0f, 0.0f);
            sp2C.set(0.0f, 50.0f, 400.0f);
            cLib_offsetPos(&field_0x1494, &sp38, field_0x14ac, &sp2C);
            field_0x14a0 = 60.0f;
            field_0x1389 = 1;
            field_0x1340 = 130;

            if (!player->i_checkNowWolf()) {
                player->changeDemoMode(0x17, 0, 0, 0);
            }

            Z2GetAudioMgr()->seStart(Z2SE_EN_VA_OPENING2, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            return;
        }
        break;
    case 6:
        mMode = 7;
        field_0x122c.y = -100.0f;
    case 7:
        if (field_0x1340 > 115 || (field_0x1340 < 90 && field_0x1340 > 60)) {
            field_0x122c.y += 1.0f;
            setVibRope(2.0f, 1.0f);
        } else if (field_0x1340 < 10) {
            field_0x122c.y += 1.0f;
            setVibRope(2.0f, 1.3f);
        } else if (field_0x1340 < 30) {
            field_0x122c.y += nREG_F(1) + 5.0f;
            setVibRope(2.0f, 1.0f);
        } else {
            field_0x122c.y += 0.2f;
            setVibRope(1.0f, 1.0f);
        }

        field_0x1488.set(field_0x122c.x, 150.0f, field_0x122c.z);
        cLib_chaseAngleS(&field_0x14ac, 0x2800, 0x20);

        sp38.set(0.0f, 150.0f, 0.0f);
        sp2C.set(0.0f, 50.0f, 400.0f);
        cLib_offsetPos(&field_0x1494, &sp38, field_0x14ac, &sp2C);

        if (field_0x1340 == 0) {
            mMode = 8;
            field_0x1340 = 300;
            field_0x14a4 = 600.0f;
            field_0x1389 = 2;
            field_0x1336 = 0x1400;
            field_0x1334 = 0xA00;
            field_0x1310 = 28.0f;
            field_0x123e = 0;
            field_0x1100 = 0;
            field_0x1374 = 4;
        }
        break;
    case 8:
        field_0x1488.set(field_0x122c.x, field_0x122c.y + 150.0f, field_0x122c.z);
        sp38.set(950.0f, 50.0f, 550.0f);
        cLib_chasePos(&field_0x1494, sp38, 15.0f);

        field_0x1310--;
        if (field_0x1310 < -10.0f) {
            field_0x1310 = -10.0f;
        }

        field_0x122c.y += field_0x1310;

        if (field_0x1340 < 267) {
            cLib_chaseAngleS(&field_0x1336, 0, 0x100);
        }

        if (field_0x1340 < 254) {
            cLib_chaseAngleS(&field_0x1334, 0, 0x100);
        }

        field_0x1238.z += field_0x1336;
        field_0x1238.x += field_0x1334;

        if (field_0x1340 < 270) {
            cLib_addCalcAngleS(&field_0x1238.x, -0x0C03, 4, 0x200, 0x100);
            cLib_addCalcAngleS(&field_0x1238.y, -0x43B1, 4, 0x200, 0x100);
            cLib_addCalcAngleS(&field_0x1238.z, -0x195D, 4, 0x200, 0x100);
        }

        sp38.set(26.0f, 187.0f, 236.0f);
        f32 old = field_0x122c.y;

        if (cLib_chasePosXZ(&field_0x122c, sp38, 4.2f)) {
            field_0x122c.y = old;
        }

        if (field_0x1310 < 0.0f && field_0x122c.y < 192.0f) {
            field_0x122c = sp38;
            field_0x1238.set(-0x0C03, -0x43B1, -0x195D);

            setBck(15, 2, 3.0f, 1.0f);
            mMode = 9;
            field_0x1240 = 1;
            field_0x1340 = 60;
            field_0x1389 = 3;
        }
        break;
    case 9:
        cLib_chaseAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 0x98);
        current.angle.y = shape_angle.y;

        sp38.set(field_0x122c.x, field_0x122c.y + 150.0f, field_0x122c.z);
        cLib_chasePos(&field_0x1488, sp38, 5.0f);

        sp38.set(950.0f, 50.0f, 550.0f);
        cLib_chasePos(&field_0x1494, sp38, 15.0f);

        if (field_0x1340 == 0) {
            setBck(0x11, 0, 3.0f, 1.0f);
            mMode = 10;
        }
        break;
    case 10:
        field_0x1488.set(field_0x122c.x, field_0x122c.y + 150.0f, field_0x122c.z);
        sp38.set(950.0f, 50.0f, 550.0f);
        cLib_chasePos(&field_0x1494, sp38, nREG_F(19) + 15.0f);

        if (mpMorf->checkFrame(50.0f)) {
            player->changeDemoMode(0x22, 0, 0, 0);
        }

        if (mpMorf->checkFrame(67.0f)) {
            setWeponLandEffect();
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_IMPACT, 0, -1);
            dComIfGp_getVibration().StartShock(5, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (mpMorf->isStop()) {
            camera->mCamera.Reset(field_0x1488, field_0x1494, field_0x14a0, 0);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();

            field_0x1387 = 0;
            setActionMode(ACTION_CLEAR_WAIT_e, 0);
            field_0x1340 = 60;
            Z2GetAudioMgr()->subBgmStart(Z2BGM_VARIANT);
            Z2GetAudioMgr()->changeSubBgmStatus(1);
            return;
        }
    }

    calcTagAngle();
    camera->mCamera.Set(field_0x1488, field_0x1494, field_0x14a0, 0);
    dComIfGp_getEvent().onSkipFade();
    dComIfGp_getEvent().setSkipProc(this, DemoSkipCallBack, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeDemoOp(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeDemoOp__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEDB8-807CEDBC 000110 0004+00 0/0 0/0 0/0 .rodata          @6350 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6350 = 90.0f;
COMPILER_STRIP_GATE(0x807CEDB8, &lit_6350);
#pragma pop

/* 807CEDBC-807CEDC0 000114 0004+00 0/0 0/0 0/0 .rodata          @6351 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6351 = -100.0f;
COMPILER_STRIP_GATE(0x807CEDBC, &lit_6351);
#pragma pop

/* 807CEDC0-807CEDC4 000118 0004+00 0/0 0/0 0/0 .rodata          @6352 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6352 = 48.0f;
COMPILER_STRIP_GATE(0x807CEDC0, &lit_6352);
#pragma pop

/* 807CEDC4-807CEDC8 00011C 0004+00 0/0 0/0 0/0 .rodata          @6353 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6353 = 13.0f / 10.0f;
COMPILER_STRIP_GATE(0x807CEDC4, &lit_6353);
#pragma pop

/* 807CEDC8-807CEDCC 000120 0004+00 0/0 0/0 0/0 .rodata          @6354 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6354 = 459.0f;
COMPILER_STRIP_GATE(0x807CEDC8, &lit_6354);
#pragma pop

/* 807CEDCC-807CEDD0 000124 0004+00 0/0 0/0 0/0 .rodata          @6355 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6355 = 394.0f;
COMPILER_STRIP_GATE(0x807CEDCC, &lit_6355);
#pragma pop

/* 807CEDD0-807CEDD4 000128 0004+00 0/0 0/0 0/0 .rodata          @6356 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6356 = 920.0f;
COMPILER_STRIP_GATE(0x807CEDD0, &lit_6356);
#pragma pop

/* 807CEDD4-807CEDD8 00012C 0004+00 0/0 0/0 0/0 .rodata          @6357 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6357 = 259.0f;
COMPILER_STRIP_GATE(0x807CEDD4, &lit_6357);
#pragma pop

/* 807CEDD8-807CEDDC 000130 0004+00 0/0 0/0 0/0 .rodata          @6358 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6358 = 519.0f;
COMPILER_STRIP_GATE(0x807CEDD8, &lit_6358);
#pragma pop

/* 807CEDDC-807CEDE0 000134 0004+00 0/0 0/0 0/0 .rodata          @6359 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6359 = 380.0f;
COMPILER_STRIP_GATE(0x807CEDDC, &lit_6359);
#pragma pop

/* 807CEDE0-807CEDE4 000138 0004+00 0/2 0/0 0/0 .rodata          @6360 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6360 = 2.0f;
COMPILER_STRIP_GATE(0x807CEDE0, &lit_6360);
#pragma pop

/* 807CEDE4-807CEDE8 00013C 0004+00 0/0 0/0 0/0 .rodata          @6361 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6361 = 28.0f;
COMPILER_STRIP_GATE(0x807CEDE4, &lit_6361);
#pragma pop

/* 807CEDE8-807CEDEC 000140 0004+00 0/1 0/0 0/0 .rodata          @6362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6362 = 950.0f;
COMPILER_STRIP_GATE(0x807CEDE8, &lit_6362);
#pragma pop

/* 807CEDEC-807CEDF0 000144 0004+00 0/0 0/0 0/0 .rodata          @6363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6363 = 550.0f;
COMPILER_STRIP_GATE(0x807CEDEC, &lit_6363);
#pragma pop

/* 807CEDF0-807CEDF4 000148 0004+00 0/2 0/0 0/0 .rodata          @6364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6364 = 15.0f;
COMPILER_STRIP_GATE(0x807CEDF0, &lit_6364);
#pragma pop

/* 807CEDF4-807CEDF8 00014C 0004+00 0/1 0/0 0/0 .rodata          @6365 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6365 = 26.0f;
COMPILER_STRIP_GATE(0x807CEDF4, &lit_6365);
#pragma pop

/* 807CEDF8-807CEDFC 000150 0004+00 0/0 0/0 0/0 .rodata          @6366 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6366 = 187.0f;
COMPILER_STRIP_GATE(0x807CEDF8, &lit_6366);
#pragma pop

/* 807CEDFC-807CEE00 000154 0004+00 0/0 0/0 0/0 .rodata          @6367 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6367 = 236.0f;
COMPILER_STRIP_GATE(0x807CEDFC, &lit_6367);
#pragma pop

/* 807CEE00-807CEE04 000158 0004+00 0/0 0/0 0/0 .rodata          @6368 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6368 = 21.0f / 5.0f;
COMPILER_STRIP_GATE(0x807CEE00, &lit_6368);
#pragma pop

/* 807CEE04-807CEE08 00015C 0004+00 0/0 0/0 0/0 .rodata          @6369 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6369 = 192.0f;
COMPILER_STRIP_GATE(0x807CEE04, &lit_6369);
#pragma pop

/* 807CEE08-807CEE0C 000160 0004+00 0/0 0/0 0/0 .rodata          @6370 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6370 = 67.0f;
COMPILER_STRIP_GATE(0x807CEE08, &lit_6370);
#pragma pop

/* 807CEE0C-807CEE10 000164 0004+00 0/8 0/0 0/0 .rodata          @6394 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6394 = 20.0f;
COMPILER_STRIP_GATE(0x807CEE0C, &lit_6394);
#pragma pop

/* 807C7534-807C7640 005034 010C+00 1/1 0/0 0/0 .text            executeClearWait__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeClearWait() {
    switch (mMode) {
    case 1:
        field_0x1340 = 60;
        /* fallthrough */
    case 0:
        setBck(0xF, 2, 20.0f, 1.0f);
        attention_info.flags = 4;
        mMode = 2;
        /* fallthrough */
    case 2:
        cLib_addCalc(&current.pos.y, 0.0f, 0.1f, 10.0f, 1.0f);

        if (field_0x1340 == 0) {
            if (fopAcM_searchPlayerDistance(this) < 2000.0f) {
                setActionMode(ACTION_CLEAR_CHASE_e, 0);
            }
        }

        if (daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
            setActionMode(ACTION_TRANS_WAIT_e, 0);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeClearWait() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeClearWait__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C7640-807C783C 005140 01FC+00 1/1 0/0 0/0 .text            executeClearChase__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeClearChase() {
    cLib_addCalc(&current.pos.y, 0.0f, 0.1f, 10.0f, 1.0f);

    switch (mMode) {
    case 0:
        setBck(0xF, 2, 3.0f, 1.0f);
        mMode = 1;
        /* fallthrough */
    case 1:
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x400, 0x40);
        current.angle.y = shape_angle.y;

        if (fopAcM_searchPlayerDistance(this) > l_HIO.mAttackRange) {
            cLib_chaseF(&speedF, 10.0f, 1.0f);
        } else if (fopAcM_searchPlayerDistance(this) < l_HIO.mAttackRange - 200.0f) {
            cLib_chaseF(&speedF, -10.0f, 1.0f);
        } else {
            cLib_chaseF(&speedF, 0.0f, 1.0f);

            if (speedF == 0.0f && field_0x1340 == 0) {
                setActionMode(ACTION_CLEAR_ATTACK_e, 0);
                return;
            }
        }

        if (speedF != 0.0f) {
            if (!checkBck(0x10)) {
                setBck(0x10, 2, 10.0f, 1.0f);
            }
        } else {
            if (!checkBck(0xF)) {
                setBck(0xF, 2, 10.0f, 1.0f);
            }
        }
    }

    if (daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
        setActionMode(ACTION_TRANS_WAIT_e, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeClearChase(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeClearChase__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE10-807CEE14 000168 0004+00 0/1 0/0 0/0 .rodata          @6485 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6485 = 32.0f;
COMPILER_STRIP_GATE(0x807CEE10, &lit_6485);
#pragma pop

/* 807CEE14-807CEE18 00016C 0004+00 0/1 0/0 0/0 .rodata          @6486 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6486 = 36.0f;
COMPILER_STRIP_GATE(0x807CEE14, &lit_6486);
#pragma pop

/* 807CEE18-807CEE1C 000170 0004+00 0/1 0/0 0/0 .rodata          @6487 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6487 = 43.0f;
COMPILER_STRIP_GATE(0x807CEE18, &lit_6487);
#pragma pop

/* 807CEE1C-807CEE20 000174 0004+00 0/1 0/0 0/0 .rodata          @6488 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6488 = 85.0f;
COMPILER_STRIP_GATE(0x807CEE1C, &lit_6488);
#pragma pop

/* 807C783C-807C7A8C 00533C 0250+00 1/1 0/0 0/0 .text            executeClearAttack__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeClearAttack() {
    f32 anm_frame = mpMorf->getFrame();
    cLib_addCalc(&current.pos.y, 0.0f, 0.1f, 10.0f, 1.0f);

    switch (mMode) {
    case 0:
        setBck(0xD, 0, 3.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK_T, 0, -1);
        mMode = 1;
        return;
    case 1:
        if (mpMorf->checkFrame(32.0f)) {
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK1, 0, -1);
        }

        if (mpMorf->checkFrame(36.0f)) {
            setWeponLandEffect();
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_IMPACT, 0, -1);
            dComIfGp_getVibration().StartShock(5, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (30.0f <= anm_frame && anm_frame <= 43.0f) {
            onSwordAtBit();
        } else if (anm_frame > 43.0f && anm_frame < 85.0f) {
            offSwordShield();
        }

        if (mpMorf->isStop()) {
            setActionMode(ACTION_CLEAR_CHASE_e, 0);
            field_0x1340 = 150;
        }
        break;
    }

    if (daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
        setActionMode(ACTION_TRANS_WAIT_e, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeClearAttack() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeClearAttack__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C7A8C-807C7C74 00558C 01E8+00 1/1 0/0 0/0 .text            executeTransWait__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeTransWait() {
    switch (mMode) {
    case 0:
        Z2GetAudioMgr()->changeSubBgmStatus(2);
        field_0x1370 = 1;
        attention_info.flags = 4;
        speedF = 0.0f;
        mMode = 1;
        setBck(0x2C, 2, 10.0f, 1.0f);
        field_0x1340 = 5;

        if (!dComIfGs_isOneZoneSwitch(5, fopAcM_GetRoomNo(this))) {
            dComIfGs_onOneZoneSwitch(5, fopAcM_GetRoomNo(this));
        }
        /* fallthrough */
    case 1:
        cLib_addCalc(&current.pos.y, 0.0f, 0.1f, 10.0f, 1.0f);
        if (field_0x1340 == 0) {
            setBck(0xE, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_FOUND, -1);
            mMode = 2;
        }
        break;
    case 2:
        cLib_addCalc(&current.pos.y, 0.0f, 0.1f, 10.0f, 1.0f);
        field_0x1391 = 1;

        if (mpMorf->isStop()) {
            setActionMode(ACTION_TRANS_CHASE_e, 0);
        }
        break;
    }

    if (!daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
        Z2GetAudioMgr()->changeSubBgmStatus(1);
        setActionMode(ACTION_OPACI_FADE_AWAY_e, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransWait() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransWait__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C7C74-807C7ED4 005774 0260+00 1/1 0/0 0/0 .text            executeTransChase__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeTransChase() {
    f32 dist_to_player = fopAcM_searchPlayerDistanceXZ(this);
    s16 angleY_to_player = fopAcM_searchPlayerAngleY(this);

    switch (mMode) {
    case 0:
        setBck(0x2C, 2, 10.0f, 1.0f);
        mMode = 1;
        /* fallthrough */
    case 1:
        if (abs((s16)(shape_angle.y - angleY_to_player)) > 0x6000) {
            shape_angle.y += 0x400;
        } else {
            cLib_addCalcAngleS(&shape_angle.y, angleY_to_player, 8, 0x400, 0x40);
        }

        current.angle.y = shape_angle.y;

        if (dist_to_player > l_HIO.mAttackRange) {
            cLib_chaseF(&speedF, 15.0f, 1.0f);
        } else if (dist_to_player < l_HIO.mAttackRange - 200.0f) {
            if (field_0x1340 == 0) {
                cLib_chaseF(&speedF, 0.0f, 1.0f);
            } else {
                cLib_chaseF(&speedF, -10.0f, 1.0f);
            }
        } else {
            cLib_chaseF(&speedF, 0.0f, 1.0f);
        }

        if (speedF == 0.0f && field_0x1340 == 0 && dist_to_player <= l_HIO.mAttackRange &&
            abs((s16)(shape_angle.y - angleY_to_player)) < 0x2000)
        {
            setActionMode(ACTION_TRANS_ATTACK_e, 0);
            return;
        }

        if (speedF) {
            if (!checkBck(0x2D)) {
                setBck(0x2D, 2, 10.0f, 1.0f);
            }
        } else {
            setBck(0x2C, 2, 10.0f, 1.0f);
        }
    }

    if (!daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
        Z2GetAudioMgr()->changeSubBgmStatus(1);
        setActionMode(ACTION_OPACI_FADE_AWAY_e, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransChase(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransChase__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE20-807CEE24 000178 0004+00 0/3 0/0 0/0 .rodata          @6686 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6686 = 22.0f;
COMPILER_STRIP_GATE(0x807CEE20, &lit_6686);
#pragma pop

/* 807CEE24-807CEE28 00017C 0004+00 0/2 0/0 0/0 .rodata          @6687 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6687 = 33.0f;
COMPILER_STRIP_GATE(0x807CEE24, &lit_6687);
#pragma pop

/* 807CEE28-807CEE2C 000180 0004+00 0/2 0/0 0/0 .rodata          @6688 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6688 = 53.0f;
COMPILER_STRIP_GATE(0x807CEE28, &lit_6688);
#pragma pop

/* 807C7ED4-807C839C 0059D4 04C8+00 1/1 0/0 0/0 .text            executeTransAttack__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeTransAttack() {
    f32 anm_frame = mpMorf->getFrame();

    switch (mMode) {
    case 0:
        setBck(0x25, 0, 3.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK_T, 0, -1);
        mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK1, -1);
        mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK1, 0, -1);
        mMode = 2;
        break;
    case 2:
        if (mpMorf->checkFrame(22.0f)) {
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK1, 0, -1);
        }

        if (mpMorf->checkFrame(26.0f)) {
            setWeponLandEffect();
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_IMPACT, 0, -1);
            dComIfGp_getVibration().StartShock(5, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (20.0f <= anm_frame && anm_frame <= 33.0f) {
            onSwordAtBit();
        } else if (anm_frame > 33.0f) {
            offSwordShield();
        }

        if (mpMorf->checkFrame(20.0f)) {
            field_0x137f = 1;
            mBodyCyls[0].OnTgSetBit();
            mBodyCyls[1].OnTgSetBit();
            mBodyCyls[0].SetTgType(0xD8FBFDFF);
            mBodyCyls[1].SetTgType(0xD8FBFDFF);
        }

        if (mpMorf->isStop()) {
            setBck(0x27, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK3, -1);
            mMode = 4;
        }
        break;
    case 4:
        if (mpMorf->checkFrame(20.0f)) {
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK2, 0, -1);
        }

        if (mpMorf->checkFrame(53.0f)) {
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK3, 0, -1);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK3, -1);
        }

        if (anm_frame <= 20.0f) {
            offSwordShield();
        }

        if (mpMorf->checkFrame(40.0f)) {
            field_0x137f = 0;
            mBodyCyls[0].OffTgSetBit();
            mBodyCyls[1].OffTgSetBit();
        }

        if (mpMorf->isStop()) {
            setActionMode(ACTION_TRANS_CHASE_e, 0);
            field_0x1340 = 90;
        }
        break;
    }

    if (!daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
        Z2GetAudioMgr()->changeSubBgmStatus(1);

        if (!checkBck(0x27)) {
            setBck(0x27, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK3, -1);
        }

        setActionMode(ACTION_OPACI_FADE_AWAY_e, 10);
        mBodyCyls[0].OffTgSetBit();
        mBodyCyls[1].OffTgSetBit();
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransAttack() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransAttack__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C839C-807C8860 005E9C 04C4+00 1/1 0/0 0/0 .text            executeTransBiteDamage__8daE_VA_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeTransBiteDamage() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp38;

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x21));
    mDoMtx_stack_c::multVecZero(&sp38);

    switch (mMode) {
    case 0:
        speedF = 0.0f;
        setBck(0x28, 0, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_VA_V_BITED, -1);
        mMode = 1;
        field_0x1324 = 0;
        field_0x135c = 0;
        field_0x137f = 1;

        mBodyCyls[0].OffTgSetBit();
        mBodyCyls[1].OffTgSetBit();

        if ((s16)(cLib_targetAngleY(&sp38, &player->current.pos) - shape_angle.y) < 0) {
            field_0x1390 = 0;
        } else {
            field_0x1390 = 1;
        }
        /* fallthrough */
    case 1:
        s16 var_r4;
        if (field_0x1390 != 0) {
            var_r4 = shape_angle.y - 0x4000;
        } else {
            var_r4 = shape_angle.y + 0x4000;
        }

        player->setWolfEnemyHangBiteAngle(var_r4);

        if (checkWolfBiteDamage()) {
            offWolfBiteDamage();
            field_0x135c++;
            field_0x1324++;

            if (field_0x135c >= l_HIO.mBiteCount) {
                field_0x135c = 0;
                player->offWolfEnemyHangBite();
                setActionMode(ACTION_OPACI_WAIT_e, 0);
                mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x20);
                attention_info.flags = 0;
                return;
            }

            setBck(0x28, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_BITED, -1);
            mSound.startCollisionSE(Z2SE_HIT_WOLFBITE, 0x1E);
        }

        if (checkBck(0x28)) {
            if (mpMorf->isStop()) {
                setBck(0x26, 2, 3.0f, 1.0f);
            }
        } else if (checkBck(0x26) && mpMorf->checkFrame(22.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK2, -1);
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK2, 0, -1);
        }

        if (!daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
            player->offWolfEnemyHangBite();
            Z2GetAudioMgr()->changeSubBgmStatus(1);
            setActionMode(ACTION_OPACI_FADE_AWAY_e, 0);
            return;
        }

        if (!player->checkWolfEnemyHangBiteOwn(this)) {
            setBck(0x29, 0, 3.0f, 1.0f);
            mMode = 3;
            field_0x137f = 0;
        }
        break;
    case 3:
        if (mpMorf->isStop()) {
            setActionMode(ACTION_TRANS_CHASE_e, 0);
            return;
        }
    }

    setDownPos(&sp38);
    if (!daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
        Z2GetAudioMgr()->changeSubBgmStatus(1);
        setActionMode(ACTION_OPACI_FADE_AWAY_e, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransBiteDamage() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransBiteDamage__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C8860-807C8A84 006360 0224+00 1/1 0/0 0/0 .text            executeTransDamage__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeTransDamage() {
    if (checkWolfBiteDamage()) {
        offWolfBiteDamage();
        daPy_getPlayerActorClass()->offWolfEnemyHangBite();
    }

    switch (mMode) {
    case 0:
        field_0x138f++;
        if (field_0x138f >= 5) {
            setActionMode(ACTION_OPACI_WAIT_e, 0);
            attention_info.flags = 0;
            mBodyCyls[0].OffTgSetBit();
            mBodyCyls[1].OffTgSetBit();
            return;
        }

        speedF = 0.0f;
        setBck(0x28, 0, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_VA_V_BITED, -1);

        mMode = 1;
        field_0x137f = 1;
        mBodyCyls[0].OnTgSetBit();
        mBodyCyls[1].OnTgSetBit();
        mBodyCyls[0].SetTgType(0xD8FBFDFF);
        mBodyCyls[1].SetTgType(0xD8FBFDFF);
        /* fallthrough */
    case 1:
        if (mpMorf->isStop()) {
            setBck(0x29, 0, 3.0f, 1.0f);
            mMode = 2;
        }
        break;
    case 2:
        if (mpMorf->checkFrame(30.0f)) {
            field_0x137f = 0;
            mBodyCyls[0].OffTgSetBit();
            mBodyCyls[1].OffTgSetBit();
        }

        if (mpMorf->isStop()) {
            setActionMode(ACTION_TRANS_CHASE_e, 0);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransDamage() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransDamage__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C8A84-807C8B78 006584 00F4+00 1/1 0/0 0/0 .text            executeTransThrough__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeTransThrough() {
    switch (mMode) {
    case 0:
        speedF = 0.0f;
        setBck(0x2B, 0, 3.0f, 1.0f);
        mMode = 1;
        break;
    case 1:
        if (mpMorf->isStop()) {
            setActionMode(ACTION_TRANS_CHASE_e, 0);
        }
        break;
    }

    if (!daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
        Z2GetAudioMgr()->changeSubBgmStatus(1);
        setActionMode(ACTION_OPACI_FADE_AWAY_e, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeTransThrough() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeTransThrough__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C8B78-807C915C 006678 05E4+00 2/1 0/0 0/0 .text            executeOpaciWait__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciWait() {
    dCamera_c* camera = dCam_getBody();
    cXyz sp24;
    cXyz sp30;

    switch (mMode) {
    case 0:
        if (field_0x1486 == 0) {
            field_0x1486 = 1;
            mMode = 10;

            if (!dComIfGs_isOneZoneSwitch(8, fopAcM_GetRoomNo(this))) {
                dComIfGs_onOneZoneSwitch(8, fopAcM_GetRoomNo(this));
            }
        } else {
            field_0x1370 = 2;
            field_0x1380 = 30;
            field_0x137e = 0;
            field_0x137d = 0;
            field_0x137c = 0;
            field_0x1314 = 1.0f;
            field_0x1374 = 1;
            field_0x1354 = 10;
            attention_info.flags = 4;
            field_0x134c = l_HIO.mMaterializeTime;

            speedF = 0.0f;
            setActionMode(ACTION_OPACI_FLY_e, 22);
        }

        Z2GetAudioMgr()->changeSubBgmStatus(3);
        break;
    case 10:
        if (!eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
            eventInfo.i_onCondition(2);
        } else {
            field_0x1370 = 2;
            field_0x1380 = 30;
            field_0x137e = 0;
            field_0x137d = 0;
            field_0x137c = 0;
            field_0x1314 = 1.0f;
            field_0x1374 = 1;

            setBck(0x2A, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_VISUAL, -1);
            field_0x1354 = 10;
            speedF = 0.0f;
            mMode = 12;

            sp24.set(200.0f, 0.0f, 100.0f);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&sp24, 0x8000, 0);
            daPy_getPlayerActorClass()->changeOriginalDemo();
            daPy_getPlayerActorClass()->changeDemoMode(0x17, 1, 0, 0);

            camera->Stop();
            camera->SetTrimSize(3);
            field_0x14ac = -0x1000;
            field_0x1488.set(15.0f, 291.0f, 201.0f);
            sp30.set(0.0f, 50.0f, 700.0f);
            cLib_offsetPos(&field_0x1494, &current.pos, field_0x14ac, &sp30);
            field_0x14a0 = 70.0f;
            field_0x14a4 = 0.0f;
        }
        break;
    case 12:
        current.pos.set(0.0f, 0.0f, 0.0f);
        eyePos.set(15.0f, 291.0f, 201.0f);
        current.angle.y = 0;
        shape_angle.y = 0;
        mMode = 13;
        /* fallthrough */
    case 13:
        field_0x14a4++;
        field_0x1488 = eyePos;

        sp30.set(0.0f, field_0x14a4 + 50.0f, 700.0f);
        cLib_offsetPos(&field_0x1494, &current.pos, field_0x14ac, &sp30);
        field_0x14ac += 80;

        camera->Set(field_0x1488, field_0x1494, field_0x14a0, 0);
        cLib_addCalcAngleS(&shape_angle.y, -0x1000, 8, 0x100, 0x100);

        if (mpMorf->checkFrame(90.0f)) {
            mMode = 14;
            dComIfGp_getVibration().StartQuake(2, 31, cXyz(0.0f, 1.0f, 0.0f));
            field_0x14b0 = 180.0f;
        }
        break;
    case 14:
        cLib_addCalc2(&field_0x14b0, 0.0f, 1.0f, 6.0f);
        field_0x1488 = eyePos;
        cLib_chaseF(&field_0x14a0, 30.0f, 5.0f);

        camera->Set(field_0x1488, field_0x1494, field_0x14a0, 0);

        if (mpMorf->checkFrame(120.0f)) {
            dComIfGp_getVibration().StopQuake(31);
        }

        if (mpMorf->isStop()) {
            camera->Reset(field_0x1488, field_0x1494);
            camera->Start();
            camera->SetTrimSize(0);
            dComIfGp_event_reset();

            field_0x134c = l_HIO.mMaterializeTime;
            attention_info.flags = 4;
            setBck(0x24, 2, 3.0f, 1.0f);
            mMode = 15;
            field_0x1340 = 30;
        }
        break;
    case 15:
        if (field_0x1340 == 0) {
            setActionMode(ACTION_OPACI_FLY_e, 0);
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciWait() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciWait__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807C915C-807C9A40 006C5C 08E4+00 2/1 0/0 0/0 .text            executeOpaciFly__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciFly() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 var_r31 = cM_atan2s(current.pos.x, current.pos.z);

    mBodyCyls[0].OnTgSetBit();
    mBodyCyls[1].OnTgSetBit();
    mBodyCyls[0].SetTgType(0x16060);
    mBodyCyls[1].SetTgType(0x16060);

    switch (mMode) {
    case 0:
    case 20:
    case 21:
    case 22:
        attention_info.flags = 0;

        if (mMode == 0) {
            setBck(0xc, 2, 3.0f, 1.0f);
        } else if (mMode == 20) {
            setBck(0x1a, 0, 10.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_DMG_L, -1);
        } else if (mMode == 21) {
            setBck(0x1c, 0, 10.0f, 1.0f);
        } else if (mMode == 22) {
            setBck(0x28, 0, 10.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_BITED, -1);
        }

        mMode = 1;
        gravity = 0.0f;

        s16 temp_r0 = shape_angle.y + 0x8000;
        f32 temp_f29 = cM_scos(temp_r0) * 1000.0f;
        f32 temp_f1 = cM_ssin(temp_r0) * 1000.0f;
        field_0x12f8.set(temp_f1, 500.0f, temp_f29);
        current.angle.y = temp_r0;

        field_0x1340 = nREG_S(0) + 15;
        /* fallthrough */
    case 1:
        if (field_0x1340 == 0 && !checkBck(0xc)) {
            setBck(0xc, 2, nREG_F(19) + 30.0f, 1.0f);
        }

        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x800, 0x80);

        s16 temp_r3 = cLib_targetAngleX(&current.pos, &field_0x12f8);
        f32 temp_f31 = std::abs(cM_scos(temp_r3) * 20.0f);
        f32 temp_f30 = cM_ssin(temp_r3) * 20.0f;

        if (current.pos.y >= 500.0f) {
            cLib_chaseF(&speed.y, 0.0f, 3.0f);
            cLib_chaseF(&current.pos.y, 500.0f, 1.0f);
        } else {
            cLib_chaseF(&speed.y, temp_f30, 1.0f);
        }

        if (current.pos.absXZ() > 950.0f) {
            field_0x12f8.set(current.pos.x, 500.0f, current.pos.z);
            cLib_chaseF(&speedF, 0.0f, 3.0f);
        } else {
            cLib_chaseF(&speedF, temp_f31, 1.0f);
        }

        if (speed.y == 0.0f && speedF == 0.0f) {
            mMode = 2;
        }
        break;
    case 2:
        mMode = 3;
        field_0x1340 = 30;
        field_0x1324 = 0;
        field_0x1344 = cM_rndF(60.0f) + 150.0f;
        field_0x1348 = cM_rndF(30.0f) + 90.0f;
        /* fallthrough */
    case 3:
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x800, 0x80);

        if (field_0x1324 != 0) {
            current.angle.y = var_r31 + 0x4000;
        } else {
            current.angle.y = var_r31 - 0x4000;
        }

        cLib_chaseF(&speedF, 30.0f, 1.0f);

        if (field_0x1340 == 0) {
            mMode = 4;
        }
        break;
    case 4:
        cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x800, 0x80);

        if (field_0x1324 != 0) {
            current.angle.y = var_r31 + 0x4000;
        } else {
            current.angle.y = var_r31 - 0x4000;
        }

        cLib_chaseF(&speedF, 0.0f, 1.0f);

        if (!speedF) {
            if (field_0x134c == 0) {
                Z2GetAudioMgr()->changeSubBgmStatus(1);
                setActionMode(ACTION_OPACI_FADE_AWAY_e, 1);
            } else if (field_0x1344 == 0 && current.pos.absXZ(player->current.pos) > 500.0f) {
                mMode = 10;
            } else {
                field_0x1340 = 30;
                mMode = 3;

                if ((s16)(var_r31 - fopAcM_searchPlayerAngleY(this)) < 0) {
                    field_0x1324 = 0;
                } else {
                    field_0x1324 = 1;
                }
            }
        }
        break;
    case 10:
        field_0x1340 = 30;
        mMode = 11;
        /* fallthrough */
    case 11:
        if (field_0x1340 == 0) {
            setBck(8, 0, 3.0f, 1.0f);
            mMode = 12;
        }
        break;
    case 12:
        if (mpMorf->checkFrame(42.0f)) {
            mSound.startCreatureSound(Z2SE_EN_VA_ATK_FLY, 0, -1);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK_FLY, -1);
        }

        if (mpMorf->checkFrame(62.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK_FLY2, -1);
            mSound.startCreatureSound(Z2SE_EN_VA_ATK_FLY2, 0, -1);
        }

        if (mpMorf->checkFrame(47.0f)) {
            field_0x1228[0] = 1;
        }

        if (mpMorf->checkFrame(67.0f)) {
            field_0x1228[1] = 1;
        }

        if (mpMorf->isStop()) {
            setBck(0xc, 2, 3.0f, 1.0f);
            mMode = 2;
            field_0x1348 = cM_rndF(30.0f) + 90.0f;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciFly(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciFly__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE2C-807CEE30 000184 0004+00 0/0 0/0 0/0 .rodata          @6999 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6999 = 291.0f;
COMPILER_STRIP_GATE(0x807CEE2C, &lit_6999);
#pragma pop

/* 807CEE30-807CEE34 000188 0004+00 0/0 0/0 0/0 .rodata          @7000 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7000 = 201.0f;
COMPILER_STRIP_GATE(0x807CEE30, &lit_7000);
#pragma pop

/* 807CEE34-807CEE38 00018C 0004+00 0/0 0/0 0/0 .rodata          @7001 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7001 = 700.0f;
COMPILER_STRIP_GATE(0x807CEE34, &lit_7001);
#pragma pop

/* 807CEE38-807CEE3C 000190 0004+00 0/2 0/0 0/0 .rodata          @7002 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7002 = 70.0f;
COMPILER_STRIP_GATE(0x807CEE38, &lit_7002);
#pragma pop

/* 807CEE3C-807CEE40 000194 0004+00 0/0 0/0 0/0 .rodata          @7003 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7003 = 6.0f;
COMPILER_STRIP_GATE(0x807CEE3C, &lit_7003);
#pragma pop

/* 807CEE40-807CEE44 000198 0004+00 0/1 0/0 0/0 .rodata          @7004 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7004 = 120.0f;
COMPILER_STRIP_GATE(0x807CEE40, &lit_7004);
#pragma pop

/* 807CEE44-807CEE48 00019C 0004+00 0/0 0/0 0/0 .rodata          @7240 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7240 = 42.0f;
COMPILER_STRIP_GATE(0x807CEE44, &lit_7240);
#pragma pop

/* 807CEE48-807CEE4C 0001A0 0004+00 0/0 0/0 0/0 .rodata          @7241 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7241 = 62.0f;
COMPILER_STRIP_GATE(0x807CEE48, &lit_7241);
#pragma pop

/* 807CEE4C-807CEE50 0001A4 0004+00 0/0 0/0 0/0 .rodata          @7242 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7242 = 47.0f;
COMPILER_STRIP_GATE(0x807CEE4C, &lit_7242);
#pragma pop

/* 807CEE50-807CEE54 0001A8 0004+00 0/3 0/0 0/0 .rodata          @7291 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7291 = -30.0f;
COMPILER_STRIP_GATE(0x807CEE50, &lit_7291);
#pragma pop

/* 807C9A40-807C9C8C 007540 024C+00 1/1 0/0 0/0 .text            executeOpaciDamage__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciDamage() {
    switch (mMode) {
    case 0:
        attention_info.flags = 0;
        mBodyCyls[0].SetTgType(0xD8FBFDFF);
        mBodyCyls[1].SetTgType(0xD8FBFDFF);

        setBck(9, 0, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_VA_V_DOWN, -1);
        mSound.startCreatureVoice(Z2SE_EN_VA_V_DMG, -1);
        mSound.startCreatureSound(Z2SE_EN_VA_DOWN, 0, -1);

        mMode = 1;
        speedF = 0.0f;
        /* fallthrough */
    case 1:
        if (mpMorf->isStop()) {
            gravity = -5.0f;
            maxFallSpeed = -50.0f;
            mMode = 2;
            setBck(10, 0, 10.0f, 1.0f);
        }
        break;
    case 2:
        if (mAcch.i_ChkGroundHit() || speed.y <= nREG_F(4) + -30.0f) {
            setActionMode(ACTION_OPACI_CHASE_e, 0);
        }
        break;
    case 10:
        attention_info.flags = 0;
        setBck(0x22, 0, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_VA_V_NO_DMG, -1);
        mMode = 11;
        /* fallthrough */
    case 11:
        if (mpMorf->isStop()) {
            setActionMode(ACTION_OPACI_FLY_e, 0);
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciDamage(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciDamage__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE54-807CEE58 0001AC 0004+00 0/1 0/0 0/0 .rodata          @7421 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7421 = 16384.0f;
COMPILER_STRIP_GATE(0x807CEE54, &lit_7421);
#pragma pop

/* 807CEE58-807CEE5C 0001B0 0004+00 0/3 0/0 0/0 .rodata          @7422 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7422 = 25.0f;
COMPILER_STRIP_GATE(0x807CEE58, &lit_7422);
#pragma pop

/* 807CEE5C-807CEE60 0001B4 0004+00 0/1 0/0 0/0 .rodata          @7423 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7423 = -40.0f;
COMPILER_STRIP_GATE(0x807CEE5C, &lit_7423);
#pragma pop

/* 807C9C8C-807CA364 00778C 06D8+00 1/1 0/0 0/0 .text            executeOpaciChase__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciChase() {
    cXyz sp44;
    daPy_py_c* player = daPy_getPlayerActorClass();
    s16 angleY_to_player = fopAcM_searchPlayerAngleY(this);
    s16 angle_to_home = cLib_targetAngleY(&home.pos, &current.pos);

    switch (mMode) {
    case 0:
        attention_info.flags = 0;
        field_0x1330 = angle_to_home;
        field_0x1332 = field_0x1330;
        field_0x1334 = (f32)field_0x1332 + cM_rndF(3.0f) * 16384.0f;

        if (cM_rnd() < 0.5f) {
            field_0x1336 = -0x400;
        } else {
            field_0x1336 = 0x400;
        }

        field_0x1330 += field_0x1336;
        mMode = 10;
        field_0x1344 = 30;

        setBck(0x1E, 2, 30.0f, 1.0f);
        gravity = 0.0f;
        field_0x1324 = 0;

        sp44.set(0.0f, 0.0f, l_HIO.mCircleAttackRadius);
        cLib_offsetPos(&field_0x12f8, &home.pos, field_0x1330, &sp44);
        current.angle.y = cLib_targetAngleY(&current.pos, &field_0x12f8);
        /* fallthrough */
    case 10:
    case 11:
        field_0x1388 = 1;
        mSound.startCreatureVoiceLevel(Z2SE_EN_VA_V_ROTATE, -1);

        if (field_0x1344 == 0 && !player->i_checkNowWolf()) {
            mBodyCyls[0].OnTgSetBit();
            mBodyCyls[1].OnTgSetBit();
        }

        switch (field_0x1324) {
        case 0:
            if (cLib_chaseF(&speed.y, nREG_F(0) + 25.0f, nREG_F(1) + 3.0f)) {
                field_0x1324 = 1;
            }
            break;
        case 1:
            if (cLib_chaseF(&speed.y, nREG_F(3) + -40.0f, nREG_F(2) + 3.0f)) {
                field_0x1324 = 0;
            }

            if (mAcch.i_ChkGroundHit()) {
                field_0x1324 = 2;
                gravity = -5.0f;
            }
            break;
        case 2:
            break;
        }

        cLib_chaseF(&speedF, 100.0f, 3.0f);

        sp44.set(0.0f, 0.0f, l_HIO.mCircleAttackRadius);
        cLib_offsetPos(&field_0x12f8, &home.pos, field_0x1330, &sp44);

        if (current.pos.absXZ() > nREG_F(19) + 1200.0f) {
            s16 temp_r26 = cM_atan2s(current.pos.x, current.pos.z);

            current.pos.x = (nREG_F(19) + 1200.0f) * cM_ssin(temp_r26);
            current.pos.z = (nREG_F(19) + 1200.0f) * cM_scos(temp_r26);
        }

        cLib_addCalcAngleS(&shape_angle.y, angleY_to_player, 8, 0x800, 0x80);
        cLib_addCalcAngleS(&current.angle.y, (s16)cLib_targetAngleY(&current.pos, &field_0x12f8), 8,
                           0x800, 0x80);

        if (abs((s16)(field_0x1330 - angle_to_home)) < 0x2000) {
            s16 var_r29 = field_0x1330;
            field_0x1330 += field_0x1336;

            if (mMode == 10) {
                if (abs((s16)(field_0x1332 - field_0x1330)) <= abs(field_0x1336)) {
                    if (abs((s16)(field_0x1332 - var_r29)) <= abs(field_0x1336)) {
                        if (field_0x1332 == field_0x1334) {
                            mMode = 12;
                        } else {
                            mMode = 11;
                        }
                    }
                }
            } else {
                if (abs((s16)(field_0x1334 - field_0x1330)) <= abs(field_0x1336)) {
                    mMode = 12;
                    attention_info.flags = 4;
                }
            }
        }
        break;
    case 12:
        mSound.startCreatureVoiceLevel(Z2SE_EN_VA_V_ROTATE, -1);

        if (!player->i_checkNowWolf()) {
            mBodyCyls[0].OnTgSetBit();
            mBodyCyls[1].OnTgSetBit();
        }

        field_0x1388 = 1;
        cLib_addCalcAngleS(&shape_angle.y, angleY_to_player, 8, 0x800, 0x80);
        cLib_addCalcAngleS(&current.angle.y, angleY_to_player, 8, 0x800, 0x80);

        if (fopAcM_searchPlayerDistance(this) > l_HIO.mAttackRange) {
            cLib_chaseF(&speedF, 100.0f, 3.0f);
        } else if (fopAcM_searchPlayerDistance(this) < l_HIO.mAttackRange - 300.0f) {
            cLib_chaseF(&speedF, -30.0f, 3.0f);
        } else {
            mMode = 13;
        }
        break;
    case 13:
        mSound.startCreatureVoiceLevel(Z2SE_EN_VA_V_ROTATE, -1);

        if (!player->i_checkNowWolf()) {
            mBodyCyls[0].OnTgSetBit();
            mBodyCyls[1].OnTgSetBit();
        }

        cLib_addCalcAngleS(&shape_angle.y, angleY_to_player, 8, 0x800, 0x80);
        cLib_addCalcAngleS(&current.angle.y, angleY_to_player, 8, 0x800, 0x80);

        if (cLib_chaseF(&speedF, 0.0f, 3.0f)) {
            setActionMode(ACTION_OPACI_ATTACK_e, 0);
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciChase(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciChase__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE60-807CEE64 0001B8 0004+00 0/0 0/0 0/0 .rodata          @7424 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7424 = 1200.0f;
COMPILER_STRIP_GATE(0x807CEE60, &lit_7424);
#pragma pop

/* 807CEE64-807CEE68 0001BC 0004+00 0/1 0/0 0/0 .rodata          @7509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7509 = 27.0f;
COMPILER_STRIP_GATE(0x807CEE64, &lit_7509);
#pragma pop

/* 807CEE68-807CEE6C 0001C0 0004+00 0/1 0/0 0/0 .rodata          @7510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7510 = 16.0f;
COMPILER_STRIP_GATE(0x807CEE68, &lit_7510);
#pragma pop

/* 807CEE6C-807CEE70 0001C4 0004+00 0/1 0/0 0/0 .rodata          @7511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7511 = 12.0f;
COMPILER_STRIP_GATE(0x807CEE6C, &lit_7511);
#pragma pop

/* 807CA364-807CA73C 007E64 03D8+00 1/1 0/0 0/0 .text            executeOpaciAttack__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciAttack() {
    f32 anm_frame = mpMorf->getFrame();

    mBodyCyls[0].OnTgSetBit();
    mBodyCyls[1].OnTgSetBit();

    switch (mMode) {
    case 0:
        speedF = 0.0f;
        setBck(0x12, 0, 10.0f, 1.0f);
        mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK_T, 0, -1);
        mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK1, -1);
        mMode = 1;
        /* fallthrough */
    case 1:
        if (mpMorf->checkFrame(22.0f)) {
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK1, 0, -1);
        }

        if (mpMorf->checkFrame(27.0f)) {
            setWeponLandEffect();
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_IMPACT, 0, -1);
            dComIfGp_getVibration().StartShock(5, 31, cXyz(0.0f, 1.0f, 0.0f));
        }

        if (anm_frame < 16.0f) {
            cLib_addCalcAngleS(&shape_angle.y, fopAcM_searchPlayerAngleY(this), 8, 0x800, 0x80);
            current.angle.y = shape_angle.y;
        }

        if (20.0f <= anm_frame && anm_frame <= 33.0f) {
            onSwordAtBit();
        } else if (anm_frame > 33.0f) {
            offSwordShield();
            field_0x1386 = 1;
        }

        if (mpMorf->isStop()) {
            setBck(0x13, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK3, -1);
            mMode = 2;
        }
        break;
    case 2:
        if (mpMorf->checkFrame(12.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK3, -1);
            mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK3, 0, -1);
        }

        if (mpMorf->getFrame() <= 15.0f) {
            offSwordShield();
            field_0x1386 = 1;
        }

        if (mpMorf->isStop()) {
            if (field_0x134c == 0) {
                Z2GetAudioMgr()->changeSubBgmStatus(1);
                setActionMode(ACTION_OPACI_FADE_AWAY_e, 1);
                return;
            }

            setActionMode(ACTION_OPACI_FLY_e, 0);
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciAttack() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciAttack__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807CA73C-807CAA80 00823C 0344+00 1/1 0/0 0/0 .text            executeOpaciDown__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciDown() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    mBodyCyls[1].OnTgSetBit();

    switch (mMode) {
    case 0:
        setBck(0x16, 0, 3.0f, 1.0f);
        field_0x1344 = l_HIO.mDownTime;
        mMode = 2;
        speedF = 0.0f;
        field_0x1383 = 0;
        attention_info.flags = 4;
        mSound.startCreatureVoice(Z2SE_EN_VA_V_DMG_L, -1);
        dComIfGs_onOneZoneSwitch(6, fopAcM_GetRoomNo(this));
        /* fallthrough */
    case 2:
        if (mpMorf->getFrame() < 40.0f) {
            mBodyCyls[1].OffTgSetBit();
        }

        if (mpMorf->isStop()) {
            setBck(0x1D, 2, 3.0f, 1.0f);
            mMode = 3;
        }
        break;
    case 1:
        setBck(0x1D, 2, 3.0f, 1.0f);
        mMode = 3;
        /* fallthrough */
    case 3:
        if (mpMorf->checkFrame(1.0f)) {
            mSound.startCreatureVoice(Z2SE_EN_VA_V_DYING, -1);
        }

        if (field_0x134c == 0) {
            Z2GetAudioMgr()->changeSubBgmStatus(1);
            setActionMode(ACTION_OPACI_FADE_AWAY_e, 2);
        } else if (field_0x1344 == 0) {
            setActionMode(ACTION_OPACI_FLY_e, 21);
        }
        break;
    case 5:
        field_0x1364 += field_0x1368;

        if ((f32)field_0x1364 > l_HIO.mDownHP || field_0x1384 >= 6) {
            setActionMode(ACTION_OPACI_DEATH_e, 0);
            field_0x1381 = 1;
            return;
        }

        setActionMode(ACTION_OPACI_FLY_e, 20);
        break;
    case 4:
        mBodyCyls[1].OffTgSetBit();

        if (mpMorf->isStop()) {
            setActionMode(ACTION_OPACI_FLY_e, 0);
            return;
        }
        break;
    }

    if (player->getCutCount() > 1 || player->getCutType() == 10) {
        if (field_0x134c < 30) {
            field_0x134c = 30;
        }

        if (field_0x1344 < 30) {
            field_0x1344 = 30;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciDown() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciDown__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807CAA80-807CACE0 008580 0260+00 1/1 0/0 0/0 .text            executeOpaciDownDamage__8daE_VA_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciDownDamage() {
    daPy_py_c* player = daPy_getPlayerActorClass();

    if (player->getCutCount() > 1 || player->getCutType() == 10) {
        if (field_0x134c < 30) {
            field_0x134c = 30;
        }

        if (field_0x1344 < 30) {
            field_0x1344 = 30;
        }
    }

    if (field_0x134c != 0 && field_0x1344 != 0) {
        mBodyCyls[1].OnTgSetBit();
    }

    switch (mMode) {
    case 0:
    case 1:
    case 2:
        speedF = 0.0f;
        field_0x1364 += field_0x1368;

        if ((f32)field_0x1364 > l_HIO.mDownHP) {
            setActionMode(ACTION_OPACI_DEATH_e, 0);
            field_0x1381 = 1;
            return;
        }

        if (mMode == 0) {
            setBck(0x17, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_DMG, -1);
        } else if (mMode == 1) {
            setBck(0x18, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_DMG, -1);
        } else {
            setBck(0x1B, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_NO_DMG, -1);
        }

        mMode = 5;
    case 5:
        if (mpMorf->isStop()) {
            setActionMode(ACTION_OPACI_DOWN_e, 1);
            field_0x1381 = 1;
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciDownDamage() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciDownDamage__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807CACE0-807CADB8 0087E0 00D8+00 1/1 0/0 0/0 .text            executeOpaciFlip__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciFlip() {
    switch (mMode) {
    case 0:
        speedF = 0.0f;
        mMode = 1;
        daPy_getPlayerActorClass()->setThrowDamage(shape_angle.y, 20.0f, 40.0f, 1, 0, 0);
        /* fallthrough */
    case 1:
        if (mpMorf->isStop()) {
            setActionMode(ACTION_OPACI_CHASE_e, 0);
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciFlip() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciFlip__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807CADB8-807CB1C4 0088B8 040C+00 2/1 0/0 0/0 .text            executeOpaciFadeAway__8daE_VA_cFv
 */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciFadeAway() {
    attention_info.flags = 0;
    field_0x133c = 3;
    field_0x133a = 3;
    field_0x1338 = 3;

    switch (mMode) {
    case 10:
        if (checkBck(0x27)) {
            if (mpMorf->checkFrame(20.0f)) {
                mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK2, 0, -1);
            }

            if (mpMorf->checkFrame(53.0f)) {
                mSound.startCreatureSound(Z2SE_EN_VA_SWD_ATK3, 0, -1);
                mSound.startCreatureVoice(Z2SE_EN_VA_V_ATK3, -1);
            }
        }

        field_0x1370 = 0;
        speedF = 0.0f;

        if (mpMorf->isStop()) {
            setActionMode(ACTION_CLEAR_WAIT_e, 0);
        }
        break;
    case 0:
        field_0x1370 = 0;
        speedF = 0.0f;
        setActionMode(ACTION_CLEAR_WAIT_e, 0);
        break;
    case 1:
        if (checkBck(0x20)) {
            setBck(0x21, 0, 3.0f, 1.0f);
            mMode = 5;
        } else {
            setBck(0x23, 0, 10.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_VANISH, -1);
            mSound.startCreatureSound(Z2SE_EN_VA_VANISH, 0, -1);
            field_0x1370 = 3;
            mMode = 4;
            field_0x1374 = 2;
        }

        speed.y = 0.0f;
        speedF = 0.0f;
        break;
    case 2:
        setBck(0x1C, 0, 10.0f, 1.0f);
        mMode = 3;
        speedF = 0.0f;
        break;
    case 3:
        if (mpMorf->isStop()) {
            setBck(0x23, 0, 3.0f, 1.0f);
            mSound.startCreatureVoice(Z2SE_EN_VA_V_VANISH, -1);
            mSound.startCreatureSound(Z2SE_EN_VA_VANISH, 0, -1);
            mMode = 4;
            field_0x1370 = 3;
            field_0x1374 = 2;
        }
        break;
    case 4:
        cLib_addCalc(&current.pos.y, 0.0f, 0.1f, 10.0f, 1.0f);
        if (mpMorf->isStop()) {
            setActionMode(ACTION_CLEAR_WAIT_e, 1);
            current.pos.y = 0.0f;
        }
        break;
    case 5:
        if (mpMorf->isStop()) {
            mMode = 1;
        }
        break;
    }

    if (daPy_getPlayerActorClass()->checkNowWolfEyeUp() && field_0x1358 == 0) {
        setActionMode(ACTION_TRANS_WAIT_e, 0);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciFadeAway(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciFadeAway__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE70-807CEE74 0001C8 0004+00 0/2 0/0 0/0 .rodata          @7919 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7919 = 350.0f;
COMPILER_STRIP_GATE(0x807CEE70, &lit_7919);
#pragma pop

/* 807CEE74-807CEE78 0001CC 0004+00 0/1 0/0 0/0 .rodata          @7920 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7920 = -54.0f;
COMPILER_STRIP_GATE(0x807CEE74, &lit_7920);
#pragma pop

/* 807CEE78-807CEE7C 0001D0 0004+00 0/1 0/0 0/0 .rodata          @7921 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7921 = 168.0f;
COMPILER_STRIP_GATE(0x807CEE78, &lit_7921);
#pragma pop

/* 807CEE7C-807CEE80 0001D4 0004+00 0/1 0/0 0/0 .rodata          @7922 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7922 = 207.0f;
COMPILER_STRIP_GATE(0x807CEE7C, &lit_7922);
#pragma pop

/* 807CB1C4-807CB8CC 008CC4 0708+00 2/1 0/0 0/0 .text            executeOpaciDeath__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::executeOpaciDeath() {
    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz sp24;
    cXyz sp30;

    mBodyCyls[0].OffTgSetBit();
    mBodyCyls[1].OffTgSetBit();

    switch (mMode) {
    case 0:
        if (!eventInfo.i_checkCommandDemoAccrpt()) {
            fopAcM_orderPotentialEvent(this, 2, 0xFFFF, 0);
            eventInfo.i_onCondition(2);
            return;
        }

        Z2GetAudioMgr()->subBgmStop();
        Z2GetAudioMgr()->i_muteSceneBgm(0, 0.0f);

        dComIfGs_onStageMiddleBoss();
        field_0x1364 = 0;

        setBck(0x19, 0, 3.0f, 1.0f);
        mSound.startCreatureVoice(Z2SE_EN_VA_V_DEAD, -1);
        mMode = 10;

        player->changeOriginalDemo();

        sp30.set(0.0f, 0.0f, 350.0f);
        player->setPlayerPosAndAngle(&sp30, 0x8000, 0);
        player->changeDemoMode(4, 1, 0, 0);

        camera->mCamera.Stop();
        camera->mCamera.SetTrimSize(3);

        field_0x1488.set(-54.0f, 168.0f, 207.0f);
        field_0x14ac = -0x1800;
        field_0x14a4 = 600.0f;

        sp24.set(0.0f, 0.0f, field_0x14a4);
        cLib_offsetPos(&field_0x1494, &current.pos, shape_angle.y + field_0x14ac, &sp24);
        field_0x1494.y = 50.0f;
        field_0x14a0 = 70.0f;
        return;
    case 10:
        current.pos.set(0.0f, 0.0f, 0.0f);
        eyePos.set(-54.0f, 168.0f, 207.0f);
        shape_angle.y = 0;
        current.angle.y = 0;
        mMode = 1;
    case 1:
        field_0x1488 = eyePos;
        field_0x1488.y -= 50.0f;
        field_0x14ac += 0x40;

        sp24.set(0.0f, 0.0f, field_0x14a4);
        cLib_offsetPos(&field_0x1494, &current.pos, shape_angle.y + field_0x14ac, &sp24);
        field_0x1494.y = 50.0f;

        if (mpMorf->checkFrame(155.0f)) {
            mMode = 2;
            field_0x1340 = 60;

            sp30.set(0.0f, 0.0f, 350.0f);
            player->setPlayerPosAndAngle(&sp30, 0x8000, 0);

            field_0x14a4 = 400.0f;
            sp24.set(0.0f, 0.0f, field_0x14a4);
            cLib_offsetPos(&field_0x1494, &current.pos, shape_angle.y + field_0x14ac, &sp24);
            field_0x1494.y = 50.0f;
        }
        break;
    case 2:
        field_0x1488 = eyePos;
        field_0x1488.y -= 50.0f;

        if (mpMorf->isStop()) {
            mDoMtx_stack_c::copy(mpWeaponModel->getBaseTRMtx());
            mDoMtx_stack_c::transM(-10.0f, 160.0f, 15.0f);
            mDoMtx_stack_c::multVecZero(&sp30);

            fopAcM_createDisappear(this, &sp30, 20, 0, 0xFF);
            field_0x1340 = 0x78;
            mMode = 3;
            field_0x138a = 1;

            mpEndEfMorf->setFrame(0.0f);
            mpEndEfBrk->setFrame(0.0f);
            mpEndEfBrk->setPlaySpeed(1.0f);
            field_0x1344 = 100;

            setBugsEffect();
            mSound.startCreatureSound(Z2SE_EN_VA_END, 0, -1);
            field_0x1314 = 0.0f;
            field_0x1374 = 3;
        }
        break;
    case 3:
        field_0x1488 = eyePos;
        field_0x1488.y -= 50.0f;

        if (field_0x1344 == 0) {
            field_0x1388 = 1;
        }

        if (field_0x1344 == 80) {
            field_0x1240 = 2;
            field_0x1389 = 0;
        }

        if (field_0x1340 == 0) {
            field_0x122c = field_0x1488;
            mMode = 4;
            field_0x1340 = 150;
        }
        break;
    case 4:
        if (field_0x1344 == 0) {
            field_0x1388 = 1;
        }

        field_0x1488 = field_0x122c;
        field_0x1488.y += 10.0f;

        if (field_0x1340 == 0) {
            camera->mCamera.Reset(field_0x1488, field_0x1494, field_0x14a0, 0);
            camera->mCamera.Start();
            camera->mCamera.SetTrimSize(0);
            dComIfGp_event_reset();

            if (field_0x138c != 0xFF && !dComIfGs_isSwitch(field_0x138c, fopAcM_GetRoomNo(this))) {
                dComIfGs_onSwitch(field_0x138c, fopAcM_GetRoomNo(this));
            }

            Z2GetAudioMgr()->i_unMuteSceneBgm(45);
            fopAcM_delete(this);
            return;
        }
        break;
    }

    camera->mCamera.Set(field_0x1488, field_0x1494, field_0x14a0, 0);
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::executeOpaciDeath(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/executeOpaciDeath__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE80-807CEE84 0001D8 0004+00 0/0 0/0 0/0 .rodata          @7923 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7923 = 155.0f;
COMPILER_STRIP_GATE(0x807CEE80, &lit_7923);
#pragma pop

/* 807CEE84-807CEE88 0001DC 0004+00 0/1 0/0 0/0 .rodata          @8008 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8008 = 320.0f;
COMPILER_STRIP_GATE(0x807CEE84, &lit_8008);
#pragma pop

/* 807CB8CC-807CBC00 0093CC 0334+00 1/1 0/0 0/0 .text            calcMagicMove__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::calcMagicMove() {
    for (int i = 0; i < 2; i++) {
        switch (field_0x1228[i]) {
        case 0:
            mMagicSphs[i].OffAtSetBit();
            break;
        case 1:
            mMagicSphs[i].OnAtSetBit();
            field_0x1228[i] = 2;

            mDoMtx_stack_c::copy(mpWeaponModel->getBaseTRMtx());
            mDoMtx_stack_c::transM(-30.0f, 320.0f, 65.0f);
            mDoMtx_stack_c::multVecZero(&field_0x11e0[i]);
            field_0x11f8[i] = field_0x11e0[i];

            field_0x1750[i].i_ClrGroundHit();
            field_0x1750[i].ClrWallHit();
            mMagicSphs[i].ClrAtHit();

            cXyz sp5C(daPy_getPlayerActorClass()->current.pos);

            s16 spA = cLib_targetAngleY(&field_0x11e0[i], &sp5C);
            s16 sp8 = cLib_targetAngleX(&field_0x11e0[i], &sp5C);

            f32 temp_f31 = std::abs(cM_scos(sp8) * 50.0f);
            field_0x1210[i].set(temp_f31 * cM_ssin(spA), cM_ssin(sp8) * 50.0f,
                                temp_f31 * cM_scos(spA));
            /* fallthrough */
        case 2:
            Z2GetAudioMgr()->seStartLevel(Z2SE_EN_VA_ATK_BALL, &field_0x11e0[i], 0, 0, 1.0f, 1.0f,
                                          -1.0f, -1.0f, 0);
            setMagicEffect(i);
            mMagicSphs[i].SetC(field_0x11e0[i]);
            mMagicSphs[i].SetR(50.0f);
            dComIfG_Ccsp()->Set(&mMagicSphs[i]);

            if (field_0x1750[i].i_ChkGroundHit() || field_0x1750[i].ChkWallHit() ||
                mMagicSphs[i].ChkAtHit())
            {
                Z2GetAudioMgr()->seStart(Z2SE_EN_VA_FIRE_BURST, &field_0x11e0[i], 0, 0, 1.0f, 1.0f,
                                         -1.0f, -1.0f, 0);
                field_0x11e0[i].y = 0.0f;
                setMagicHitEffect(i);
                field_0x1228[i] = 0;
            }

            field_0x11f8[i] = field_0x11e0[i];
            field_0x11e0[i] += field_0x1210[i];
            field_0x1750[i].CrrPos(dComIfG_Bgsp());
            break;
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::calcMagicMove(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/calcMagicMove__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE88-807CEE8C 0001E0 0004+00 0/1 0/0 0/0 .rodata          @8089 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8089 = 128.0f;
COMPILER_STRIP_GATE(0x807CEE88, &lit_8089);
#pragma pop

/* 807CBC00-807CC004 009700 0404+00 1/1 0/0 0/0 .text            setAlphaType__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::setAlphaType() {
    switch (field_0x1370) {
    case 0:
    case 3:
        cLib_chaseUC(&field_0x1378, 0, 4);
        cLib_chaseUC(&field_0x137a, 0, 4);
        field_0x1380 = 0;

        if (field_0x1370 == 3 && field_0x1378 == 0) {
            field_0x1370 = 0;
        }

        cLib_chaseUC(&field_0x137c, 0, 8);
        cLib_chaseUC(&field_0x137d, 0, 8);
        cLib_chaseUC(&field_0x137e, 0, 8);

        if (field_0x1370 == 0) {
            cLib_chaseUC(&field_0x1379, 0, 0x1B);
        } else if (field_0x1379 < 33) {
            cLib_chaseUC(&field_0x1379, 0, 1);
        } else {
            cLib_chaseUC(&field_0x1379, 0, 10);
        }

        field_0x138f = 0;

        mNeckSph.OffTgSetBit();
        for (int i = 0; i < 3; i++) {
            mBodyCyls[i].OffCoSetBit();
            mBodyCyls[i].OffTgSetBit();
            mBodyCyls[i].OnTgNoHitMark();
        }
        break;
    case 1:
        if (field_0x137f) {
            cLib_chaseUC(&field_0x137c, l_HIO.mKRegLightR, (u8)(l_HIO.mKRegLightR / 10.0f));
            cLib_chaseUC(&field_0x137d, l_HIO.mKRegLightG, (u8)(l_HIO.mKRegLightG / 10.0f));
            cLib_chaseUC(&field_0x137e, l_HIO.mKRegLightB, (u8)(l_HIO.mKRegLightB / 10.0f));
            cLib_chaseUC(&field_0x1378, l_HIO.mKRegLightA,
                         (u8)((l_HIO.mKRegLightA - 128.0f) / 10.0f));
        } else {
            cLib_chaseUC(&field_0x137c, 0, (u8)(l_HIO.mKRegLightR / 20.0f));
            cLib_chaseUC(&field_0x137d, 0, (u8)(l_HIO.mKRegLightG / 20.0f));
            cLib_chaseUC(&field_0x137e, 0, (u8)(l_HIO.mKRegLightB / 20.0f));
            cLib_chaseUC(&field_0x1378, 0x80, 8);
        }

        cLib_chaseUC(&field_0x137a, 0, 4);
        field_0x1380 = 0;
        cLib_chaseUC(&field_0x1379, 180, 8);

        mNeckSph.OnTgSetBit();
        mBodyCyls[0].OnTgSetBit();
        mBodyCyls[1].OffTgSetBit();
        mBodyCyls[2].OffTgSetBit();

        for (int i = 0; i < 3; i++) {
            mBodyCyls[i].OffCoSetBit();
            mBodyCyls[i].OnTgNoHitMark();
        }
        break;
    case 2:
        cLib_chaseUC(&field_0x1378, 0xFF, 4);
        cLib_chaseUC(&field_0x137a, 0xFF, 8);
        cLib_chaseUC(&field_0x1380, 0, 1);
        cLib_chaseUC(&field_0x1379, 0xFF, 4);

        mNeckSph.OffTgSetBit();
        for (int i = 0; i < 3; i++) {
            mBodyCyls[i].OnCoSetBit();
            mBodyCyls[i].OffTgNoHitMark();
            mBodyCyls[i].OffTgSetBit();
        }
        break;
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::setAlphaType() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setAlphaType__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807CC004-807CC4D0 009B04 04CC+00 2/1 0/0 0/0 .text            action__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::action() {
    field_0x1391 = 0;
    setAlphaType();
    damage_check();

    for (int i = 0; i < 4; i++) {
        mAttackSphs[i].OffAtSetBit();

        if (field_0x137f && i == 0) {
            mAttackSphs[i].OffCoSetBit();
            mAttackSphs[i].OffTgShield();
            mAttackSphs[i].OnTgNoHitMark();
        } else {
            mAttackSphs[i].OnCoSetBit();

            if (field_0x133e != 0) {
                mAttackSphs[i].OffTgShield();
                mAttackSphs[i].OnTgNoHitMark();
            } else {
                mAttackSphs[i].OnTgShield();
                mAttackSphs[i].OffTgNoHitMark();
            }
        }
    }

    BOOL var_r29 = true;
    field_0x1386 = 0;
    field_0x1388 = 0;

    switch (mAction) {
    case ACTION_DEMO_OP_WAIT_e:
        executeDemoOpWait();
        var_r29 = false;
        break;
    case ACTION_DEMO_OP_e:
        executeDemoOp();
        var_r29 = false;
        break;
    case ACTION_CLEAR_WAIT_e:
        executeClearWait();
        break;
    case ACTION_CLEAR_CHASE_e:
        executeClearChase();
        break;
    case ACTION_CLEAR_ATTACK_e:
        executeClearAttack();
        break;
    case ACTION_TRANS_WAIT_e:
        executeTransWait();
        break;
    case ACTION_TRANS_CHASE_e:
        executeTransChase();
        break;
    case ACTION_TRANS_ATTACK_e:
        executeTransAttack();
        break;
    case ACTION_TRANS_BITE_DAMAGE_e:
        executeTransBiteDamage();
        break;
    case ACTION_TRANS_DAMAGE_e:
        executeTransDamage();
        break;
    case ACTION_TRANS_THROUGH_e:
        executeTransThrough();
        break;
    case ACTION_OPACI_WAIT_e:
        executeOpaciWait();
        break;
    case ACTION_OPACI_FLY_e:
        executeOpaciFly();
        break;
    case ACTION_OPACI_DOWN_e:
        executeOpaciDown();
        break;
    case ACTION_OPACI_DOWN_DAMAGE_e:
        executeOpaciDownDamage();
        break;
    case ACTION_OPACI_CHASE_e:
        executeOpaciChase();
        break;
    case ACTION_OPACI_ATTACK_e:
        executeOpaciAttack();
        break;
    case ACTION_OPACI_DAMAGE_e:
        executeOpaciDamage();
        break;
    case ACTION_OPACI_FLIP_e:
        executeOpaciFlip();
        break;
    case ACTION_OPACI_FADE_AWAY_e:
        executeOpaciFadeAway();
        break;
    case ACTION_OPACI_DEATH_e:
        executeOpaciDeath();
        break;
    }

    if (var_r29) {
        daPy_getPlayerActorClass()->onBossRoomWait();
    }

    if (!field_0x138e) {
        if (daPy_getPlayerActorClass()->checkNowWolfEyeUp()) {
            field_0x1358 = 20;
            field_0x138e = 1;
        }
    } else {
        if (!daPy_getPlayerActorClass()->checkNowWolfEyeUp()) {
            field_0x1358 = 20;
            field_0x138e = 0;
        }
    }

    fopAcM_posMoveF(this, field_0x1b00.GetCCMoveP());
    mAcch.CrrPos(dComIfG_Bgsp());

    switch (field_0x1374) {
    case 0:
        if (daPy_getPlayerActorClass()->checkNowWolfEyeUp()) {
            cLib_chaseF(&field_0x1314, 1.0f, 0.1f);
        } else {
            cLib_chaseF(&field_0x1314, 0.0f, 0.1f);
        }

        dKy_custom_colset(2, 0, field_0x1314);
        break;
    case 1:
        cLib_chaseF(&field_0x1314, 1.0f, 0.1f);
        dKy_custom_colset(0, 1, field_0x1314);
        break;
    case 2:
        cLib_chaseF(&field_0x1314, 0.0f, 0.1f);
        dKy_custom_colset(2, 1, field_0x1314);

        if (!field_0x1314) {
            field_0x1374 = 0;
        }
        break;
    case 3:
        cLib_chaseF(&field_0x1314, 1.0f, 0.01f);
        dKy_custom_colset(1, 4, field_0x1314);
        break;
    case 4:
        cLib_chaseF(&field_0x1314, 1.0f, 0.01f);
        /* fallthrough */
    case 5:
        dKy_custom_colset(3, 2, field_0x1314);

        if (field_0x1314 == 1.0f) {
            field_0x1374 = 0;
            field_0x1314 = 0.0f;
        }
        break;
    }

    s16 spC = shape_angle.y - current.angle.y;
    s16 spA = (speedF * 128.0f) * cM_scos(spC);
    s16 sp8 = (speedF * 128.0f) * cM_ssin(spC);

    cLib_addCalcAngleS(&field_0x1304.x, spA, 8, 0x400, 0x40);
    cLib_addCalcAngleS(&field_0x1304.z, sp8, 8, 0x400, 0x40);

    mpMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    if (field_0x138a) {
        mpEndEfMorf->play(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    }

    mpWeaponBrk->play();
    mpEndEfBrk->play();
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::action(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/action__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE8C-807CEE90 0001E4 0004+00 0/1 0/0 0/0 .rodata          @8318 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8318 = -300.0f;
COMPILER_STRIP_GATE(0x807CEE8C, &lit_8318);
#pragma pop

/* 807CC4D0-807CC864 009FD0 0394+00 1/1 0/0 0/0 .text            mtx_set__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::mtx_set() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::transM(0.0f, 300.0f, 0.0f);
    mDoMtx_stack_c::ZXYrotM(field_0x1304);
    mDoMtx_stack_c::transM(0.0f, -300.0f, 0.0f);
    mDoMtx_stack_c::scaleM(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);

    J3DModel* model = mpMorf->getModel();
    model->setBaseTRMtx(mDoMtx_stack_c::get());

    if (field_0x138a) {
        mpEndEfMorf->getModel()->setBaseTRMtx(mDoMtx_stack_c::get());
        mpEndEfMorf->modelCalc();
    }

    field_0x138b = 0;
    mpMorf->modelCalc();
    calcJointSleeve();

    field_0x138b = 1;
    mpMorf->modelCalc();

    if (!field_0x1387) {
        if (mpWeaponModel != NULL) {
            mpWeaponModel->setBaseTRMtx(model->getAnmMtx(0x17));
        }
    } else {
        if (mpWeaponModel != NULL) {
            switch (field_0x1240) {
            case 0:
                mDoMtx_stack_c::transS(field_0x122c);
                mDoMtx_stack_c::transM(0.0f, 150.0f, 0.0f);
                mDoMtx_stack_c::ZXYrotM(field_0x1238);
                mDoMtx_stack_c::transM(0.0f, -150.0f, 0.0f);
                mDoMtx_stack_c::transM(0.0f, 400.0f, 0.0f);
                mDoMtx_stack_c::XrotM(field_0x123e);
                mDoMtx_stack_c::transM(0.0f, -400.0f, 0.0f);
                mDoMtx_stack_c::scaleM(l_HIO.mModelSize, l_HIO.mModelSize, l_HIO.mModelSize);
                mpWeaponModel->setBaseTRMtx(mDoMtx_stack_c::get());
                break;
            case 1:
                mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x17));
                mpWeaponModel->setBaseTRMtx(mDoMtx_stack_c::get());
                mDoMtx_stack_c::multVecZero(&field_0x122c);
                break;
            }
        }

        cXyz sp34;
        cXyz sp40;
        for (int i = 0; i < 40; i++) {
            f32 var_f31;
            switch (mCardModelType[i] & 3) {
            case 0:
                var_f31 = 80.0f;
                break;
            case 1:
                var_f31 = 50.0f;
                break;
            case 2:
                var_f31 = 25.0f;
                break;
            }

            int idx = va_tag_set_num[i];
            sp34 = field_0x994[idx + 1] - field_0x994[idx];
            sp34.normalizeZP();
            sp40 = field_0x994[idx] + (sp34 * va_tag_offset[i]);

            mDoMtx_stack_c::transS(sp40);
            mDoMtx_stack_c::ZXYrotM(field_0x660[i]);
            mDoMtx_stack_c::transM(0.0f, -var_f31, 0.0f);
            mDoMtx_stack_c::XrotM(0x4000);
            mpCardModels[i]->setBaseTRMtx(mDoMtx_stack_c::get());
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::mtx_set(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/mtx_set__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* ############################################################################################## */
/* 807CEE90-807CEE94 0001E8 0004+00 0/1 0/0 0/0 .rodata          @8471 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8471 = -20.0f;
COMPILER_STRIP_GATE(0x807CEE90, &lit_8471);
#pragma pop

/* 807CEE94-807CEE98 0001EC 0004+00 0/1 0/0 0/0 .rodata          @8472 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8472 = 75.0f;
COMPILER_STRIP_GATE(0x807CEE94, &lit_8472);
#pragma pop

/* 807CEE98-807CEE9C 0001F0 0004+00 0/1 0/0 0/0 .rodata          @8473 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8473 = -25.0f;
COMPILER_STRIP_GATE(0x807CEE98, &lit_8473);
#pragma pop

/* 807CC864-807CCD24 00A364 04C0+00 1/1 0/0 0/0 .text            cc_set__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
void daE_VA_c::cc_set() {
    cXyz sp24;

    if (field_0x1378) {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x22));
        mDoMtx_stack_c::multVecZero(&eyePos);
        attention_info.position = eyePos;
        attention_info.position.y += 50.0f;
    } else {
        mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x17));
        mDoMtx_stack_c::transM(-20.0f, 350.0f, 50.0f);
        mDoMtx_stack_c::multVecZero(&eyePos);
        attention_info.position = eyePos;
        attention_info.position.y += 30.0f;
    }

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x21));
    mDoMtx_stack_c::transM(0.0f, 40.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&sp24);

    mNeckSph.SetC(sp24);
    if (field_0x137f) {
        mNeckSph.SetR(nREG_F(7) + 70.0f);
    } else {
        mNeckSph.SetR(50.0f);
    }

    dComIfG_Ccsp()->Set(&mNeckSph);

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0));
    mDoMtx_stack_c::transM(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::multVecZero(&sp24);
    mBodyCyls[0].SetC(sp24);
    mBodyCyls[0].SetH(200.0f);

    if (field_0x137f) {
        mBodyCyls[0].SetR(75.0f);
    } else {
        mBodyCyls[0].SetR(100.0f);
    }

    dComIfG_Ccsp()->Set(&mBodyCyls[0]);

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x21));
    mDoMtx_stack_c::multVecZero(&sp24);
    sp24.y -= 50.0f;

    mBodyCyls[1].SetC(sp24);
    mBodyCyls[1].SetH(100.0f);
    mBodyCyls[1].SetR(80.0f);
    dComIfG_Ccsp()->Set(&mBodyCyls[1]);

    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x21));
    mDoMtx_stack_c::multVecZero(&sp24);
    sp24.y -= 200.0f;

    mBodyCyls[2].SetC(sp24);
    mBodyCyls[2].SetH(200.0f);
    mBodyCyls[2].SetR(80.0f);
    dComIfG_Ccsp()->Set(&mBodyCyls[2]);

    mDoMtx_stack_c::copy(mpWeaponModel->getBaseTRMtx());
    mDoMtx_stack_c::transM(10.0f, 0.0f, -25.0f);
    for (int i = 0; i < 4; i++) {
        mDoMtx_stack_c::transM(-10.0f, 80.0f, 20.0f);
        mDoMtx_stack_c::multVecZero(&sp24);
        mAttackSphs[i].SetC(sp24);

        if (mAttackSphs[i].ChkAtSet()) {
            mAttackSphs[i].SetR(70.0f);
        } else {
            mAttackSphs[i].SetR(50.0f);
        }

        dComIfG_Ccsp()->Set(&mAttackSphs[i]);
    }

    if (field_0x1387) {
        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 19; j++) {
                int sp14 = i * 19;
                sp14 += j;

                int sp10 = i * 10;
                sp10 += (j >> 1);

                if (!(j & 1)) {
                    mLineSphs[sp14].SetC(field_0x994[sp10]);
                } else {
                    mLineSphs[sp14].SetC((field_0x994[sp10] + field_0x994[sp10 + 1]) / 2.0f);
                }

                mLineSphs[sp14].SetR(20.0f);
                dComIfG_Ccsp()->Set(&mLineSphs[sp14]);
            }
        }
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void daE_VA_c::cc_set() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/cc_set__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807CCD24-807CCF3C 00A824 0218+00 1/1 0/0 0/0 .text            execute__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
int daE_VA_c::execute() {
    if (field_0x1340 != 0) {
        field_0x1340--;
    }

    if (field_0x1344 != 0) {
        field_0x1344--;
    }

    if (field_0x134c != 0) {
        field_0x134c--;
    }

    if (field_0x1350 != 0) {
        field_0x1350--;
    }

    if (field_0x1338 != 0) {
        field_0x1338--;
    }

    if (field_0x133a != 0) {
        field_0x133a--;
    }

    if (field_0x133c != 0) {
        field_0x133c--;
    }

    if (field_0x133e != 0) {
        field_0x133e--;
    }

    if (field_0x1348 != 0) {
        field_0x1348--;
    }

    if (field_0x1354 != 0) {
        field_0x1354--;
    }

    if (field_0x1358 != 0) {
        field_0x1358--;
    }

    action();
    calcJointNeck();
    mtx_set();
    setFootEffect();
    setWeponEffect();
    calcMagicMove();
    cc_set();

    if (field_0x1370 < 2) {
        if (daPy_getPlayerActorClass()->checkWolfLock(this)) {
            daPy_getPlayerActorClass()->cancelWolfLock(this);
        }

        onWolfNoLock();
    } else {
        offWolfNoLock();
    }

    cXyz sp1C;
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x22));
    mDoMtx_stack_c::multVecZero(&sp1C);

    cXyz sp28(1.0f, 1.0f, 1.0f);
    setMidnaBindEffect(this, &mSound, &sp1C, &sp28);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daE_VA_c::execute() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/execute__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807CCF3C-807CCF5C 00AA3C 0020+00 2/1 0/0 0/0 .text            daE_VA_Execute__FP8daE_VA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daE_VA_Execute(daE_VA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/daE_VA_Execute__FP8daE_VA_c.s"
}
#pragma pop

/* 807CCF5C-807CCF64 00AA5C 0008+00 1/0 0/0 0/0 .text            daE_VA_IsDelete__FP8daE_VA_c */
static int daE_VA_IsDelete(daE_VA_c* param_0) {
    return 1;
}

/* 807CCF64-807CD028 00AA64 00C4+00 1/1 0/0 0/0 .text            _delete__8daE_VA_cFv */
int daE_VA_c::_delete() {
    dComIfG_resDelete(&mPhase, "E_VA");

    if (mInitHIO) {
        init_hio = false;
    }

    for (int i = 0; i < 2; i++) {
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x10f78[i]);
        if (emitter != NULL) {
            emitter->deleteAllParticle();
        }
    }

    if (heap != NULL) {
        mSound.deleteObject();
    }

    return 1;
}

/* 807CD028-807CD048 00AB28 0020+00 1/0 0/0 0/0 .text            daE_VA_Delete__FP8daE_VA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int daE_VA_Delete(daE_VA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/daE_VA_Delete__FP8daE_VA_c.s"
}
#pragma pop

/* 807CD048-807CD600 00AB48 05B8+00 1/1 0/0 0/0 .text            CreateHeap__8daE_VA_cFv */
// weird data issue / reg alloc (probably related)
#ifdef NONMATCHING
int daE_VA_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("E_VA", 0x33);
    JUT_ASSERT(modelData != 0);

    mpMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                  (J3DAnmTransform*)dComIfG_getObjectRes("E_VA", 15), 0, 1.0f, 0,
                                  -1, &mSound, 0x80000, 0x31000084);
    if (mpMorf == NULL || mpMorf->getModel() == NULL) {
        return 0;
    }

    if (!mInvisModel.create(mpMorf->getModel(), 1)) {
        return 0;
    }

    J3DModel* model = mpMorf->getModel();
    model->setUserArea((u32)this);

    for (u16 i = 1; i < model->getModelData()->getJointNum(); i++) {
        if (i == 11 || i == 12 || i == 13 || i == 14 || i == 27 || i == 33 || i == 34) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(JointCallBack);
        }
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("E_VA", 0x30);
    JUT_ASSERT(modelData != 0);

    mpWeaponModel = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    if (mpWeaponModel == NULL) {
        return 0;
    }

    mpWeaponBrk = new mDoExt_brkAnm();
    if (mpWeaponBrk == NULL) {
        return 0;
    }

    if (!mpWeaponBrk->init(mpWeaponModel->getModelData(),
                           (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_VA", 0x3B), TRUE,
                           J3DFrameCtrl::LOOP_REPEAT_e, 1.0f, 0, -1))
    {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes("E_VA", 0x37);
    JUT_ASSERT(modelData != 0);

    mpEndEfMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL,
                                       (J3DAnmTransform*)dComIfG_getObjectRes("E_VA", 7), 0, 1.0f,
                                       0, -1, &mSound, 0x80000, 0x31000084);
    if (mpEndEfMorf == NULL || mpEndEfMorf->getModel() == NULL) {
        return 0;
    }

    model = mpEndEfMorf->getModel();
    model->setUserArea((u32)this);

    for (u16 i = 1; i < model->getModelData()->getJointNum(); i++) {
        if (i == 11 || i == 12 || i == 13 || i == 14 || i == 27 || i == 33 || i == 34) {
            model->getModelData()->getJointNodePointer(i)->setCallBack(JointCallBack);
        }
    }

    mpEndEfBrk = new mDoExt_brkAnm();
    if (mpEndEfBrk == NULL) {
        return 0;
    }

    if (!mpEndEfBrk->init(model->getModelData(),
                          (J3DAnmTevRegKey*)dComIfG_getObjectRes("E_VA", 0x3A), TRUE,
                          J3DFrameCtrl::LOOP_ONCE_e, 1.0f, 0, -1))
    {
        return 0;
    }

    if (!field_0x139c.init(1, 5, 1)) {
        return 0;
    }

    f32* size_p = field_0x139c.getSize(0);
    for (int i = 0; i < 5; i++) {
        *size_p = 5.0f;
        size_p++;
    }

    if (!mRope.init(11, 10, (ResTIMG*)dComIfG_getObjectRes("E_VA", 0x3E), 1)) {
        return 0;
    }

    for (int i = 0; i < 11; i++) {
        f32* size_p = mRope.getSize(i);

        for (int j = 0; j < 10; j++) {
            *size_p = 5.0f;
            size_p++;
        }
    }

    for (int i = 0; i < 40; i++) {
        J3DModelData* modelData;

        switch (va_tag_set_size[i]) {
        case 0:
            modelData = (J3DModelData*)dComIfG_getObjectRes("E_VA", 0x34);
            mCardModelType[i] = 0;
            break;
        case 1:
            modelData = (J3DModelData*)dComIfG_getObjectRes("E_VA", 0x35);
            mCardModelType[i] = 1;
            break;
        case 2:
            modelData = (J3DModelData*)dComIfG_getObjectRes("E_VA", 0x36);
            mCardModelType[i] = 2;
            break;
        }

        JUT_ASSERT(modelData != 0);
        mpCardModels[i] = mDoExt_J3DModel__create(modelData, 0, 0x11000084);
    }

    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daE_VA_c::CreateHeap() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/CreateHeap__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807CD600-807CD648 00B100 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" asm void __dt__12J3DFrameCtrlFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__12J3DFrameCtrlFv.s"
}
#pragma pop

/* 807CD648-807CD668 00B148 0020+00 1/1 0/0 0/0 .text            useHeapInit__FP10fopAc_ac_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm int useHeapInit(fopAc_ac_c* param_0){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/useHeapInit__FP10fopAc_ac_c.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEE9C-807CEEA0 0001F4 0004+00 0/1 0/0 0/0 .rodata          @8890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8890 = -500.0f;
COMPILER_STRIP_GATE(0x807CEE9C, &lit_8890);
#pragma pop

/* 807CEEA0-807CEEA4 0001F8 0004+00 0/1 0/0 0/0 .rodata          @8891 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8891 = 1850.0f;
COMPILER_STRIP_GATE(0x807CEEA0, &lit_8891);
#pragma pop

/* 807CEEFC-807CEEFC 000254 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_807CEF01 = "E_va";
#pragma pop

/* 807CD668-807CDAD8 00B168 0470+00 1/1 0/0 0/0 .text            create__8daE_VA_cFv */
// matches with literals
#ifdef NONMATCHING
int daE_VA_c::create() {
    fopAcM_SetupActor(this, daE_VA_c);

    int phase_state = dComIfG_resLoad(&mPhase, "E_VA");
    if (phase_state == cPhs_COMPLEATE_e) {
        OS_REPORT("E_VA PARAM %x\n", fopAcM_GetParam(this));

        if (!fopAcM_entrySolidHeap(this, useHeapInit, 0x216A0)) {
            return cPhs_ERROR_e;
        }

        if (!init_hio) {
            init_hio = true;
            mInitHIO = true;
            l_HIO.field_0x04 = -1;
        }

        attention_info.flags = 0;
        field_0x138c = fopAcM_GetParam(this);

        if (field_0x138c != 0xFF && dComIfGs_isSwitch(field_0x138c, fopAcM_GetRoomNo(this))) {
            g_env_light.mColpatWeather = 4;
            g_env_light.mColPatPrev = 4;
            g_env_light.mColPatCurr = 4;
            return cPhs_ERROR_e;
        }

        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_SetMin(this, -500.0f, -500.0f, -500.0f);
        fopAcM_SetMax(this, 500.0f, 500.0f, 500.0f);

        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
                  fopAcM_GetSpeed_p(this), NULL, NULL);
        mAcchCir.SetWall(40.0f, 500.0f);

        for (int i = 0; i < 2; i++) {
            field_0x1750[i].Set(&field_0x11e0[i], &field_0x11f8[i], this, 1, &field_0x16d0[i],
                                &field_0x1210[i], NULL, NULL);
            field_0x16d0[i].SetWall(0.0f, 120.0f);
        }

        health = 100;
        field_0x560 = 100;

        field_0x1b00.Init(0xFF, 0, this);
        mNeckSph.Set(cc_vt_neck_src);
        mNeckSph.SetStts(&field_0x1b00);

        for (int i = 0; i < 3; i++) {
            mBodyCyls[i].Set(cc_vt_body_src);
            mBodyCyls[i].SetStts(&field_0x1b00);
        }

        for (int i = 0; i < 4; i++) {
            mAttackSphs[i].Set(cc_vt_attack_src);
            mAttackSphs[i].SetStts(&field_0x1b00);
        }

        field_0x1b3c.Init(0xFF, 0, this);

        for (int i = 0; i < 190; i++) {
            mLineSphs[i].Set(cc_vt_line_src);
            mLineSphs[i].SetStts(&field_0x1b3c);
        }

        mMagicSphs[0].Set(cc_vt_magic_src);
        mMagicSphs[0].SetStts(&field_0x1b3c);
        mMagicSphs[1].Set(cc_vt_magic_src);
        mMagicSphs[1].SetStts(&field_0x1b3c);

        mSound.init(&current.pos, &eyePos, 3, 1);
        mSound.setEnemyName("E_va");

        mAtInfo.mpSound = &mSound;
        mAtInfo.mPowerType = 1;
        field_0x1379 = 0;
        field_0x137a = 0;
        field_0x1378 = 0;

        attention_info.distances[fopAc_attn_BATTLE_e] = 62;
        g_env_light.mColpatWeather = 2;
        g_env_light.mColPatPrev = 2;
        g_env_light.mColPatCurr = 2;

        if (daPy_getPlayerActorClass()->current.pos.z >= 1850.0f) {
            cDmr_SkipInfo = 0;
        }

        if (cDmr_SkipInfo != 0) {
            dComIfGs_onOneZoneSwitch(9, fopAcM_GetRoomNo(this));
            cDmr_SkipInfo = 0;
            field_0x1389 = 3;
            mAction = ACTION_CLEAR_WAIT_e;

            Z2GetAudioMgr()->subBgmStart(Z2BGM_VARIANT);
            Z2GetAudioMgr()->changeSubBgmStatus(1);
            field_0x1374 = 0;

            g_env_light.mColpatWeather = 2;
            g_env_light.mColPatPrev = 2;
            g_env_light.mColPatCurr = 2;
        } else {
            mAction = ACTION_DEMO_OP_WAIT_e;
            field_0x1374 = 5;
            g_env_light.mColpatWeather = 3;
            g_env_light.mColPatPrev = 3;
            g_env_light.mColPatCurr = 3;
        }

        daE_VA_Execute(this);
    }

    return phase_state;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daE_VA_c::create() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/create__8daE_VA_cFv.s"
}
#pragma pop
#endif

/* 807CDAD8-807CDE90 00B5D8 03B8+00 1/1 0/0 0/0 .text            __ct__8daE_VA_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm daE_VA_c::daE_VA_c() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__8daE_VA_cFv.s"
}
#pragma pop

/* 807CDE90-807CDF14 00B990 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::dCcD_Sph() {
extern "C" asm void __ct__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__8dCcD_SphFv.s"
}
#pragma pop

/* 807CDF14-807CDF98 00BA14 0084+00 1/1 0/0 0/0 .text            __ct__8dCcD_CylFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Cyl::dCcD_Cyl() {
extern "C" asm void __ct__8dCcD_CylFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__8dCcD_CylFv.s"
}
#pragma pop

/* 807CDF98-807CE064 00BA98 00CC+00 1/1 0/0 0/0 .text            __dt__8dCcD_SphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_Sph::~dCcD_Sph() {
extern "C" asm void __dt__8dCcD_SphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8dCcD_SphFv.s"
}
#pragma pop

/* 807CE064-807CE0AC 00BB64 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGSphFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cM3dGSph::~cM3dGSph() {
extern "C" asm void __dt__8cM3dGSphFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__8cM3dGSphFv.s"
}
#pragma pop

/* 807CE0AC-807CE108 00BBAC 005C+00 1/0 0/0 0/0 .text            __dt__10dCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dCcD_GStts::~dCcD_GStts() {
extern "C" asm void __dt__10dCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__10dCcD_GSttsFv.s"
}
#pragma pop

/* 807CE108-807CE15C 00BC08 0054+00 1/1 0/0 0/0 .text            __ct__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::dBgS_ObjAcch() {
extern "C" asm void __ct__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__ct__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 807CE15C-807CE1CC 00BC5C 0070+00 4/3 0/0 0/0 .text            __dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_ObjAcch::~dBgS_ObjAcch() {
extern "C" asm void __dt__12dBgS_ObjAcchFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__12dBgS_ObjAcchFv.s"
}
#pragma pop

/* 807CE1CC-807CE23C 00BCCC 0070+00 2/1 0/0 0/0 .text            __dt__12dBgS_AcchCirFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm dBgS_AcchCir::~dBgS_AcchCir() {
extern "C" asm void __dt__12dBgS_AcchCirFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__12dBgS_AcchCirFv.s"
}
#pragma pop

/* 807CE23C-807CE240 00BD3C 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz() {
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 807CE240-807CE244 00BD40 0004+00 1/1 0/0 0/0 .text            __ct__5csXyzFv */
// csXyz::csXyz() {
extern "C" void __ct__5csXyzFv() {
    /* empty function */
}

/* 807CE244-807CE264 00BD44 0020+00 1/0 0/0 0/0 .text            daE_VA_Create__FP8daE_VA_c */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void daE_VA_Create(daE_VA_c* param_0) {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/daE_VA_Create__FP8daE_VA_c.s"
}
#pragma pop

/* 807CE264-807CE2AC 00BD64 0048+00 1/0 0/0 0/0 .text            __dt__10cCcD_GSttsFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cCcD_GStts::~cCcD_GStts() {
extern "C" asm void __dt__10cCcD_GSttsFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__10cCcD_GSttsFv.s"
}
#pragma pop

/* 807CE2AC-807CE2F4 00BDAC 0048+00 2/1 0/0 0/0 .text            __dt__12daE_VA_HIO_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm daE_VA_HIO_c::~daE_VA_HIO_c() {
extern "C" asm void __dt__12daE_VA_HIO_cFv(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__12daE_VA_HIO_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CEEA4-807CEEA8 0001FC 0004+00 0/1 0/0 0/0 .rodata          @9204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9204 = 990.0f;
COMPILER_STRIP_GATE(0x807CEEA4, &lit_9204);
#pragma pop

/* 807CEEA8-807CEEAC 000200 0004+00 0/1 0/0 0/0 .rodata          @9205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9205 = 971.0f;
COMPILER_STRIP_GATE(0x807CEEA8, &lit_9205);
#pragma pop

/* 807CEEAC-807CEEB0 000204 0004+00 0/1 0/0 0/0 .rodata          @9206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9206 = 326.0f;
COMPILER_STRIP_GATE(0x807CEEAC, &lit_9206);
#pragma pop

/* 807CEEB0-807CEEB4 000208 0004+00 0/1 0/0 0/0 .rodata          @9207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9207 = 582.0f;
COMPILER_STRIP_GATE(0x807CEEB0, &lit_9207);
#pragma pop

/* 807CEEB4-807CEEB8 00020C 0004+00 0/1 0/0 0/0 .rodata          @9208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9208 = -801.0f;
COMPILER_STRIP_GATE(0x807CEEB4, &lit_9208);
#pragma pop

/* 807CEEB8-807CEEBC 000210 0004+00 0/1 0/0 0/0 .rodata          @9209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9209 = -582.0f;
COMPILER_STRIP_GATE(0x807CEEB8, &lit_9209);
#pragma pop

/* 807CEEBC-807CEEC0 000214 0004+00 0/1 0/0 0/0 .rodata          @9210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9210 = -942.0f;
COMPILER_STRIP_GATE(0x807CEEBC, &lit_9210);
#pragma pop

/* 807CEEC0-807CEEC4 000218 0004+00 0/1 0/0 0/0 .rodata          @9211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9211 = 306.0f;
COMPILER_STRIP_GATE(0x807CEEC0, &lit_9211);
#pragma pop

/* 807CEEC4-807CEEC8 00021C 0004+00 0/1 0/0 0/0 .rodata          @9212 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9212 = 202.0f;
COMPILER_STRIP_GATE(0x807CEEC4, &lit_9212);
#pragma pop

/* 807CEEC8-807CEECC 000220 0004+00 0/1 0/0 0/0 .rodata          @9213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9213 = 501.0f;
COMPILER_STRIP_GATE(0x807CEEC8, &lit_9213);
#pragma pop

/* 807CEECC-807CEED0 000224 0004+00 0/1 0/0 0/0 .rodata          @9214 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9214 = 559.0f;
COMPILER_STRIP_GATE(0x807CEECC, &lit_9214);
#pragma pop

/* 807CEED0-807CEED4 000228 0004+00 0/1 0/0 0/0 .rodata          @9215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9215 = -17.0f;
COMPILER_STRIP_GATE(0x807CEED0, &lit_9215);
#pragma pop

/* 807CEED4-807CEED8 00022C 0004+00 0/1 0/0 0/0 .rodata          @9216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9216 = 458.0f;
COMPILER_STRIP_GATE(0x807CEED4, &lit_9216);
#pragma pop

/* 807CEED8-807CEEDC 000230 0004+00 0/1 0/0 0/0 .rodata          @9217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9217 = -306.0f;
COMPILER_STRIP_GATE(0x807CEED8, &lit_9217);
#pragma pop

/* 807CEEDC-807CEEE0 000234 0004+00 0/1 0/0 0/0 .rodata          @9218 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9218 = -131.0f;
COMPILER_STRIP_GATE(0x807CEEDC, &lit_9218);
#pragma pop

/* 807CEEE0-807CEEE4 000238 0004+00 0/1 0/0 0/0 .rodata          @9219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9219 = -524.0f;
COMPILER_STRIP_GATE(0x807CEEE0, &lit_9219);
#pragma pop

/* 807CEEE4-807CEEE8 00023C 0004+00 0/1 0/0 0/0 .rodata          @9220 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9220 = -414.0f;
COMPILER_STRIP_GATE(0x807CEEE4, &lit_9220);
#pragma pop

/* 807CEEE8-807CEEEC 000240 0004+00 0/1 0/0 0/0 .rodata          @9221 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9221 = 347.0f;
COMPILER_STRIP_GATE(0x807CEEE8, &lit_9221);
#pragma pop

/* 807CEEEC-807CEEF0 000244 0004+00 0/1 0/0 0/0 .rodata          @9222 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9222 = -15.0f;
COMPILER_STRIP_GATE(0x807CEEEC, &lit_9222);
#pragma pop

/* 807CEEF0-807CEEF4 000248 0004+00 0/1 0/0 0/0 .rodata          @9223 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9223 = 8.0f;
COMPILER_STRIP_GATE(0x807CEEF0, &lit_9223);
#pragma pop

/* 807CEEF4-807CEEF8 00024C 0004+00 0/1 0/0 0/0 .rodata          @9224 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9224 = -8.0f;
COMPILER_STRIP_GATE(0x807CEEF4, &lit_9224);
#pragma pop

/* 807CEEF8-807CEEFC 000250 0004+00 0/1 0/0 0/0 .rodata          @9225 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9225 = 23.0f;
COMPILER_STRIP_GATE(0x807CEEF8, &lit_9225);
#pragma pop

/* 807CE2F4-807CE7E0 00BDF4 04EC+00 0/0 1/0 0/0 .text            __sinit_d_a_e_vt_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_a_e_vt_cpp(){nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__sinit_d_a_e_vt_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x807CE2F4, __sinit_d_a_e_vt_cpp);
#pragma pop

/* 807CE7E0-807CE7E8 00C2E0 0008+00 1/0 0/0 0/0 .text            @36@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_807CE7E0() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/func_807CE7E0.s"
}
#pragma pop

/* 807CE7E8-807CE7F0 00C2E8 0008+00 1/0 0/0 0/0 .text            @20@__dt__12dBgS_ObjAcchFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
static asm void func_807CE7E8() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/func_807CE7E8.s"
}
#pragma pop

/* 807CE7F0-807CEC04 00C2F0 0414+00 1/1 0/0 0/0 .text
 * setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
/* static asm void setMidnaBindEffect(fopEn_enemy_c* param_0, Z2CreatureEnemy* param_1, cXyz*
   param_2, cXyz* param_3) { */
extern "C" asm void setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz.s"
}
#pragma pop

/* 807CEC04-807CEC40 00C704 003C+00 1/1 0/0 0/0 .text            __dt__5csXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm csXyz::~csXyz() {
extern "C" asm void __dt__5csXyzFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__5csXyzFv.s"
}
#pragma pop

/* 807CEC40-807CEC7C 00C740 003C+00 2/2 0/0 0/0 .text            __dt__4cXyzFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm cXyz::~cXyz() {
extern "C" asm void __dt__4cXyzFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/__dt__4cXyzFv.s"
}
#pragma pop

/* 807CEC7C-807CEC94 00C77C 0018+00 1/1 0/0 0/0 .text            checkNowWolf__9daPy_py_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void daPy_py_c::checkNowWolf() {
extern "C" asm void checkNowWolf__9daPy_py_cFv() {
    nofralloc
#include "asm/rel/d/a/e/d_a_e_vt/d_a_e_vt/checkNowWolf__9daPy_py_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 807CF6E4-807CF6E8 000274 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_807CF6E4[4];
#pragma pop

/* 807CF6E8-807CF6EC 000278 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_807CF6E8[4];
#pragma pop

/* 807CF6EC-807CF6F0 00027C 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_807CF6EC[4];
#pragma pop

/* 807CF6F0-807CF6F4 000280 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807CF6F0[4];
#pragma pop

/* 807CF6F4-807CF6F8 000284 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF6F4[4];
#pragma pop

/* 807CF6F8-807CF6FC 000288 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF6F8[4];
#pragma pop

/* 807CF6FC-807CF700 00028C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_807CF6FC[4];
#pragma pop

/* 807CF700-807CF704 000290 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_807CF700[4];
#pragma pop

/* 807CF704-807CF708 000294 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_807CF704[4];
#pragma pop

/* 807CF708-807CF70C 000298 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_807CF708[4];
#pragma pop

/* 807CF70C-807CF710 00029C 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_807CF70C[4];
#pragma pop

/* 807CF710-807CF714 0002A0 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_807CF710[4];
#pragma pop

/* 807CF714-807CF718 0002A4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_807CF714[4];
#pragma pop

/* 807CF718-807CF71C 0002A8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF718[4];
#pragma pop

/* 807CF71C-807CF720 0002AC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807CF71C[4];
#pragma pop

/* 807CF720-807CF724 0002B0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_807CF720[4];
#pragma pop

/* 807CF724-807CF728 0002B4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_807CF724[4];
#pragma pop

/* 807CF728-807CF72C 0002B8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_807CF728[4];
#pragma pop

/* 807CF72C-807CF730 0002BC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_807CF72C[4];
#pragma pop

/* 807CF730-807CF734 0002C0 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_807CF730[4];
#pragma pop

/* 807CF734-807CF738 0002C4 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_807CF734[4];
#pragma pop

/* 807CF738-807CF73C 0002C8 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF738[4];
#pragma pop

/* 807CF73C-807CF740 0002CC 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF73C[4];
#pragma pop

/* 807CF740-807CF744 0002D0 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_807CF740[4];
#pragma pop

/* 807CF744-807CF748 0002D4 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_807CF744[4];
#pragma pop

/* 807CEEFC-807CEEFC 000254 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
