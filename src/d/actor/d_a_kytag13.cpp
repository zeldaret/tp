/**
 * d_a_kytag13.cpp
 * Blowing Snow Tag
 */

#include "d/actor/d_a_kytag13.h"
#include "SSystem/SComponent/c_math.h"
#include "d/d_com_inf_game.h"
#include "d/d_kankyo_rain.h"
#include "dol2asm.h"


//
// Forward References:
//

extern "C" static bool daKytag13_Draw__FP13kytag13_class();
extern "C" static void vectle_calc__FP10DOUBLE_POSP4cXyz();
extern "C" static void daKytag13_Execute_standard__FP13kytag13_class();
extern "C" void __dt__14dBgS_ObjGndChkFv();
extern "C" static void daKytag13_Execute__FP13kytag13_class();
extern "C" static bool daKytag13_IsDelete__FP13kytag13_class();
extern "C" static bool daKytag13_Delete__FP13kytag13_class();
extern "C" static void daKytag13_Create__FP10fopAc_ac_c();
extern "C" static void func_80860450();
extern "C" static void func_80860458();
extern "C" static void func_80860460();
extern "C" extern char const* const d_a_kytag13__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void mDoMtx_ZrotM__FPA4_fs();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void isSwitch__10dSv_info_cCFii();
extern "C" void dKyw_get_wind_vec__Fv();
extern "C" void dKyw_get_wind_pow__Fv();
extern "C" void dKyw_get_wind_vecpow__Fv();
extern "C" void dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz();
extern "C" void GroundCross__4cBgSFP11cBgS_GndChk();
extern "C" void __ct__11dBgS_GndChkFv();
extern "C" void __dt__11dBgS_GndChkFv();
extern "C" void __dt__18dBgS_ObjGndChk_AllFv();
extern "C" void SetObj__16dBgS_PolyPassChkFv();
extern "C" void cM_rndF__Ff();
extern "C" void cM_rndFX__Ff();
extern "C" void SetPos__11cBgS_GndChkFPC4cXyz();
extern "C" void cM3d_VectorProduct2d__Fffffff();
extern "C" void cLib_addCalc__FPfffff();
extern "C" void __dl__FPv();
extern "C" void _savegpr_21();
extern "C" void _restgpr_21();
extern "C" extern void* __vt__18dBgS_ObjGndChk_All[12];
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

/* 8085F1F8-8085F200 000078 0008+00 1/0 0/0 0/0 .text            daKytag13_Draw__FP13kytag13_class
 */
static int daKytag13_Draw(kytag13_class* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 80860470-80860478 000000 0008+00 2/2 0/0 0/0 .rodata          @3783 */
SECTION_RODATA static u8 const lit_3783[8] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x80860470, &lit_3783);

/* 80860478-8086047C 000008 0004+00 1/2 0/0 0/0 .rodata          @3784 */
SECTION_RODATA static u8 const lit_3784[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};
COMPILER_STRIP_GATE(0x80860478, &lit_3784);

/* 8085F200-8085F2B0 000080 00B0+00 1/1 0/0 0/0 .text            vectle_calc__FP10DOUBLE_POSP4cXyz
 */
static void vectle_calc(DOUBLE_POS* pos, cXyz* out) {
    f64 len = sqrt(pos->x * pos->x + pos->y * pos->y + pos->z * pos->z);
    if (0.0 != len) {
        out->x = pos->x / len;
        out->y = pos->y / len;
        out->z = pos->z / len;
    } else {
        out->x = 0.0f;
        out->y = 0.0f;
        out->z = 0.0f;
    }
}


