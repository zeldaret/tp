#ifndef D_A_NPC_ZRZ_H
#define D_A_NPC_ZRZ_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_zrZ_c
 * @brief Rutela
 *
 * @details
 *
 */
class daNpc_zrZ_c : public fopAc_ac_c {
public:
    /* 80B93DCC */ daNpc_zrZ_c();
    /* 80B94014 */ ~daNpc_zrZ_c();
    /* 80B9423C */ void create();
    /* 80B9453C */ void CreateHeap();
    /* 80B949F4 */ void Delete();
    /* 80B94A28 */ void Execute();
    /* 80B94A48 */ void Draw();
    /* 80B94B34 */ void draw(int, int, f32, _GXColorS10*, int);
    /* 80B94E18 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B950F4 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B95114 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B95244 */ void setParam();
    /* 80B953CC */ void main();
    /* 80B95598 */ void ctrlBtk();
    /* 80B956B4 */ void setAttnPos();
    /* 80B95BB8 */ void setMtx();
    /* 80B95C6C */ void setExpressionAnm(int, bool);
    /* 80B95DD0 */ void setExpressionBtp(int);
    /* 80B95F10 */ void setExpression(int, f32);
    /* 80B95F3C */ void setMotionAnm(int, f32);
    /* 80B9612C */ void setMotion(int, f32, int);
    /* 80B96170 */ bool drawDbgInfo();
    /* 80B96178 */ void drawOtherMdls();
    /* 80B9617C */ void getTypeFromParam();
    /* 80B961B4 */ void isDelete();
    /* 80B96268 */ void reset();
    /* 80B9652C */ void playExpression();
    /* 80B96618 */ void playMotion();
    /* 80B96740 */ void chkAction(int (daNpc_zrZ_c::*)(void*));
    /* 80B9676C */ void setAction(int (daNpc_zrZ_c::*)(void*));
    /* 80B96814 */ void selectAction();
    /* 80B968E0 */ void doNormalAction(int);
    /* 80B969F4 */ void doEvent();
    /* 80B96DF0 */ void setSkipZev(int, int);
    /* 80B96E7C */ void setLookMode(int);
    /* 80B96EA0 */ void lookat();
    /* 80B97128 */ void setExpressionTalkAfter();
    /* 80B97160 */ void lightReady();
    /* 80B971BC */ void setLightPos();
    /* 80B9723C */ void lightPowerCalc(int);
    /* 80B972EC */ void lightColorProc();
    /* 80B974BC */ void ECut_helpPrince(int);
    /* 80B97B78 */ void ECut_comeHere(int);
    /* 80B97D7C */ void ECut_restoreLink(int);
    /* 80B97EB4 */ void ECut_clothesGet(int);
    /* 80B98540 */ void ECut_getAfter(int);
    /* 80B9877C */ void ECut_sealRelease(int);
    /* 80B98ACC */ void ECut_srSkip(int);
    /* 80B98C34 */ void pullbackPlayer(f32);
    /* 80B98D04 */ void wait(void*);
    /* 80B98F84 */ void comeHere(void*);
    /* 80B998BC */ void comeHere2(void*);
    /* 80B9A0EC */ void talk(void*);
    /* 80B9A29C */ void test(void*);
    /* 80B9A380 */ void himoCalc();
    /* 80B9AF7C */ void adjustShapeAngle();

    static void* mEvtCutNameList[8];
    static u8 mEvtCutList[96];

private:
    /* 0x568 */ u8 field_0x568[0x14c8 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_zrZ_c) == 0x14c8);

class daNpc_zrZ_Param_c {
public:
    /* 80B9AF80 */ ~daNpc_zrZ_Param_c();

    static u8 const m[132];
};


#endif /* D_A_NPC_ZRZ_H */
