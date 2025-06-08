#ifndef D_A_TBOX_H
#define D_A_TBOX_H

#include "d/d_cc_d.h"
#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_hostIO.h"

class dBgW;

class daTboxBase_c : public dBgS_MoveBgActor {
protected:
    virtual BOOL checkSmallTbox() = 0;

    /* 0x5A0 */ dCcD_Stts mStts;
    /* 0x5DC */ dCcD_Cyl mCyl;
};

STATIC_ASSERT(sizeof(daTboxBase_c) == 0x718);

struct daTbox_ModelInfo {
    /* 0x00 */ char* mArcName;
    /* 0x04 */ int mModelResNo;
    /* 0x08 */ int mBckResNo;
    /* 0x0C */ int mClosedDzbResNo;
    /* 0x10 */ int mOpenDzbResNo;
    /* 0x14 */ int mEffectResNo;
    /* 0x18 */ int mBrkResNo;
};

STATIC_ASSERT(sizeof(daTbox_ModelInfo) == 0x1C);

class daTbox_c;
typedef int (daTbox_c::*daTbox_actionFn)();
typedef void (daTbox_c::*daTbox_modeFn)();

/**
 * @ingroup actors-unsorted
 * @class daTbox_c
 * @brief Treasure Box
 *
 * @details
 *
 */
class daTbox_c : public daTboxBase_c {
public:
    enum Shape {
        SHAPE_SMALL = 0,
        SHAPE_LARGE = 1,
        SHAPE_BOSSKEY = 2,
    };

    enum Mode {
        MODE_EXEC_WAIT = 0,
        MODE_EXEC = 1,
    };

    /* 80490E50 */ daTbox_ModelInfo* getModelInfo();
    /* 80490E6C */ cPhs__Step commonShapeSet();
    /* 804911B8 */ cPhs__Step effectShapeSet();
    /* 804911C0 */ cPhs__Step envShapeSet();
    /* 804911C8 */ cPhs__Step bgCheckSet();
    /* 8049129C */ void lightReady();
    /* 804912EC */ void setLightPos();
    /* 8049135C */ int checkEnv();
    /* 80491364 */ int checkAppear();
    /* 8049139C */ int checkOpen();
    /* 804913D0 */ void clrDzb();
    /* 8049141C */ void setDzb();
    /* 80491484 */ void surfaceProc();
    /* 80491544 */ int checkNormal();
    /* 804915BC */ int checkEnvEffectTbox();
    /* 80491624 */ u32 calcHeapSize();
    /* 804916A4 */ int CreateHeap();
    /* 80491744 */ void CreateInit();
    /* 804919B0 */ void initPos();
    /* 80491BB0 */ void initAnm();
    /* 80491F68 */ int boxCheck();
    /* 804920A8 */ void demoProcOpen();
    /* 8049216C */ void lightColorProc();
    /* 8049233C */ void environmentProc();
    /* 80492398 */ void lightUpProc();
    /* 804923D4 */ void lightDownProc();
    /* 80492408 */ void dropProcInitCall();
    /* 80492450 */ void dropProcInit();
    /* 804928DC */ int calcJumpGoalAndAngle(cXyz*, s16*);
    /* 80492B10 */ bool getDropSAngle(s16*);
    /* 80492BC8 */ int getDir();
    /* 80492C84 */ void setRotAxis(cXyz const*, cXyz const*);
    /* 80492D08 */ void dropProcInit2();
    /* 80492F50 */ void dropProc();
    /* 80493338 */ void demoInitAppear();
    /* 80493484 */ void demoProcAppear();
    /* 80493518 */ int demoProc();
    /* 80493838 */ void OpenInit_com();
    /* 804939A4 */ void OpenInit();
    /* 804939F4 */ int actionWait();
    /* 804939FC */ int actionDemo();
    /* 80493CC8 */ int actionDemo2();
    /* 80493D90 */ int actionDropDemo();
    /* 80493ED8 */ u8 getBombItemNo(u8, u8);
    /* 80493FE8 */ u8 getBombItemNo2(u8, u8, u8);
    /* 80494144 */ u8 getBombItemNo3(u8, u8, u8, u8);
    /* 804942CC */ u8 getBombItemNoMain(u8);
    /* 804945C8 */ int setGetDemoItem();
    /* 804946A4 */ int actionOpenWait();
    /* 804948CC */ int actionNotOpenDemo();
    /* 80494950 */ int checkDrop();
    /* 80494A0C */ void settingDropDemoCamera();
    /* 80494D88 */ int actionSwOnWait();
    /* 80494E98 */ int actionSwOnWait2();
    /* 80494F44 */ int actionDropWait();
    /* 80495058 */ int actionGenocide();
    /* 8049518C */ int actionDropWaitForWeb();
    /* 80495250 */ int actionDropForWeb();
    /* 804953D4 */ void initBaseMtx();
    /* 80495490 */ void setBaseMtx();
    /* 80495660 */ void mode_proc_call();
    /* 804956EC */ void mode_exec_wait();
    /* 80495818 */ void mode_exec();
    /* 80495910 */ cPhs__Step create1st();
    /* 804959EC */ int Execute(f32 (**)[3][4]);
    /* 80495AF0 */ int Draw();
    /* 80495C9C */ int Delete();
    /* 804961B0 */ int Create();

