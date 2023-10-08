#ifndef D_A_D_A_ITEM_STATIC_H
#define D_A_D_A_ITEM_STATIC_H

#include "SSystem/SComponent/c_lib.h"
#include "d/a/d_a_itembase.h"
#include "d/cc/d_cc_d.h"
#include "d/particle/d_particle.h"

class daItem_c;
typedef void (daItem_c::*procFunc)();

class daItem_c : public daItemBase_c {
public:
    daItem_c() : field_0x998(0, 0) {}
    /* 8015B0C4 */ void initBaseMtx();
    /* 8015B108 */ void setBaseMtx();
    /* 8015B190 */ void setBaseMtx_0();
    /* 8015B1C8 */ void setBaseMtx_1();
    /* 8015B3D8 */ void CreateInit();
    /* 8015B7BC */ void setCullInfo();
    /* 8015B7D4 */ int _daItem_create();
    /* 8015BA9C */ void _daItem_execute();
    /* 8015BD84 */ int _daItem_draw();
    /* 8015BDE8 */ int _daItem_delete();
    /* 8015BE60 */ void procInitNormal();
    /* 8015BEA4 */ void procMainNormal();
    /* 8015BFE8 */ void procMainEnemyCarry();
    /* 8015BFEC */ void procInitForceGet();
    /* 8015C038 */ void procMainForceGet();
    /* 8015C058 */ void procInitSimpleGetDemo();
    /* 8015C134 */ void procMainSimpleGetDemo();
    /* 8015C200 */ void procInitGetDemoEvent();
    /* 8015C2A4 */ void procWaitGetDemoEvent();
    /* 8015C3BC */ void procMainGetDemoEvent();
    /* 8015C41C */ void procInitBoomerangCarry();
    /* 8015C514 */ void procMainBoomerangCarry();
    /* 8015C5F4 */ void procInitSwOnWait();
    /* 8015C648 */ void procMainSwOnWait();
    /* 8015C708 */ void procInitBoomHitWait();
    /* 8015C738 */ void procMainBoomHitWait();
    /* 8015CAB8 */ void move_proc_call();
    /* 8015CC4C */ void mode_wait_init();
    /* 8015CC88 */ void mode_water_init();
    /* 8015CCD0 */ void mode_wait();
    /* 8015CDCC */ void mode_water();
    /* 8015CEEC */ void itemGetNextExecute();
    /* 8015D0A8 */ void itemGet();
    /* 8015D370 */ BOOL checkCountTimer();
    /* 8015D3CC */ bool checkPlayerGet();
    /* 8015D410 */ void checkYogan();
    /* 8015D480 */ void deleteItem();
    /* 8015D4AC */ int itemActionForRupee();
    /* 8015D56C */ void itemActionForHeart();
    /* 8015D688 */ void itemActionForArrow();
    /* 8015D700 */ void itemActionForBoomerang();
    /* 8015D734 */ void bg_check();
    /* 8015D834 */ void set_bound_se();
    /* 8015D95C */ int CountTimer();
    /* 8015D9F0 */ int initAction();
    /* 8015DAAC */ void initFlag();
    /* 8015DBF0 */ void initScale();
    /* 8015DC40 */ void initSpeed(int);
    /* 8015DE38 */ void initAngle();
    u32 startCtrl();
    u32 startControl();
    u32 endControl();

    /* 8015CE94 */ virtual void setTevStr();
    virtual void unk0() = 0;
    virtual void unk1() = 0;
    virtual void unk2() = 0;
    virtual void unk3() = 0;
    virtual void unk4() = 0;
    virtual void unk5() = 0;
    virtual void unk6() = 0;
    virtual void unk7() = 0;
    virtual void unk8() = 0;
    virtual void unk9() = 0;
    virtual void unk10() = 0;
    virtual void unk11() = 0;
    virtual void unk12() = 0;
    virtual void unk13() = 0;
    virtual void unk14() = 0;
    virtual void unk15() = 0;
    virtual void unk16() = 0;
    virtual void unk17() = 0;
    virtual void unk18() = 0;
    virtual void unk19() = 0;
    virtual void unk20() = 0;
    virtual void unk21() = 0;
    virtual void unk22() = 0;
    virtual void unk23() = 0;
    virtual void unk24() = 0;
    virtual void unk25() = 0;
    virtual void unk26() = 0;
    virtual void unk27() = 0;
    virtual void unk28() = 0;
    virtual void unk29() = 0;
    virtual void unk30() = 0;
    virtual void unk31() = 0;
    virtual void unk32() = 0;
    virtual void unk33() = 0;
    virtual void unk34() = 0;
    virtual void unk35() = 0;

    void setFlag(u8 pFlag) { cLib_onBit(mFlag, pFlag); }
    void setStatus(u8 status) { mStatus = status; }
    u8 getStatus() { return mStatus; }
    bool checkFlag(u8 flag) { return cLib_checkBit(mFlag, flag); }
    void clrFlag(u8 flag) { cLib_offBit(mFlag, flag); }

    static u8 mFuncPtr[120];
    //static procFunc mFuncPtr[9];
    static dCcD_SrcCyl m_cyl_src;
    static s32 m_timer_max;

    /* 0x92C */ s16 field_0x92c;
    /* 0x92E */ u16 field_0x92e;
    /* 0x930 */ cXyz field_0x930;
    /* 0x93C */ int field_0x93c;
    /* 0x940 */ u16 field_0x940;
    /* 0x942 */ s16 field_0x942;
    /* 0x944 */ s16 field_0x944;
    /* 0x946 */ s16 field_0x946;
    /* 0x948 */ u8 mFlag;
    /* 0x949 */ u8 field_0x949;
    /* 0x94A */ u8 mStatus;
    /* 0x94B */ u8 field_0x94b;
    /* 0x94C */ u32 m_item_id;
    /* 0x950 */ cXyz field_0x950;
    /* 0x95C */ u8 field_0x95c;
    /* 0x95D */ bool field_0x95d;
    /* 0x95E */ u8 mBoomWindTgTimer;
    /* 0x95F */ u8 field_0x95f;
    /* 0x960 */ u8 field_0x960[0xC];
    /* 0x96C */ cXyz field_0x96c;
    /* 0x978 */ Z2SoundObjSimple field_0x978;
    /* 0x998 */ dPa_followEcallBack field_0x998;
    /* 0x9AC */ cXyz field_0x9ac;
    /* 0x9B8 */ u32 field_0x9b8;
    /* 0x9BC */ u8 field_0x9bc[4];
    /* 0x9C0 */ u8 field_0x9c0;
    /* 0x9C1 */ u8 field_0x9c1;
};  // Size: 0x9C4

#endif /* D_A_D_A_ITEM_STATIC_H */
