/**
 * c_request.cpp
 *
 */

#include "SSystem/SComponent/c_request.h"

/* 802667D4-80266800 261114 002C+00 0/0 3/3 0/0 .text cReq_Is_Done__FP18request_base_class */
int cReq_Is_Done(request_base_class* i_this) {
    if (i_this->field_0x0.flag1 == 1) {
        i_this->field_0x0.flag1 = 0;
        return 1;
    }
    return 0;
}

/* 80266800-80266830 261140 0030+00 0/0 3/3 0/0 .text            cReq_Done__FP18request_base_class
 */
void cReq_Done(request_base_class* i_this) {
    i_this->field_0x0.flag0 = 0;
    i_this->field_0x0.flag1 = 1;
    i_this->field_0x0.flag2 = 0;
}

/* 80266830-80266850 261170 0020+00 0/0 2/2 0/0 .text cReq_Command__FP18request_base_classUc */
void cReq_Command(request_base_class* i_this, u8 param_1) {
    cReq_Create(i_this, param_1);
}

/* 80266850-80266880 261190 0030+00 1/1 2/2 0/0 .text cReq_Create__FP18request_base_classUc */
void cReq_Create(request_base_class* i_this, u8 param_1) {
    i_this->field_0x0.flag0 = 1;
    i_this->field_0x0.flag1 = 0;
    i_this->field_0x0.flag2 = param_1;
}
