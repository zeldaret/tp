#ifndef D_BG_D_BG_S_ACCH_H
#define D_BG_D_BG_S_ACCH_H

#include "SSystem/SComponent/c_bg_s_poly_info.h"
#include "SSystem/SComponent/c_m3d_g_cir.h"
#include "SSystem/SComponent/c_m3d_g_cyl.h"
#include "SSystem/SComponent/c_m3d_g_lin.h"
#include "SSystem/SComponent/c_m3d_g_pla.h"
#include "d/a/d_a_player.h"
#include "d/bg/d_bg_s_gnd_chk.h"
#include "d/bg/d_bg_s_lin_chk.h"
#include "d/bg/d_bg_s_roof_chk.h"
#include "d/bg/d_bg_s_wtr_chk.h"
#include "dolphin/types.h"
//#include "d/bg/d_bg_s.h"

class dBgS_AcchCir : public cBgS_PolyInfo {
private:
    /* 0x10 */ u32 m_flags;
    /* 0x14 */ cM3dGCir m_cir;
    /* 0x28 */ f32 m_wall_rr;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 m_wall_h;
    /* 0x34 */ f32 m_wall_r;
    /* 0x38 */ f32 m_wall_h_direct;
    /* 0x3C */ s16 m_wall_angle_y;

public:
    enum {
        /* 0x2 */ WALL_HIT = 2,
        /* 0x4 */ WALL_H_DIRECT = 4,
    };

    /* 80075EAC */ dBgS_AcchCir();
    /* 80075F14 */ void ClrWallHit();
    /* 80075F40 */ void SetWallR(f32);
    /* 80075F48 */ void CalcWallRR();
    /* 80075F58 */ void SetWall(f32, f32);
    /* 80075F80 */ void SetWallHDirect(f32);

    /* 80077414 */ virtual ~dBgS_AcchCir();

    f32 GetWallH() { return m_wall_h; }
    f32 GetWallR() { return m_wall_r; }
    void SetWallH(f32 h) { m_wall_h = h; }
    void ClrWallHDirect() { m_flags &= ~WALL_H_DIRECT; }
    bool ChkWallHit() { return m_flags & WALL_HIT; }

    void SetCir(cXyz& pos) { m_cir.Set(pos.x, pos.z, pos.y + GetWallH(), m_wall_r); }
};

class dBgS;
class dBgS_Acch : public cBgS_Chk, public dBgS_Chk {
public:
    enum {
        /* 0x000002 */ GRND_NONE = (1 << 1),
        /* 0x000004 */ WALL_NONE = (1 << 2),
        /* 0x000008 */ ROOF_NONE = (1 << 3),
        /* 0x000010 */ WALL_HIT = (1 << 4),
        /* 0x000020 */ GROUND_HIT = (1 << 5),
        /* 0x000040 */ GROUND_FIND = (1 << 6),
        /* 0x000080 */ GROUND_LANDING = (1 << 7),
        /* 0x000100 */ GROUND_AWAY = (1 << 8),
        /* 0x000200 */ ROOF_HIT = (1 << 9),
        /* 0x000800 */ WATER_HIT = (1 << 11),
        /* 0x001000 */ WATER_IN = (1 << 12),
        /* 0x002000 */ LINE_CHECK = (1 << 13),
        /* 0x004000 */ LINE_CHECK_NONE = (1 << 14),
        /* 0x008000 */ CLR_SPEED_Y = (1 << 15),
        /* 0x010000 */ LINE_CHECK_HIT = (1 << 16),
        /* 0x100000 */ MOVE_BG_ONLY = (1 << 20),
        /* 0x200000 */ GND_THIN_CELLING_OFF = (1 << 21),
        /* 0x400000 */ WALL_SORT = (1 << 22),
        /* 0x800000 */ LINE_DOWN = (1 << 23),
    };

    /* 800760A0 */ dBgS_Acch();
    /* 800761CC */ void Init();
    /* 80076288 */ void Set(fopAc_ac_c*, int, dBgS_AcchCir*);
    /* 80076248 */ void Set(cXyz*, cXyz*, fopAc_ac_c*, int, dBgS_AcchCir*, cXyz*, csXyz*, csXyz*);
    /* 800762D8 */ void GroundCheckInit(dBgS&);
    /* 80076350 */ void GroundCheck(dBgS&);
    /* 8007654C */ void GroundRoofProc(dBgS&);
    /* 80076624 */ void LineCheck(dBgS&);
    /* 80076AAC */ void CrrPos(dBgS&);
    /* 80076F84 */ f32 GetWallAllR();
    /* 80076FC0 */ void SetWallCir();
    /* 8007703C */ void CalcWallBmdCyl();
    /* 80077114 */ void SetGroundUpY(f32);
    /* 80077128 */ f32 GetWallAllLowH();
    /* 80077178 */ f32 GetWallAllLowH_R();
    /* 800771E4 */ f32 GetSpeedY();
    /* 80077200 */ f32 GetWallAddY(Vec&);
    /* 80077278 */ void SetNowActorInfo(int, void*, unsigned int);
    /* 80077288 */ void SetWallPolyIndex(int, int);
    /* 800772E8 */ void CalcMovePosWork();
    /* 8007732C */ void CalcWallRR();
    /* 80077388 */ void SetMoveBGOnly();
    /* 800773A4 */ void ClrMoveBGOnly();
    /* 800773C0 */ void SetGndThinCellingOff();
    /* 800773D0 */ void ClrGndThinCellingOff();
    /* 800773E0 */ bool ChkGndThinCellingOff();
    /* 800773EC */ void OnWallSort();
    /* 800773FC */ bool ChkWallSort();
    /* 80077408 */ bool ChkLineDown();
    /* 800D00D0 */ bool ChkRoofHit() const;
    /* 800D00DC */ void ClrGroundHit();
    /* 80141404 */ bool ChkGroundHit() const;

