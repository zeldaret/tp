#ifndef D_A_OBJ_OCTHASHI_H
#define D_A_OBJ_OCTHASHI_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjOCTHASHI_c
 * @brief Morpheel Pillar
 *
 * @details
 *
 */
class daObjOCTHASHI_c : public fopAc_ac_c {
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
    /* 80CA5AE0 */ void CreateHeap();
    /* 80CA5B98 */ void create();
    /* 80CA62A4 */ void Create();
    /* 80CA62F8 */ void Execute(f32 (**)[3][4]);
    /* 80CA636C */ void Draw();
    /* 80CA6444 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x14b0 - 0x568];
};

STATIC_ASSERT(sizeof(daObjOCTHASHI_c) == 0x14b0);


#endif /* D_A_OBJ_OCTHASHI_H */
