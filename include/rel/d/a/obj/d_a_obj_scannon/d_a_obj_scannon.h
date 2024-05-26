#ifndef D_A_OBJ_SCANNON_H
#define D_A_OBJ_SCANNON_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daSCannon_c : public fopAc_ac_c {
public:
    /* 80CC6B0C */ daSCannon_c();
    /* 80CC6C10 */ ~daSCannon_c();
    /* 80CC6D10 */ void create();
    /* 80CC7204 */ void execute();
    /* 80CC7228 */ void draw();
    /* 80CC747C */ void Delete();
    /* 80CC7508 */ void setModelMtx();
    /* 80CC7578 */ void setPtlModelMtx();
    /* 80CC7608 */ void createHeap();
    /* 80CC7970 */ void middleExe();
    /* 80CC7A10 */ void orderEvtInit();
    /* 80CC7AB8 */ void exeModeWait();
    /* 80CC7C48 */ void exeModeOrderEvt();
    /* 80CC7D14 */ void exeModeActionEvt();
    /* 80CC7EBC */ void exeModeEnd();
    /* 80CC7EC0 */ void demoExe();
    /* 80CC7FAC */ void demoModeInit(int);
    /* 80CC8044 */ void demoInitLinkIn();
    /* 80CC8048 */ void demoExeLinkIn();
    /* 80CC8108 */ void demoInitSet();
    /* 80CC81DC */ void demoExeSet();
    /* 80CC8274 */ void demoInitMove();
    /* 80CC8278 */ void demoExeMove();
    /* 80CC8378 */ void demoInitFire();
    /* 80CC83CC */ void demoExeFire();
    /* 80CC8430 */ void demoInitFinish();
    /* 80CC8538 */ void demoExeFinish();
    /* 80CC8648 */ void demoInitWarpEndWait();
    /* 80CC8714 */ void demoExeWarpEndWait();
    /* 80CC8804 */ void demoInitWarpEndMove();
    /* 80CC8818 */ void demoExeWarpEndMove();
    /* 80CC88A8 */ void changeScene();
    /* 80CC8998 */ void init();
    /* 80CC8A30 */ void initEmtRt(u16, int, u16 const*, JPABaseEmitter**);
    /* 80CC8B60 */ void exeEmtRt(u16, int, JPABaseEmitter**);
    /* 80CC8BF4 */ void initEmtLine();
    /* 80CC8CDC */ void exeEmtLine();
    /* 80CC8DA0 */ void delEmtAll();
    /* 80CC8DDC */ void setCannonRepair();

    static void* const s_demoTable[12];
    static u8 s_exeProc[48];
    static u8 s_demoExeProc_WarpEnd[48];
    static u8 s_demoExeProc_FireTks[72];
    static u8 s_demoExeProc_FireFirst[24];
    static u8 s_demoExeProc_FireSecond[96];

private:
    /* 0x568 */ u8 field_0x568[0x638 - 0x568];
};
STATIC_ASSERT(sizeof(daSCannon_c) == 0x638);


#endif /* D_A_OBJ_SCANNON_H */
