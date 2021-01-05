#ifndef D_A_ALINK_H_
#define D_A_ALINK_H_

#include "JSystem/J3DGraphAnimator/J3DJoint.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "JSystem/J3DGraphAnimator/J3DModelLoader.h"
#include "SComponent/c_bg_s_poly_info.h"
#include "SComponent/c_sxyz.h"
#include "SComponent/c_xyz.h"
#include "d/d_a/d_a_player/d_a_player.h"
#include "d/d_cc/d_cc_d.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "d/d_resource/d_resource.h"
#include "d/d_save/d_save/d_save.h"
#include "f/f_op/f_op_actor.h"
#include "global.h"

typedef u32 daAlink_ANM;
typedef u32 daAlink_UPPER;
typedef u32 daAlink_UNDER;
typedef u32 daAlink_FTANM;

class daAlink_matAnm_c {
public:
    void init(void);
    void calc(J3DMaterial*) const;

private:
    u8 unk0[0xf4];
    float unk244;
    float unk248;
    float unk252;
    float unk256;
    u32 unk260;
};

class daAlink_footData_c;
class daAlinkHIO_anm_c;
class daPy_frameCtrl_c;
struct cM3dGPla;

class daAlink_c {
public:
    // member functions
    u32 getE3Zhint(void);
    const char* getAlinkArcName(void);
    u32 checkStageName(const char*);
    void tgHitCallback(fopAc_ac_c*, dCcD_GObjInf*, dCcD_GObjInf*);
    void coHitCallback(fopAc_ac_c*, dCcD_GObjInf*);
    void setMatrixWorldAxisRot(float (*)[4], short, short, short, int, const cXyz*);
    bool jointControll(int);
    void setUpperFront(void);
    void changeBlendRate(int);
    void resetRootMtx(void);
    bool modelCallBack(int);
    bool headModelCallBack(int);
    bool wolfModelCallBack(int);
    void setHatAngle(void);
    void calcHairAngle(short*);
    void setHairAngle(cXyz*, float, float);
    void setLookPosFromOut(cXyz*);
    int checkAttentionPosAngle(cXyz*);
    bool checkActorPosAngle(fopAc_ac_c*, cXyz**);
    cXyz* getNeckAimPos(cXyz*, int*, int);
    int getNeckAimAngle(cXyz*, short*, short*, short*, short*);
    double setEyeMove(cXyz*, short, short);
    void setNeckAngle(void);
    bool getStickAngleFromPlayerShape(short*) const;
    void commonLineCheck(cXyz*, cXyz*);
    int getMoveBGActorName(cBgS_PolyInfo&, int);
    bool checkGoronRide(void);
    void setMoveSlantAngle(void);
    bool setArmMatrix(void);
    bool setFootMatrix(void);
    void setMatrixOffset(float*, float);
    bool setLegAngle(float, daAlink_footData_c*, short*, short*, int);
    void footBgCheck(void);
    void handBgCheck(void);
    void setItemHeap(void);
    void setIdxMask(u16*, u16*);
    void getAnimeResource(daPy_anmHeap_c*, u16, u32);
    u32 initModel(J3DModelData*, u32, u32);
    void initModel(u16, u32);
    void initModelEnv(u16, u32);
    bool initDemoModel(J3DModel**, char const*, u32);
    bool initDemoBck(mDoExt_bckAnm**, char const*);
    bool createHeap(void);
    void setSelectEquipItem(int);
    bool checkBoarStart(void);
    bool checkCanoeStart(void);
    void playerInit(void);
    bool checkHorseStart(u32, int);
    bool setStartProcInit(void);
    u32 create(void);
    int setRoomInfo(void);
    void setShapeAngleOnGround(void);
    void setStepsOffset(void);
    void iceSlipBgCheck(void);
    void setIceSlipSpeed(void);
    double setPolygonSpeed(void);
    bool checkWindSpeedOnAngle(void) const;
    bool checkWindSpeedOnAngleAnime(int) const;
    bool checkDashAnime(void) const;
    double checkWindWallRate(cXyz const&);
    void setWindSpeed(void);
    void setBodyPartPos(void);
    u32 setRollJump(float, float, short);
    void setAttentionPos(void);
    void setMatrix(void);
    double simpleAnmPlay(J3DAnmBase*);
    void setSwordPos(void);
    void setItemMatrix(int);
    void setWolfItemMatrix(void);
    void setHandIndex(daAlink_ANM);
    void setSwordAtCollision(int);
    bool checkNoCollisionCorret(void);
    void decSwordBlur(void);
    void resetWolfAtCollision(void);
    void setWolfAtCollision(void);
    void resetAtCollision(int);
    void setAtCollision(void);
    void setWolfCollisionPos(void);
    void initLockAt(void);
    void cancelLockAt(void);
    void setCollisionPos(void);
    void setCollision(void);
    double getBaseAnimeFrame(void) const;
    void setAnimeFrame(float);
    void setFrameCtrl(daPy_frameCtrl_c*, u8, short, short, float, float);
    u8 getMainBckData(daAlink_ANM);
    bool checkUnderMove0BckNoArc(daAlink_ANM) const;
    bool checkUnderMove1BckNoArc(daAlink_ANM) const;
    u32 getUnderUpperAnime(daAlink_ANM, J3DAnmTransform**, J3DAnmTransform**, int, u32);
    void setDoubleAnimeBlendRatio(float);
    void commonDoubleAnime(J3DAnmTransform*, J3DAnmTransform*, J3DAnmTransform*, J3DAnmTransform*,
                           float, float, float, int);
    bool setDoubleAnime(float, float, float, daAlink_ANM, daAlink_ANM, int, float);
    void commonSingleAnime(J3DAnmTransform*, J3DAnmTransform*, float, float, short);
    void setSingleAnimeBase(daAlink_ANM);
    void setSingleAnimeBaseMorf(daAlink_ANM, float);
    void setSingleAnimeBaseSpeed(daAlink_ANM, float, float);
    bool setSingleAnime(daAlink_ANM, float, float, short, float);
    void setSingleAnimeParam(daAlink_ANM, daAlinkHIO_anm_c const*);
    daAlink_c* animePlay(J3DAnmTransform*, daPy_frameCtrl_c*);
    void allAnimePlay(void);
    void setUpperAnimeMorf(float);
    void setUpperAnimeBase(u16);
    void setUpperAnimeBaseMorf(u16, float);
    void setUpperAnimeBaseSpeed(u16, float, float);
    void setUpperAnime(u16, daAlink_UPPER, float, float, short, float);
    void setUpperAnimeParam(u16, daAlink_UPPER, daAlinkHIO_anm_c const*);
    bool resetUpperAnime(daAlink_UPPER, float);
    void setUnderAnimeMorf(float);
    bool setUnderAnime(u16, daAlink_UNDER, float, float, short, float);
    void setUnderAnimeParam(u16, daAlink_UNDER, daAlinkHIO_anm_c const*);
    bool resetUnderAnime(daAlink_UNDER, float);
    void setOldRootQuaternion(short, short, short);
    bool checkAtnLeftAnime(void);
    bool checkAtnRightAnime(void);
    double getMoveGroundAngleSpeedRate(void);
    void setBlendMoveAnime(float);
    void setBlendAtnMoveAnime(float);
    void setBlendAtnBackMoveAnime(float);
    void setFaceBck(u16, int, u16);
    void setFaceBtp(u16, int, u16);
    void setFaceBtk(u16, int, u16);
    daAlink_FTANM setFaceBasicTexture(daAlink_FTANM);
    void setFaceBasicAnime(daAlink_ANM);
    void setFacePriTexture(daAlink_FTANM);
    void setFacePriAnime(daAlink_ANM);
    void resetFacePriBck(void);
    void resetFacePriBtp(void);
    void resetFacePriBtk(void);
    void resetFacePriTexture(void);
    void resetFacePriAnime(void);
    void playFaceTextureAnime(void);
    int getGroundAngle(cBgS_PolyInfo*, short);
    int getRoofAngle(cBgS_PolyInfo*, short);
    u32 getWallEdgePos(cXyz const&, cM3dGPla*, cM3dGPla*, cXyz*, int);
    void setFrontWallType(void);
    bool checkWaterPolygonUnder(void);
    void setWaterY(void);
    void setHangWaterY(void);
    void setSandDownBgCheckWallH(void);
    void setBgCheckParam(void);
    bool checkNotJumpSinkLimit(void);
    bool checkNotItemSinkLimit(void);
    void setSandShapeOffset(void);
    bool checkLv2MiddleBossBgRide(short);
    bool getSlidePolygon(cM3dGPla*);
    bool checkSlope(void) const;
    void setPlayerPosAndAngle(cXyz const*, short, int);
    void setPlayerPosAndAngle(cXyz const*, csXyz const*);
    void setPlayerPosAndAngle(float (*)[4]);
    u32 itemTriggerCheck(u8);
    u32 itemButtonCheck(u8);
    /*---*/
    BOOL checkMagicArmorHeavy(void) const;
    BOOL checkBootsOrArmorHeavy(void) const;
    void setSpecialGravity(float, float, int);
    int checkMagicArmorWearAbility(void) const;
    void onFrollCrashFlg(u8, int);
    void setMidnaTalkStatus(u8);

private:
    u8 unk[1328];
    float unk1328;
    float unk1332;
    u8 unk1336[56];
    u32 unk1392;
    u32 unk1396;
    u32 unk1400;
    u32 unk1404;
    u8 unk1408[6716];
    u16 unk8124;
    u8 unk8126[4070];
    u8 unk12196;
    u8 unk12197[2071];
};

