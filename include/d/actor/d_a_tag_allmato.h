#ifndef D_A_TAG_ALLMATO_H
#define D_A_TAG_ALLMATO_H

#include "d/actor/d_a_npc.h"

class daTag_AllMato_c : public fopAc_ac_c {
public:
    /* 0x0568 */ daNpcT_ActorMngr_c mBouMatoActorMngr[1];
    /* 0x0570 */ daNpcT_ActorMngr_c mItaMatoActorMngr[2];
    /* 0x0580 */ daNpcT_ActorMngr_c mArrowActorMngr;
    /* 0x0588 */ daNpcT_ActorMngr_c mBrkMatoActorMngr;
    /* 0x0590 */ cXyz field_0x590[500];
    /* 0x1D00 */ int mBouMatoActorNum;
    /* 0x1D04 */ int mItaMatoActorNum;
    /* 0x1D08 */ int field_0x1d08;
    /* 0x1D0C */ s16 mEventIdx;
    /* 0x1D0E */ u8 field_0x1d0e;
    /* 0x1D0F */ u8 field_0x1d0f;
    /* 0x1D10 */ u8 field_0x1d10;

    /* 80487538 */ int create();
    /* 804876B0 */ int Delete();
    /* 804876B8 */ int Execute();
    /* 80487C5C */ int Draw();
    /* 80487C64 */ static void* srchBouMato(void*, void*);
    /* 80487D00 */ static void* srchItaMato(void*, void*);
    /* 80487D9C */ static void* srchTaro(void*, void*);
    /* 80487E38 */ static void* srchArrow(void*, void*);
    /* 80487ED4 */ int isDelete();
    /* 80487F80 */ void entryBouMatoActors();
    /* 80488034 */ void entryItaMatoActors();
    /* 80488104 */ fopAc_ac_c* getTaroActorP();
    /* 804881C0 */ fopAc_ac_c* getArrowActorP();
    /* 80488238 */ int checkCrsMato();
    /* 80488994 */ int checkCrsMato2();
    /* 80488F40 */ int checkBrkMato();
    /* 80488FD8 */ void evtChange(u16);

    /* 80489608 */ virtual ~daTag_AllMato_c() {}

    int getType() { return 0; }

    int getOnEvtBit() {
        u32 prm = fopAcM_GetParam(this) & 0xFFF;

        int bit;
        if (prm == 0xFFF) {
            bit = -1;
        } else {
            bit = prm;
        }

        return bit;
    }

    u32 getOffEvtBit() {
        u32 prm = (fopAcM_GetParam(this) & 0xFFF000) >> 12;

        u32 bit;
        if (prm == 0xFFF) {
            bit = 0xFFFFFFFF;
        } else {
            bit = prm;
        }

        return bit;
    }

    u8 getOnSwBit() {
        return home.angle.x & 0xFF;
    }

    u8 getOffSwBit() {
        return (home.angle.x & 0xFF00) >> 8;
    }
};

#endif /* D_A_TAG_ALLMATO_H */
