#ifndef D_A_MIRROR_H
#define D_A_MIRROR_H

#include "f_op/f_op_actor_mng.h"

class dMirror_packet_c : public J3DPacket {
public:
    /* 80870BD8 */ dMirror_packet_c();
    /* 80870C94 */ void reset();
    /* 80870CA0 */ void calcMinMax();
    /* 80870D58 */ int entryModel(J3DModel*);
    /* 80870D88 */ void mirrorZdraw(f32*, f32*, f32, f32, f32, f32, f32, f32);
    /* 80871268 */ void modelDraw(J3DModel*, f32 (*)[4]);
    /* 8087146C */ void mainDraw();
    /* 80871D84 */ virtual void draw();
    /* 80871E84 */ virtual ~dMirror_packet_c();
    cXyz& getViewScale() { return mViewScale; }
    GXTexObj& getTexObj() { return mTexObj; }
    cXyz* getQuad() { return mQuad; }

    /* 0x010 */ GXTexObj mTexObj;
    /* 0x030 */ u8 mModelCount;
    /* 0x034 */ J3DModel* mModels[0x40];
    /* 0x134 */ cXyz mQuad[4];
    /* 0x164 */ cXyz mMinVal;
    /* 0x170 */ cXyz mMaxVal;
    /* 0x17C */ cXyz mViewScale;
};

class daMirror_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    /* 80871E24 */ daMirror_c();
    /* 80871F08 */ BOOL createHeap();
    /* 80871F78 */ void setModelMtx();
    /* 8087206C */ inline int create();
    /* 808723E4 */ int execute();
    /* 80872560 */ int entryModel(J3DModel*);
    /* 8003194C */ static int entry(J3DModel*);
    /* 80031990 */ static int remove();

    inline int Delete();
    inline int draw();

    s32 getType() { return fopAcM_GetParamBit(this, 0, 8); }
    s32 getSw() { return fopAcM_GetParamBit(this, 8, 8); }
    static u32 getMirrorRoomPrm() { return 0xFF03; }

    typedef int (daMirror_c::*entryModelFunc)(J3DModel*);
    static entryModelFunc m_entryModel;
    static daMirror_c* m_myObj;

    /* 0x570 */ dMirror_packet_c mPacket;
    /* 0x6f8 */ J3DModel* mpModel;
};


#endif /* D_A_MIRROR_H */