class daMidna_c {
public:
    void onForcePanic(void);
    u32 checkForceNormalColor(void) const;
    u32 checkForceTiredColor(void) const;
    bool checkMidnaTired(void);
    void onNoServiceWait(void);

private:
    u8 unk[0x893];
    u32 unk2196;
    u32 unk2200;
};

extern "C" {
void tgHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfP12dCcD_GObjInf(fopAc_ac_c*,
                                                                           dCcD_GObjInf*,
                                                                           dCcD_GObjInf*);
void coHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInf(fopAc_ac_c*, dCcD_GObjInf*);
void J3DMaterialAnm_NS_calc(void);
void mDoMtx_stack_c_NS_transM(float, float, float);
void daAlink_c_NS_concatMagneBootInvMtx(void);
void mDoMtx_ZXYrotM(void);
void mDoMtx_YrotM(void);
void daAlink_c_NS_concatMagneBootMtx(void);
void mDoMtx_stack_c_NS_transS(void);
void mDoMtx_stack_c_NS_quatM(void);
void daAlink_c_NS_checkUnderMove0BckNoArc(void);
void mDoMtx_QuatConcat(void);
void JMAEulerToQuat(void);
void daAlink_c_NS_checkBowAnime(void);
void setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz(float (*)[4], short, short, short, int,
                                                        const cXyz*);
void daAlink_c_NS_checkHorseLieAnime(void);
void __ct__5csXyzFsss(void);
void daAlink_c_NS_checkNoUpperAnime(void);
void daAlink_c_NS_checkUpperReadyThrowAnime(void);
void daAlink_c_NS_setDoubleAnimeBlendRatio(void);
void changeBlendRate__9daAlink_cFi(int);
void daAlink_c_NS_setArmMatrix(void);
void daAlink_c_NS_setFootMatrix(void);
void setUpperFront__9daAlink_cFv(void);
bool jointControll__9daAlink_cFi(int);
void resetRootMtx__9daAlink_cFv(void);
bool modelCallBack__9daAlink_cFi(int);
void daAlink_c_NS_checkZoraWearAbility(void);
void mDoMtx_stack_c_NS_scaleM(void);
void mDoMtx_XYZrotM(void);
void mDoMtx_ZrotM(void);
bool headModelCallBack__9daAlink_cFi(int);
void daAlink_c_NS_changeWolfBlendRate(void);
void daAlink_c_NS_setWolfFootMatrix(void);
bool wolfModelCallBack__9daAlink_cFi(int);
void cLib_addCalcAngleS2__FPssss(void);
void daAlink_c_NS_getMoveBGActorName(void);
void daAlink_c_NS_multVecMagneBootInvMtx(void);
void __ml__4cXyzCFf(void);
void atan2sY_XZ__4cXyzCFv(void);
void cM_atan2s__Fff(void);
void cLib_distanceAngleS__Fss(void);
void atan2sX_Z__4cXyzCFv(void);
void __mi__4cXyzCFRC3Vec(void);
void dKyw_get_AllWind_vec(void);
void cLib_addCalcAngleS__FPsssss(void);
void cM_rndF__Ff(void);
void calcHairAngle__9daAlink_cFPs(short*);
void setHairAngle__9daAlink_cFP4cXyzff(cXyz*, float, float);
void cLib_targetAngleY__FPC3VecPC3Vec(void);
void daAlink_c_NS_checkEnemyGroup(void);
int checkAttentionPosAngle__9daAlink_cFP4cXyz(cXyz*);
void daAlink_c_NS_getDemoLookActor(void);
void daAlink_c_NS_checkDemoMoveMode(void);
bool isTransformLV__21dSv_player_status_b_cCFi(int);
void dKy_darkworld_check(void);
void daAlink_c_NS_checkAttentionState(void);
void daAlink_c_NS_checkUnderMove0BckNoArcWolf(void);
void daAlink_c_NS_checkWindSpeedOnAngleAnime(void);
void daAlink_c_NS_getCopyRodControllActor(void);
void dAttLook_c_NS_convPId(void);
void daAlink_c_NS_checkEventRun(void);
bool checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz(fopAc_ac_c*, cXyz**);
void dCamera_c_NS_GetForceLockOnActor(void);
void dCam_getBody(void);
void dAttention_c_NS_LockonTarget(void);
void cM_rnd__Fv(void);
void fopAcIt_Judge(void);
void dAttList_c_NS_getActor(void);
void dAttention_c_NS_GetLockonList(void);
void fopAcM_getTalkEventPartner(void);
}

