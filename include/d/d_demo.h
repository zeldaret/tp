#ifndef D_D_DEMO_H
#define D_D_DEMO_H

#include "JSystem/JStudio/JStudio/stb.h"
#include "dolphin/types.h"

class cXyz;
struct dDemo_c {
    /* 80039678 */ void create();
    /* 80039910 */ void remove();
    /* 80039B6C */ static void start(u8 const*, cXyz*, f32);
    /* 80039CF8 */ static void end();
    /* 80039D4C */ void branch();
    /* 80039DA4 */ void update();
    /* 80039EDC */ void setBranchType(u16);
    /* 80039EEC */ void setBranchId(u16, s16);
    /* 80039F04 */ void reset();

    static u32 getFrameNoMsg() { return m_frameNoMsg; }
    static s32 getMode() { return m_mode; }
    static JStudio::stb::TControl* getControl() { return m_control; }

    static u16 m_branchId[1 + 3 /* padding */];
    static u8 m_system[4];
    static JStudio::stb::TControl* m_control;
    static u8 m_stage[4];
    static u8 m_audio[4];
    static u8 m_particle[4];
    static u8 m_message[4];
    static u8 m_factory[4];
    static u8 m_mesgControl[4];
    static u8 m_object[4];
    static u8 m_data[4];
    static u8 m_frame[4];
    static u8 m_translation[4];
    static f32 m_rotationY;
    static u32 m_frameNoMsg;
    static s32 m_mode;
    static u8 m_status[4];
    static u8 m_branchType[2 + 2 /* padding */];
    static u8 m_branchData[4];
};

#endif /* D_D_DEMO_H */
