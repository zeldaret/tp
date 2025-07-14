#ifndef D_A_OBJ_CRVHAHEN_H
#define D_A_OBJ_CRVHAHEN_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_com_inf_game.h"
#include "m_Do/m_Do_ext.h"

/**
 * @ingroup actors-objects
 * @class daObjCRVHAHEN_c
 * @brief Caravan Wood
 *
 * @details
 *
 */
class daObjCRVHAHEN_c : public fopAc_ac_c {
public:
    /* 80BD342C */ void HahenSet(cXyz, cXyz, cXyz, cXyz, f32);
    /* 80BD3628 */ bool Wall_Check(cXyz, cXyz);
    /* 80BD3720 */ void Hahen_Hakai(int, int);
    /* 80BD38DC */ void CheckCull();
    /* 80BD3A9C */ void checkViewArea(cXyz*);
    /* 80BD3B20 */ void Execute();
    /* 80BD3B74 */ int Delete();
    /* 80BD3C0C */ void setBaseMtx();
    /* 80BD3DBC */ int create();
    
    /* 80BD3338 */ inline int CreateHeap();

    /* 0x568 */ cXyz field1_0x568[10];
    /* 0x5e0 */ cXyz field2_0x5e0[10];
    /* 0x658 */ cXyz field3_0x658[10];
    /* 0x6d0 */ csXyz field4_0x6d0[10];
    /* 0x7ac */ csXyz field5_0x70c[10];
    /* 0x748 */ u32 field_0x748;
    /* 0x74c */ float field7_0x74c;
    /* 0x750 */ char field8_0x750;
    /* 0x751 */ u8 field_0x751[0x760 - 0x751]; // padding
    /* 0x760 */ J3DModel* mpModel[10];
    /* 0x788 */ request_of_phase_process_class mPhase;
    /* 0x790 */ u8 field_0x790;
    /* 0x791 */ u8 field_0x791;
    /* 0x792 */ u8 field_0x792;
    /* 0x793 */ u8 field_0x793;
};

STATIC_ASSERT(sizeof(daObjCRVHAHEN_c) == 0x794);


#endif /* D_A_OBJ_CRVHAHEN_H */
