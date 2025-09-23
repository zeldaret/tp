struct __vt__15daObjCRVLH_UP_c {
    /* 0x00 */ struct RTTI *__RTTI;
    /* 0x04 */ s32 unk4;                            /* inferred */
    /* 0x08 */ s32 (*CreateHeap)(daObjCRVLH_UP_c *);
    /* 0x0C */ s32 (*Create)(daObjCRVLH_UP_c *);
    /* 0x10 */ s32 (*Execute)(daObjCRVLH_UP_c *, f32 (**)[3][4]);
    /* 0x14 */ s32 (*Draw)(daObjCRVLH_UP_c *);
    /* 0x18 */ s32 (*Delete)(daObjCRVLH_UP_c *);
    /* 0x1C */ ? (*IsDelete)(dBgS_MoveBgActor *);
    /* 0x20 */ ? (*ToFore)(dBgS_MoveBgActor *);
    /* 0x24 */ ? (*ToBack)(dBgS_MoveBgActor *);
};                                                  /* size = 0x28 */

typedef struct daObjCRVLH_UP_c {
    /* 0x000 */ char pad0[0x110];
    /* 0x110 */ dKy_tevstr_c unk110;                /* inferred */
    /* 0x110 */ char pad110[0x3C4];
    /* 0x4D4 */ f32 unk4D4;                         /* inferred */
    /* 0x4D8 */ f32 unk4D8;                         /* inferred */
    /* 0x4DC */ f32 unk4DC;                         /* inferred */
    /* 0x4E0 */ char pad4E0[8];                     /* maybe part of unk4DC[3]? */
    /* 0x4E8 */ s16 unk4E8;                         /* inferred */
    /* 0x4EA */ s16 unk4EA;                         /* inferred */
    /* 0x4EC */ s16 unk4EC;                         /* inferred */
    /* 0x4EE */ char pad4EE[0x46];                  /* maybe part of unk4EC[0x24]? */
    /* 0x534 */ f32 unk534;                         /* inferred */
    /* 0x538 */ char pad538[0x38];                  /* maybe part of unk534[0xF]? */
    /* 0x570 */ cBgW_BgId *unk570;                  /* inferred */
    /* 0x574 */ f32 unk574[4];                      /* inferred */
    /* 0x584 */ char pad584[0x20];                  /* maybe part of unk574[3]? */
    /* 0x5A4 */ struct __vt__15daObjCRVLH_UP_c *vtable5A4; /* inferred */
    /* 0x5A8 */ char pad5A8[4];
    /* 0x5AC */ u32 unk5AC;                         /* inferred */
    /* 0x5B0 */ u32 unk5B0;                         /* inferred */
    /* 0x5B4 */ cXyz unk5B4;                        /* inferred */
    /* 0x5B4 */ char pad5B4[0xC];
    /* 0x5C0 */ cXyz unk5C0;                        /* inferred */
    /* 0x5C0 */ char pad5C0[0x18];
    /* 0x5D8 */ f32 unk5D8;                         /* inferred */
    /* 0x5DC */ u8 unk5DC;                          /* inferred */
    /* 0x5DD */ char pad5DD[1];
    /* 0x5DE */ s16 unk5DE;                         /* inferred */
    /* 0x5E0 */ s16 unk5E0;                         /* inferred */
    /* 0x5E2 */ u8 unk5E2;                          /* inferred */
    /* 0x5E3 */ u8 unk5E3;                          /* inferred */
    /* 0x5E4 */ f32 unk5E4;                         /* inferred */
    /* 0x5E8 */ char pad5E8[8];                     /* maybe part of unk5E4[3]? */
    /* 0x5F0 */ J3DModel *unk5F0;                   /* inferred */
    /* 0x5F4 */ request_of_phase_process_class unk5F4; /* inferred */
    /* 0x5F4 */ char pad5F4[8];
    /* 0x5FC */ dCcD_Stts unk5FC;                   /* inferred */
    /* 0x5FC */ char pad5FC[0x3C];
    /* 0x638 */ dCcD_Cyl unk638;                    /* inferred */
    /* 0x638 */ char pad638[1];
} daObjCRVLH_UP_c;                                  /* size >= 0x639 */