/* ############################################################################################## */
/* 8086047C-80860480 00000C 0004+00 0/1 0/0 0/0 .rodata          @4177 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4177 = 100.0f;
COMPILER_STRIP_GATE(0x8086047C, &lit_4177);
#pragma pop

/* 80860480-80860484 000010 0004+00 0/1 0/0 0/0 .rodata          @4178 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4178 = 5.0f;
COMPILER_STRIP_GATE(0x80860480, &lit_4178);
#pragma pop

/* 80860484-80860488 000014 0004+00 0/1 0/0 0/0 .rodata          @4179 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4179 = 1000.0f;
COMPILER_STRIP_GATE(0x80860484, &lit_4179);
#pragma pop

/* 80860488-8086048C 000018 0004+00 0/1 0/0 0/0 .rodata          @4180 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4180 = 3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80860488, &lit_4180);
#pragma pop

/* 8086048C-80860490 00001C 0004+00 0/1 0/0 0/0 .rodata          @4181 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4181 = 1.0f;
COMPILER_STRIP_GATE(0x8086048C, &lit_4181);
#pragma pop

/* 80860490-80860494 000020 0004+00 0/1 0/0 0/0 .rodata          @4182 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4182 = -0.0f;
COMPILER_STRIP_GATE(0x80860490, &lit_4182);
#pragma pop

/* 80860494-80860498 000024 0004+00 0/1 0/0 0/0 .rodata          @4183 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4183 = -3.0f / 10.0f;
COMPILER_STRIP_GATE(0x80860494, &lit_4183);
#pragma pop

/* 80860498-8086049C 000028 0004+00 0/1 0/0 0/0 .rodata          @4184 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4184 = -2.0f / 5.0f;
COMPILER_STRIP_GATE(0x80860498, &lit_4184);
#pragma pop

/* 8086049C-808604A0 00002C 0004+00 0/1 0/0 0/0 .rodata          @4185 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4185 = 1.0f / 5.0f;
COMPILER_STRIP_GATE(0x8086049C, &lit_4185);
#pragma pop

/* 808604A0-808604A4 000030 0004+00 0/1 0/0 0/0 .rodata          @4186 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4186 = 4.0f;
COMPILER_STRIP_GATE(0x808604A0, &lit_4186);
#pragma pop

/* 808604A4-808604A8 000034 0004+00 0/1 0/0 0/0 .rodata          @4187 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4187 = 6.0f;
COMPILER_STRIP_GATE(0x808604A4, &lit_4187);
#pragma pop

/* 808604A8-808604AC 000038 0004+00 0/1 0/0 0/0 .rodata          @4188 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4188 = 500.0f;
COMPILER_STRIP_GATE(0x808604A8, &lit_4188);
#pragma pop

/* 808604AC-808604B0 00003C 0004+00 0/1 0/0 0/0 .rodata          @4189 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4189 = 65536.0f;
COMPILER_STRIP_GATE(0x808604AC, &lit_4189);
#pragma pop

/* 808604B0-808604B4 000040 0004+00 0/1 0/0 0/0 .rodata          @4190 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4190 = 1680.0f;
COMPILER_STRIP_GATE(0x808604B0, &lit_4190);
#pragma pop

/* 808604B4-808604B8 000044 0004+00 0/1 0/0 0/0 .rodata          @4191 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4191 = 200.0f;
COMPILER_STRIP_GATE(0x808604B4, &lit_4191);
#pragma pop

/* 808604B8-808604BC 000048 0004+00 0/1 0/0 0/0 .rodata          @4192 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4192 = 1630.0f;
COMPILER_STRIP_GATE(0x808604B8, &lit_4192);
#pragma pop

/* 808604BC-808604C0 00004C 0004+00 0/1 0/0 0/0 .rodata          @4193 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4193 = 4280.0f;
COMPILER_STRIP_GATE(0x808604BC, &lit_4193);
#pragma pop

/* 808604C0-808604C4 000050 0004+00 0/1 0/0 0/0 .rodata          @4194 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4194 = -1680.0f;
COMPILER_STRIP_GATE(0x808604C0, &lit_4194);
#pragma pop

/* 808604C4-808604C8 000054 0004+00 0/1 0/0 0/0 .rodata          @4195 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4195 = 5000.0f;
COMPILER_STRIP_GATE(0x808604C4, &lit_4195);
#pragma pop

/* 808604C8-808604CC 000058 0004+00 0/1 0/0 0/0 .rodata          @4196 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4196 = 750.0f;
COMPILER_STRIP_GATE(0x808604C8, &lit_4196);
#pragma pop

/* 808604CC-808604D0 00005C 0004+00 0/1 0/0 0/0 .rodata          @4197 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4197 = 7110.0f;
COMPILER_STRIP_GATE(0x808604CC, &lit_4197);
#pragma pop

/* 808604D0-808604D4 000060 0004+00 0/1 0/0 0/0 .rodata          @4198 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4198 = -22.0f;
COMPILER_STRIP_GATE(0x808604D0, &lit_4198);
#pragma pop

/* 808604D4-808604D8 000064 0004+00 0/1 0/0 0/0 .rodata          @4199 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4199 = 950.0f;
COMPILER_STRIP_GATE(0x808604D4, &lit_4199);
#pragma pop

/* 808604D8-808604E0 000068 0004+04 0/1 0/0 0/0 .rodata          @4200 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4200[1 + 1 /* padding */] = {
    -50.0f,
    /* padding */
    0.0f,
};
COMPILER_STRIP_GATE(0x808604D8, &lit_4200);
#pragma pop

