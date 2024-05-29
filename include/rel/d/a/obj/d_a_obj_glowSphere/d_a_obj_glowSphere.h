#ifndef D_A_OBJ_GLOWSPHERE_H
#define D_A_OBJ_GLOWSPHERE_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daGlwSph_c
 * @brief STAR Game Glow Sphere
 *
 * @details
 *
 */
class daGlwSph_c : public fopAc_ac_c {
public:
    /* 80BF9430 */ void getSphMng();
    /* 80BF943C */ void setBaseMtx();
    /* 80BF94AC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80BF94CC */ void CreateHeap();
    /* 80BF95D4 */ void create();
    /* 80BF9B1C */ void execute();
    /* 80BF9BC0 */ void actionMain();
    /* 80BF9DF0 */ void effectSet();
    /* 80BF9F30 */ void getSE();
    /* 80BFA010 */ void getVibe();
    /* 80BFA064 */ void actionWaitInit();
    /* 80BFA070 */ void actionWait();
    /* 80BFA074 */ void actionGetInit();
    /* 80BFA130 */ void actionGet();
    /* 80BFA1E0 */ void actionMoveInit();
    /* 80BFA204 */ void actionMove();
    /* 80BFA2A4 */ void draw();
    /* 80BFA3EC */ void _delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDSph[64];
    static u8 mSphMng[964];

private:
    /* 0x568 */ u8 field_0x568[0x98c - 0x568];
};
STATIC_ASSERT(sizeof(daGlwSph_c) == 0x98C);

class daGlwSph_HIO_c {
public:
    /* 80BF934C */ daGlwSph_HIO_c();
    /* 80BFA76C */ ~daGlwSph_HIO_c();
};

class _GlSph_Mng_c {
public:
    /* 80BFA4B8 */ void _clrLstBuf();
    /* 80BFA4DC */ void entry(daGlwSph_c*);
    /* 80BFA528 */ void remove(daGlwSph_c*);
    /* 80BFA55C */ void _setting_main();
    /* 80BFA5C4 */ void _chkAllGet_main();
    /* 80BFA60C */ void SphSeProc();
    /* 80BFA6D8 */ void clrSphSe();
    /* 80BFA6E8 */ void getSphSe();
    /* 80BFA6F8 */ void incSphSe();
    /* 80BFA890 */ ~_GlSph_Mng_c();
};

class _GlSph_LstInfo_c{
public:
    /* 80BFA900 */ ~_GlSph_LstInfo_c();
    /* 80BFA93C */ _GlSph_LstInfo_c();
};


#endif /* D_A_OBJ_GLOWSPHERE_H */
