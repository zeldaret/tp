/**
 * @file d_a_horse.cpp
 * 
*/

#include "d/actor/d_a_horse.h"
#include "d/d_com_inf_game.h"
#include "Z2AudioLib/Z2Instances.h"
#include "dol2asm.h"

/* 808454AC-808454B8 000000 000C+00 41/41 0/0 0/0 .rodata          @3894 */
static u8 const lit_3894[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 808454B8-808454C0 00000C 0006+02 2/6 0/0 0/0 .rodata          l_arcName */
static char const l_arcName[] = "Horse";

/* 808454C0-808454C8 000014 0008+00 2/5 0/0 0/0 .rodata          m_footJointTable__9daHorse_c */
const u16 daHorse_c::m_footJointTable[] = {
    0x0003, 0x0007, 0x001B, 0x001F,
};

/* 808454C8-808454CC 00001C 0004+00 0/0 0/0 0/0 .rodata          m_callLimitDistance2__9daHorse_c */
const f32 daHorse_c::m_callLimitDistance2 = 640000.0f;

/* 808454CC-808455F0 000020 0124+00 1/20 0/0 0/0 .rodata          m__14daHorse_hio_c0 */
const daHorse_hio_c1 daHorse_hio_c0::m = {
    600,
    50,
    45,
    7,
    14,
    8,
    90,
    210,
    15,
    7,
    13,
    8,
    3,
    45,
    42.0f,
    1.0f,
    0.8f,
    1.5f,
    1.2f,
    1.5f,
    1.0f,
    0.08f,
    0.45f,
    0.9f,
    1.1f,
    5.0f,
    1.4f,
    0.4f,
    2.0f,
    6.5f,
    1.0f,
    0.5f,
    1.0f,
    1.1f,
    5.0f,
    45.0f,
    1.7f,
    2.5f,
    1.1f,
    5.0f,
    57.0f,
    50.0f,
    31.0f,
    2.0f,
    12.0f,
    1.7f,
    4.0f,
    1.0f,
    0.0f,
    1.0f,
    1.0f,
    1.0f,
    1.0f,
    9.0f,
    40.0f,
    350.0f,
    150.0f,
    100.0f,
    1000.0f,
    50.0f,
    40.0f,
    1.3f,
    0.5f,
    4.0f,
    0.7f,
    2.0f,
    3.0f,
    0.3f,
    7.0f,
    6.0f,
    1.0f,
    2.0f,
    2.0f,
    9.0f,
    125.0f,
    0.0f,
    35.0f,
    1.1f,
    1.3f,
    15.0f,
};

/* 808455F0-808455F4 000144 0004+00 3/11 0/0 0/0 .rodata          @4303 */
SECTION_RODATA static f32 const lit_4303 = 3.0f;
COMPILER_STRIP_GATE(0x808455F0, &lit_4303);

/* 808455F4-808455F8 000148 0004+00 4/28 0/0 0/0 .rodata          @4304 */
SECTION_RODATA static f32 const lit_4304 = 1.0f;
COMPILER_STRIP_GATE(0x808455F4, &lit_4304);

/* 808455F8-808455FC 00014C 0004+00 0/1 0/0 0/0 .rodata          @4305 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4305 = -4.5f;
COMPILER_STRIP_GATE(0x808455F8, &lit_4305);
#pragma pop

/* 808455FC-80845600 000150 0004+00 14/51 0/0 0/0 .rodata          @4306 */
SECTION_RODATA static u8 const lit_4306[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x808455FC, &lit_4306);

/* 80845600-80845604 000154 0004+00 0/1 0/0 0/0 .rodata          @4307 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4307 = 20.0f / 17.0f;
COMPILER_STRIP_GATE(0x80845600, &lit_4307);
#pragma pop

/* 80845604-8084560C 000158 0004+04 0/1 0/0 0/0 .rodata          @4308 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4308[1 + 1 /* padding */] = {
    5.5f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x80845604, &lit_4308);
#pragma pop

/* 8084560C-80845614 000160 0008+00 0/8 0/0 0/0 .rodata          @4309 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4309[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8084560C, &lit_4309);
#pragma pop

/* 80845614-8084561C 000168 0008+00 0/8 0/0 0/0 .rodata          @4310 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4310[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80845614, &lit_4310);
#pragma pop

/* 8084561C-80845624 000170 0008+00 0/8 0/0 0/0 .rodata          @4311 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4311[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8084561C, &lit_4311);
#pragma pop

/* 80845624-80845628 000178 0004+00 0/1 0/0 0/0 .rodata          @4312 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4312 = 6.0f / 5.0f;
COMPILER_STRIP_GATE(0x80845624, &lit_4312);
#pragma pop

/* 80845628-8084562C 00017C 0004+00 0/4 0/0 0/0 .rodata          @4313 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4313 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x80845628, &lit_4313);
#pragma pop

/* 8084562C-80845634 000180 0008+00 3/15 0/0 0/0 .rodata          @4315 */
SECTION_RODATA static u8 const lit_4315[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8084562C, &lit_4315);

/* 80837F2C-8083836C 0000EC 0440+00 1/1 0/0 0/0 .text            setReinPos__13daHorseRein_cFi */
void daHorseRein_c::setReinPos(int param_0) {
    // NONMATCHING
}

/* 8083836C-808383A8 00052C 003C+00 7/7 0/0 0/0 .text            __dt__4cXyzFv */
// cXyz::~cXyz() {
extern "C" void __dt__4cXyzFv() {
    // NONMATCHING
}

/* 808383A8-80838498 000568 00F0+00 2/2 0/0 0/0 .text            setReinPosPart__13daHorseRein_cFi
 */
void daHorseRein_c::setReinPosPart(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845634-80845638 000188 0004+00 0/4 0/0 0/0 .rodata          @4465 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4465 = 100.0f;
COMPILER_STRIP_GATE(0x80845634, &lit_4465);
#pragma pop

/* 80845638-8084563C 00018C 0004+00 0/5 0/0 0/0 .rodata          @4466 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4466 = 200.0f;
COMPILER_STRIP_GATE(0x80845638, &lit_4466);
#pragma pop

/* 8084563C-80845640 000190 0004+00 0/3 0/0 0/0 .rodata          @4467 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4467 = 25.0f;
COMPILER_STRIP_GATE(0x8084563C, &lit_4467);
#pragma pop

/* 80845640-80845644 000194 0004+00 0/2 0/0 0/0 .rodata          @4468 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4468 = 5.0f;
COMPILER_STRIP_GATE(0x80845640, &lit_4468);
#pragma pop

/* 808458D4-808458E0 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 808458E0-808458F4 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */
#pragma push
#pragma force_active on
SECTION_DATA static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};
#pragma pop

/* 808458F4-808458F8 000020 0004+00 1/2 0/0 0/0 .data            l_autoUpHeight */
SECTION_DATA static f32 l_autoUpHeight = 50.0f;

/* 808458F8-8084593C 000024 0044+00 0/1 0/0 0/0 .data            l_cylSrc */
#pragma push
#pragma force_active on
static dCcD_SrcCyl l_cylSrc = {
    {
        {0x0, {{AT_TYPE_HORSE, 0x1, 0x12}, {0xd8fbfdff, 0x9}, 0x79}}, // mObj
        {dCcD_SE_HARD_BODY, 0x1, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x226}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        50.0f, // mRadius
        230.0f // mHeight
    } // mCyl
};
#pragma pop

/* 8084593C-8084597C 000068 0040+00 0/1 0/0 0/0 .data            l_sphSrc */
#pragma push
#pragma force_active on
static dCcD_SrcSph l_sphSrc = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x9}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x226}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 35.0f} // mSph
    } // mSphAttr
};
#pragma pop

/* 80845A30-80845A34 00015C 0004+00 1/1 0/0 0/0 .data            reinLineColor$10541 */
SECTION_DATA static u8 reinLineColor[4] = {
    0x00,
    0x00,
    0x00,
    0xFF,
};

/* 80838498-80838750 000658 02B8+00 2/2 0/0 0/0 .text
 * coHitCallbackBoarJump__9daHorse_cFP10fopAc_ac_c              */