typedef struct mDoMtx_stack_c {
    /* 0x000 */ char pad0[0x898];
    /* 0x898 */ f32 unk898;                         /* inferred */
    /* 0x89C */ f32 unk89C;                         /* inferred */
    /* 0x8A0 */ char pad8A0[4];
    /* 0x8A4 */ f32 unk8A4;                         /* inferred */
    /* 0x8A8 */ char pad8A8[0x214];                 /* maybe part of unk8A4[0x86]? */
    /* 0xABC */ f32 unkABC;                         /* inferred */
    /* 0xAC0 */ f32 unkAC0;                         /* inferred */
    /* 0xAC4 */ f32 unkAC4;                         /* inferred */
    /* 0xAC8 */ char padAC8[0x1E0];                 /* maybe part of unkAC4[0x79]? */
    /* 0xCA8 */ f32 unkCA8;                         /* inferred */
    /* 0xCAC */ f32 unkCAC;                         /* inferred */
    /* 0xCB0 */ f32 unkCB0;                         /* inferred */
} mDoMtx_stack_c;                                   /* size >= 0xCB4 */

s32 ChkUsed__9cBgW_BgIdCFv(cBgW_BgId *this);        /* extern */
? HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf(daObjCRVHAHEN_c *this, cXyz arg0, cXyz arg1, cXyz arg2, cXyz arg3, f32 arg4); /* extern */
? IsDelete__16dBgS_MoveBgActorFv(dBgS_MoveBgActor *this); /* extern */
s32 MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f(dBgS_MoveBgActor *this, s8 *arg0, s32 arg1, void (*arg2)(dBgW *, void *, cBgS_PolyInfo *, s32, cXyz *, csXyz *, csXyz *), u32 arg3, f32 (*arg4)[3][4]); /* extern */
? MoveBGDelete__16dBgS_MoveBgActorFv(dBgS_MoveBgActor *this); /* extern */
? MoveBGDraw__16dBgS_MoveBgActorFv(dBgS_MoveBgActor *this); /* extern */
? MoveBGExecute__16dBgS_MoveBgActorFv(dBgS_MoveBgActor *this); /* extern */
? OSPanic(? *, ?, ? *);                             /* extern */
JUTAssertion *OSReport(? *, s8 *);                  /* extern */
s32 Release__4cBgSFP9dBgW_Base(cBgS *this, dBgW_Base *arg0); /* extern */
? ToBack__16dBgS_MoveBgActorFv(dBgS_MoveBgActor *this); /* extern */
? ToFore__16dBgS_MoveBgActorFv(dBgS_MoveBgActor *this); /* extern */
mDoMtx_stack_c *YrotM__14mDoMtx_stack_cFs(mDoMtx_stack_c *this, s16 arg0); /* extern */
? ZXYrotM__14mDoMtx_stack_cFRC5csXyz(mDoMtx_stack_c *this, csXyz *arg0); /* extern */
? __construct_array(cXyz *, void *(*)(cXyz *), void *(*)(cXyz *, s16), ?, ?); /* extern */
void *__ct__16dBgS_MoveBgActorFv(dBgS_MoveBgActor *this); /* extern */
void *__ct__4cXyzFRC4cXyz(cXyz *this, cXyz *arg0);  /* extern */
void *__ct__4cXyzFfff(cXyz *this, f32 arg0, f32 arg1, f32 arg2); /* extern */
void *__ct__4cXyzFv(cXyz *this);                    /* extern */
mDoMtx_stack_c *__ct__5csXyzFsss(csXyz *this, s16 arg0, s16 arg1, s16 arg2); /* extern */
void *__ct__8dCcD_CylFv(dCcD_Cyl *this);            /* extern */
void *__ct__9dCcD_SttsFv(dCcD_Stts *this);          /* extern */
void *__dt__4cXyzFv(cXyz *this, s16 destroyFlag);   /* extern */
daObjCRVLH_UP_c *__nw__FUlPv(u32 arg0, void *arg1); /* extern */
s32 cLib_chaseAngleS__FPsss(s16 *arg0, s16 arg1, s16 arg2); /* extern */
f32 cM_rndFX__Ff(f32 arg0);                         /* extern */
? cMtx_copy__FPA4_CfPA4_f(f32 (*arg0)[4], f32 (*arg1)[4]); /* extern */
void dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz(dBgW *arg0, void *arg1, cBgS_PolyInfo *arg2, s32 arg3, cXyz *arg4, csXyz *arg5, csXyz *arg6); /* extern */
cBgS *dComIfG_Bgsp__Fv();                           /* extern */
s32 dComIfG_getObjctResName2Index__FPCcPCc(s8 *arg0, s8 *arg1); /* extern */
JUTAssertion *dComIfG_getObjectRes__FPCcPCc(s8 *arg0, s8 *arg1); /* extern */
? dComIfG_resDelete__FP30request_of_phase_process_classPCc(request_of_phase_process_class *arg0, s8 *arg1); /* extern */
s32 dComIfG_resLoad__FP30request_of_phase_process_classPCc(request_of_phase_process_class *arg0, s8 *arg1); /* extern */
? dComIfGd_setListBG__Fv();                         /* extern */
? dComIfGp_particle_set__FUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyz(u16 arg0, cXyz *arg1, dKy_tevstr_c *arg2, csXyz *arg3, cXyz *arg4); /* extern */
fopAc_ac_c *daPy_getPlayerActorClass__Fv();         /* extern */
s32 fopAcM_CheckCondition__FP10fopAc_ac_cUl(fopAc_ac_c *arg0, u32 arg1); /* extern */
? fopAcM_GetID__FPCv(void *arg0);                   /* extern */
? fopAcM_GetPosition__FP10fopAc_ac_c(fopAc_ac_c *arg0); /* extern */
s8 fopAcM_GetRoomNo__FPC10fopAc_ac_c(fopAc_ac_c *arg0); /* extern */
? fopAcM_OnCondition__FP10fopAc_ac_cUl(fopAc_ac_c *arg0, u32 arg1); /* extern */
s32 fopAcM_SearchByID__FUiPP10fopAc_ac_c(u32 arg0, fopAc_ac_c **arg1); /* extern */
? fopAcM_SetMtx__FP10fopAc_ac_cPA4_f(fopAc_ac_c *arg0, f32 (*arg1)[4]); /* extern */
u32 fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc(s16 arg0, u32 arg1, cXyz *arg2, s32 arg3, csXyz *arg4, cXyz *arg5, s8 arg6); /* extern */
? fopAcM_delete__FP10fopAc_ac_c(fopAc_ac_c *arg0);  /* extern */
? fopAcM_seStartCurrent__FPC10fopAc_ac_cUlUl(fopAc_ac_c *arg0, u32 arg1, u32 arg2); /* extern */
? fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff(fopAc_ac_c *arg0, f32 arg1, f32 arg2, f32 arg3, f32 arg4, f32 arg5, f32 arg6); /* extern */
? fopAcM_setCullSizeFar__FP10fopAc_ac_cf(fopAc_ac_c *arg0, f32 arg1); /* extern */
f32 (*getBaseTRMtx__8J3DModelFv(J3DModel *this))[4]; /* extern */
JUTAssertion *getSDevice__12JUTAssertionFv(JUTAssertion *this); /* extern */
f32 (*get__14mDoMtx_stack_cFv(mDoMtx_stack_c *this))[4]; /* extern */
J3DModel *mDoExt_J3DModel__create__FP12J3DModelDataUlUl(J3DModelData *arg0, u32 arg1, u32 arg2); /* extern */
? mDoExt_modelUpdateDL__FP8J3DModel(J3DModel *arg0); /* extern */
mDoMtx_stack_c *multVec__14mDoMtx_stack_cFPC3VecP3Vec(mDoMtx_stack_c *this, Vec *arg0, Vec *arg1); /* extern */
mDoMtx_stack_c *setBaseTRMtx__8J3DModelFPA4_f(J3DModel *this, f32 (*arg0)[4]); /* extern */
? setLightTevColorType_MAJI__18dScnKy_env_light_cFP8J3DModelP12dKy_tevstr_c(dScnKy_env_light_c *this, J3DModel *arg0, dKy_tevstr_c *arg1); /* extern */
? set__4cXyzFfff(cXyz *this, f32 arg0, f32 arg1, f32 arg2); /* extern */
? settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c(dScnKy_env_light_c *this, s32 arg0, cXyz *arg1, dKy_tevstr_c *arg2); /* extern */
? showAssert__12JUTAssertionFUlPCciPCc(JUTAssertion *this, u32 arg0, s8 *arg1, s32 arg2, s8 *arg3); /* extern */
u64 transM__14mDoMtx_stack_cFfff(mDoMtx_stack_c *this, f32 arg0, f32 arg1, f32 arg2); /* extern */
mDoMtx_stack_c *transS__14mDoMtx_stack_cFRC4cXyz(mDoMtx_stack_c *this, cXyz *arg0); /* extern */
u64 transS__14mDoMtx_stack_cFfff(mDoMtx_stack_c *this, f32 arg0, f32 arg1, f32 arg2); /* extern */
s32 CreateHeap__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this); /* static */
s32 Create__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this); /* static */
s32 Delete__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this); /* static */
s32 Draw__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this); /* static */
s32 Execute__15daObjCRVLH_UP_cFPPA3_A4_f(daObjCRVLH_UP_c *this, f32 (**arg0)[3][4]); /* static */
daObjCRVLH_UP_c *__ct__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this); /* static */
s32 create__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this); /* static */
void daObjCRVLH_UP_Create__FP10fopAc_ac_c(fopAc_ac_c *arg0); /* static */
s32 daObjCRVLH_UP_Delete__FP15daObjCRVLH_UP_c(daObjCRVLH_UP_c *arg0); /* static */
void daObjCRVLH_UP_Draw__FP15daObjCRVLH_UP_c(daObjCRVLH_UP_c *arg0); /* static */
void daObjCRVLH_UP_Execute__FP15daObjCRVLH_UP_c(daObjCRVLH_UP_c *arg0); /* static */
s32 daObjCRVLH_UP_IsDelete__FP15daObjCRVLH_UP_c(daObjCRVLH_UP_c *arg0); /* static */
? @STRING@create__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this); /* static; unable to generate initializer: unknown type */
? @STRING@CreateHeap__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this); /* static; unable to generate initializer: unknown type */
extern dScnKy_env_light_c g_env_light;
extern mDoMtx_stack_c g_regHIO;
static s8 @116897[9] = "CrvLH_Up";
static s8 *l_arcName = "CrvLH_Up";
static ? @116956;                                   /* unable to generate initializer: unknown type */
static struct RTTI __RTTI__15daObjCRVLH_UP_c;       /* unable to generate initializer: cannot parse @117216 as integer */
static ? @STRING@create__15daObjCRVLH_UP_cFv@4;     /* unable to generate initializer: unknown type */
static ? @STRING@create__15daObjCRVLH_UP_cFv@3;     /* unable to generate initializer: unknown type */
static ? @STRING@create__15daObjCRVLH_UP_cFv@2;     /* unable to generate initializer: unknown type */
static ? @STRING@create__15daObjCRVLH_UP_cFv@1;     /* unable to generate initializer: unknown type */
static ? @STRING@create__15daObjCRVLH_UP_cFv@0;     /* unable to generate initializer: unknown type */
static ? @STRING@CreateHeap__15daObjCRVLH_UP_cFv@3; /* unable to generate initializer: unknown type */
static ? @STRING@CreateHeap__15daObjCRVLH_UP_cFv@2; /* unable to generate initializer: unknown type */
static ? @STRING@CreateHeap__15daObjCRVLH_UP_cFv@1; /* unable to generate initializer: unknown type */
static ? @STRING@CreateHeap__15daObjCRVLH_UP_cFv@0; /* unable to generate initializer: unknown type */

