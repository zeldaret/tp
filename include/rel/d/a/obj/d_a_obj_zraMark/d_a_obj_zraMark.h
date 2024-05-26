#ifndef D_A_OBJ_ZRAMARK_H
#define D_A_OBJ_ZRAMARK_H

#include "f_op/f_op_actor_mng.h"

class daObjZraMark_c : public fopAc_ac_c {
public:
    /* 80D42678 */ void Create();
    /* 80D4287C */ void CreateHeap();
    /* 80D42A7C */ void Execute();
    /* 80D42B0C */ void Draw();
    /* 80D42C98 */ void Delete();
    /* 80D42CE0 */ void getType();
    /* 80D42D2C */ void setBaseMtx();
    /* 80D42EE0 */ void col_init();
    /* 80D42F5C */ void col_set();
    /* 80D432C8 */ void schHoz();
    /* 80D43314 */ void entryPointer(fopAc_ac_c*);
    /* 80D43370 */ void informBlast();

    u8 getMarkNo() { return fopAcM_GetParam(this) & 0xff; }
private:
    /* 0x568 */ u8 field_0x568[0x3e40 - 0x568];
};
STATIC_ASSERT(sizeof(daObjZraMark_c) == 0x3e40);

class _ZraMark_Hahen_c : public fopAc_ac_c {
public:
    /* 80D4347C */ void create(cXyz const&, s8, s8, s8, s8);
    /* 80D434F8 */ void loadModel();
    /* 80D4357C */ void init(cXyz const&, s8, s8, s8);
    /* 80D43808 */ void calcSpeed();
    /* 80D43864 */ void setMtx();
    /* 80D438C8 */ void draw();
    /* 80D43B48 */ ~_ZraMark_Hahen_c();
    /* 80D43BB4 */ _ZraMark_Hahen_c();
};

class _ZraMark_Hahen_Mng_c : public fopAc_ac_c {
public:
    /* 80D43968 */ void create(cXyz const&, s8, s8, s8, s8);
    /* 80D439F8 */ void calc();
    /* 80D43A74 */ void draw();
};


#endif /* D_A_OBJ_ZRAMARK_H */
