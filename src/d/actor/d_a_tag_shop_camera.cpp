/**
 * d_a_tag_shop_camera.cpp
 * Tag - Shop Camera
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_shop_camera.h"
#include "dol2asm.h"


/* 80D60898-80D608FC 000078 0064+00 1/1 0/0 0/0 .text            create__18daTag_ShopCamera_cFv */
int daTag_ShopCamera_c::create() {
    fopAcM_SetupActor(this, daTag_ShopCamera_c);
    initialize();
    return cPhs_COMPLEATE_e;
}

/* 80D608FC-80D60904 0000DC 0008+00 1/1 0/0 0/0 .text            Delete__18daTag_ShopCamera_cFv */
int daTag_ShopCamera_c::Delete() {
    return 1;
}

/* 80D60904-80D6090C 0000E4 0008+00 1/1 0/0 0/0 .text            Execute__18daTag_ShopCamera_cFv */
int daTag_ShopCamera_c::Execute() {
    return 1;
}

/* 80D6090C-80D60914 0000EC 0008+00 1/1 0/0 0/0 .text            Draw__18daTag_ShopCamera_cFv */
int daTag_ShopCamera_c::Draw() {
    return 1;
}

/* 80D60914-80D60990 0000F4 007C+00 1/1 0/0 0/0 .text            initialize__18daTag_ShopCamera_cFv
 */
 
void daTag_ShopCamera_c::initialize() {
    fopAcM_setCullSizeBox(this,-30.0f,-15.0f,-30.0f,30.0f,45.0f,30.0f);
    attention_info.flags = 0;
    current.angle.set(0,home.angle.y,0);
    shape_angle = current.angle;
}

/* 80D60990-80D609B0 000170 0020+00 1/0 0/0 0/0 .text            daTag_ShopCamera_Create__FPv */
static int daTag_ShopCamera_Create(void* i_this) {
    return static_cast<daTag_ShopCamera_c*>(i_this)->create();
}

/* 80D609B0-80D609D0 000190 0020+00 1/0 0/0 0/0 .text            daTag_ShopCamera_Delete__FPv */
static int daTag_ShopCamera_Delete(void* i_this) {
    return static_cast<daTag_ShopCamera_c*>(i_this)->Delete();
}

/* 80D609D0-80D609F0 0001B0 0020+00 1/0 0/0 0/0 .text            daTag_ShopCamera_Execute__FPv */
static int daTag_ShopCamera_Execute(void* i_this) {
    return static_cast<daTag_ShopCamera_c*>(i_this)->Execute();
}

/* 80D609F0-80D60A10 0001D0 0020+00 1/0 0/0 0/0 .text            daTag_ShopCamera_Draw__FPv */
static int daTag_ShopCamera_Draw(void* i_this) {
    return static_cast<daTag_ShopCamera_c*>(i_this)->Draw();
}

/* 80D60A10-80D60A18 0001F0 0008+00 1/0 0/0 0/0 .text            daTag_ShopCamera_IsDelete__FPv */
static int daTag_ShopCamera_IsDelete(void* param_0) {
    return 1;
}

// settings these up properly causes the match to fail?

/* ############################################################################################## */
/* 80D60A90-80D60AB0 -00001 0020+00 1/0 0/0 0/0 .data            daTag_ShopCamera_MethodTable */
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

/* 80D60AB0-80D60AE0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_SHOPCAM */
SECTION_DATA extern void* g_profile_TAG_SHOPCAM[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01260000, (void*)&g_fpcLf_Method,
    (void*)0x0000056C, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x004A0000, (void*)&daTag_ShopCamera_MethodTable,
    (void*)0x00064100, (void*)0x050E0000,
};