/* 808604E0-808604E8 000070 0008+00 0/1 0/0 0/0 .rodata          @4201 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4201[8] = {
    0x3F, 0xE0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808604E0, &lit_4201);
#pragma pop

/* 808604E8-808604F0 000078 0008+00 0/1 0/0 0/0 .rodata          @4202 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const lit_4202[8] = {
    0x40, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
COMPILER_STRIP_GATE(0x808604E8, &lit_4202);
#pragma pop

/* 808604F0-808604F4 000080 0004+00 0/1 0/0 0/0 .rodata          @4203 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4203 = 2.0f / 25.0f;
COMPILER_STRIP_GATE(0x808604F0, &lit_4203);
#pragma pop

/* 808604F4-808604F8 000084 0004+00 0/1 0/0 0/0 .rodata          @4204 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4204 = 0.5f;
COMPILER_STRIP_GATE(0x808604F4, &lit_4204);
#pragma pop

/* 808604F8-808604FC 000088 0004+00 0/1 0/0 0/0 .rodata          @4205 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4205 = 1.0f / 10.0f;
COMPILER_STRIP_GATE(0x808604F8, &lit_4205);
#pragma pop

/* 808604FC-80860500 00008C 0004+00 0/1 0/0 0/0 .rodata          @4206 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4206 = 1.0f / 100.0f;
COMPILER_STRIP_GATE(0x808604FC, &lit_4206);
#pragma pop

/* 80860500-80860504 000090 0004+00 0/1 0/0 0/0 .rodata          @4207 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4207 = 37.0f / 10.0f;
COMPILER_STRIP_GATE(0x80860500, &lit_4207);
#pragma pop

/* 80860504-80860508 000094 0004+00 0/1 0/0 0/0 .rodata          @4208 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4208 = 3.0f;
COMPILER_STRIP_GATE(0x80860504, &lit_4208);
#pragma pop

/* 80860508-8086050C 000098 0004+00 0/1 0/0 0/0 .rodata          @4209 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4209 = 3000.0f;
COMPILER_STRIP_GATE(0x80860508, &lit_4209);
#pragma pop

/* 8086050C-80860510 00009C 0004+00 0/1 0/0 0/0 .rodata          @4210 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4210 = 0.25f;
COMPILER_STRIP_GATE(0x8086050C, &lit_4210);
#pragma pop

/* 80860510-80860514 0000A0 0004+00 0/1 0/0 0/0 .rodata          @4211 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4211 = 1500.0f;
COMPILER_STRIP_GATE(0x80860510, &lit_4211);
#pragma pop

/* 80860514-80860518 0000A4 0004+00 0/1 0/0 0/0 .rodata          @4212 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4212 = 0x3A83126F;
COMPILER_STRIP_GATE(0x80860514, &lit_4212);
#pragma pop

/* 80860518-8086051C 0000A8 0004+00 0/1 0/0 0/0 .rodata          @4213 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4213 = 1.0f / 20.0f;
COMPILER_STRIP_GATE(0x80860518, &lit_4213);
#pragma pop

/* 8086051C-80860520 0000AC 0004+00 0/1 0/0 0/0 .rodata          @4214 */
#pragma push
#pragma force_active on
SECTION_RODATA static u32 const lit_4214 = 0x38D1B717;
COMPILER_STRIP_GATE(0x8086051C, &lit_4214);
#pragma pop