void daHorse_c::coHitCallbackBoarJump(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80838750-80838798 000910 0048+00 1/0 0/0 0/0 .text            __dt__8cM3dGPlaFv */
// cM3dGPla::~cM3dGPla() {
extern "C" void __dt__8cM3dGPlaFv() {
    // NONMATCHING
}

/* 80838798-80838904 000958 016C+00 1/1 0/0 0/0 .text
 * coHitCallbackBoarHit__9daHorse_cFP10fopAc_ac_cP12dCcD_GObjInf */
void daHorse_c::coHitCallbackBoarHit(fopAc_ac_c* param_0, dCcD_GObjInf* param_1) {
    // NONMATCHING
}

/* 80838904-80838A20 000AC4 011C+00 2/2 0/0 0/0 .text
 * coHitCallbackCowHit__9daHorse_cFP10fopAc_ac_c                */
void daHorse_c::coHitCallbackCowHit(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80838A20-80838A44 000BE0 0024+00 1/1 0/0 0/0 .text
 * daHorse_coHitCallbackBoarJump__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daHorse_coHitCallbackBoarJump(fopAc_ac_c* param_0, dCcD_GObjInf* param_1,
                                              fopAc_ac_c* param_2, dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* 80838A44-80838A68 000C04 0024+00 1/1 0/0 0/0 .text
 * daHorse_coHitCallbackCowHit__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daHorse_coHitCallbackCowHit(fopAc_ac_c* param_0, dCcD_GObjInf* param_1,
                                            fopAc_ac_c* param_2, dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* 80838A68-80838AC4 000C28 005C+00 1/1 0/0 0/0 .text
 * daHorse_coHitCallbackAll__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daHorse_coHitCallbackAll(fopAc_ac_c* param_0, dCcD_GObjInf* param_1,
                                         fopAc_ac_c* param_2, dCcD_GObjInf* param_3) {
    // NONMATCHING
}

/* 80838AC4-80838B78 000C84 00B4+00 1/1 0/0 0/0 .text daHorse_searchEnemy__FP10fopAc_ac_cPv */
static void daHorse_searchEnemy(fopAc_ac_c* param_0, void* param_1) {
    // NONMATCHING
}

/* 80838B78-80838F3C 000D38 03C4+00 1/1 0/0 0/0 .text            modelCallBack__9daHorse_cFi */
void daHorse_c::modelCallBack(int param_0) {
    // NONMATCHING
}

/* 80838F3C-80838F80 0010FC 0044+00 1/1 0/0 0/0 .text            daHorse_modelCallBack__FP8J3DJointi
 */
static void daHorse_modelCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* 80838F80-80838F98 001140 0018+00 1/1 0/0 0/0 .text daHorse_searchSingleBoar__FP10fopAc_ac_cPv
 */
static void daHorse_searchSingleBoar(fopAc_ac_c* param_0, void* param_1) {
    // NONMATCHING
}

/* 80838F98-808392D8 001158 0340+00 1/1 0/0 0/0 .text            createHeap__9daHorse_cFv */
void daHorse_c::createHeap() {
    // NONMATCHING
}

/* 808392D8-808392DC 001498 0004+00 1/1 0/0 0/0 .text            __ct__4cXyzFv */
// cXyz::cXyz()
extern "C" void __ct__4cXyzFv() {
    /* empty function */
}

/* 808392DC-80839348 00149C 006C+00 1/0 0/0 0/0 .text
 * __dt__73J3DMtxCalcNoAnm<27J3DMtxCalcCalcTransformMaya,24J3DMtxCalcJ3DSysInitMaya>Fv */
extern "C" void func_808392DC(void* _this) {
    // NONMATCHING
}

/* 80839348-808393A4 001508 005C+00 1/0 0/0 0/0 .text            __dt__19J3DMtxCalcNoAnmBaseFv */
// J3DMtxCalcNoAnmBase::~J3DMtxCalcNoAnmBase() {
extern "C" void __dt__19J3DMtxCalcNoAnmBaseFv() {
    // NONMATCHING
}

/* 808393A4-808393EC 001564 0048+00 1/0 0/0 0/0 .text            __dt__10J3DMtxCalcFv */
// J3DMtxCalc::~J3DMtxCalc() {
extern "C" void __dt__10J3DMtxCalcFv() {
    // NONMATCHING
}

/* 808393EC-8083940C 0015AC 0020+00 1/1 0/0 0/0 .text            daHorse_createHeap__FP10fopAc_ac_c
 */
static void daHorse_createHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8084585C-8084585C 0003B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8084585C = "F_SP108";
SECTION_DEAD static char const* const stringBase_80845864 = "F_SP104";
#pragma pop

/* 8083940C-80839498 0015CC 008C+00 1/1 0/0 0/0 .text            checkEnding__9daHorse_cFv */
void daHorse_c::checkEnding() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845644-80845648 000198 0004+00 1/5 0/0 0/0 .rodata          @5176 */
SECTION_RODATA static f32 const lit_5176 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x80845644, &lit_5176);

/* 80845648-8084564C 00019C 0004+00 0/3 0/0 0/0 .rodata          @5177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5177 = 60.0f;
COMPILER_STRIP_GATE(0x80845648, &lit_5177);
#pragma pop

/* 8084564C-80845650 0001A0 0004+00 1/2 0/0 0/0 .rodata          @5178 */
SECTION_RODATA static f32 const lit_5178 = 150.0f;
COMPILER_STRIP_GATE(0x8084564C, &lit_5178);

/* 80845650-80845654 0001A4 0004+00 0/2 0/0 0/0 .rodata          @5179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5179 = 240.0f;
COMPILER_STRIP_GATE(0x80845650, &lit_5179);
#pragma pop

/* 80845654-80845658 0001A8 0004+00 1/4 0/0 0/0 .rodata          @5180 */
SECTION_RODATA static f32 const lit_5180 = 500.0f;
COMPILER_STRIP_GATE(0x80845654, &lit_5180);

/* 80845658-8084565C 0001AC 0004+00 0/3 0/0 0/0 .rodata          @5181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5181 = -5.0f;
COMPILER_STRIP_GATE(0x80845658, &lit_5181);
#pragma pop

/* 8084565C-80845660 0001B0 0004+00 0/3 0/0 0/0 .rodata          @5182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5182 = 35.0f;
COMPILER_STRIP_GATE(0x8084565C, &lit_5182);
#pragma pop

/* 80845660-80845664 0001B4 0004+00 0/1 0/0 0/0 .rodata          @5183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5183 = 55.0f;
COMPILER_STRIP_GATE(0x80845660, &lit_5183);
#pragma pop

/* 8084585C-8084585C 0003B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_8084586C = "F_SP109";
SECTION_DEAD static char const* const stringBase_80845874 = "";
SECTION_DEAD static char const* const stringBase_80845875 = "F_SP00";
SECTION_DEAD static char const* const stringBase_8084587C = "F_SP103";
SECTION_DEAD static char const* const stringBase_80845884 = "F_SP113";
SECTION_DEAD static char const* const stringBase_8084588C = "F_SP102";
SECTION_DEAD static char const* const stringBase_80845894 = "D_MN09B";
SECTION_DEAD static char const* const stringBase_8084589C = "F_SP123";
#pragma pop

/* 80839498-80839CFC 001658 0864+00 1/1 0/0 0/0 .text            create__9daHorse_cFv */
void daHorse_c::create() {
    // NONMATCHING
}

/* 80839CFC-80839D1C 001EBC 0020+00 1/0 0/0 0/0 .text            daHorse_Create__FP10fopAc_ac_c */
static void daHorse_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80839D1C-80839EBC 001EDC 01A0+00 2/2 0/0 0/0 .text            setBasAnime__9daHorse_cFi */
void daHorse_c::setBasAnime(int param_0) {
    // NONMATCHING
}

/* 80839EBC-80839ED4 00207C 0018+00 2/2 0/0 0/0 .text            resetBasAnime__9daHorse_cFv */
void daHorse_c::resetBasAnime() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845664-80845668 0001B8 0004+00 0/9 0/0 0/0 .rodata          @5529 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5529 = -1.0f;
COMPILER_STRIP_GATE(0x80845664, &lit_5529);
#pragma pop

/* 80845668-8084566C 0001BC 0004+00 0/3 0/0 0/0 .rodata          @5530 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5530 = 8.0f;
COMPILER_STRIP_GATE(0x80845668, &lit_5530);
#pragma pop

/* 8084566C-80845670 0001C0 0004+00 1/9 0/0 0/0 .rodata          @5531 */
SECTION_RODATA static f32 const lit_5531 = 0.5f;
COMPILER_STRIP_GATE(0x8084566C, &lit_5531);

/* 80839ED4-8083A20C 002094 0338+00 1/1 0/0 0/0 .text            setDoubleAnime__9daHorse_cFfffUsUsf
 */
void daHorse_c::setDoubleAnime(f32 param_0, f32 param_1, f32 param_2, u16 param_3, u16 param_4,
                                   f32 param_5) {
    // NONMATCHING
}

/* 8083A20C-8083A3C4 0023CC 01B8+00 10/10 0/0 0/0 .text setSingleAnime__9daHorse_cFUsffsfi */
void daHorse_c::setSingleAnime(u16 param_0, f32 param_1, f32 param_2, s16 param_3, f32 param_4,
                                   int param_5) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845670-80845674 0001C4 0004+00 0/3 0/0 0/0 .rodata          @5629 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5629 = 18.0f;
COMPILER_STRIP_GATE(0x80845670, &lit_5629);
#pragma pop

/* 80845674-80845678 0001C8 0004+00 0/1 0/0 0/0 .rodata          @5630 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_5630 = 0x3C449BA6;
COMPILER_STRIP_GATE(0x80845674, &lit_5630);
#pragma pop

/* 8083A3C4-8083A5AC 002584 01E8+00 1/1 0/0 0/0 .text            animePlay__9daHorse_cFv */
void daHorse_c::animePlay() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845678-8084567C 0001CC 0004+00 3/13 0/0 0/0 .rodata          @5722 */
SECTION_RODATA static f32 const lit_5722 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80845678, &lit_5722);

/* 8083A5AC-8083A890 00276C 02E4+00 1/1 0/0 0/0 .text            checkDemoAction__9daHorse_cFv */
void daHorse_c::checkDemoAction() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8084567C-80845680 0001D0 0004+00 0/3 0/0 0/0 .rodata          @5814 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5814 = 400.0f;
COMPILER_STRIP_GATE(0x8084567C, &lit_5814);
#pragma pop

/* 8083A890-8083AC7C 002A50 03EC+00 1/1 0/0 0/0 .text            setStickRodeoMove__9daHorse_cFv */
void daHorse_c::setStickRodeoMove() {
    // NONMATCHING
}

/* 8083AC7C-8083ACEC 002E3C 0070+00 2/2 0/0 0/0 .text            setStickCallMove__9daHorse_cFv */
void daHorse_c::setStickCallMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845680-80845684 0001D4 0004+00 0/1 0/0 0/0 .rodata          @5889 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5889 = 10000.0f;
COMPILER_STRIP_GATE(0x80845680, &lit_5889);
#pragma pop

/* 80845684-80845688 0001D8 0004+00 0/1 0/0 0/0 .rodata          @5890 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_5890 = 1600.0f;
COMPILER_STRIP_GATE(0x80845684, &lit_5890);
#pragma pop

/* 8083ACEC-8083AEC0 002EAC 01D4+00 2/2 0/0 0/0 .text setDemoMoveData__9daHorse_cFPUlPC4cXyz */
void daHorse_c::setDemoMoveData(u32* param_0, cXyz const* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8084585C-8084585C 0003B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_808458A4 = "Horse";
SECTION_DEAD static char const* const stringBase_808458AA = "pos";
SECTION_DEAD static char const* const stringBase_808458AE = "angle";
SECTION_DEAD static char const* const stringBase_808458B4 = "prm0";
SECTION_DEAD static char const* const stringBase_808458B9 = "ride";
SECTION_DEAD static char const* const stringBase_808458BE = "disXZ";
SECTION_DEAD static char const* const stringBase_808458C4 = "disY";
#pragma pop

/* 8083AEC0-8083B578 003080 06B8+00 1/1 0/0 0/0 .text            setDemoData__9daHorse_cFv */
void daHorse_c::setDemoData() {
    // NONMATCHING
}

/* 8083B578-8083B600 003738 0088+00 4/4 0/0 0/0 .text            acceptPlayerRide__9daHorse_cFv */
void daHorse_c::acceptPlayerRide() {
    // NONMATCHING
}

/* 8083B600-8083B828 0037C0 0228+00 1/1 0/0 0/0 .text            setStickData__9daHorse_cFv */
void daHorse_c::setStickData() {
    // NONMATCHING
}

/* 8083B828-8083B82C 0039E8 0004+00 1/1 0/0 0/0 .text            setTurnStartVibration__9daHorse_cFv
 */
void daHorse_c::setTurnStartVibration() {
    /* empty function */
}

/* 8083B82C-8083B830 0039EC 0004+00 1/1 0/0 0/0 .text            setTurnVibration__9daHorse_cFv */
void daHorse_c::setTurnVibration() {
    /* empty function */
}

/* ############################################################################################## */
/* 80845688-80845698 0001DC 0010+00 0/1 0/0 0/0 .rodata          footEffectRate$6303 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const footEffectRate[16] = {
    0x3E, 0x8A, 0x3D, 0x71, 0x3E, 0xCC, 0xCC, 0xCD, 0x3F, 0x66, 0x66, 0x66, 0x3E, 0x2E, 0x14, 0x7B,
};
COMPILER_STRIP_GATE(0x80845688, &footEffectRate);
#pragma pop

/* 80845698-8084569C 0001EC 0004+00 0/3 0/0 0/0 .rodata          @6389 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6389 = 10.0f;
COMPILER_STRIP_GATE(0x80845698, &lit_6389);
#pragma pop

/* 8084569C-808456A0 0001F0 0004+00 0/1 0/0 0/0 .rodata          @6390 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6390 = 34.0f;
COMPILER_STRIP_GATE(0x8084569C, &lit_6390);
#pragma pop

/* 808456A0-808456A4 0001F4 0004+00 0/2 0/0 0/0 .rodata          @6391 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6391 = 12.0f;
COMPILER_STRIP_GATE(0x808456A0, &lit_6391);
#pragma pop

/* 808456A4-808456A8 0001F8 0004+00 0/2 0/0 0/0 .rodata          @6392 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6392 = 14.0f;
COMPILER_STRIP_GATE(0x808456A4, &lit_6392);
#pragma pop

/* 808456A8-808456AC 0001FC 0004+00 0/1 0/0 0/0 .rodata          @6393 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6393 = 19.0f;
COMPILER_STRIP_GATE(0x808456A8, &lit_6393);
#pragma pop

/* 8083B830-8083BF48 0039F0 0718+00 6/6 0/0 0/0 .text            setMoveAnime__9daHorse_cFf */
void daHorse_c::setMoveAnime(f32 param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808456AC-808456B0 000200 0004+00 0/1 0/0 0/0 .rodata          @6871 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6871 = -33500.0f;
COMPILER_STRIP_GATE(0x808456AC, &lit_6871);
#pragma pop

/* 808456B0-808456B4 000204 0004+00 0/1 0/0 0/0 .rodata          @6872 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6872 = -20500.0f;
COMPILER_STRIP_GATE(0x808456B0, &lit_6872);
#pragma pop

/* 808456B4-808456B8 000208 0004+00 0/2 0/0 0/0 .rodata          @6873 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6873 = 300.0f;
COMPILER_STRIP_GATE(0x808456B4, &lit_6873);
#pragma pop

/* 808456B8-808456BC 00020C 0004+00 0/1 0/0 0/0 .rodata          @6874 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6874 = 23716.0f;
COMPILER_STRIP_GATE(0x808456B8, &lit_6874);
#pragma pop

/* 808456BC-808456C0 000210 0004+00 0/2 0/0 0/0 .rodata          @6875 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6875 = 50.0f;
COMPILER_STRIP_GATE(0x808456BC, &lit_6875);
#pragma pop

/* 808456C0-808456C4 000214 0004+00 0/1 0/0 0/0 .rodata          @6876 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_6876 = 0x43360B61;
COMPILER_STRIP_GATE(0x808456C0, &lit_6876);
#pragma pop

/* 808456C4-808456C8 000218 0004+00 0/1 0/0 0/0 .rodata          @6877 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6877 = 101.0f;
COMPILER_STRIP_GATE(0x808456C4, &lit_6877);
#pragma pop

/* 808456C8-808456CC 00021C 0004+00 0/1 0/0 0/0 .rodata          @6878 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_6878 = -200.0f;
COMPILER_STRIP_GATE(0x808456C8, &lit_6878);
#pragma pop

/* 8083BF48-8083CA80 004108 0B38+00 6/6 0/0 0/0 .text            checkHorseNoMove__9daHorse_cFi */
void daHorse_c::checkHorseNoMove(int param_0) {
    // NONMATCHING
}

/* 8083CA80-8083CB38 004C40 00B8+00 1/1 0/0 0/0 .text            checkTurnPlayerState__9daHorse_cFv
 */
void daHorse_c::checkTurnPlayerState() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808456CC-808456D0 000220 0004+00 0/1 0/0 0/0 .rodata          @7216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7216 = 1000000.0f;
COMPILER_STRIP_GATE(0x808456CC, &lit_7216);
#pragma pop

/* 808456D0-808456D4 000224 0004+00 0/1 0/0 0/0 .rodata          @7217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7217 = 2250000.0f;
COMPILER_STRIP_GATE(0x808456D0, &lit_7217);
#pragma pop

/* 808456D4-808456D8 000228 0004+00 1/3 0/0 0/0 .rodata          @7218 */
SECTION_RODATA static f32 const lit_7218 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x808456D4, &lit_7218);

/* 808456D8-808456DC 00022C 0004+00 0/3 0/0 0/0 .rodata          @7219 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7219 = 4.0f / 5.0f;
COMPILER_STRIP_GATE(0x808456D8, &lit_7219);
#pragma pop

/* 8083CB38-8083D748 004CF8 0C10+00 2/2 0/0 0/0 .text            setSpeedAndAngle__9daHorse_cFv */
void daHorse_c::setSpeedAndAngle() {
    // NONMATCHING
}

/* 8083D748-8083D774 005908 002C+00 1/1 0/0 0/0 .text            checkWaitTurn__9daHorse_cCFv */
void daHorse_c::checkWaitTurn() const {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808456DC-808456E0 000230 0004+00 1/2 0/0 0/0 .rodata          @7274 */
SECTION_RODATA static f32 const lit_7274 = -1000000000.0f;
COMPILER_STRIP_GATE(0x808456DC, &lit_7274);

/* 8083D774-8083D918 005934 01A4+00 2/2 0/0 0/0 .text            setRoomInfo__9daHorse_cFi */
void daHorse_c::setRoomInfo(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808456E0-808456E4 000234 0004+00 0/1 0/0 0/0 .rodata          @7300 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7300 = -15.0f;
COMPILER_STRIP_GATE(0x808456E0, &lit_7300);
#pragma pop

/* 80845BB8-80845BBC 000008 0001+03 6/6 0/0 0/0 .bss             @1109 */
static u8 lit_1109[1 + 3 /* padding */];

/* 80845BBC-80845BC0 00000C 0001+03 0/0 0/0 0/0 .bss             @1107 */
#pragma push
#pragma force_active on
static u8 lit_1107[1 + 3 /* padding */];
#pragma pop

/* 80845BC0-80845BC4 000010 0001+03 0/0 0/0 0/0 .bss             @1105 */
#pragma push
#pragma force_active on
static u8 lit_1105[1 + 3 /* padding */];
#pragma pop

/* 80845BC4-80845BC8 000014 0001+03 0/0 0/0 0/0 .bss             @1104 */
#pragma push
#pragma force_active on
static u8 lit_1104[1 + 3 /* padding */];
#pragma pop

/* 80845BC8-80845BCC 000018 0001+03 0/0 0/0 0/0 .bss             @1099 */
#pragma push
#pragma force_active on
static u8 lit_1099[1 + 3 /* padding */];
#pragma pop

/* 80845BCC-80845BD0 00001C 0001+03 0/0 0/0 0/0 .bss             @1097 */
#pragma push
#pragma force_active on
static u8 lit_1097[1 + 3 /* padding */];
#pragma pop

/* 80845BD0-80845BD4 000020 0001+03 0/0 0/0 0/0 .bss             @1095 */
#pragma push
#pragma force_active on
static u8 lit_1095[1 + 3 /* padding */];
#pragma pop

/* 80845BD4-80845BD8 000024 0001+03 0/0 0/0 0/0 .bss             @1094 */
#pragma push
#pragma force_active on
static u8 lit_1094[1 + 3 /* padding */];
#pragma pop

/* 80845BD8-80845BDC 000028 0001+03 0/0 0/0 0/0 .bss             @1057 */
#pragma push
#pragma force_active on
static u8 lit_1057[1 + 3 /* padding */];
#pragma pop

/* 80845BDC-80845BE0 00002C 0001+03 0/0 0/0 0/0 .bss             @1055 */
#pragma push
#pragma force_active on
static u8 lit_1055[1 + 3 /* padding */];
#pragma pop

/* 80845BE0-80845BE4 000030 0001+03 0/0 0/0 0/0 .bss             @1053 */
#pragma push
#pragma force_active on
static u8 lit_1053[1 + 3 /* padding */];
#pragma pop

/* 80845BE4-80845BE8 000034 0001+03 0/0 0/0 0/0 .bss             @1052 */
#pragma push
#pragma force_active on
static u8 lit_1052[1 + 3 /* padding */];
#pragma pop

/* 80845BE8-80845BEC 000038 0001+03 0/0 0/0 0/0 .bss             @1014 */
#pragma push
#pragma force_active on
static u8 lit_1014[1 + 3 /* padding */];
#pragma pop

/* 80845BEC-80845BF0 00003C 0001+03 0/0 0/0 0/0 .bss             @1012 */
#pragma push
#pragma force_active on
static u8 lit_1012[1 + 3 /* padding */];
#pragma pop

/* 80845BF0-80845BF4 000040 0001+03 0/0 0/0 0/0 .bss             @1010 */
#pragma push
#pragma force_active on
static u8 lit_1010[1 + 3 /* padding */];
#pragma pop

/* 80845BF4-80845BF8 000044 0001+03 0/0 0/0 0/0 .bss             @1009 */
#pragma push
#pragma force_active on
static u8 lit_1009[1 + 3 /* padding */];
#pragma pop

/* 80845BF8-80845C04 000048 000C+00 0/1 0/0 0/0 .bss             @4179 */
#pragma push
#pragma force_active on
static u8 lit_4179[12];
#pragma pop

/* 80845C04-80845C10 000054 000C+00 1/2 0/0 0/0 .bss             l_frontFootOffset */
static u8 l_frontFootOffset[12];

/* 80845C10-80845C1C 000060 000C+00 0/1 0/0 0/0 .bss             @4180 */
#pragma push
#pragma force_active on
static u8 lit_4180[12];
#pragma pop

/* 80845C1C-80845C28 00006C 000C+00 1/2 0/0 0/0 .bss             l_backFootOffset */
static u8 l_backFootOffset[12];

/* 80845C28-80845C38 000078 000C+04 0/1 0/0 0/0 .bss             @7279 */
#pragma push
#pragma force_active on
static u8 lit_7279[12 + 4 /* padding */];
#pragma pop

/* 80845C38-80845C44 000088 000C+00 0/1 0/0 0/0 .bss             localEyePos$7278 */
#pragma push
#pragma force_active on
static u8 localEyePos[12];
#pragma pop

/* 8083D918-8083D9D8 005AD8 00C0+00 2/2 0/0 0/0 .text            setBodyPart__9daHorse_cFv */
void daHorse_c::setBodyPart() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808456E4-808456E8 000238 0004+00 0/2 0/0 0/0 .rodata          @7362 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7362 = 4.0f;
COMPILER_STRIP_GATE(0x808456E4, &lit_7362);
#pragma pop

/* 808456E8-808456EC 00023C 0004+00 0/1 0/0 0/0 .rodata          @7363 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7363 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x808456E8, &lit_7363);
#pragma pop

/* 808456EC-808456F0 000240 0004+00 0/1 0/0 0/0 .rodata          @7364 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7364 = 140.0f;
COMPILER_STRIP_GATE(0x808456EC, &lit_7364);
#pragma pop

/* 8083D9D8-8083DC58 005B98 0280+00 2/2 0/0 0/0 .text            setMatrix__9daHorse_cFv */
void daHorse_c::setMatrix() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808456F0-808456FC 000244 000C+00 0/1 0/0 0/0 .rodata          @7373 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7373[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808456F0, &lit_7373);
#pragma pop

/* 808456FC-80845704 000250 0006+02 0/1 0/0 0/0 .rodata          @7374 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_7374[6 + 2 /* padding */] = {
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    /* padding */
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x808456FC, &lit_7374);
#pragma pop

/* 80845704-80845708 000258 0004+00 0/1 0/0 0/0 .rodata          @7439 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7439 = 1200.0f;
COMPILER_STRIP_GATE(0x80845704, &lit_7439);
#pragma pop

/* 80845708-8084570C 00025C 0004+00 0/1 0/0 0/0 .rodata          @7440 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7440 = 700.0f;
COMPILER_STRIP_GATE(0x80845708, &lit_7440);
#pragma pop

/* 8083DC58-8083DEEC 005E18 0294+00 1/1 0/0 0/0 .text            setDashEffect__9daHorse_cFPUl */
void daHorse_c::setDashEffect(u32* param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8084570C-80845710 000260 0004+00 0/5 0/0 0/0 .rodata          @7691 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7691 = 2.0f;
COMPILER_STRIP_GATE(0x8084570C, &lit_7691);
#pragma pop

/* 80845710-80845714 000264 0004+00 0/1 0/0 0/0 .rodata          @7692 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7692 = 255.0f;
COMPILER_STRIP_GATE(0x80845710, &lit_7692);
#pragma pop

/* 80845714-80845718 000268 0004+00 0/3 0/0 0/0 .rodata          @7693 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7693 = 1.5f;
COMPILER_STRIP_GATE(0x80845714, &lit_7693);
#pragma pop

/* 80845718-8084571C 00026C 0004+00 0/1 0/0 0/0 .rodata          @7694 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7694 = 9.0f / 5.0f;
COMPILER_STRIP_GATE(0x80845718, &lit_7694);
#pragma pop

/* 8084571C-80845720 000270 0004+00 0/1 0/0 0/0 .rodata          @7695 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7695 = -0.75f;
COMPILER_STRIP_GATE(0x8084571C, &lit_7695);
#pragma pop

/* 80845720-80845724 000274 0004+00 0/2 0/0 0/0 .rodata          @7696 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7696 = 0.75f;
COMPILER_STRIP_GATE(0x80845720, &lit_7696);
#pragma pop

/* 80845C44-80845C54 000094 000C+04 0/1 0/0 0/0 .bss             @7469 */
#pragma push
#pragma force_active on
static u8 lit_7469[12 + 4 /* padding */];
#pragma pop

/* 80845C54-80845C60 0000A4 000C+00 0/1 0/0 0/0 .bss             runScale$7468 */
#pragma push
#pragma force_active on
static u8 runScale[12];
#pragma pop

/* 80845C60-80845C70 0000B0 000C+04 0/1 0/0 0/0 .bss             @7473 */
#pragma push
#pragma force_active on
static u8 lit_7473[12 + 4 /* padding */];
#pragma pop

/* 80845C70-80845C7C 0000C0 000C+00 0/1 0/0 0/0 .bss             landScale$7472 */
#pragma push
#pragma force_active on
static u8 landScale[12];
#pragma pop

/* 80845C7C-80845C8C 0000CC 000C+04 0/1 0/0 0/0 .bss             @7477 */
#pragma push
#pragma force_active on
static u8 lit_7477[12 + 4 /* padding */];
#pragma pop

/* 80845C8C-80845C98 0000DC 000C+00 0/1 0/0 0/0 .bss             grassRunScale$7476 */
#pragma push
#pragma force_active on
static u8 grassRunScale[12];
#pragma pop

/* 80845C98-80845CA8 0000E8 000C+04 0/1 0/0 0/0 .bss             @7481 */
#pragma push
#pragma force_active on
static u8 lit_7481[12 + 4 /* padding */];
#pragma pop

/* 80845CA8-80845CB4 0000F8 000C+00 0/1 0/0 0/0 .bss             waterDirection$7480 */
#pragma push
#pragma force_active on
static u8 waterDirection[12];
#pragma pop

/* 8083DEEC-8083E4D8 0060AC 05EC+00 1/1 0/0 0/0 .text            setEffect__9daHorse_cFv */
void daHorse_c::setEffect() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845724-80845730 000278 000C+00 0/1 0/0 0/0 .rodata          localHeadPos$7706 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const localHeadPos[12] = {
    0x41, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80845724, &localHeadPos);
#pragma pop

/* 80845730-80845734 000284 0004+00 0/1 0/0 0/0 .rodata          @7747 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7747 = 170.0f;
COMPILER_STRIP_GATE(0x80845730, &lit_7747);
#pragma pop

/* 80845734-80845738 000288 0004+00 0/1 0/0 0/0 .rodata          @7748 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_7748 = 83.0f;
COMPILER_STRIP_GATE(0x80845734, &lit_7748);
#pragma pop

/* 80845738-8084573C 00028C 0004+00 1/3 0/0 0/0 .rodata          @7749 */
SECTION_RODATA static f32 const lit_7749 = 80.0f;
COMPILER_STRIP_GATE(0x80845738, &lit_7749);

/* 8083E4D8-8083E6E8 006698 0210+00 1/1 0/0 0/0 .text            setCollision__9daHorse_cFv */
void daHorse_c::setCollision() {
    // NONMATCHING
}

/* 8083E6E8-8083E760 0068A8 0078+00 1/1 0/0 0/0 .text            autoGroundHit__9daHorse_cFv */
void daHorse_c::autoGroundHit() {
    // NONMATCHING
}

/* 8083E760-8083E8A4 006920 0144+00 1/1 0/0 0/0 .text            setTailAngle__9daHorse_cFv */
void daHorse_c::setTailAngle() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8084573C-80845740 000290 0004+00 1/1 0/0 0/0 .rodata          @7848 */
SECTION_RODATA static f32 const lit_7848 = 250000.0f;
COMPILER_STRIP_GATE(0x8084573C, &lit_7848);

/* 8083E8A4-8083EA78 006A64 01D4+00 1/1 0/0 0/0 .text            setNeckAngle__9daHorse_cFv */
void daHorse_c::setNeckAngle() {
    // NONMATCHING
}

/* 8083EA78-8083EB10 006C38 0098+00 1/1 0/0 0/0 .text            copyFootMatrix__9daHorse_cFv */
void daHorse_c::copyFootMatrix() {
    // NONMATCHING
}

/* 8083EB10-8083ED88 006CD0 0278+00 1/1 0/0 0/0 .text            setFootMatrix__9daHorse_cFv */
void daHorse_c::setFootMatrix() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845740-80845744 000294 0004+00 0/1 0/0 0/0 .rodata          @8279 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8279 = 0x3BA3D70A;
COMPILER_STRIP_GATE(0x80845740, &lit_8279);
#pragma pop

/* 8083ED88-8083F3B0 006F48 0628+00 1/1 0/0 0/0 .text            setLegAngle__9daHorse_cFfiiPs */
void daHorse_c::setLegAngle(f32 param_0, int param_1, int param_2, s16* param_3) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845744-80845748 000298 0004+00 0/1 0/0 0/0 .rodata          @8509 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8509 = 120.0f;
COMPILER_STRIP_GATE(0x80845744, &lit_8509);
#pragma pop

/* 80845748-8084574C 00029C 0004+00 0/2 0/0 0/0 .rodata          @8510 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8510 = 1000.0f;
COMPILER_STRIP_GATE(0x80845748, &lit_8510);
#pragma pop

/* 8084574C-80845750 0002A0 0004+00 0/4 0/0 0/0 .rodata          @8511 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8511 = 30.0f;
COMPILER_STRIP_GATE(0x8084574C, &lit_8511);
#pragma pop

/* 8083F3B0-8083F9AC 007570 05FC+00 1/1 0/0 0/0 .text            footBgCheck__9daHorse_cFv */
void daHorse_c::footBgCheck() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845750-80845754 0002A4 0004+00 0/1 0/0 0/0 .rodata          @8623 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8623 = 63.0f;
COMPILER_STRIP_GATE(0x80845750, &lit_8623);
#pragma pop

/* 80845754-80845758 0002A8 0004+00 0/1 0/0 0/0 .rodata          @8624 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8624 = 17.0f;
COMPILER_STRIP_GATE(0x80845754, &lit_8624);
#pragma pop

/* 80845758-8084575C 0002AC 0004+00 0/1 0/0 0/0 .rodata          @8625 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8625 = 11.0f;
COMPILER_STRIP_GATE(0x80845758, &lit_8625);
#pragma pop

/* 8084575C-80845760 0002B0 0004+00 0/1 0/0 0/0 .rodata          @8626 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8626 = -11.0f;
COMPILER_STRIP_GATE(0x8084575C, &lit_8626);
#pragma pop

/* 80845760-80845764 0002B4 0004+00 0/1 0/0 0/0 .rodata          @8627 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8627 = -35.0f;
COMPILER_STRIP_GATE(0x80845760, &lit_8627);
#pragma pop

/* 80845764-80845768 0002B8 0004+00 0/2 0/0 0/0 .rodata          @8628 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8628 = 8192.0f;
COMPILER_STRIP_GATE(0x80845764, &lit_8628);
#pragma pop

/* 80845768-8084576C 0002BC 0004+00 0/1 0/0 0/0 .rodata          @8629 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_8629 = 0x3A03126F;
COMPILER_STRIP_GATE(0x80845768, &lit_8629);
#pragma pop

/* 8084576C-80845770 0002C0 0004+00 0/3 0/0 0/0 .rodata          @8630 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8630 = 20.0f;
COMPILER_STRIP_GATE(0x8084576C, &lit_8630);
#pragma pop

/* 80845CB4-80845CC4 000104 000C+04 0/1 0/0 0/0 .bss             @8516 */
#pragma push
#pragma force_active on
static u8 lit_8516[12 + 4 /* padding */];
#pragma pop

/* 80845CC4-80845CD0 000114 000C+00 0/1 0/0 0/0 .bss             reinLeftStart$8515 */
#pragma push
#pragma force_active on
static u8 reinLeftStart[12];
#pragma pop

/* 80845CD0-80845CE0 000120 000C+04 0/1 0/0 0/0 .bss             @8520 */
#pragma push
#pragma force_active on
static u8 lit_8520[12 + 4 /* padding */];
#pragma pop

/* 80845CE0-80845CEC 000130 000C+00 0/1 0/0 0/0 .bss             reinRightStart$8519 */
#pragma push
#pragma force_active on
static u8 reinRightStart[12];
#pragma pop

/* 80845CEC-80845CFC 00013C 000C+04 0/1 0/0 0/0 .bss             @8524 */
#pragma push
#pragma force_active on
static u8 lit_8524[12 + 4 /* padding */];
#pragma pop

/* 80845CFC-80845D08 00014C 000C+00 0/1 0/0 0/0 .bss             localNeckLeft$8523 */
#pragma push
#pragma force_active on
static u8 localNeckLeft[12];
#pragma pop

/* 80845D08-80845D18 000158 000C+04 0/1 0/0 0/0 .bss             @8528 */
#pragma push
#pragma force_active on
static u8 lit_8528[12 + 4 /* padding */];
#pragma pop

/* 80845D18-80845D24 000168 000C+00 0/1 0/0 0/0 .bss             localNeckRight$8527 */
#pragma push
#pragma force_active on
static u8 localNeckRight[12];
#pragma pop

/* 8083F9AC-8083FDAC 007B6C 0400+00 2/2 0/0 0/0 .text            setReinPosMoveInit__9daHorse_cFi */
void daHorse_c::setReinPosMoveInit(int param_0) {
    // NONMATCHING
}

/* 8083FDAC-8083FEB4 007F6C 0108+00 2/2 0/0 0/0 .text            copyReinPos__9daHorse_cFv */
void daHorse_c::copyReinPos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845770-8084577C 0002C4 000C+00 1/1 0/0 0/0 .rodata          zeldaLocalLeft$8682 */
SECTION_RODATA static u8 const zeldaLocalLeft[12] = {
    0x40, 0x40, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0xC0, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80845770, &zeldaLocalLeft);

/* 8084577C-80845788 0002D0 000C+00 1/1 0/0 0/0 .rodata          zeldaLocalRight$8683 */
SECTION_RODATA static u8 const zeldaLocalRight[12] = {
    0x40, 0x40, 0x00, 0x00, 0xBF, 0x00, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x8084577C, &zeldaLocalRight);

/* 8083FEB4-8084010C 008074 0258+00 1/0 0/0 0/0 .text setReinPosHandSubstance__9daHorse_cFi */
void daHorse_c::setReinPosHandSubstance(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845788-8084578C 0002DC 0004+00 0/2 0/0 0/0 .rodata          @8805 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8805 = 29.0f;
COMPILER_STRIP_GATE(0x80845788, &lit_8805);
#pragma pop

/* 8084578C-80845790 0002E0 0004+00 0/2 0/0 0/0 .rodata          @8806 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8806 = -2.0f;
COMPILER_STRIP_GATE(0x8084578C, &lit_8806);
#pragma pop

/* 80845D24-80845D34 000174 000C+04 0/1 0/0 0/0 .bss             @8753 */
#pragma push
#pragma force_active on
static u8 lit_8753[12 + 4 /* padding */];
#pragma pop

/* 80845D34-80845D40 000184 000C+00 0/1 0/0 0/0 .bss             saddleLeft$8752 */
#pragma push
#pragma force_active on
static u8 saddleLeft[12];
#pragma pop

/* 80845D40-80845D50 000190 000C+04 0/1 0/0 0/0 .bss             @8757 */
#pragma push
#pragma force_active on
static u8 lit_8757[12 + 4 /* padding */];
#pragma pop

/* 80845D50-80845D5C 0001A0 000C+00 0/1 0/0 0/0 .bss             saddleRight$8756 */
#pragma push
#pragma force_active on
static u8 saddleRight[12];
#pragma pop

/* 8084010C-808402F8 0082CC 01EC+00 1/0 0/0 0/0 .text setReinPosNormalSubstance__9daHorse_cFv */
void daHorse_c::setReinPosNormalSubstance() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845790-80845794 0002E4 0004+00 0/1 0/0 0/0 .rodata          @8904 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8904 = 220.0f;
COMPILER_STRIP_GATE(0x80845790, &lit_8904);
#pragma pop

/* 80845794-80845798 0002E8 0004+00 0/1 0/0 0/0 .rodata          @8905 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_8905 = -170.0f;
COMPILER_STRIP_GATE(0x80845794, &lit_8905);
#pragma pop

/* 80845D5C-80845D6C 0001AC 000C+04 0/1 0/0 0/0 .bss             @8813 */
#pragma push
#pragma force_active on
static u8 lit_8813[12 + 4 /* padding */];
#pragma pop

/* 80845D6C-80845D78 0001BC 000C+00 0/1 0/0 0/0 .bss             localCenterPos$8812 */
#pragma push
#pragma force_active on
static u8 localCenterPos[12];
#pragma pop

/* 80845D78-80845D88 0001C8 000C+04 0/1 0/0 0/0 .bss             @8817 */
#pragma push
#pragma force_active on
static u8 lit_8817[12 + 4 /* padding */];
#pragma pop

/* 80845D88-80845D94 0001D8 000C+00 0/1 0/0 0/0 .bss             localFrontPos$8816 */
#pragma push
#pragma force_active on
static u8 localFrontPos[12];
#pragma pop

/* 80845D94-80845DA4 0001E4 000C+04 0/1 0/0 0/0 .bss             @8821 */
#pragma push
#pragma force_active on
static u8 lit_8821[12 + 4 /* padding */];
#pragma pop

/* 80845DA4-80845DB0 0001F4 000C+00 0/1 0/0 0/0 .bss             localBackPos$8820 */
#pragma push
#pragma force_active on
static u8 localBackPos[12];
#pragma pop

/* 808402F8-80840714 0084B8 041C+00 1/1 0/0 0/0 .text            bgCheck__9daHorse_cFv */
void daHorse_c::bgCheck() {
    // NONMATCHING
}

/* 80840714-808407B0 0088D4 009C+00 1/0 0/0 0/0 .text
 * checkSpecialWallHitSubstance__9daHorse_cCFRC4cXyz            */
void daHorse_c::checkSpecialWallHitSubstance(cXyz const& param_0) const {
    // NONMATCHING
}

/* 808407B0-80840800 008970 0050+00 3/3 0/0 0/0 .text            setServiceWaitTimer__9daHorse_cFv
 */
void daHorse_c::setServiceWaitTimer() {
    // NONMATCHING
}

/* 80840800-80840844 0089C0 0044+00 2/2 0/0 0/0 .text            checkServiceWaitAnime__9daHorse_cFv
 */
void daHorse_c::checkServiceWaitAnime() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845798-8084579C 0002EC 0004+00 1/1 0/0 0/0 .rodata          @8963 */
SECTION_RODATA static f32 const lit_8963 = 9.0f / 10.0f;
COMPILER_STRIP_GATE(0x80845798, &lit_8963);

/* 80840844-808408F0 008A04 00AC+00 2/2 0/0 0/0 .text            checkTurnInput__9daHorse_cFv */
void daHorse_c::checkTurnInput() {
    // NONMATCHING
}

/* 808408F0-808409C0 008AB0 00D0+00 2/2 0/0 0/0 .text            checkTgHitTurn__9daHorse_cFv */
void daHorse_c::checkTgHitTurn() {
    // NONMATCHING
}

/* 808409C0-80840B28 008B80 0168+00 3/3 0/0 0/0 .text checkTurnAfterFastMove__9daHorse_cFf */
void daHorse_c::checkTurnAfterFastMove(f32 param_0) {
    // NONMATCHING
}

/* 80840B28-80840B88 008CE8 0060+00 2/2 0/0 0/0 .text            setNeckAnimeMorf__9daHorse_cFv */
void daHorse_c::setNeckAnimeMorf() {
    // NONMATCHING
}

/* 80840B88-80840CA4 008D48 011C+00 4/4 0/0 0/0 .text            setNeckAnime__9daHorse_cFUsffs */
void daHorse_c::setNeckAnime(u16 param_0, f32 param_1, f32 param_2, s16 param_3) {
    // NONMATCHING
}

/* 80840CA4-80840CE4 008E64 0040+00 9/9 0/0 0/0 .text            resetNeckAnime__9daHorse_cFv */
void daHorse_c::resetNeckAnime() {
    // NONMATCHING
}

/* 80840CE4-80840FE0 008EA4 02FC+00 1/1 0/0 0/0 .text            setLashCnt__9daHorse_cFv */
void daHorse_c::setLashCnt() {
    // NONMATCHING
}

/* 80840FE0-80841084 0091A0 00A4+00 1/1 0/0 0/0 .text            setTalkModeWolf__9daHorse_cFv */
void daHorse_c::setTalkModeWolf() {
    // NONMATCHING
}

/* 80841084-8084116C 009244 00E8+00 2/2 0/0 0/0 .text setBoarHit__9daHorse_cFP10fopAc_ac_ci */
void daHorse_c::setBoarHit(fopAc_ac_c* param_0, int param_1) {
    // NONMATCHING
}

/* 8084116C-808411D0 00932C 0064+00 1/1 0/0 0/0 .text            savePos__9daHorse_cFv */
void daHorse_c::savePos() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8084579C-808457A0 0002F0 0004+00 0/1 0/0 0/0 .rodata          @9264 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9264 = 4000000.0f;
COMPILER_STRIP_GATE(0x8084579C, &lit_9264);
#pragma pop

/* 808457A0-808457A4 0002F4 0004+00 0/2 0/0 0/0 .rodata          @9265 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9265 = 640000.0f;
COMPILER_STRIP_GATE(0x808457A0, &lit_9265);
#pragma pop

/* 8084585C-8084585C 0003B0 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_808458C9 = "F_SP110";
#pragma pop

/* 808411D0-80841468 009390 0298+00 1/0 0/0 0/0 .text callHorseSubstance__9daHorse_cFPC4cXyz */
void daHorse_c::callHorseSubstance(cXyz const* param_0) {
    // NONMATCHING
}

/* 80841468-808415B4 009628 014C+00 1/0 0/0 0/0 .text
 * setHorsePosAndAngleSubstance__9daHorse_cFPC4cXyzs            */
void daHorse_c::setHorsePosAndAngleSubstance(cXyz const* param_0, s16 param_1) {
    // NONMATCHING
}

/* 808415B4-80841628 009774 0074+00 2/2 0/0 0/0 .text            checkPlayerHeavy__9daHorse_cFv */
void daHorse_c::checkPlayerHeavy() {
    // NONMATCHING
}

/* 80841628-80841698 0097E8 0070+00 2/2 0/0 0/0 .text            setTgCoGrp__9daHorse_cFUlUl */
void daHorse_c::setTgCoGrp(u32 param_0, u32 param_1) {
    // NONMATCHING
}

/* 80841698-808416D4 009858 003C+00 1/0 0/0 0/0 .text            onRideFlgSubstance__9daHorse_cFv */
void daHorse_c::onRideFlgSubstance() {
    // NONMATCHING
}

/* 808416D4-80841708 009894 0034+00 1/0 0/0 0/0 .text            offRideFlgSubstance__9daHorse_cFv
 */
void daHorse_c::offRideFlgSubstance() {
    // NONMATCHING
}

/* 80841708-808417B8 0098C8 00B0+00 8/8 0/0 0/0 .text            procWaitInit__9daHorse_cFv */
void daHorse_c::procWaitInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808457A4-808457A8 0002F8 0004+00 0/1 0/0 0/0 .rodata          @9537 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9537 = 15.0f;
COMPILER_STRIP_GATE(0x808457A4, &lit_9537);
#pragma pop

/* 808457A8-808457AC 0002FC 0004+00 0/1 0/0 0/0 .rodata          @9538 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9538 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x808457A8, &lit_9538);
#pragma pop

/* 808457AC-808457B0 000300 0004+00 0/1 0/0 0/0 .rodata          @9539 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9539 = 2.0f / 5.0f;
COMPILER_STRIP_GATE(0x808457AC, &lit_9539);
#pragma pop

/* 808457B0-808457B4 000304 0004+00 0/1 0/0 0/0 .rodata          @9540 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9540 = 3.0f / 5.0f;
COMPILER_STRIP_GATE(0x808457B0, &lit_9540);
#pragma pop

/* 808457B4-808457B8 000308 0004+00 0/2 0/0 0/0 .rodata          @9541 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9541 = 6.0f;
COMPILER_STRIP_GATE(0x808457B4, &lit_9541);
#pragma pop

/* 808417B8-80841F04 009978 074C+00 1/0 0/0 0/0 .text            procWait__9daHorse_cFv */
void daHorse_c::procWait() {
    // NONMATCHING
}

/* 80841F04-80841F80 00A0C4 007C+00 6/6 0/0 0/0 .text            procMoveInit__9daHorse_cFv */
void daHorse_c::procMoveInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808457B8-808457BC 00030C 0004+00 0/1 0/0 0/0 .rodata          @9676 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9676 = 350.0f;
COMPILER_STRIP_GATE(0x808457B8, &lit_9676);
#pragma pop

/* 80841F80-808423DC 00A140 045C+00 1/0 0/0 0/0 .text            procMove__9daHorse_cFv */
void daHorse_c::procMove() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808457BC-808457C0 000310 0004+00 0/1 0/0 0/0 .rodata          @9716 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9716 = 27.0f / 10.0f;
COMPILER_STRIP_GATE(0x808457BC, &lit_9716);
#pragma pop

/* 808423DC-808425BC 00A59C 01E0+00 3/3 0/0 0/0 .text            procStopInit__9daHorse_cFv */
void daHorse_c::procStopInit() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 808457C0-808457F0 000314 0030+00 0/1 0/0 0/0 .rodata          stopFootEffectFrame$9720 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const stopFootEffectFrame[48] = {
    0x41, 0x00, 0x00, 0x00, 0x41, 0x30, 0x00, 0x00, 0x41, 0xC0, 0x00, 0x00, 0x41, 0x30, 0x00, 0x00,
    0x41, 0x60, 0x00, 0x00, 0x41, 0xD8, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00,
    0x41, 0x90, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00, 0x41, 0x50, 0x00, 0x00, 0x41, 0xB8, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808457C0, &stopFootEffectFrame);
#pragma pop

/* 808457F0-80845820 000344 0030+00 0/1 0/0 0/0 .rodata          stopStandFootEffectFrame$9721 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const stopStandFootEffectFrame[48] = {
    0x40, 0xE0, 0x00, 0x00, 0x41, 0x40, 0x00, 0x00, 0x41, 0xC0, 0x00, 0x00, 0x41, 0x30, 0x00, 0x00,
    0x41, 0x98, 0x00, 0x00, 0x41, 0xD0, 0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x41, 0x20, 0x00, 0x00,
    0x41, 0x90, 0x00, 0x00, 0x40, 0xE0, 0x00, 0x00, 0x41, 0x90, 0x00, 0x00, 0x41, 0xD0, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808457F0, &stopStandFootEffectFrame);
#pragma pop

/* 80845820-80845824 000374 0004+00 0/1 0/0 0/0 .rodata          @9792 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9792 = 3.5f;
COMPILER_STRIP_GATE(0x80845820, &lit_9792);
#pragma pop

/* 80845824-80845828 000378 0004+00 0/1 0/0 0/0 .rodata          @9793 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9793 = 59.0f;
COMPILER_STRIP_GATE(0x80845824, &lit_9793);
#pragma pop

/* 80845828-8084582C 00037C 0004+00 0/1 0/0 0/0 .rodata          @9794 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9794 = 32.0f;
COMPILER_STRIP_GATE(0x80845828, &lit_9794);
#pragma pop

/* 808425BC-80842878 00A77C 02BC+00 1/0 0/0 0/0 .text            procStop__9daHorse_cFv */
void daHorse_c::procStop() {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8084582C-80845830 000380 0004+00 0/1 0/0 0/0 .rodata          @9831 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9831 = 52.0f;
COMPILER_STRIP_GATE(0x8084582C, &lit_9831);
#pragma pop

/* 80845830-80845834 000384 0004+00 0/1 0/0 0/0 .rodata          @9832 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_9832 = 0x3DC90FDB;
COMPILER_STRIP_GATE(0x80845830, &lit_9832);
#pragma pop

/* 80845834-80845838 000388 0004+00 0/1 0/0 0/0 .rodata          @9833 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9833 = 53.0f;
COMPILER_STRIP_GATE(0x80845834, &lit_9833);
#pragma pop

/* 80842878-80842AB0 00AA38 0238+00 6/6 0/0 0/0 .text            procTurnInit__9daHorse_cFi */
void daHorse_c::procTurnInit(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845838-8084583C 00038C 0004+00 0/1 0/0 0/0 .rodata          @9982 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_9982 = 2000.0f;
COMPILER_STRIP_GATE(0x80845838, &lit_9982);
#pragma pop

/* 80842AB0-80843008 00AC70 0558+00 1/0 0/0 0/0 .text            procTurn__9daHorse_cFv */
void daHorse_c::procTurn() {
    // NONMATCHING
}

/* 80843008-808432E0 00B1C8 02D8+00 2/2 0/0 0/0 .text            procJumpInit__9daHorse_cFi */
void daHorse_c::procJumpInit(int param_0) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 8084583C-80845840 000390 0004+00 0/1 0/0 0/0 .rodata          @10106 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_10106 = 7.0f;
COMPILER_STRIP_GATE(0x8084583C, &lit_10106);
#pragma pop

/* 808432E0-80843604 00B4A0 0324+00 1/0 0/0 0/0 .text            procJump__9daHorse_cFv */
void daHorse_c::procJump() {
    // NONMATCHING
}

/* 80843604-80843770 00B7C4 016C+00 1/1 0/0 0/0 .text            procLandInit__9daHorse_cFfi */
void daHorse_c::procLandInit(f32 param_0, int param_1) {
    // NONMATCHING
}

/* 80843770-808438AC 00B930 013C+00 1/0 0/0 0/0 .text            procLand__9daHorse_cFv */
void daHorse_c::procLand() {
    // NONMATCHING
}

/* 808438AC-8084396C 00BA6C 00C0+00 1/1 0/0 0/0 .text            procLargeDamageInit__9daHorse_cFv
 */
void daHorse_c::procLargeDamageInit() {
    // NONMATCHING
}

/* 8084396C-808439C8 00BB2C 005C+00 1/0 0/0 0/0 .text            procLargeDamage__9daHorse_cFv */
void daHorse_c::procLargeDamage() {
    // NONMATCHING
}

/* 808439C8-80843A44 00BB88 007C+00 1/1 0/0 0/0 .text            procToolDemoInit__9daHorse_cFv */
void daHorse_c::procToolDemoInit() {
    // NONMATCHING
}

/* 80843A44-80843BFC 00BC04 01B8+00 1/0 0/0 0/0 .text            procToolDemo__9daHorse_cFv */
void daHorse_c::procToolDemo() {
    // NONMATCHING
}

/* 80843BFC-80843C40 00BDBC 0044+00 1/1 0/0 0/0 .text
 * searchSceneChangeArea__9daHorse_cFP10fopAc_ac_c              */
void daHorse_c::searchSceneChangeArea(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80843C40-80843C74 00BE00 0034+00 1/1 0/0 0/0 .text
 * daHorse_searchSceneChangeArea__FP10fopAc_ac_cPv              */
static void daHorse_searchSceneChangeArea(fopAc_ac_c* param_0, void* param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80845840-8084584C 000394 000C+00 0/1 0/0 0/0 .rodata          @10308 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_10308[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80845840, &lit_10308);
#pragma pop

/* 8084584C-80845850 0003A0 0004+00 0/1 0/0 0/0 .rodata          @10523 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_10523 = 0x38D1B717;
COMPILER_STRIP_GATE(0x8084584C, &lit_10523);
#pragma pop

/* 80843C74-80844570 00BE34 08FC+00 1/1 0/0 0/0 .text            execute__9daHorse_cFv */
void daHorse_c::execute() {
    // NONMATCHING
}

/* 80844570-80844590 00C730 0020+00 1/0 0/0 0/0 .text            daHorse_Execute__FP9daHorse_c */
static void daHorse_Execute(daHorse_c* param_0) {
    // NONMATCHING
}

/* 80844590-8084476C 00C750 01DC+00 1/1 0/0 0/0 .text            draw__9daHorse_cFv */
void daHorse_c::draw() {
    // NONMATCHING
}

/* 8084476C-8084478C 00C92C 0020+00 1/0 0/0 0/0 .text            daHorse_Draw__FP9daHorse_c */
static void daHorse_Draw(daHorse_c* param_0) {
    // NONMATCHING
}

/* 8084478C-80844B1C 00C94C 0390+00 1/1 0/0 0/0 .text            __dt__9daHorse_cFv */
daHorse_c::~daHorse_c() {
    // NONMATCHING
}

/* 80844B1C-80844B44 00CCDC 0028+00 1/0 0/0 0/0 .text            daHorse_Delete__FP9daHorse_c */
static void daHorse_Delete(daHorse_c* param_0) {
    // NONMATCHING
}

/* 80845A34-80845A54 -00001 0020+00 1/0 0/0 0/0 .data            l_daHorse_Method */
static actor_method_class l_daHorse_Method = {
    (process_method_func)daHorse_Create,
    (process_method_func)daHorse_Delete,
    (process_method_func)daHorse_Execute,
    0,
    (process_method_func)daHorse_Draw,
};

/* 80845A54-80845A84 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_HORSE */
extern actor_process_profile_definition g_profile_HORSE = {
  fpcLy_CURRENT_e,        // mLayerID
  4,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_HORSE,             // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daHorse_c),      // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  90,                     // mPriority
  &l_daHorse_Method,      // sub_method
  0x00060000,             // mStatus
  fopAc_UNK_GROUP_5_e,    // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES;
