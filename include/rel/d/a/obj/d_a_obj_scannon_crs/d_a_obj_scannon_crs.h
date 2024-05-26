#ifndef D_A_OBJ_SCANNON_CRS_H
#define D_A_OBJ_SCANNON_CRS_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"
#include "rel/d/a/d_a_midna/d_a_midna.h"

class daSCannonCrs_c : public fopAc_ac_c {
public:
    /* 80CC973C */ daSCannonCrs_c();
    /* 80CC983C */ ~daSCannonCrs_c();
    /* 80CC9910 */ void create();
    /* 80CC9B10 */ void Delete();
    /* 80CC9B80 */ void draw();
    /* 80CC9C64 */ void execute();
    /* 80CC9CA4 */ void middleExe(daMidna_c*);
    /* 80CC9D60 */ void exeModeWait(daMidna_c*);
    /* 80CC9F34 */ void exeModePreWait(daMidna_c*);
    /* 80CC9F80 */ void exeModeOrderEvt(daMidna_c*);
    /* 80CCA240 */ void exeModeTalkEvt(daMidna_c*);
    /* 80CCA2CC */ void exeModeWarpEvt(daMidna_c*);
    /* 80CCA344 */ void exeModeEnd(daMidna_c*);
    /* 80CCA348 */ void demoExe();
    /* 80CCA74C */ void init();
    /* 80CCA848 */ void setModelMtx();
    /* 80CCA8CC */ void createHeap();
    /* 80CCAAC4 */ void chkInTalkRange();
    /* 80CCAB24 */ void initEmtRt(u16, int, u16 const*, JPABaseEmitter**);
    /* 80CCAC48 */ void exeEmtRt(u16, int, JPABaseEmitter**);
    /* 80CCACD0 */ void callMidnaBeamEmt();

    static u8 s_exeProc[72];
private:
    /* 0x568 */ u8 field_0x568[0x674 - 0x568];
};
STATIC_ASSERT(sizeof(daSCannonCrs_c) == 0x674);

#endif /* D_A_OBJ_SCANNON_CRS_H */
