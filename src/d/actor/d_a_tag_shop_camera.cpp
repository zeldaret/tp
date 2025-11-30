/**
 * d_a_tag_shop_camera.cpp
 * Tag - Shop Camera
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_tag_shop_camera.h"
#include "dol2asm.h"


int daTag_ShopCamera_c::create() {
    fopAcM_ct(this, daTag_ShopCamera_c);
    initialize();
    return cPhs_COMPLEATE_e;
}

int daTag_ShopCamera_c::Delete() {
    return 1;
}

int daTag_ShopCamera_c::Execute() {
    return 1;
}

int daTag_ShopCamera_c::Draw() {
    return 1;
}

 
void daTag_ShopCamera_c::initialize() {
    fopAcM_setCullSizeBox(this,-30.0f,-15.0f,-30.0f,30.0f,45.0f,30.0f);
    attention_info.flags = 0;
    current.angle.set(0,home.angle.y,0);
    shape_angle = current.angle;
}

static int daTag_ShopCamera_Create(void* i_this) {
    return static_cast<daTag_ShopCamera_c*>(i_this)->create();
}

static int daTag_ShopCamera_Delete(void* i_this) {
    return static_cast<daTag_ShopCamera_c*>(i_this)->Delete();
}

static int daTag_ShopCamera_Execute(void* i_this) {
    return static_cast<daTag_ShopCamera_c*>(i_this)->Execute();
}

static int daTag_ShopCamera_Draw(void* i_this) {
    return static_cast<daTag_ShopCamera_c*>(i_this)->Draw();
}

static int daTag_ShopCamera_IsDelete(void* param_0) {
    return 1;
}

// settings these up properly causes the match to fail?

SECTION_DATA static void* daTag_ShopCamera_MethodTable[8] = {
    (void*)daTag_ShopCamera_Create,
    (void*)daTag_ShopCamera_Delete,
    (void*)daTag_ShopCamera_Execute,
    (void*)daTag_ShopCamera_IsDelete,
    (void*)daTag_ShopCamera_Draw,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

SECTION_DATA extern void* g_profile_TAG_SHOPCAM[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01260000, (void*)&g_fpcLf_Method,
    (void*)0x0000056C, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x004A0000, (void*)&daTag_ShopCamera_MethodTable,
    (void*)0x00064100, (void*)0x050E0000,
};
