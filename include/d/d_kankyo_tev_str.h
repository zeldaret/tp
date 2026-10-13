#ifndef D_D_KANKYO_TEV_STR
#define D_D_KANKYO_TEV_STR

#include "JSystem/J3DGraphBase/J3DTevs.h"
#include "SSystem/SComponent/c_xyz.h"
#include <types.h>

// Type values for dKy_tevstr_c
// These control an absolute metric ton of different behaviors and seem to generally be specified on
// a per-object-type basis?

/**
 * The type that seems to be passed by the vast majority of settingTevStruct calls.
 * I'll call it "default."
 */
#define TEVSTR_TYPE_DEFAULT 0

/**
 * Midna in "shadow form" (when talking to her as human link and she rises from your shadow).
 */
#define TEVSTR_TYPE_SHADOW_MIDNA 1

/**
 * Twilight enemies (shadow beasts, keese, deku babas, that kinda stuff)
 */
#define TEVSTR_TYPE_TWILIGHT_ENEMY 2

/**
 * Twili (Zant, Midna, Palace of Twilight citizens after you save them with the master sword)
 */
#define TEVSTR_TYPE_TWILI 3

/**
 * NPCs that are invisible and seen through wolf senses.
 */
#define TEVSTR_TYPE_TWILIGHT_NPC 4

/**
 * Specifically Ganondorf's sword, sages, and the golden wolf.
 */
#define TEVSTR_TYPE_SOLID_GHOST 5

/**
 * Twilight Insect (the tears of light dropping ones) and boss.
 */
#define TEVSTR_TYPE_TWILIGHT_INSECT 6

/**
 * Ghost soldiers (in Hyrule Castle), phantom riders, hero's shade, Rutela.
 * Also, something with stone statues?
 */
#define TEVSTR_TYPE_GHOST 7

/**
 * Various actors, unsure what the common pattern is.
 */
#define TEVSTR_TYPE_UNK8 8

#define TEVSTR_TYPE_WOLF_LINK 9
#define TEVSTR_TYPE_HUMAN_LINK 10

/**
 * Seems like an error condition?
 */
#define TEVSTR_TYPE_UNK11 11

/**
 * Link (both wolf and human) while seen on the collections screen.
 */
#define TEVSTR_TYPE_COLLECTION_LINK 12

/**
 * The 3D model of the mirror shards/fused shadows on the collection screen and save file select.
 */
#define TEVSTR_TYPE_COLLECTION_MODEL 13

/**
 * Unsure.
 */
#define TEVSTR_TYPE_DEMO_ITEM 14

/**
 * Unsure. Seems never set?
 */
#define TEVSTR_TYPE_UNK15 15

/**
 * All tevstr types beyond this point are "background" and use some sort of palettization. idk.
 */
#define TEVSTR_TYPE_BG_START 16

/**
 * Defines a set of rendering parameters that vaguely come from "the environment."
 *
 * @remarks *In general* these parameters end up in various material/lighting fields.
 * Stuff's extremely complicated here though so god help you.
 */
class dKy_tevstr_c {
public:
    // Supposedly exists but didn't work. Might be too big to inline.
    // See dPa_modelEcallBack::model_c::set.
    // inline dKy_tevstr_c& operator=(const dKy_tevstr_c& b);

    /* 0x000 */ J3DLightObj mLightObj;
    /* 0x074 */ J3DLightObj mLights[6];
    /* 0x32C */ cXyz field_0x32c;  // some light pos, unsure how it differs
    /* 0x338 */ cXyz mLightPosWorld;
    /* 0x344 */ f32 field_0x344;
    /* 0x348 */ GXColorS10 AmbCol;
    /* 0x350 */ GXColorS10 FogCol;
    /* 0x358 */ GXColorS10 TevColor;
    /* 0x360 */ GXColor TevKColor;
    /* 0x364 */ GXColor mLightInf;
    /* 0x368 */ f32 mFogStartZ;
    /* 0x36C */ f32 mFogEndZ;
    /* 0x370 */ f32 pat_ratio;
    /* 0x374 */ f32 field_0x374;
    /* 0x378 */ u16 Material_id;  // Used for some sort of special material handling when non-0
    /* 0x37A */ u8 Type;
    /* 0x37B */ u8 mInitTimer;
    /* 0x37C */ u8 UseCol;
    /* 0x37D */ u8 PrevCol;
    /* 0x37E */ u8 wether_pat1;
    /* 0x37F */ u8 wether_pat0;
    /* 0x380 */ s8 room_no;  // Room Color
    /* 0x381 */ u8 YukaCol;  // Floor (Poly) Color
    /* 0x382 */ u8 mLightMode;
    /* 0x383 */ u8 Material_use_fg;
    /* 0x384 */ u8 field_0x384;
    /* 0x385 */ u8 field_0x385;
};  // Size = 0x388

STATIC_ASSERT(sizeof(dKy_tevstr_c) == 0x388);

#endif /* D_D_KANKYO_TEV_STR */