/* daObjCRVLH_UP_Create (fopAc_ac_c *) */
void daObjCRVLH_UP_Create__FP10fopAc_ac_c(fopAc_ac_c *arg0) {
    fopAcM_GetID__FPCv(arg0);
    create__15daObjCRVLH_UP_cFv((daObjCRVLH_UP_c *) arg0);
}

/* daObjCRVLH_UP_Delete (daObjCRVLH_UP_c *) */
s32 daObjCRVLH_UP_Delete__FP15daObjCRVLH_UP_c(daObjCRVLH_UP_c *arg0) {
    fopAcM_GetID__FPCv(arg0);
    MoveBGDelete__16dBgS_MoveBgActorFv((dBgS_MoveBgActor *) arg0);
    return 1;
}

/*
Decompilation failure in function gap_00_00000118_text:

Function gap_00_00000118_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_c::HakaiSet (void) */
void HakaiSet__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    void *temp_r1;

    temp_r1 = sp - 0x30;
    fopAcM_GetPosition__FP10fopAc_ac_c(daPy_getPlayerActorClass__Fv());
    this->unk5E3 = 1;
    if (((cBgW_BgId *) this->unk570 != NULL) && (ChkUsed__9cBgW_BgIdCFv(this->unk570) != 0) && (Release__4cBgSFP9dBgW_Base(dComIfG_Bgsp__Fv(), (dBgW_Base *) this->unk570) != 0)) {
        OSReport("Release Error\n");
    }
    temp_r1->unk8 = (bitwise f64) (s32) cM_rndFX__Ff(16000.0f);
    this->unk5DE = (s16) temp_r1->unkC;
}

