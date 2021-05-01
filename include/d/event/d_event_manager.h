#ifndef D_EVENT_D_EVENT_MANAGER_H
#define D_EVENT_D_EVENT_MANAGER_H

#include "d/event/d_event_data.h"
#include "dolphin/types.h"

struct dEvDtData_c {};

#pragma pack(push, 1)
class dEvent_exception_c {
public:
    /* 800463DC */ void init();
    /* 800463F0 */ void setStartDemo(int);
    /* 80046480 */ void getEventName();

private:
    u32 field_0x0;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    u32 field_0x8;
};
#pragma pack(pop)

#pragma pack(push, 1)
struct dEvent_manager_c {
    /* 800465E8 */ void getSubstance(dEvDtData_c*, int);
    /* 80046688 */ dEvent_manager_c();
    /* 80046710 */ void create();
    /* 80046800 */ void setObjectArchive(char*);
    /* 80046888 */ void demoInit();
    /* 80046904 */ void roomInit(int);
    /* 800469EC */ void roomFinish(int);
    /* 80046A58 */ void orderStartDemo();
    /* 80046C0C */ void remove();
    /* 80046CB8 */ void startProc(dEvDtEvent_c*);
    /* 80046DA0 */ void closeProc(dEvDtEvent_c*);
    /* 80046DAC */ void endProc(s16, int);
    /* 80046E64 */ void Sequencer();
    /* 800473FC */ void Experts();
    /* 800474BC */ void getEventData(s16);
    /* 80047454 */ void getEventData(s16, int);
    /* 80047514 */ void getEventIdx(char const*, u8, s32);
    /* 80047698 */ void getEventIdx(fopAc_ac_c*, u8);
    /* 80047758 */ void getEventIdx(fopAc_ac_c*, char const*, u8);
    /* 80047930 */ void isMapToolCamera(u8, s32);
    /* 80047984 */ void order(s16);
    /* 800479F8 */ void startCheck(s16);
    /* 80047A38 */ void startCheckOld(char const*);
    /* 80047A78 */ void endCheck(s16);
    /* 80047ADC */ void endCheckOld(char const*);
    /* 80047B1C */ void getMyStaffId(char const*, fopAc_ac_c*, int);
    /* 80047D4C */ void getIsAddvance(int);
    /* 80047E10 */ void getMyActIdx(int, char const* const*, int, int, int);
    /* 80047F5C */ void getMyNowCutName(int);
    /* 80047FC8 */ void getMyDataP(int, char const*, int);
    /* 800480EC */ void getMySubstanceP(int, char const*, int);
    /* 80048144 */ void getMySubstanceNum(int, char const*);
    /* 8004817C */ void cutEnd(int);
    /* 800481F4 */ void getEventPrio(fopAc_ac_c*, s16);
    /* 800482CC */ void issueStaff(char const*);
    /* 80048348 */ void cancelStaff(char const*);
    /* 800483C4 */ void setGoal(cXyz*);
    /* 800483E0 */ void getGoal();
    /* 800483E8 */ void getRunEventName();
    /* 80048520 */ void specialCast_Shutter(s16, int);
    /* 80048618 */ void specialCast(char const*, int);
    /* 800487F0 */ void ChkPresentEnd();
    /* 8004882C */ void checkStartDemo();

    /* 0x0000 */ dEvDtBase_c event_data_base[11];
    /* 0x018C */ u32 field_0x18c;
    /* 0x0190 */ u32 field_0x190;
    /* 0x0194 */ u8 field_0x194[0x8];
    /* 0x019C */ cXyz goal;
    /* 0x01A8 */ u8 field_0x1A8[4];
    /* 0x01AA */ u16 field_0x1aa;
    /* 0x01AC */ u8 field_0x1ac[0x8];
    /* 0x01B4 */ dEvent_exception_c event_exception;
    /* 0x01C0 */ cXyz position;
    /* 0x01CC */ u8 field_0x1cc[0x14];
    /* 0x01E0 */ dEvDtFlag_c event_data_flag;
    /* 0x0320 */ u8 field_0x320[0x35C];
    /* 0x067C */ void* vtable;
    /* 0x0680 */ u8 field_0x680[0x3C];
};
#pragma pack(pop)

#endif /* D_EVENT_D_EVENT_MANAGER_H */