    /* 80075F94 */ virtual ~dBgS_Acch();

    cXyz* GetPos() { return pm_pos; }
    cXyz* GetOldPos() { return pm_old_pos; }
    f32 GetGroundH() const { return m_ground_h; }
    void SetLin() { m_lin.SetStartEnd(*pm_old_pos, *pm_pos); }
    bool ChkGroundFind() { return m_flags & GROUND_FIND; }
    bool ChkGroundHit() { return m_flags & GROUND_HIT; }
    void ClrGroundLanding() { m_flags &= ~GROUND_LANDING; }
    void ClrGroundAway() { m_flags &= ~GROUND_AWAY; }
    void ClrWallHit() { m_flags &= ~WALL_HIT; }
    void SetRoofNone() { m_flags |= ROOF_NONE; }
    void SetRoofHit() { m_flags |= ROOF_HIT; }
    bool ChkWallHit() { return m_flags & WALL_HIT; }
    void OffLineCheckHit() { m_flags &= ~LINE_CHECK_HIT; }
    bool ChkLineCheckNone() { return m_flags & LINE_CHECK_NONE; }
    bool ChkLineCheck() { return m_flags & LINE_CHECK; }
    void ClrRoofHit() { m_flags &= ~ROOF_HIT; }
    void ClrWaterHit() { m_flags &= ~WATER_HIT; }
    void SetWaterHit() { m_flags |= WATER_HIT; }
    void ClrWaterIn() { m_flags &= ~WATER_IN; }
    void SetWaterIn() { m_flags |= WATER_IN; }
    void ClrGroundFind() { m_flags &= ~GROUND_FIND; }
    u32 MaskRoofHit() { return m_flags & ROOF_HIT; }
    bool ChkRoofHit() { return MaskRoofHit(); }
    bool ChkClrSpeedY() { return m_flags & CLR_SPEED_Y; }
    void SetGroundFind() { m_flags |= GROUND_FIND; }
    void SetGroundHit() { m_flags |= GROUND_HIT; }
    void SetGroundLanding() { m_flags |= GROUND_LANDING; }
    void SetGroundAway() { m_flags |= GROUND_AWAY; }
    u32 MaskWaterHit() { return m_flags & WATER_HIT; }
    bool ChkWaterHit() { return MaskWaterHit(); }

    // inline dupe
    void i_ClrGroundHit() { m_flags &= ~GROUND_HIT; }

public:
    /* 0x02C */ u32 m_flags;
    /* 0x030 */ cXyz* pm_pos;
    /* 0x034 */ cXyz* pm_old_pos;
    /* 0x038 */ cXyz* pm_speed;
    /* 0x03C */ csXyz* pm_angle;
    /* 0x040 */ csXyz* pm_shape_angle;
    /* 0x044 */ cM3dGLin m_lin;
    /* 0x060 */ cM3dGCyl m_wall_cyl;
    /* 0x078 */ int m_bg_index;
    /* 0x07C */ void* field_0x7c;
    /* 0x080 */ u32 field_0x80;
    /* 0x084 */ fopAc_ac_c* m_my_ac;
    /* 0x088 */ int m_tbl_size;
    /* 0x08C */ dBgS_AcchCir* field_0x8c;
    /* 0x090 */ f32 field_0x90;
    /* 0x094 */ f32 field_0x94;
    /* 0x098 */ f32 m_ground_h;
    /* 0x09C */ f32 field_0x9c;
    /* 0x0A0 */ cM3dGPla field_0xa0;
    /* 0x0B4 */ u8 field_0xb4;
    /* 0x0B8 */ f32 field_0xb8;
    /* 0x0BC */ f32 field_0xbc;
    /* 0x0C0 */ u8 field_0xc0;
    /* 0x0C4 */ f32 m_roof_height;
    /* 0x0C8 */ f32 m_roof_crr_height;
    /* 0x0CC */ f32 field_0xcc;
    /* 0x0D0 */ f32 m_wtr_chk_offset;
    /* 0x0D4 */ int field_0xd4;
    /* 0x0D8 */ f32 field_0xd8;
    /* 0x0DC */ dBgS_GndChk m_gnd;
    /* 0x130 */ dBgS_RoofChk m_roof;
    /* 0x180 */ dBgS_WtrChk m_wtr;
    /* 0x1D4 */ u8 m_wtr_mode;
};

class dBgS_LinkAcch : public dBgS_Acch {
    /* 80140F30 */ virtual ~dBgS_LinkAcch();
};

class dBgS_ObjAcch : public dBgS_Acch {
    /* 80BB336C */ virtual ~dBgS_ObjAcch();
};

#endif /* D_BG_D_BG_S_ACCH_H */
