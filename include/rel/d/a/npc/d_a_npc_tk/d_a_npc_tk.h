#ifndef D_A_NPC_TK_H
#define D_A_NPC_TK_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_path.h"

struct cXyz;
class fopAc_ac_c;
class J3DJoint;
class J3DModel;

class daNPC_TK_c : public fopAc_ac_c {
public:
    /* 80B01498 */ void setBck(int, u8, f32, f32);
    /* 80B0153C */ void checkBck(int);
    /* 80B01598 */ void draw();
    /* 80B016D4 */ void checkBeforeBg();
    /* 80B01878 */ void setActionMode(int);
    /* 80B018F4 */ void setAddCalcSpeedXZ(cXyz&, cXyz const&, f32, f32, f32);
    /* 80B01C84 */ void chaseTargetPos(cXyz, f32, f32, s16);
    /* 80B01D84 */ void getMasterPointer();
    /* 80B01DA0 */ void setMasterShoulder(cXyz*);
    /* 80B01E48 */ void setAwayAction(int);
    /* 80B01EF4 */ void setFlySE();
    /* 80B02254 */ void executeFly();
    /* 80B026F8 */ void initPerchDemo(int);
    /* 80B02B5C */ void executePerchDemo(int);
    /* 80B03658 */ void executePerch();
    /* 80B03754 */ void executeHandOn();
    /* 80B039A8 */ void checkWaterSurface(f32);
    /* 80B03A70 */ void executeAttack();
    /* 80B048BC */ void executeAway();
    /* 80B04BF8 */ void setCarryActorMtx();
    /* 80B04F64 */ void getTakePosY();
    /* 80B04FA8 */ void getTakeOffPosY();
    /* 80B04FEC */ void executeBack();
    /* 80B05BD0 */ void getHanjoHandPos();
    /* 80B05C7C */ void executeStayHanjo();
    /* 80B05EC8 */ void executeAttackLink();
    /* 80B0686C */ void executeBackHanjo();
    /* 80B07114 */ void checkAttackDemo();
    /* 80B072CC */ void executeAttackDemo();
    /* 80B07610 */ void executeBackHanjoDemo();
    /* 80B08168 */ void executeWolfEvent();
    /* 80B08208 */ void calcWolfDemoCam();
    /* 80B082A4 */ void calcWolfDemoCam2();
    /* 80B0839C */ void executeWolfPerch();
    /* 80B09A3C */ void executeResistanceDemo();
    /* 80B0A444 */ void setHawkSideCamera(cXyz);
    /* 80B0A500 */ void setHawkCamera(fopAc_ac_c*);
    /* 80B0A568 */ void endHawkCamera();
    /* 80B0A614 */ void calcDemoCamera();
    /* 80B0B004 */ void checkActionSet();
    /* 80B0B284 */ void action();
    /* 80B0B5CC */ void mtx_set();
    /* 80B0B6DC */ void cc_set();
    /* 80B0B7CC */ void execute();
    /* 80B0B918 */ void _delete();
    /* 80B0B9AC */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B0BB7C */ void JointCallBack(J3DJoint*, int);
    /* 80B0BBC8 */ void CreateHeap();
    /* 80B0BD24 */ void create();

    void setBump() { mFlags |= 4; }
    void setEventWolf() { mFlags |= 0x80; }

    void setHawkPath(u8 i_pathNo) {
        if (i_pathNo != 0xFF) {
            field_0x6c8 = dPath_GetRoomPath(i_pathNo, fopAcM_GetRoomNo(this));
        }
    }

    /* 0x568 */ u8 field_0x568[0x6BE - 0x568];
    /* 0x6BE */ u16 mFlags;
    /* 0x6C0 */ u8 field_0x6c0[0x6C8 - 0x6C0];
    /* 0x6C8 */ dPath* field_0x6c8;
};

#endif /* D_A_NPC_TK_H */
