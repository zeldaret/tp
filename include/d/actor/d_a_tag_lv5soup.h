#ifndef D_A_TAG_LV5SOUP_H
#define D_A_TAG_LV5SOUP_H

#include "f_op/f_op_actor_mng.h"

class daTag_Lv5Soup_c : public fopAc_ac_c {
public:
    daTag_Lv5Soup_c() {}

    /* 80D5AD58 */ int create();
    /* 80D5ADEC */ int Delete();
    /* 80D5ADF4 */ int Execute();
    /* 80D5AE9C */ int Draw();
    /* 80D5AEA4 */ bool isAreaCheck();

    /* 80D5B0F4 */ virtual ~daTag_Lv5Soup_c();
};

#endif /* D_A_TAG_LV5SOUP_H */
