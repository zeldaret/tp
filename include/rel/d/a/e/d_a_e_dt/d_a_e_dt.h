#ifndef D_A_E_DT_H
#define D_A_E_DT_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daE_DT_c
 * @brief Deku Toad
 * 
 * @details 
 * 
 */
class daE_DT_c : public fopEn_enemy_c {
    /* 806AD97C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 806ADBA0 */ void JointCallBack(J3DJoint*, int);
    /* 806ADBEC */ void ctrlJointTuba(J3DJoint*, J3DModel*);
    /* 806ADD30 */ void JointCallBackTuba(J3DJoint*, int);
    /* 806ADD7C */ void draw();
    /* 806AE5C8 */ void demo_skip(int);
    /* 806AE618 */ void DemoSkipCallBack(void*, int);
    /* 806AE64C */ void setBck(int, u8, f32, f32);
    /* 806AE6F0 */ void checkBck(int);
    /* 806AE74C */ void setActionMode(int, int);
    /* 806AE758 */ void damage_check();
    /* 806AEB48 */ void setStabPos();
    /* 806AEBD4 */ void checkBeforeBg(f32);
    /* 806AED94 */ void checkTongueBg();
    /* 806AEEFC */ void checkWaterSurface();
    /* 806AEFE8 */ void setSmallWaterEffect();
    /* 806AF09C */ void setLargeWaterEffect();
    /* 806AF150 */ void setHamonEffect(int);
    /* 806AF240 */ void setJumpEffect();
    /* 806AF2F4 */ void setJumpSizukuEffect();
    /* 806AF3D0 */ void setDamageShibukiEffect(int);
    /* 806AF460 */ void setDamageYodareEffect(int);
    /* 806AF548 */ void setSwingEffect();
    /* 806AF5CC */ void setStepEffect();
    /* 806AF740 */ void setBombEffect();
    /* 806AF848 */ void setBombSmokeEffect();
    /* 806AF924 */ void setDeadShibukiEffect();
    /* 806AF9D8 */ void setDeadYodareEffect();
    /* 806AFAE0 */ void setBoxTubaEffect();
    /* 806AFBBC */ void setBoxTubaLandEffect();
    /* 806AFD30 */ void getNumberOfOtama();
    /* 806AFE24 */ void setStayOtamaFall();
    /* 806AFEAC */ void setStayOtamaDelete();
    /* 806B0114 */ void checkBombEat();
    /* 806B01B4 */ void isShutterOpen();
    /* 806B0200 */ void executeWait();
    /* 806B0368 */ void executeCry();
    /* 806B063C */ void executeShake();
    /* 806B07C4 */ void executeWalk();
    /* 806B0E9C */ void executeJump();
    /* 806B177C */ void executeDown();
    /* 806B1B60 */ void executeSearch();
    /* 806B1BEC */ void executeDamage();
    /* 806B1D48 */ void executeBombDamage();
    /* 806B1F78 */ void executeDeath();
    /* 806B28E4 */ void pointInSight(cXyz*);
    /* 806B29D4 */ void executeOpening();
    /* 806B3B08 */ void calcCamera();
    /* 806B40D8 */ void calcBoxAndTuba();
    /* 806B4724 */ void action();
    /* 806B49F0 */ void mtx_set();
    /* 806B4B24 */ void cc_set();
    /* 806B4FD8 */ void execute();
    /* 806B5158 */ void _delete();
    /* 806B5214 */ void CreateHeap();
    /* 806B5460 */ void create();
private:
    /* 0x5ac */ u8 field_0x5ac[0x1174 - 0x5ac];
};

STATIC_ASSERT(sizeof(daE_DT_c) == 0x1174);

class daE_DT_HIO_c {
    /* 806AD90C */ daE_DT_HIO_c();
    /* 806B5BDC */ ~daE_DT_HIO_c();
};

struct E_DT_n {
    static u8 eDt_ShakeFrame[40];
    static u8 eDt_ShakeFrameDemo[40];
    static u8 cc_dt_body_src[64];
    static u8 cc_dt_tongue_src[64];
    static u8 mDt_OtamaNum[4];
    static u8 mDt_OtamaNo[80];
    static u8 m_fall_no[4];
    static u8 m_tongue_pos[12];
};


#endif /* D_A_E_DT_H */
