#ifndef D_A_OBJ_TVCDLST_H
#define D_A_OBJ_TVCDLST_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daTvCdlst_c
 * @brief Ordon Torch Stand
 *
 * @details
 *
 */
class daTvCdlst_c : public fopAc_ac_c {
public:
    /* 80B9ED40 */ void setBaseMtx();
    /* 80B9EDC8 */ void CreateHeap();
    /* 80B9EE34 */ void create();
    /* 80B9F144 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B9F164 */ void lightInit();
    /* 80B9F1F0 */ void setLight();
    /* 80B9F220 */ void cutLight();
    /* 80B9F250 */ void pointLightProc();
    /* 80B9F300 */ void Execute();
    /* 80B9F634 */ void Draw();
    /* 80B9F6D8 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x754 - 0x568];
};

STATIC_ASSERT(sizeof(daTvCdlst_c) == 0x754);

class daTvCdlst_HIO_c {
public:
    /* 80B9ECCC */ daTvCdlst_HIO_c();
    /* 80B9F7B0 */ ~daTvCdlst_HIO_c();
};


#endif /* D_A_OBJ_TVCDLST_H */