// daalink_matanm init
extern float lbl_80452CC0;
extern u8 lbl_80450FC8;
extern u8 lbl_80450FC9;

// daalink_matanm calc
extern double lbl_80452CB0;
extern float lbl_80452CB8;

// daalink setmatrixworldaxisrot
struct mCurrentMtx {  // J3DGraphBase::J3DSys::mCurrentMtx
    float unk0[4];
    float unk10[4];
    float unk20[4];
};
// extern now lbl_803DD470;
extern mCurrentMtx lbl_80434BE4;

// daalink headmodelcallback
extern float lbl_80452EDC;

// daalink sethatangle
extern float lbl_80452CE0;
extern double lbl_80452CE8;
extern float lbl_80452D50;
extern float lbl_80452DF8;
extern float lbl_80452C9C;
extern double lbl_80452CF0;
extern double lbl_80452CF8;
extern float lbl_80452D14;
extern float lbl_80452D3C;
extern float lbl_80452D88;
extern float lbl_80452ED4;
extern float lbl_80452F0C;
extern float lbl_80453058;
extern float lbl_80453100;
extern float lbl_804531F0;
extern float lbl_804531F4;
extern u8 lbl_80439A20[65536];  // JMath::JMath::sincosTable_

// daalink sethairangle
extern float lbl_80452C98;
extern float lbl_80452D18;
extern float lbl_80452D5C;
extern float lbl_80452DEC;
extern float lbl_80452DB8;
extern float lbl_80452E4C;
extern float lbl_80452E54;
extern float lbl_80452E5C;
extern float lbl_80452E60;
extern float lbl_80452F08;
extern float lbl_80452FDC;
extern float lbl_80453158;
extern float lbl_804531F8;
extern float lbl_804531FC;
extern float lbl_80453200;
extern float lbl_80453204;
extern float lbl_80453208;
extern float lbl_8045320C;
extern float lbl_80453210;

// daalink checkattentionposangle
extern u8 lbl_8038E5A4[0x6C];  // daAlinkHIO_horse_c0::m

// daalink getneckaimpos
extern u32 lbl_80451018;  // daPy_py_c::m_midnaActor
extern float lbl_80452D68;
extern float lbl_80452DB0;
extern float lbl_80452DE0;
extern float lbl_80452E44;

#endif