/*
Decompilation failure in function gap_00_000001D8_text:

Function gap_00_000001D8_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_c::UpMotion (void) */
void UpMotion__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    if (!(this->unk5E4 < (-120.0f + g_regHIO.unkAC4))) {
        this->unk5E4 += -(5.0f + g_regHIO.unk8A4);
    }
}

/* daObjCRVLH_UP_c::Hakai (void) */
void Hakai__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    mDoMtx_stack_c *temp_r3;
    mDoMtx_stack_c *var_r3;
    s32 var_r28;
    void *temp_r1;

    temp_r1 = sp - 0x40;
    if (cLib_chaseAngleS__FPsss(&this->unk4E8, 0x3800, this->unk5E0) != 0) {
        fopAcM_seStartCurrent__FPC10fopAc_ac_cUlUl((fopAc_ac_c *) this, 0x802B9U, 0U);
        this->unk5E2 = 1;
        __ct__5csXyzFsss(temp_r1 + 0x10, (s16) this->unk4E8, (s16) this->unk5DE, (s16) this->unk4EC);
        var_r3 = __ct__5csXyzFsss(temp_r1 + 8, 0, 0, 0);
        var_r28 = 0;
loop_3:
        if (var_r28 < 2) {
            temp_r3 = YrotM__14mDoMtx_stack_cFs((mDoMtx_stack_c *) this->unk5DE, (s16) (u32) transS__14mDoMtx_stack_cFfff(var_r3, this->unk4D4, this->unk5D8, this->unk4DC));
            temp_r1->unk1C = (s32) (var_r28 ^ 0x80000000);
            temp_r1->unk18 = 0x43300000;
            YrotM__14mDoMtx_stack_cFs((mDoMtx_stack_c *) (s16) -this->unk5DE, (s16) (u32) transM__14mDoMtx_stack_cFfff(temp_r3, @116957.unkC, @116957.unkC, @116957.unk10 + (@116957.unk14 * ((f32) (bitwise f64) temp_r1->unk18 - (f32) @116957.unk20))));
            var_r3 = multVec__14mDoMtx_stack_cFPC3VecP3Vec(this + (var_r28 * 0xC) + 0x5B4, this + (var_r28 * 0xC) + 0x5B4, M2C_ERROR(/* Read from unset register $r5 */));
            var_r28 += 1;
            goto loop_3;
        }
        this->unk5AC = fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc(0x71, 1U, &this->unk5B4, (s32) fopAcM_GetRoomNo__FPC10fopAc_ac_c((fopAc_ac_c *) this), temp_r1 + 0x10, NULL, -1);
        this->unk5B0 = fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc(0x71, 1U, &this->unk5C0, (s32) fopAcM_GetRoomNo__FPC10fopAc_ac_c((fopAc_ac_c *) this), temp_r1 + 0x10, NULL, -1);
        dComIfGp_particle_set__FUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyz(0x8620U, &this->unk5C0, &this->unk110, temp_r1 + 0x10, NULL);
    }
    temp_r1->unk1C = (s32) (this->unk5E0 ^ 0x80000000);
    temp_r1->unk18 = 0x43300000;
    temp_r1->unk20 = (bitwise f64) (s32) (((f32) (bitwise f64) temp_r1->unk18 - (f32) @116957.unk20) + (@116957.unk18 + g_regHIO.unkAC0));
    this->unk5E0 = (s16) temp_r1->unk24;
}