    /* 804961B8 */ virtual BOOL checkSmallTbox();

    u32 getEvent() { return fopAcM_GetParam(this) >> 24; }
    int getShapeType() { return (fopAcM_GetParam(this) >> 20) & 0xf; }
    int getSwNo() { return (fopAcM_GetParam(this) >> 12) & 0xff; }
    int getTboxNo() { return (fopAcM_GetParam(this) >> 6) & 0x3f; }
    int getFuncType() { return fopAcM_GetParam(this) & 0x3f; }
    u32 getSwType() { return field_0x980 & 0xf; }
    int getItemNo() { return (field_0x982 >> 8) & 0xff; }
    int getPathId() { return field_0x982 & 0xff; }
    void flagClr() { mFlags = 0; }
    void flagOn(u16 i_flag) { mFlags |= i_flag; }
    void flagOff(u16 i_flag) { mFlags &= ~i_flag; }
    u16 flagCheck(u16 i_flag) { return mFlags & i_flag; }
    void setAction(daTbox_actionFn i_actionFn) { mpActionFn = i_actionFn; }
    void action() { (this->*mpActionFn)(); }

private:
    /* 0x718 */ u8 field_0x718;
    /* 0x71C */ request_of_phase_process_class mPhase;
    /* 0x724 */ J3DModel* mpModel;
    /* 0x728 */ J3DModel* mpSlimeModel;
    /* 0x72C */ mDoExt_bckAnm* mpAnm;
    /* 0x730 */ J3DModel* mpEffectModel;
    /* 0x734 */ mDoExt_brkAnm* mpEffectAnm;
    /* 0x738 */ dBgW* mpOpenBgW;
    /* 0x73C */ dBgW* mpBgCollision;
    /* 0x740 */ daTbox_actionFn mpActionFn;
    /* 0x74C */ int mStaffId;
    /* 0x750 */ f32 field_0x750;
    /* 0x754 */ u16 mFlags;
    /* 0x756 */ u16 mDemoFrame;
    /* 0x758 */ bool field_0x758;
    /* 0x759 */ u8 field_0x759;
    /* 0x75A */ u16 field_0x75a;
    /* 0x75C */ u8 mTimer;
    /* 0x760 */ dBgS_ObjAcch mAcch;
    /* 0x938 */ dBgS_AcchCir mAcchCir;
    /* 0x978 */ u8 mTboxNo;
    /* 0x97A */ s16 mEventId;
    /* 0x97C */ bool field_0x97c;
    /* 0x97D */ bool field_0x97d;
    /* 0x97E */ u8 field_0x97e;
    /* 0x97F */ bool mParamsInit;
    /* 0x980 */ u16 field_0x980;
    /* 0x982 */ u16 field_0x982;
    /* 0x984 */ s16 field_0x984;
    /* 0x988 */ Mtx field_0x988;
    /* 0x9B8 */ cXyz mRotAxis;
    /* 0x9C4 */ s16 field_0x9c4;
    /* 0x9C6 */ s16 field_0x9c6;
    /* 0x9C8 */ u8 field_0x9c8;
    /* 0x9C9 */ u8 field_0x9c9;
    /* 0x9CA */ s16 field_0x9ca;
    /* 0x9CC */ u8 field_0x9cc;
    /* 0x9CD */ u8 mMode;
    /* 0x9D0 */ LIGHT_INFLUENCE mLight;
    /* 0x9F0 */ f32 mAllcolRatio;
    /* 0x9F4 */ int field_0x9f4;
    /* 0x9F8 */ u32 mOpenSeId;
    /* 0x9FC */ u8 field_0x9fc;
    /* 0x9FD */ u8 field_0x9fd;
    /* 0xA00 */ Mtx field_0xa00;
};

STATIC_ASSERT(sizeof(daTbox_c) == 0xA30);

class daTbox_HIO_c : public mDoHIO_entry_c {
public:
    /* 80490D2C */ daTbox_HIO_c();
    /* 804960B8 */ virtual ~daTbox_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ u8 mItemNo;
    /* 0x05 */ u8 mUseDebugItemNo;
    /* 0x06 */ u8 mClearSwitch;
    /* 0x07 */ u8 mDemoType;
    /* 0x08 */ u8 mDebugLightColorEnabled;
    /* 0x09 */ u8 mTimerDisplay;
    /* 0x0A */ u8 mCheckDisplay;
    /* 0x0B */ u8 mSaveOff;
    /* 0x0C */ f32 mGravity;
    /* 0x10 */ cXyz mLightOffset;
    /* 0x1C */ s16 mLightColorR;
    /* 0x1E */ s16 mLightColorG;
    /* 0x20 */ s16 mLightColorB;
    /* 0x24 */ f32 mLightPower;
    /* 0x28 */ f32 mFluctuationRate;
    /* 0x2C */ f32 mEnvColorInfluence;
    /* 0x30 */ s16 mFluctuationSpeed;
    /* 0x32 */ u8 mForPlacementCheck;
};

STATIC_ASSERT(sizeof(daTbox_HIO_c) == 0x34);

#endif /* D_A_TBOX_H */
