#ifndef D_A_DO_H
#define D_A_DO_H

#include "dolphin/types.h"
#include "d/a/d_a_player.h"
// #include "d/a/d_a_item_static.h"
#include "d/msg/d_msg_flow.h"
#include "d/particle/d_particle.h"
#include "f_op/f_op_actor.h"
#include "m_Do/m_Do_mtx.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_controller_pad.h"
#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "SSystem/SComponent/c_phase.h"


struct do_class : public fopAc_ac_c {
public:
    /* 0x56C */ u8 field_0x56c[138];
    /* 0x5F2 */ s16 field_0x5f2;
    /* 0x5F4 */ u8 field_0x5f4[2];
    /* 0x5F6 */ u16 field_0x5f6;
    /* 0x5F8 */ u8 field_0x5f8[140];
    /* 0x684 */ u32 isFood;

public:
    /* 8066EAE4 */ do_class();
};

class daDo_HIO_c : public J3DFrameCtrl {
private:
    /* 0x14 */ u32 field_0x14;
    /* 0x18 */ u32 field_0x18;
    /* 0x1C */ u8 field_0x1c;
    /* 0x1D */ u8 field_0x1d;
    /* 0x1E */ u16 field_0x1e;

public:
    /* 80667D4C */ daDo_HIO_c();
    /* 8066ED40 */ virtual ~daDo_HIO_c();
};

struct daItem_c {
    /* 80037BF4 */ void startControl();
    /* 80037C04 */ void endControl();
};

struct dEvt_control_c {
    /* 80042468 */ void reset();
};

struct dCcD_Stts {
    /* 80083860 */ void Init(int, int, fopAc_ac_c*);
};

struct dCcD_SrcSph {};

struct dCcD_Sph {
    /* 80084A34 */ void Set(dCcD_SrcSph const&);
};

struct dCcD_GStts {
    /* 80083760 */ dCcD_GStts();
};

struct dCcD_GObjInf {
    /* 80083A28 */ dCcD_GObjInf();
};

struct dBgS_PolyPassChk {
    /* 80078E68 */ void SetObj();
};

struct dBgS_ObjGndChk_Spl {
    /* 800777B0 */ dBgS_ObjGndChk_Spl();
    /* 80077848 */ ~dBgS_ObjGndChk_Spl();
};

struct dBgS_ObjAcch {
    /* 8066ECD0 */ ~dBgS_ObjAcch();
};

struct dBgS_LinChk {
    /* 80077C68 */ dBgS_LinChk();
    /* 80077CDC */ ~dBgS_LinChk();
    /* 80077D64 */ void Set(cXyz const*, cXyz const*, fopAc_ac_c const*);
};

struct dBgS_GndChk {
    /* 8007757C */ dBgS_GndChk();
    /* 800775F0 */ ~dBgS_GndChk();
};

struct dBgS_AcchCir {
    /* 80075EAC */ dBgS_AcchCir();
    /* 80075F58 */ void SetWall(f32, f32);
};

struct dBgS {};

struct dBgS_Acch {
    /* 80075F94 */ ~dBgS_Acch();
    /* 800760A0 */ dBgS_Acch();
    /* 80076248 */ void Set(cXyz*, cXyz*, fopAc_ac_c*, int, dBgS_AcchCir*, cXyz*, csXyz*, csXyz*);
    /* 80076AAC */ void CrrPos(dBgS&);
};

struct cM3dGSph {
    /* 8026F648 */ void SetC(cXyz const&);
    /* 8026F708 */ void SetR(f32);
    /* 8066EC40 */ ~cM3dGSph();
};

struct cM3dGAab {
    /* 8066EC88 */ ~cM3dGAab();
};

struct cCcD_Obj {};

struct cCcS {
    /* 80264BA8 */ void Set(cCcD_Obj*);
};

struct cBgS_LinChk {};

struct cBgS_GndChk {
    /* 80267D28 */ void SetPos(cXyz const*);
    /* 80267D0C */ void SetPos(Vec const*);
};

struct cBgS {
    /* 800743B4 */ void LineCross(cBgS_LinChk*);
    /* 800744A0 */ void GroundCross(cBgS_GndChk*);
};

#endif /* D_A_DO_H */
