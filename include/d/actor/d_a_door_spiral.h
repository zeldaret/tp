#ifndef D_A_DOOR_SPIRAL_H
#define D_A_DOOR_SPIRAL_H

#include "SSystem/SComponent/c_phase.h"
#include "d/d_bg_w.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class daSpiral_c : public fopAc_ac_c {
public:
    class dSpiral_stop_c {
        /* 0x00 */ J3DModel* mModel;
        /* 0x04 */ dBgW* mpBgW;
        /* 0x08 */ u8 field_0x8[0x38 - 0x8];
        /* 0x38 */ Mtx mMtx;
        /* 0x68 */ f32 field_0x68;
        /* 0x6C */ f32 field_0x6c;
        /* 0x70 */ u8 field_0x70;
        /* 0x71 */ u8 field_0x71;
        /* 0x72 */ u8 field_0x72;
    };

    /* 80825050 */ char* getAlwaysArcName();
    /* 80825080 */ char* getSpiralDzbName(int);
    /* 808250A0 */ char* getDzb();
    /* 808250B0 */ char* getBmdArcName();
    /* 808250C0 */ char* getEvArcName();
    /* 808250D0 */ char* getBmd(int);
    /* 808250F0 */ char* getBmd2(int);
    /* 80825160 */ J3DModelData* getModelData();
    /* 808251E0 */ char* getStopBmd();
    /* 808251F0 */ char* getStopBmd2();
    /* 80825200 */ J3DModelData* getStopModelData();
    /* 80825280 */ char* getStopDzb();
    /* 808252D0 */ bool debugCheckParam();
    /* 80825380 */ cPhs__Step create();
    /* 80825520 */ int CreateHeap();
    /* 808257D0 */ int CreateInit();

    /* 0x570 */ request_of_phase_process_class mPhase1;
    /* 0x578 */ request_of_phase_process_class mPhase2;
    /* 0x580 */ request_of_phase_process_class mPhase3;
    /* 0x588 */ J3DModel* mModel;
    /* 0x58C */ dBgW* field_0x58c;
    /* 0x590 */ Mtx mMtx;
    /* 0x5C0 */ dBgW* field_0x5c0;
    /* 0x5C4 */ u8 field_0x5c4[0x5f4 - 0x5c4];
    /* 0x5F4 */ u8 mIdx;
    /* 0x5F5 */ u8 field_0x5f5;
    /* 0x5F6 */ u8 field_0x5f6;
    /* 0x5F7 */ u8 mAction;
    /* 0x5F8 */ int field_0x5f8;
    /* 0x5FC */ s16 field_0x5fc[8];
    /* 0x60C */ u8 field_0x60c[8];
    /* 0x614 */ u8 field_0x614;
    /* 0x615 */ u8 field_0x615[0x618 - 0x615];
    /* 0x618 */ int mStaffId;
    /* 0x61C */ s8 mStayNo;
    /* 0x61D */ u8 field_0x61d;
    /* 0x61E */ u8 field_0x61e;
    /* 0x61F */ u8 field_0x61f;
    /* 0x620 */ cXyz field_0x620;
    /* 0x62C */ u8 mFrontCheck;
    /* 0x62D */ u8 field_0x62d;
    /* 0x62E */ u8 field_0x62e[0x630 - 0x62e];
    /* 0x630 */ cXyz field_0x630;
    /* 0x63C */ dSpiral_stop_c mSpiralStop;
    /* 0x6AF */ u8 field_0x6af[0x6b4 - 0x6af];
    /* 0x6B4 */ s16 field_0x6b4;
    /* 0x6B8 */ cXyz field_0x6b8[2];
    /* 0x6D0 */ bool field_0x6d0;
    // /* 0x6D1 */ 
};

#endif /* D_A_DOOR_SPIRAL_H */
