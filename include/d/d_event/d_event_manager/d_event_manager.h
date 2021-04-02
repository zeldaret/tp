#ifndef D_EVENT_MANAGER_H_
#define D_EVENT_MANAGER_H_

#include "d/d_event/d_event_data/d_event_data.h"
#include "dolphin/types.h"

#pragma pack(push, 1)
class dEvent_exception_c {
public:
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
    dEvent_manager_c(void);
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

#endif