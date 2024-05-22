#ifndef D_A_OBJ_GOMIKABE_H
#define D_A_OBJ_GOMIKABE_H

#include "f_op/f_op_actor_mng.h"

class daObjGOMIKABE_c : public fopAc_ac_c {
public:
    /* 80BFE244 */ void initCcCylinder();
    /* 80BFE2CC */ void SetCcCyl();
    /* 80BFE47C */ void WaitAction();
    /* 80BFE4C4 */ void BreakChk();
    /* 80BFE52C */ void BreakSet();
    /* 80BFEA60 */ void getWaterStream(cXyz&, cXyz&, f32);
    /* 80BFEB90 */ void SpeedSet();
    /* 80BFED54 */ void BreakAction();
    /* 80BFED74 */ void CheckCull();
    /* 80BFEE24 */ void checkViewArea(cXyz);
    /* 80BFEEA8 */ void Action();
    /* 80BFEF20 */ void setBaseMtx();
    /* 80BFEF84 */ void setBaseMtx2();
    /* 80BFF064 */ void CreateHeap();
    /* 80BFF164 */ void create();
    /* 80BFF8D8 */ void Create();
    /* 80BFF938 */ void Execute(f32 (**)[3][4]);
    /* 80BFFA00 */ void Draw();
    /* 80BFFB1C */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x13c4 - 0x568];
};
STATIC_ASSERT(sizeof(daObjGOMIKABE_c) == 0x13c4);

class daObjGOMIKABE_HIO_c {
public:
    /* 80BFE22C */ daObjGOMIKABE_HIO_c();
    /* 80BFFB74 */ ~daObjGOMIKABE_HIO_c();
};


#endif /* D_A_OBJ_GOMIKABE_H */
