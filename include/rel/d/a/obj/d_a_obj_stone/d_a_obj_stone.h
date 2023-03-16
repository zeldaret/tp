#ifndef D_A_OBJ_STONE_H
#define D_A_OBJ_STONE_H

#include "dolphin/types.h"
#include "d/com/d_com_inf_game.h"

enum {
    OBJ_STONE_TYPE_SMALL = 0,
    OBJ_STONE_TYPE_BIG = 1
};

class daObjStone_c : public fopAc_ac_c {
public:
    u8 getType() { return fopAcM_GetParamBit(this,0,4); }
    u8 getItemType() { return fopAcM_GetParamBit(this,4,2); }
    u8 getItemNo() { return fopAcM_GetParamBit(this,8,8); }
    u8 getItemBit() { return fopAcM_GetParamBit(this,16,8); }

    /* 80CE93C4 */ void initBaseMtx();
    /* 80CE9468 */ void setBaseMtx();
    /* 80CE9540 */ int Create();
    /* 80CE97C0 */ bool CreateHeap();
    /* 80CE9840 */ int create();
    /* 80CE9BA0 */ int execute();
    /* 80CE9CF8 */ void mode_proc_call();
    /* 80CEAF88 */ void init_modePutWait();
    /* 80CEAFD8 */ void modePutWait();
    /* 80CEAFE8 */ void init_modeWait();
    /* 80CEB01C */ void modeWait();
    /* 80CEB0B8 */ void init_modeDrop();
    /* 80CEB0F8 */ void modeDrop();
    /* 80CEB35C */ void init_modeCarry();
    /* 80CEB480 */ void modeCarry();
    /* 80CEB6E8 */ void init_modeWalk();
    /* 80CEB720 */ void modeWalk();
    /* 80CEBCDC */ void init_modePushWolfNonBreak();
    /* 80CEBE24 */ void init_modeYogan();
    /* 80CEBE84 */ void modeYogan();
    /* 80CEBF1C */ void init_modeBreak();
    /* 80CEC180 */ void modeBreak();
    /* 80CEC1AC */ void CrrPos();
    /* 80CEC264 */ void createItem();
    /* 80CEC33C */ void calcRotBaseMtx(s16*);
    /* 80CEC5BC */ int checkRollAngle();
    /* 80CEC6D8 */ void set_carry_eff();
    /* 80CEC7DC */ void effect_delete(bool);
    /* 80CEC888 */ int draw();
    /* 80CEC948 */ int _delete();

    /* 0x0568 */ request_of_phase_process_class mPhase;
    /* 0x0570 */ J3DModel* mpModel;
    /* 0x0574 */ dBgS_ObjAcch mChkObj;
    /* 0x074C */ dBgS_AcchCir mChkCircle;
    /* 0x078C */ dCcD_Stts mStatus;
    /* 0x07C8 */ dCcD_Sph mCollider;
    /* 0x0900 */ csXyz mShapeAngle;
    /* 0x0906 */ u8 mStoneType;                 // 0: small rock, 1: big rock
    /* 0x0907 */ u8 field_0x0907;
    /* 0x0908 */ u8 field_0x0908;
    /* 0x090C */ u32 mMode; // maybe a better name for this
    /* 0x0910 */ cXyz field_0x0910;
    /* 0x091C */ u16 field_0x091c;
    /* 0x091E */ u8 field_0x091E[0x0920 - 0x091E];
    /* 0x0920 */ Quaternion field_0x0920;
    /* 0x0930 */ Quaternion field_0x0930;
    /* 0x0940 */ f32 mInitialOffsetY;
    /* 0x0944 */ f32 mLastPosY; 
    /* 0x0948 */ f32 mLastSpeedY; // maybe a better name for this
    /* 0x094C */ u8 field_0x094c;
    /* 0x094C */ u8 field_0x094d;
    /* 0x094E */ bool mIsInWater;
    /* 0x094F */ u8 field_0x094f;
    /* 0x0950 */ u8 field_0x0950;
    /* 0x0951 */ u8 field_0x0951[0x0960 - 0x0951];
    /* 0x0960 */ u32 field_0x0960;
    /* 0x0964 */ JPABaseEmitter* field_0x0964[3];
    /* 0x0970 */ Z2SoundObjSimple mSound;
};

#endif /* D_A_OBJ_STONE_H */