/* 80860520-80860524 0000B0 0004+00 0/1 0/0 0/0 .rodata          @4215 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4215 = 10.0f;
COMPILER_STRIP_GATE(0x80860520, &lit_4215);
#pragma pop

/* 80860524-80860528 0000B4 0004+00 0/1 0/0 0/0 .rodata          @4216 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4216 = -5560.0f;
COMPILER_STRIP_GATE(0x80860524, &lit_4216);
#pragma pop

/* 80860528-8086052C 0000B8 0004+00 0/1 0/0 0/0 .rodata          @4217 */
#pragma push
#pragma force_active on
SECTION_RODATA static f32 const lit_4217 = 925.0f;
COMPILER_STRIP_GATE(0x80860528, &lit_4217);
#pragma pop

/* 80860538-80860538 0000C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80860538 = "D_MN11";
#pragma pop

/* 80860540-80860560 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag13_Method */
static actor_method_class l_daKytag13_Method = {
    (process_method_func)daKytag13_Create__FP10fopAc_ac_c,
    (process_method_func)daKytag13_Delete__FP13kytag13_class,
    (process_method_func)daKytag13_Execute__FP13kytag13_class,
    (process_method_func)daKytag13_IsDelete__FP13kytag13_class,
    (process_method_func)daKytag13_Draw__FP13kytag13_class,
};

/* 80860560-80860590 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG13 */
extern actor_process_profile_definition g_profile_KYTAG13 = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_KYTAG13,          // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(kytag13_class), // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  107,                   // mPriority
  &l_daKytag13_Method,   // sub_method
  0x00060000,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

/* 80860590-808605C0 000050 0030+00 2/2 0/0 0/0 .data            __vt__14dBgS_ObjGndChk */
SECTION_DATA extern void* __vt__14dBgS_ObjGndChk[12] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__14dBgS_ObjGndChkFv,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80860450,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80860460,
    (void*)NULL,
    (void*)NULL,
    (void*)func_80860458,
};

/* 8085F2B0-80860148 000130 0E98+00 1/1 0/0 0/0 .text
 * daKytag13_Execute_standard__FP13kytag13_class                */
