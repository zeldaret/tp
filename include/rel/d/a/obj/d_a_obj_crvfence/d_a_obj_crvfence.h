#ifndef D_A_OBJ_CRVFENCE_H
#define D_A_OBJ_CRVFENCE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjCRVFENCE_c : public fopAc_ac_c {
public:
    /* 80BCEC98 */ void CheckVec();
    /* 80BCED60 */ void Wall_Check(cXyz, cXyz);
    /* 80BCEE60 */ void BgRelease();
    /* 80BCEED0 */ void PosSet(cXyz*);
    /* 80BCEF30 */ void FenceMove(u8&, cXyz*, csXyz*, cXyz*, s16&);
    /* 80BCF0B0 */ void BrokenAction();
    /* 80BCF404 */ void NormalAction();
    /* 80BCF7DC */ void checkViewArea(cXyz*);
    /* 80BCF860 */ void Action();
    /* 80BCF8A4 */ void setBaseMtx();
    /* 80BCF9E4 */ void CreateHeap();
    /* 80BCFAE4 */ void create();
    /* 80BCFFC8 */ void Create();
    /* 80BD000C */ void Execute(f32 (**)[3][4]);
    /* 80BD0058 */ void Draw();
    /* 80BD013C */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x103c - 0x568];
};
STATIC_ASSERT(sizeof(daObjCRVFENCE_c) == 0x103c);


#endif /* D_A_OBJ_CRVFENCE_H */