/*
Decompilation failure in function gap_00_0000045C_text:

Function gap_00_0000045C_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_c::setBaseMtx (void) */
void setBaseMtx__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    YrotM__14mDoMtx_stack_cFs((mDoMtx_stack_c *) (s16) (this->unk5DE - this->unk4EA), (s16) (u32) transM__14mDoMtx_stack_cFfff(transS__14mDoMtx_stack_cFRC4cXyz((mDoMtx_stack_c *) &this->unk4D4, M2C_ERROR(/* Read from unset register $r4 */)), @116957.unkC, this->unk5E4, @116957.unkC));
    ZXYrotM__14mDoMtx_stack_cFRC5csXyz((mDoMtx_stack_c *) &this->unk4E8, (csXyz *) (u32) transM__14mDoMtx_stack_cFfff(&g_regHIO, @116957.unkC, @116957.unk10 + g_regHIO.unk89C, @116957.unkC));
    cMtx_copy__FPA4_CfPA4_f(get__14mDoMtx_stack_cFv(setBaseTRMtx__8J3DModelFPA4_f(this->unk5F0, get__14mDoMtx_stack_cFv(YrotM__14mDoMtx_stack_cFs((mDoMtx_stack_c *) (s16) -(this->unk5DE - this->unk4EA), (s16) (u32) transM__14mDoMtx_stack_cFfff(&g_regHIO, @116957.unkC, @116957.unk30 + g_regHIO.unk898, @116957.unkC))))), (f32 (*)[4]) this->unk574);
}

