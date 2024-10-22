#ifndef D_A_OBJ_BHASHI_H
#define D_A_OBJ_BHASHI_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjBHASHI_c
 * @brief Morpheel Room Pillar?
 *
 * @details
 *
 */
class daObjBHASHI_c : public fopAc_ac_c {
public:
    /* 80576A58 */ void initCcCylinder();
    /* 80576AC4 */ void setCcCylinder();
    /* 80576B78 */ void Set_Hahen();
    /* 80576C50 */ void Set_Speed(s16, s16, f32, f32);
    /* 80577500 */ void Obj_Damage(cXyz);
    /* 805771EC */ void Obj_Damage();
    /* 80577E24 */ void Rolling(cXyz*, f32, f32);
    /* 805781FC */ void setBaseMtx();
    /* 80578330 */ void CreateHeap();
    /* 8057842C */ void create();
    /* 80578788 */ void Create();
    /* 805787CC */ void Execute(f32 (**)[3][4]);
    /* 805788EC */ void Draw();
    /* 805789E8 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x1464 - 0x568];
};

STATIC_ASSERT(sizeof(daObjBHASHI_c) == 0x1464);

class Hahen_c {
public:
    /* 80577794 */ Hahen_c();
    /* 805777A4 */ void Wall_Check();
    /* 80577868 */ void HahenMotion();
    /* 80577C1C */ void CheckCull();
    /* 80577DA4 */ void checkViewArea();
    /* 80577FE0 */ void Roll_Set(cXyz*, f32, s16);
    /* 80578744 */ ~Hahen_c();
};


#endif /* D_A_OBJ_BHASHI_H */
