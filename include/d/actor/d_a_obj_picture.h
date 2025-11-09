#ifndef D_A_OBJ_PICTURE_H
#define D_A_OBJ_PICTURE_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-objects
 * @class daObjPicture_c
 * @brief Hyrule Castle Painting
 *
 * @details
 *
 */
class daObjPicture_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    /* 80CAD318 */ daObjPicture_c();
    /* 80CAD6C8 */ virtual ~daObjPicture_c();
    /* 80CAD908 */ int createHeap();
    /* 80CADC18 */ int create();
    /* 80CADFB0 */ int Delete();
    /* 80CAE05C */ int draw();
    /* 80CAE1B8 */ int execute();
    /* 80CAE510 */ void init();
    /* 80CAE5B0 */ void setPicModelMtx();
    /* 80CAE638 */ void setTmgModelMtx();
    /* 80CAE6C4 */ void getLinePosPic(int, cXyz*);
    /* 80CAE744 */ void getPosTmg(cXyz*);
    /* 80CAE76C */ void setLinePos();
    /* 80CAE8E8 */ void moveLineFall1();
    /* 80CAEA60 */ void moveLineFall2();
    /* 80CAED28 */ bool chkHitRope();
    /* 80CAEDDC */ bool chkHitBombTg();
    /* 80CAEE90 */ void setPicAtCol();

    int getArg_0() { return fopAcM_GetParamBit(this, 0, 4); }
    int getSW_0() { return fopAcM_GetParamBit(this, 4, 8); }

#if DEBUG
    const
#endif
    static dCcD_SrcCps s_CcDCps;
#if DEBUG
    const
#endif
    static dCcD_SrcCyl s_CcDCyl_pic_at;

private:
    /* 0x574 */ dCcD_Stts field_0x574;
    /* 0x5B0 */ dCcD_Stts field_0x5b0;
    /* 0x5EC */ dCcD_Stts field_0x5ec;
    /* 0x628 */ dCcD_Cps mCps[2];
    /* 0x8B0 */ dCcD_Cyl mAtCyl;
    /* 0x9EC */ dCcD_Cps mCps2[2];
    /* 0xC74 */ u8 field_0xC74[0xC7C - 0xC74];
    /* 0xC7C */ cXyz mPicAtPos;
    /* 0xC88 */ cXyz field_0xc88;
    /* 0xC94 */ Vec field_0xc94;
    /* 0xCA0 */ Vec field_0xca0;
    /* 0xCAC */ mDoExt_3DlineMat1_c* mpRopeMat[2];
    /* 0xCB4 */ J3DModel* mpPicModel;
    /* 0xCB8 */ J3DModel* mpRopestModel;
    /* 0xCBC */ dBgW* mpBgw[2];
    /* 0xCC4 */ Mtx mBgMtx[2];
    /* 0xD24 */ u8 field_0xd24;
    /* 0xD25 */ u8 field_0xd25;
    /* 0xD26 */ u8 field_0xd26;
    /* 0xD27 */ u8 field_0xd27;
    /* 0xD28 */ Vec field_0xd28[10];
};

STATIC_ASSERT(sizeof(daObjPicture_c) == 0xda0);


#endif /* D_A_OBJ_PICTURE_H */