/* daObjCRVLH_UP_Draw (daObjCRVLH_UP_c *) */
void daObjCRVLH_UP_Draw__FP15daObjCRVLH_UP_c(daObjCRVLH_UP_c *arg0) {
    daObjCRVLH_UP_c *sp8;

    sp8 = arg0;
    MoveBGDraw__16dBgS_MoveBgActorFv((dBgS_MoveBgActor *) arg0);
}

/*
Decompilation failure in function gap_00_00000568_text:

Function gap_00_00000568_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_Execute (daObjCRVLH_UP_c *) */
void daObjCRVLH_UP_Execute__FP15daObjCRVLH_UP_c(daObjCRVLH_UP_c *arg0) {
    daObjCRVLH_UP_c *sp8;

    sp8 = arg0;
    MoveBGExecute__16dBgS_MoveBgActorFv((dBgS_MoveBgActor *) arg0);
}

/*
Decompilation failure in function gap_00_00000598_text:

Function gap_00_00000598_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_c::CreateHeap (void) */
s32 CreateHeap__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    JUTAssertion *temp_r3;

    temp_r3 = dComIfG_getObjectRes__FPCcPCc(l_arcName, (s8 *) "U_CrvLH_UP.bmd");
    if (temp_r3 != NULL) {

    } else {
        showAssert__12JUTAssertionFUlPCciPCc(getSDevice__12JUTAssertionFv(temp_r3), (u32) "d_a_obj_crvlh_up.cpp", (s8 *)0x57, (s32) "modelData != 0", M2C_ERROR(/* Read from unset register $r7 */));
        OSPanic("d_a_obj_crvlh_up.cpp", 0x57, "Halt");
    }
    this->unk5F0 = mDoExt_J3DModel__create__FP12J3DModelDataUlUl((J3DModelData *) temp_r3, 0x80000U, 0x11000084U);
    if ((J3DModel *) this->unk5F0 == NULL) {
        return 0;
    }
    return 1;
}

