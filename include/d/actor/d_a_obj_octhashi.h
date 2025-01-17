#ifndef D_A_OBJ_OCTHASHI_H
#define D_A_OBJ_OCTHASHI_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_com_inf_game.h"

/**
 * @ingroup actors-objects
 * @class daObjOCTHASHI_c
 * @brief Morpheel Pillar
 *
 * @details
 *
 */
class daObjOCTHASHI_c : public dBgS_MoveBgActor {
public:
    /* 80CA4BB8 */ void initCcCylinder();
    /* 80CA4DFC */ void SetCoSph();
    /* 80CA4EA4 */ void SetCoCyl();
    /* 80CA4F24 */ void HakaiSet2(int);
    /* 80CA52F0 */ void HakaiMotion2();
    /* 80CA54E4 */ void CylAction();
    /* 80CA55C4 */ void SphAction();
    /* 80CA5844 */ void SphAction2();
    /* 80CA58F4 */ void Action();
    /* 80CA59BC */ void setBaseMtx();
    /* 80CA5AE0 */ int CreateHeap();
    /* 80CA5B98 */ int create();
    /* 80CA62A4 */ int Create();
    /* 80CA62F8 */ int Execute(Mtx**);
    /* 80CA636C */ int Draw();
    /* 80CA6444 */ int Delete();

private:
    /* 0x5a0 */ cXyz field_0x5a0[8];
    /* 0x600 */ cXyz field_0x600[8];
    /* 0x660 */ csXyz field_0x660[8];
    /* 0x690 */ csXyz field_0x690[8];
    /* 0x6c0 */ u8 field_0x6c0[8];
    /* 0x6c8 */ u8 field_0x6c8;
    /* 0x6c9 */ u8 field_0x6c9[0x6cb - 0x6c9];
    /* 0x6cb */ u8 field_0x6cb;
    /* 0x6cc */ s16 field_0x6cc;
    /* 0x6d0 */ f32 field_0x6d0;
    /* 0x6d4 */ f32 field_0x6d4;
    /* 0x6d8 */ f32 field_0x6d8;
    /* 0x6dc */ s16 field_0x6dc;
    /* 0x6de */ s16 field_0x6de;
    /* 0x6e0 */ int field_0x6e0;
    /* 0x6e4 */ u32 field_0x6e4;
    /* 0x6e8 */ s16 field_0x6e8;
    /* 0x6ec */ Z2Creature field_0x6ec;
    /* 0x77c */ u8 field_0x77c[4];
    /* 0x780 */ J3DModel* mpModel[8];
    /* 0x7a0 */ u8 field_0x7a0[0x7a4 - 0x7a0];
    /* 0x7a4 */ request_of_phase_process_class mPhaseReq;
    /* 0x7ac */ dCcD_Stts field_0x7ac[8];
    /* 0x98c */ dCcD_Sph field_0x98c[8];
    /* 0x134c */ dCcD_Cyl field_0x134c;
    /* 0x1488 */ u8 field_0x1488[0x14b0 - 0x1488];
};

STATIC_ASSERT(sizeof(daObjOCTHASHI_c) == 0x14b0);


#endif /* D_A_OBJ_OCTHASHI_H */