// some regalloc
#ifdef NONMATCHING
static int daKytag13_Execute_standard(kytag13_class* i_this) {
    fopAc_ac_c* a_this = (fopAc_ac_c*)i_this;
    dKankyo_snow_Packet* snow_packet = g_env_light.mpSnowPacket;
    camera_class* camera = dComIfGp_getCamera(0);
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    DOUBLE_POS sp88;
    cXyz sp7C;
    cXyz sp70;

    cXyz sp64 = dKyw_get_wind_vecpow();
    cXyz sp60;

    cXyz sp4C;
    cXyz sp40;

    dBgS_ObjGndChk_All spA0;
    cXyz sp34;

    if (snow_packet == NULL) {
        return 1;
    }

    sp34 = player->current.pos;
    sp34.y += 100.0f;
    spA0.SetPos(&sp34);

    f32 temp_f30 = dComIfG_Bgsp().GroundCross(&spA0);
    temp_f30 += 5.0f;
    f32 var_f29;
    f32 var_f28;

    f32 temp_f27 = a_this->current.pos.y;

    if (i_this->field_0x57a != 0xFF) {
        s32 roomNo = dComIfGp_roomControl_getStayNo();
        if (!dComIfGs_isSwitch(i_this->field_0x57a, roomNo)) {
            g_env_light.field_0xe90 = 0;
        }
    }

    snow_packet->field_0x6d74 = camera->mLookat.mEye;
    sp7C.z = 0.0f;
    sp7C.y = 0.0f;
    sp7C.x = 0.0f;

    cXyz* temp_r27 = dKyw_get_wind_vec();
    f32 temp_f31 = dKyw_get_wind_pow();

    sp4C.x = 0.0f;
    sp4C.y = 1000.0f * a_this->scale.y;
    sp4C.z = 0.0f;

    mDoMtx_stack_c::transS(a_this->current.pos.x, a_this->current.pos.y, a_this->current.pos.z);
    mDoMtx_stack_c::ZrotM(a_this->current.angle.z);
    mDoMtx_stack_c::YrotM(a_this->current.angle.y);
    mDoMtx_stack_c::XrotM(a_this->current.angle.x);
    mDoMtx_stack_c::multVec(&sp4C, &sp40);

    sp70 = *temp_r27;

    dKyr_get_vectle_calc(&sp40, &a_this->current.pos, &sp64);

    sp88.x = camera->mLookat.mCenter.x - camera->mLookat.mEye.x;
    sp88.y = 0.0;
    sp88.z = camera->mLookat.mCenter.z - camera->mLookat.mEye.z;

    cXyz sp28;
    vectle_calc(&sp88, &sp28);

    snow_packet->field_0x6d84 = cM3d_VectorProduct2d(0.0f, 0.0f, -sp70.x, -sp70.z, sp28.x, sp28.z);

    f32 tmp = fabsf((sp70.x * sp28.x) + (sp70.z * sp28.z));
    snow_packet->field_0x6d80 = (1.0f - tmp) * temp_f31 * (1.0f - fabsf(0.3f + sp70.y));
    snow_packet->field_0x6d80 *= fabsf(snow_packet->field_0x6d84);

    for (int i = i_this->field_0x57e - 1; i >= i_this->field_0x57c; i--) {
        if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 &&
            dComIfGp_roomControl_getStayNo() == 0 && i == 100)
        {
            sp64.x = -0.0f;
            sp64.y = -0.3f;
            sp64.z = -0.4f;
        }

        f32 temp_f28 = -(0.2f + cM_rndF(1.0f));

        switch (snow_packet->mSnowEff[i].mStatus) {
        case 0:
            snow_packet->mSnowEff[i].mWindSpeed = (4.0f * i_this->field_0x574) + cM_rndF(6.0f);
            snow_packet->mSnowEff[i].mGravity = temp_f28;
            snow_packet->mSnowEff[i].mTimer = 0;
            snow_packet->mSnowEff[i].mPosition.x = sp40.x + cM_rndFX(500.0f * a_this->scale.x);
            snow_packet->mSnowEff[i].mPosition.y = sp40.y - cM_rndF(1000.0f * a_this->scale.y);
            snow_packet->mSnowEff[i].mPosition.z = sp40.z + cM_rndFX(500.0f * a_this->scale.z);
            snow_packet->mSnowEff[i].mBasePos.x = sp40.x + cM_rndFX(500.0f * a_this->scale.x);
            snow_packet->mSnowEff[i].mBasePos.y = sp40.y - cM_rndF(1000.0f * a_this->scale.y);
            snow_packet->mSnowEff[i].mBasePos.z = sp40.z + cM_rndFX(500.0f * a_this->scale.z);
            snow_packet->mSnowEff[i].mScale = 1.0f;
            snow_packet->mSnowEff[i].field_0x30 = 1.0f;
            snow_packet->mSnowEff[i].mPosWaveX = cM_rndF(0xFFFF);
            snow_packet->mSnowEff[i].mPosWaveZ = cM_rndF(0xFFFF);
            snow_packet->mSnowEff[i].mStatus = 1;

            if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 &&
                dComIfGp_roomControl_getStayNo() == 0)
            {
                if (i < 25) {
                    snow_packet->mSnowEff[i].mBasePos.x =
                        1680.0f + cM_rndFX(200.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y =
                        1630.0f - cM_rndF(1630.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        4280.0f + cM_rndFX(100.0f * a_this->scale.z);
                } else if (i < 50) {
                    snow_packet->mSnowEff[i].mBasePos.x =
                        -1680.0f + cM_rndFX(200.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y =
                        1630.0f - cM_rndF(1630.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        4280.0f + cM_rndFX(100.0f * a_this->scale.z);
                } else if (i < 75) {
                    snow_packet->mSnowEff[i].mBasePos.x = cM_rndFX(500.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y =
                        1680.0f - cM_rndF(1680.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        5000.0f + cM_rndFX(100.0f * a_this->scale.z);
                } else if (i < 100) {
                    snow_packet->mSnowEff[i].mBasePos.x = cM_rndFX(500.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y =
                        750.0f - cM_rndF(750.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        7110.0f + cM_rndFX(100.0f * a_this->scale.z);
                }
            }
            break;
        case 1:
        case 2:
            var_f28 = temp_f27;
            var_f29 = temp_f27;

            if (dComIfGp_roomControl_getStayNo() == 0) {
                var_f28 = -22.0f;
                var_f29 = -22.0f;
            } else if (dComIfGp_roomControl_getStayNo() == 6) {
                var_f28 = 950.0f;
                var_f29 = 950.0f;
            } else if (dComIfGp_roomControl_getStayNo() == 3) {
                var_f28 = -22.0f;
                var_f29 = -22.0f;
            } else if (dComIfGp_roomControl_getStayNo() == 9) {
                var_f28 = -50.0f;
                var_f29 = -50.0f;
            } else if (dComIfGp_roomControl_getStayNo() == 13) {
                var_f28 = 0.0f;
                var_f29 = 0.0f;
            }

            if (camera->mLookat.mEye.abs(snow_packet->mSnowEff[i].mPosition) < 500.0f) {
                var_f28 = temp_f30;
            }

            if (camera->mLookat.mEye.abs(snow_packet->mSnowEff[i].mBasePos) < 500.0f) {
                var_f29 = temp_f30;
            }

            cLib_addCalc(&snow_packet->mSnowEff[i].mWindSpeed,
                         snow_packet->mSnowEff[i].mWindSpeed - cM_rndFX(0.08f), 0.5f, 0.1f, 0.01f);

            cXyz sp1C;
            if (snow_packet->mSnowEff[i].mPosition.y > var_f28) {
                s16 temp_r4_2 = snow_packet->mSnowEff[i].mPosWaveX;
                s16 temp_r5_2 = snow_packet->mSnowEff[i].mPosWaveZ;

                sp1C.x = cM_scos(temp_r4_2) * cM_ssin(temp_r5_2);
                sp1C.y = cM_ssin(temp_r4_2);
                sp1C.z = cM_scos(temp_r4_2) * cM_scos(temp_r5_2);

                snow_packet->mSnowEff[i].mPosition.x +=
                    (sp64.x * snow_packet->mSnowEff[i].mWindSpeed);
                snow_packet->mSnowEff[i].mPosition.z +=
                    (sp64.z * snow_packet->mSnowEff[i].mWindSpeed);
                snow_packet->mSnowEff[i].mPosition.y +=
                    (snow_packet->mSnowEff[i].mGravity +
                     (sp64.y * snow_packet->mSnowEff[i].mWindSpeed));

                snow_packet->mSnowEff[i].mPosition.x += (3.7f * sp1C.x);
                snow_packet->mSnowEff[i].mPosition.y += (3.7f * sp1C.y);
                snow_packet->mSnowEff[i].mPosition.z += (3.7f * sp1C.z);
            }

            if (snow_packet->mSnowEff[i].mBasePos.y > var_f29) {
                snow_packet->mSnowEff[i].mBasePos.x +=
                    (sp64.x * snow_packet->mSnowEff[i].mWindSpeed);
                snow_packet->mSnowEff[i].mBasePos.z +=
                    (sp64.z * snow_packet->mSnowEff[i].mWindSpeed);
                snow_packet->mSnowEff[i].mBasePos.y +=
                    (snow_packet->mSnowEff[i].mGravity +
                     (sp64.y * snow_packet->mSnowEff[i].mWindSpeed));

                snow_packet->mSnowEff[i].mBasePos.x += (3.0f * sp1C.x);
                snow_packet->mSnowEff[i].mBasePos.y += (3.0f * sp1C.y);
                snow_packet->mSnowEff[i].mBasePos.z += (3.0f * sp1C.z);
            }

            cLib_addCalc(&snow_packet->mSnowEff[i].mPosWaveX,
                         snow_packet->mSnowEff[i].mPosWaveX + cM_rndF(3000.0f), 0.25f, 1500.0f,
                         0.001f);
            cLib_addCalc(&snow_packet->mSnowEff[i].mPosWaveZ,
                         snow_packet->mSnowEff[i].mPosWaveZ + cM_rndF(3000.0f), 0.25f, 1500.0f,
                         0.001f);

            sp60.y = snow_packet->mSnowEff[i].mPosition.y;
            if (sp60.y < var_f28) {
                snow_packet->mSnowEff[i].mPosition.y = var_f28;
                snow_packet->mSnowEff[i].mStatus = 2;
            }

            sp60.y = snow_packet->mSnowEff[i].mBasePos.y;
            if (sp60.y < var_f29) {
                snow_packet->mSnowEff[i].mBasePos.y = var_f29;
                snow_packet->mSnowEff[i].mStatus = 2;
            }

            if (snow_packet->mSnowEff[i].mPosition.y == var_f28) {
                cLib_addCalc(&snow_packet->mSnowEff[i].mScale, 0.0f, 0.25f, 0.05f, 0.0001f);

                if (snow_packet->mSnowEff[i].mScale <= 0.0001f) {
                    snow_packet->mSnowEff[i].mPosition.x =
                        sp40.x + cM_rndFX(500.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mPosition.y =
                        sp40.y - cM_rndF(10.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mPosition.z =
                        sp40.z + cM_rndFX(500.0f * a_this->scale.z);
                    snow_packet->mSnowEff[i].mStatus = 1;
                }
            } else {
                snow_packet->mSnowEff[i].mScale = (f32)0.5f;
            }

            if (snow_packet->mSnowEff[i].mBasePos.y == var_f29) {
                cLib_addCalc(&snow_packet->mSnowEff[i].field_0x30, 0.0f, 0.25f, 0.05f, 0.0001f);

                if (snow_packet->mSnowEff[i].field_0x30 <= 0.0001f) {
                    snow_packet->mSnowEff[i].mBasePos.x =
                        sp40.x + cM_rndFX(500.0f * a_this->scale.x);
                    snow_packet->mSnowEff[i].mBasePos.y = sp40.y - cM_rndF(10.0f * a_this->scale.y);
                    snow_packet->mSnowEff[i].mBasePos.z =
                        sp40.z + cM_rndFX(500.0f * a_this->scale.z);

                    if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 &&
                        dComIfGp_roomControl_getStayNo() == 0)
                    {
                        if (i < 20) {
                            snow_packet->mSnowEff[i].mBasePos.x =
                                1680.0f + cM_rndFX(200.0f * a_this->scale.x);
                            snow_packet->mSnowEff[i].mBasePos.y =
                                1630.0f - cM_rndF(10.0f * a_this->scale.y);
                            snow_packet->mSnowEff[i].mBasePos.z =
                                4280.0f + cM_rndFX(200.0f * a_this->scale.z);
                        } else if (i < 50) {
                            snow_packet->mSnowEff[i].mBasePos.x =
                                -1680.0f + cM_rndFX(200.0f * a_this->scale.x);
                            snow_packet->mSnowEff[i].mBasePos.y =
                                1630.0f - cM_rndF(10.0f * a_this->scale.y);
                            snow_packet->mSnowEff[i].mBasePos.z =
                                4280.0f + cM_rndFX(100.0f * a_this->scale.z);
                        } else if (i < 75) {
                            snow_packet->mSnowEff[i].mBasePos.x =
                                cM_rndFX(500.0f * a_this->scale.x);
                            snow_packet->mSnowEff[i].mBasePos.y =
                                1680.0f - cM_rndF(10.0f * a_this->scale.y);
                            snow_packet->mSnowEff[i].mBasePos.z =
                                5000.0f + cM_rndFX(100.0f * a_this->scale.z);
                        } else if (i < 100) {
                            snow_packet->mSnowEff[i].mBasePos.x =
                                cM_rndFX(500.0f * a_this->scale.x);
                            snow_packet->mSnowEff[i].mBasePos.y =
                                750.0f - cM_rndF(10.0f * a_this->scale.y);
                            snow_packet->mSnowEff[i].mBasePos.z =
                                7110.0f + cM_rndFX(100.0f * a_this->scale.z);
                        }
                    }
                    snow_packet->mSnowEff[i].mStatus = 1;
                }
            } else {
                snow_packet->mSnowEff[i].field_0x30 = 0.5f;
            }
            break;
        }

        if (dComIfGp_roomControl_getStayNo() == 5) {
            if (snow_packet->mSnowEff[i].mBasePos.z > -5560.0f &&
                snow_packet->mSnowEff[i].mBasePos.y < 925.0f)
            {
                snow_packet->mSnowEff[i].field_0x30 = 0.0f;
            }
            if (snow_packet->mSnowEff[i].mPosition.z > -5560.0f &&
                snow_packet->mSnowEff[i].mPosition.y < 925.0f)
            {
                snow_packet->mSnowEff[i].mScale = 0.0f;
            }
        }
    }

    return 1;
}
#else
static void daKytag13_Execute_standard(kytag13_class* i_this) {
    // NONMATCHING
}
#endif

/* 80860148-808601C0 000FC8 0078+00 4/3 0/0 0/0 .text            __dt__14dBgS_ObjGndChkFv */
// dBgS_ObjGndChk::~dBgS_ObjGndChk() {
extern "C" void __dt__14dBgS_ObjGndChkFv() {
    // NONMATCHING
}

/* 808601C0-80860200 001040 0040+00 1/0 0/0 0/0 .text daKytag13_Execute__FP13kytag13_class */
static int daKytag13_Execute(kytag13_class* i_this) {
    if (i_this->home.roomNo == dComIfGp_roomControl_getStayNo()) {
        daKytag13_Execute_standard(i_this);
    }

    return 1;
}

/* 80860200-80860208 001080 0008+00 1/0 0/0 0/0 .text daKytag13_IsDelete__FP13kytag13_class */
static int daKytag13_IsDelete(kytag13_class* i_this) {
    return 1;
}

/* 80860208-80860210 001088 0008+00 1/0 0/0 0/0 .text            daKytag13_Delete__FP13kytag13_class
 */
static int daKytag13_Delete(kytag13_class* i_this) {
    return 1;
}

/* 80860210-80860450 001090 0240+00 1/0 0/0 0/0 .text            daKytag13_Create__FP10fopAc_ac_c */
static int daKytag13_Create(fopAc_ac_c* i_this) {
    kytag13_class* a_this = (kytag13_class*)i_this;
    fopAcM_SetupActor(i_this, kytag13_class);

    if (i_this->home.roomNo != dComIfGp_roomControl_getStayNo()) {
        return 0;
    }

    a_this->mMax = fopAcM_GetParam(i_this) & 0xFF;
    if (a_this->mMax > 7) {
        a_this->mMax = 7;
    }

    a_this->mMax *= 71;
    if (a_this->mMax > 500) {
        a_this->mMax = 500;
    }

    g_env_light.field_0xe90 = a_this->mMax / 10;

    if (g_env_light.mSnowInitialized) {
        g_env_light.mSnowCount = 0;

        if (g_env_light.mpSnowPacket != NULL) {
            g_env_light.mpSnowPacket->field_0x6d88 = 0;

            for (int i = 0; i < 500; i++) {
                g_env_light.mpSnowPacket->mSnowEff[i].mStatus = 0;
            }
        }
    }

    a_this->mSpeed = ((fopAcM_GetParam(i_this) >> 8) & 0xFF) / 255.0f;
    a_this->field_0x57a = fopAcM_GetParam(i_this) >> 0x10;
    a_this->field_0x57c = 0;
    a_this->field_0x57e = g_env_light.field_0xe90 * 10;

    if (i_this->home.roomNo == 9) {
        u8 prm = (fopAcM_GetParam(i_this) >> 0x1C);
        a_this->field_0x57c = prm * 125;
        a_this->field_0x57e = (prm + 1) * 125;

        if (g_env_light.field_0xe90 * 10 < a_this->field_0x57e) {
            g_env_light.field_0xe90 = a_this->field_0x57e / 10;
        }
    } else if (i_this->home.roomNo == 7) {
        u8 prm = (fopAcM_GetParam(i_this) >> 0x1C);
        a_this->field_0x57c = prm * 250;
        a_this->field_0x57e = (prm + 1) * 250;

        if (g_env_light.field_0xe90 * 10 < a_this->field_0x57e) {
            g_env_light.field_0xe90 = a_this->field_0x57e / 10;
        }
    } else if (i_this->home.roomNo == 13) {
        u8 prm = (fopAcM_GetParam(i_this) >> 0x1C);
        a_this->field_0x57c = prm * 71;
        a_this->field_0x57e = (prm + 1) * 71;

        if (g_env_light.field_0xe90 * 10 < a_this->field_0x57e) {
            g_env_light.field_0xe90 = a_this->field_0x57e / 10;
        }
    }

    return cPhs_COMPLEATE_e;
}

/* 80860450-80860458 0012D0 0008+00 1/0 0/0 0/0 .text            @20@__dt__14dBgS_ObjGndChkFv */
static void func_80860450() {
    // NONMATCHING
}

/* 80860458-80860460 0012D8 0008+00 1/0 0/0 0/0 .text            @76@__dt__14dBgS_ObjGndChkFv */
static void func_80860458() {
    // NONMATCHING
}

/* 80860460-80860468 0012E0 0008+00 1/0 0/0 0/0 .text            @60@__dt__14dBgS_ObjGndChkFv */
static void func_80860460() {
    // NONMATCHING
}