/*
Decompilation failure in function gap_00_0000065C_text:

Function gap_00_0000065C_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_c::create (void) */
s32 create__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    daObjCRVLH_UP_c *temp_r3;
    s32 temp_r27;
    s32 var_r28;
    s32 var_r3;

    if (fopAcM_CheckCondition__FP10fopAc_ac_cUl((fopAc_ac_c *) this, 8U) == 0) {
        temp_r3 = __nw__FUlPv(0x778U, this);
        if (temp_r3 != NULL) {
            __ct__15daObjCRVLH_UP_cFv(temp_r3);
        }
        fopAcM_OnCondition__FP10fopAc_ac_cUl((fopAc_ac_c *) this, 8U);
    }
    var_r28 = dComIfG_resLoad__FP30request_of_phase_process_classPCc(&this->unk5F4, l_arcName);
    if (var_r28 == 4) {
        this->unk534 = @116957.unk34 + g_regHIO.unkABC;
        var_r3 = dComIfG_getObjctResName2Index__FPCcPCc(l_arcName, (s8 *) "U_CrvLH_Up.dzb");
        temp_r27 = var_r3;
        if (temp_r27 == -1) {
            var_r3 = OSReport(&@STRING@create__15daObjCRVLH_UP_cFv@0, l_arcName);
        }
        if (temp_r27 != -1) {

        } else {
            showAssert__12JUTAssertionFUlPCciPCc(getSDevice__12JUTAssertionFv((JUTAssertion *) var_r3), (u32) "d_a_obj_crvlh_up.cpp", (s8 *)0x1F8, (s32) "dzb_id != -1", M2C_ERROR(/* Read from unset register $r7 */));
            OSPanic("d_a_obj_crvlh_up.cpp", 0x1F8, "Halt");
        }
        var_r28 = MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f((dBgS_MoveBgActor *) this, l_arcName, temp_r27, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz, 0xE80U, NULL);
        if (var_r28 == 5) {
            return var_r28;
        }
        fopAcM_SetMtx__FP10fopAc_ac_cPA4_f((fopAc_ac_c *) this, getBaseTRMtx__8J3DModelFv(this->unk5F0));
        set__4cXyzFfff(&this->unk5B4, @116957.unkC, @116957.unkC, @116957.unkC);
        set__4cXyzFfff(&this->unk5C0, @116957.unkC, @116957.unkC, @116957.unkC);
        __ct__4cXyzFfff(sp - 0x30 + 8, this->unk4D4, @116957.unk38 + this->unk4D8, this->unk4DC);
        fopAcM_setCullSizeFar__FP10fopAc_ac_cf((fopAc_ac_c *) this, @116957.unk38);
        this->unk5D8 = this->unk4D8;
        this->unk5E4 = @116957.unkC;
        fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff((fopAc_ac_c *) this, @116957.unk3C, @116957.unk3C, @116957.unk3C, @116957.unk40, @116957.unk44, @116957.unk40);
        daObjCRVLH_UP_Execute__FP15daObjCRVLH_UP_c(this);
        goto block_13;
    }
block_13:
    return var_r28;
}

/* daObjCRVLH_UP_c::daObjCRVLH_UP_c (void) */
daObjCRVLH_UP_c *__ct__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    __ct__16dBgS_MoveBgActorFv((dBgS_MoveBgActor *) this);
    this->vtable5A4 = &__vt__15daObjCRVLH_UP_c;
    __construct_array(&this->unk5B4, __ct__4cXyzFv, __dt__4cXyzFv, 0xC, 3);
    __ct__9dCcD_SttsFv(&this->unk5FC);
    __ct__8dCcD_CylFv(&this->unk638);
    return this;
}

/* daObjCRVLH_UP_IsDelete (daObjCRVLH_UP_c *) */
s32 daObjCRVLH_UP_IsDelete__FP15daObjCRVLH_UP_c(daObjCRVLH_UP_c *arg0) {
    return 1;
}

/*
Decompilation failure in function gap_00_000008E8_text:

Function gap_00_000008E8_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_c::Create (void) */
s32 Create__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    daObjCRVLH_UP_c *sp8;

    sp8 = this;
    fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff((fopAc_ac_c *) this, @116957.unk48, @116957.unk3C, @116957.unk48, @116957.unk4C, @116957.unk40, @116957.unk4C);
    return 4;
}

