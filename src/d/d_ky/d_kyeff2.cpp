#include "d/d_ky/d_kyeff2/d_kyeff2.h"
#include "global.h"

bool dKyeff2_Draw(dKyeff2_c* p_dKyeff2_c) {
    dKyw_wether_draw2();
    return true;
}

bool dKyeff2_c::execute(void) {
    dKyw_wether_move_draw2();
    return true;
}

bool dKyeff2_Execute(dKyeff2_c* p_dKyeff2_c) {
    return p_dKyeff2_c->execute();
}

bool dKyeff2_IsDelete(dKyeff2_c* p_dKyeff2_c) {
    return true;
}

bool dKyeff2_Delete(dKyeff2_c* p_dKyeff2_c) {
    dKyw_wether_delete2();
    return true;
}

int dKyeff2_Create(kankyo_class* p_kankyo_class) {
    dKyw_wether_init2();
    return 4;
}