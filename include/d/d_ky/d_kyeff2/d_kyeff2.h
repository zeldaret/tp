#ifndef _D_KYEFF2_H
#define _D_KYEFF2_H
#include "d/d_kankyo/d_kankyo.h"

class dKyeff2_c{
public:
    bool execute(void);
};

bool dKyeff2_Draw(dKyeff2_c * p_dKyeff2_c);
bool dKyeff2_Execute(dKyeff2_c* p_dKyeff2_c);
bool dKyeff2_IsDelete(dKyeff2_c* p_dKyeff2_c);
bool dKyeff2_Delete(dKyeff2_c* p_dKyeff2_c);
int dKyeff2_Create(kankyo_class* p_kankyo_class);

#endif