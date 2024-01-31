#ifndef D_A_OBJ_MIRROR_CHAIN_H
#define D_A_OBJ_MIRROR_CHAIN_H

#include "JSystem/J3DGraphBase/J3DDrawBuffer.h"
#include "f_op/f_op_actor_mng.h"
#include "d/bg/d_bg_w.h"

class dScissorBegin_packet_c : public J3DPacket {
public:
    /* 80C96698 */ void draw();
    /* 80C97F98 */ ~dScissorBegin_packet_c() {}

    cXyz* getQuad() { return mQuad; }
    void entryPacket() { j3dSys.getDrawBuffer(1)->entryImm(this, 0); }

    /* 0x10 */ cXyz mQuad[4];
};

class dScissorEnd_packet_c : public J3DPacket {
public:
    /* 80C96DE8 */ void draw();
    /* 80C97F3C */ ~dScissorEnd_packet_c() {}

    void entryPacket() { j3dSys.getDrawBuffer(1)->entryImm(this, 0); }
};

class daObjMirrorChain_c : public fopAc_ac_c {
public:
    /* 80C96E40 */ int createHeap();
    /* 80C975EC */ void initBaseMtx();
    /* 80C97618 */ void setBaseMtx();
    /* 80C976B8 */ int draw();
    /* 80C97988 */ int execute();
    inline ~daObjMirrorChain_c();
    inline void create_init();
    inline cPhs__Step create();

    u8 getSwitchNo() { return (fopAcM_GetParam(this) >> 8) & 0xff; }
    void setAnmSpeed(f32 speed) { mpBckAnm->setPlaySpeed(speed); }

    /* 0x568 */ J3DModel* mpModel;
    /* 0x56C */ J3DModel* mpPortalModel;
    /* 0x570 */ mDoExt_bckAnm* mpBckAnm;
    /* 0x574 */ mDoExt_brkAnm* mpBrkAnm;
    /* 0x578 */ mDoExt_brkAnm* mpPortalBrkAnm;
    /* 0x57C */ request_of_phase_process_class mPhaseReq;
    /* 0x584 */ dBgW* mpActiveBgW;
    /* 0x588 */ dBgW mBgW[2];
    /* 0x708 */ JPABaseEmitter* mpEmitter;
    /* 0x70C */ Mtx mMtx;
    /* 0x73C */ dScissorBegin_packet_c mScissorBegin;
    /* 0x77C */ dScissorEnd_packet_c mScissorEnd;
 };

 STATIC_ASSERT(sizeof(daObjMirrorChain_c) == 0x78C);

#endif /* D_A_OBJ_MIRROR_CHAIN_H */
