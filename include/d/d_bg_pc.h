#ifndef D_BG_D_BG_PC_H
#define D_BG_D_BG_PC_H

#include "dolphin/types.h"

struct sBgPc {
    /* 0x00 */ u32 code0;
    /* 0x04 */ u32 code1;
    /* 0x08 */ u32 code2;
    /* 0x0C */ u32 code3;
    /* 0x10 */ u32 code4;
};  // Size: 0x14

enum dBgPc_ECode {
    /* 0x00004000 */ CODE_OBJ_THRU = 0x4000,
    /* 0x00008000 */ CODE_CAM_THRU = 0x8000,
    /* 0x00010000 */ CODE_LINK_THRU = 0x10000,
    /* 0x00020000 */ CODE_ARROW_THRU = 0x20000,
    /* 0x00040000 */ CODE_HS_STICK = 0x40000,
    /* 0x00080000 */ CODE_BOOMERANG_THRU = 0x80000,
    /* 0x00100000 */ CODE_ROPE_THRU = 0x100000,
    /* 0x00200000 */ CODE_HORSE_NO_ENTRY = 0x200000,
    /* 0x00400000 */ CODE_SHDW_THRU = 0x400000,
    /* 0x00800000 */ CODE_BOMB_THRU = 0x800000,
    /* 0x01000000 */ CODE_IRON_BALL_THRU = 0x1000000,
    /* 0x02000000 */ CODE_ATTACK_THRU = 0x2000000,
    /* 0x40000000 */ CODE_UNDERWATER_ROOF = 0x40000000,
};

class dBgPc {
public:
    void setCode(sBgPc&);

    u32 getHorseNoEntry() const { return m_code.code0 >> 0x15 & 1; }
    s32 getSpl() const { return m_code.code0 >> 0x18 & 0xF; }
    u32 getMagnet() const { return m_code.code0 >> 0x1C & 0x3; }
    u32 getMonkeyBars() const { return m_code.code0 >> 0x1F; }
    s32 getWallCode() const { return m_code.code1 >> 0x8 & 0xF; }
    u32 getAtt0Code() const { return m_code.code1 >> 0xC & 0xF; }
    u32 getAtt1Code() const { return m_code.code1 >> 0x10 & 0x7; }
    u32 getGroundCode() const { return m_code.code1 >> 0x13 & 0x1F; }
    u32 getObjThrough() const { return m_code.code0 & CODE_OBJ_THRU; }
    u32 getCamThrough() const { return m_code.code0 & CODE_CAM_THRU; }
    u32 getLinkThrough() const { return m_code.code0 & CODE_LINK_THRU; }
    u32 getArrowThrough() const { return m_code.code0 & CODE_ARROW_THRU; }
    u32 getHSStick() const { return m_code.code0 & CODE_HS_STICK; }
    u32 getBoomerangThrough() const { return m_code.code0 & CODE_BOOMERANG_THRU; }
    u32 getRopeThrough() const { return m_code.code0 & CODE_ROPE_THRU; }
    u32 getBombThrough() const { return m_code.code0 & CODE_BOMB_THRU; }
    u32 getIronBallThrough() const { return m_code.code1 & CODE_IRON_BALL_THRU; }
    u32 getShdwThrough() const { return m_code.code0 & CODE_SHDW_THRU; }
    u32 getUnderwaterRoof() const { return m_code.code0 & CODE_UNDERWATER_ROOF; }
    u32 getAttackThrough() const { return m_code.code1 & CODE_ATTACK_THRU; }
    u8 getRoom() const { return m_code.code4 >> 0x14; }
    u8 getExit() const { return m_code.code0 & 0x3F; }
    u8 getPolyCol() const { return m_code.code0 >> 6; }
    u8 getLinkNo() const { return m_code.code1; }
    u8 getCamMoveBG() const { return m_code.code2; }
    u8 getRoomCam() const { return m_code.code2 >> 8; }
    u8 getRoomPath() const { return m_code.code2 >> 0x10; }
    u8 getRoomPathPnt() const { return m_code.code2 >> 0x18; }
    u8 getRoomInf() const { return m_code.code4; }
    u8 getSnd() const { return m_code.code4 >> 0xB; }
    u32 maskNrm() { return m_code.code4 & 0x100; }

    // BUG: Seems like this uses the same mask as maskNrm
    u32 getWtr() { return m_code.code4 & 0x100; }
    u32 getObjThrough() { return m_code.code0 & 0x4000; }
    u32 getCamThrough() { return m_code.code0 & 0x8000; }
    u32 getLinkThrough() { return m_code.code0 & 0x10000; }

    /* 0x0 */ sBgPc m_code;
};

#endif /* D_BG_D_BG_PC_H */