/*
Decompilation failure in function gap_00_00000944_text:

Function gap_00_00000944_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_c::Execute (float [4] [3] * *) */
s32 Execute__15daObjCRVLH_UP_cFPPA3_A4_f(daObjCRVLH_UP_c *this, f32 (**arg0)[3][4]) {
    void *temp_r1;

    temp_r1 = sp - 0xB0;
    if ((s32) this->unk5DC != 0) {
        fopAcM_delete__FP10fopAc_ac_c((fopAc_ac_c *) this);
    }
    if ((s32) this->unk5E2 == 0) {
        if ((s32) this->unk5E3 != 0) {
            Hakai__15daObjCRVLH_UP_cFv(this);
            UpMotion__15daObjCRVLH_UP_cFv(this);
        }
    } else if ((fopAcM_SearchByID__FUiPP10fopAc_ac_c(this->unk5AC, temp_r1 + 0xC) != 0) && (fopAcM_SearchByID__FUiPP10fopAc_ac_c(this->unk5B0, temp_r1 + 8) != 0) && ((daObjCRVHAHEN_c *) temp_r1->unkC != NULL) && ((daObjCRVHAHEN_c *) temp_r1->unk8 != NULL)) {
        __ct__4cXyzFfff(temp_r1 + 0x94, @116957.unk38, @116957.unk50, @116957.unk54);
        __ct__4cXyzFfff(temp_r1 + 0x88, @116957.unk58 + g_regHIO.unkCA8, @116957.unk58 + g_regHIO.unkCAC, @116957.unk58 + g_regHIO.unkCB0);
        __ct__4cXyzFfff(temp_r1 + 0x7C, @116957.unkC, @116957.unk5C, @116957.unkC);
        __ct__4cXyzFfff(temp_r1 + 0x70, @116957.unk5C, @116957.unk60, @116957.unk60);
        __ct__4cXyzFRC4cXyz(temp_r1 + 0x64, temp_r1 + 0x94);
        __ct__4cXyzFRC4cXyz(temp_r1 + 0x58, temp_r1 + 0x7C);
        __ct__4cXyzFRC4cXyz(temp_r1 + 0x4C, temp_r1 + 0x88);
        __ct__4cXyzFRC4cXyz(temp_r1 + 0x40, temp_r1 + 0x70);
        HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf(temp_r1->unkC, (cXyz) (temp_r1 + 0x64), (cXyz) (temp_r1 + 0x58), (cXyz) (temp_r1 + 0x4C), (cXyz) (temp_r1 + 0x40), @116957.unk64);
        __dt__4cXyzFv(temp_r1 + 0x40, -1);
        __dt__4cXyzFv(temp_r1 + 0x4C, -1);
        __dt__4cXyzFv(temp_r1 + 0x58, -1);
        __dt__4cXyzFv(temp_r1 + 0x64, -1);
        set__4cXyzFfff(temp_r1 + 0x94, @116957.unk38, @116957.unk50, @116957.unk54);
        set__4cXyzFfff(temp_r1 + 0x88, @116957.unk58 + g_regHIO.unkCA8, @116957.unk58 + g_regHIO.unkCAC, @116957.unk58 + g_regHIO.unkCB0);
        set__4cXyzFfff(temp_r1 + 0x94, @116957.unk38, @116957.unk50, @116957.unk54);
        set__4cXyzFfff(temp_r1 + 0x88, @116957.unk58 + g_regHIO.unkCA8, @116957.unk58 + g_regHIO.unkCAC, @116957.unk58 + g_regHIO.unkCB0);
        __ct__4cXyzFRC4cXyz(temp_r1 + 0x34, temp_r1 + 0x94);
        __ct__4cXyzFRC4cXyz(temp_r1 + 0x28, temp_r1 + 0x7C);
        __ct__4cXyzFRC4cXyz(temp_r1 + 0x1C, temp_r1 + 0x88);
        __ct__4cXyzFRC4cXyz(temp_r1 + 0x10, temp_r1 + 0x70);
        HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf(temp_r1->unk8, (cXyz) (temp_r1 + 0x34), (cXyz) (temp_r1 + 0x28), (cXyz) (temp_r1 + 0x1C), (cXyz) (temp_r1 + 0x10), @116957.unk64);
        __dt__4cXyzFv(temp_r1 + 0x10, -1);
        __dt__4cXyzFv(temp_r1 + 0x1C, -1);
        __dt__4cXyzFv(temp_r1 + 0x28, -1);
        __dt__4cXyzFv(temp_r1 + 0x34, -1);
        this->unk5DC = 1;
    }
    *arg0 = (f32 (*)[3][4]) this->unk574;
    setBaseMtx__15daObjCRVLH_UP_cFv(this);
    return 1;
}

/*
Decompilation failure in function gap_00_00000C8C_text:

Function gap_00_00000C8C_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_c::Draw (void) */
s32 Draw__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c(&g_env_light, 0x10, (cXyz *) &this->unk4D4, &this->unk110);
    setLightTevColorType_MAJI__18dScnKy_env_light_cFP8J3DModelP12dKy_tevstr_c(&g_env_light, this->unk5F0, &this->unk110);
    dComIfGd_setListBG__Fv();
    mDoExt_modelUpdateDL__FP8J3DModel(this->unk5F0);
    return 1;
}

/*
Decompilation failure in function gap_00_00000CF4_text:

Function gap_00_00000CF4_text contains no instructions. Maybe it is rodata?
*/

/* daObjCRVLH_UP_c::Delete (void) */
s32 Delete__15daObjCRVLH_UP_cFv(daObjCRVLH_UP_c *this) {
    daObjCRVLH_UP_c *sp8;

    sp8 = this;
    dComIfG_resDelete__FP30request_of_phase_process_classPCc(&this->unk5F4, l_arcName);
    return 1;
}
