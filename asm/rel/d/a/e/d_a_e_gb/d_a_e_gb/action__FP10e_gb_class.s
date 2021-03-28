lbl_806C3F0C:
/* 806C3F0C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806C3F10  7C 08 02 A6 */	mflr r0
/* 806C3F14  90 01 00 94 */	stw r0, 0x94(r1)
/* 806C3F18  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 806C3F1C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 806C3F20  39 61 00 80 */	addi r11, r1, 0x80
/* 806C3F24  4B C9 E2 AC */	b _savegpr_26
/* 806C3F28  7C 7E 1B 78 */	mr r30, r3
/* 806C3F2C  3C 60 80 6C */	lis r3, lit_3906@ha
/* 806C3F30  3B E3 74 E8 */	addi r31, r3, lit_3906@l
/* 806C3F34  38 61 00 24 */	addi r3, r1, 0x24
/* 806C3F38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806C3F3C  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 806C3F40  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 806C3F44  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 806C3F48  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806C3F4C  4B BA 2B E8 */	b __mi__4cXyzCFRC3Vec
/* 806C3F50  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 806C3F54  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806C3F58  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 806C3F5C  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 806C3F60  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 806C3F64  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 806C3F68  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806C3F6C  EC 03 00 2A */	fadds f0, f3, f0
/* 806C3F70  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806C3F74  4B BA 37 00 */	b cM_atan2s__Fff
/* 806C3F78  B0 7E 06 B8 */	sth r3, 0x6b8(r30)
/* 806C3F7C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806C3F80  EC 20 00 32 */	fmuls f1, f0, f0
/* 806C3F84  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806C3F88  EC 00 00 32 */	fmuls f0, f0, f0
/* 806C3F8C  EC 41 00 2A */	fadds f2, f1, f0
/* 806C3F90  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C3F94  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C3F98  40 81 00 0C */	ble lbl_806C3FA4
/* 806C3F9C  FC 00 10 34 */	frsqrte f0, f2
/* 806C3FA0  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806C3FA4:
/* 806C3FA4  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 806C3FA8  4B BA 36 CC */	b cM_atan2s__Fff
/* 806C3FAC  7C 03 00 D0 */	neg r0, r3
/* 806C3FB0  B0 1E 06 BA */	sth r0, 0x6ba(r30)
/* 806C3FB4  7F C3 F3 78 */	mr r3, r30
/* 806C3FB8  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 806C3FBC  4B 95 68 24 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806C3FC0  D0 3E 06 BC */	stfs f1, 0x6bc(r30)
/* 806C3FC4  7F C3 F3 78 */	mr r3, r30
/* 806C3FC8  4B FF FD 59 */	bl damage_check__FP10e_gb_class
/* 806C3FCC  3B A0 00 00 */	li r29, 0
/* 806C3FD0  3B 80 00 00 */	li r28, 0
/* 806C3FD4  3B 60 00 01 */	li r27, 1
/* 806C3FD8  38 61 00 18 */	addi r3, r1, 0x18
/* 806C3FDC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806C3FE0  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 806C3FE4  4B BA 2B 50 */	b __mi__4cXyzCFRC3Vec
/* 806C3FE8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 806C3FEC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 806C3FF0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806C3FF4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806C3FF8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 806C3FFC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 806C4000  4B BA 36 74 */	b cM_atan2s__Fff
/* 806C4004  7C 64 1B 78 */	mr r4, r3
/* 806C4008  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C400C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C4010  80 63 00 00 */	lwz r3, 0(r3)
/* 806C4014  4B 94 83 C8 */	b mDoMtx_YrotS__FPA4_fs
/* 806C4018  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C401C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806C4020  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806C4024  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806C4028  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 806C402C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806C4030  38 61 00 48 */	addi r3, r1, 0x48
/* 806C4034  38 9E 06 D4 */	addi r4, r30, 0x6d4
/* 806C4038  4B BA CE B4 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C403C  38 7E 06 D4 */	addi r3, r30, 0x6d4
/* 806C4040  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806C4044  7C 65 1B 78 */	mr r5, r3
/* 806C4048  4B C8 30 48 */	b PSVECAdd
/* 806C404C  38 00 00 00 */	li r0, 0
/* 806C4050  98 1E 06 E0 */	stb r0, 0x6e0(r30)
/* 806C4054  98 1E 05 66 */	stb r0, 0x566(r30)
/* 806C4058  3B 40 00 01 */	li r26, 1
/* 806C405C  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 806C4060  28 00 00 0A */	cmplwi r0, 0xa
/* 806C4064  41 81 00 C4 */	bgt lbl_806C4128
/* 806C4068  3C 60 80 6C */	lis r3, lit_4803@ha
/* 806C406C  38 63 77 8C */	addi r3, r3, lit_4803@l
/* 806C4070  54 00 10 3A */	slwi r0, r0, 2
/* 806C4074  7C 03 00 2E */	lwzx r0, r3, r0
/* 806C4078  7C 09 03 A6 */	mtctr r0
/* 806C407C  4E 80 04 20 */	bctr 
lbl_806C4080:
/* 806C4080  7F C3 F3 78 */	mr r3, r30
/* 806C4084  4B FF DF F5 */	bl e_gb_wait__FP10e_gb_class
/* 806C4088  3B A0 00 01 */	li r29, 1
/* 806C408C  38 00 00 01 */	li r0, 1
/* 806C4090  98 1E 05 66 */	stb r0, 0x566(r30)
/* 806C4094  48 00 00 94 */	b lbl_806C4128
lbl_806C4098:
/* 806C4098  7F C3 F3 78 */	mr r3, r30
/* 806C409C  4B FF E4 C5 */	bl e_gb_attack_1__FP10e_gb_class
/* 806C40A0  3B A0 00 01 */	li r29, 1
/* 806C40A4  3B 80 00 01 */	li r28, 1
/* 806C40A8  38 00 00 01 */	li r0, 1
/* 806C40AC  98 1E 05 66 */	stb r0, 0x566(r30)
/* 806C40B0  48 00 00 78 */	b lbl_806C4128
lbl_806C40B4:
/* 806C40B4  7F C3 F3 78 */	mr r3, r30
/* 806C40B8  4B FF E9 F9 */	bl e_gb_attack_2__FP10e_gb_class
/* 806C40BC  3B A0 00 01 */	li r29, 1
/* 806C40C0  3B 80 00 02 */	li r28, 2
/* 806C40C4  3B 60 00 00 */	li r27, 0
/* 806C40C8  38 00 00 01 */	li r0, 1
/* 806C40CC  98 1E 05 66 */	stb r0, 0x566(r30)
/* 806C40D0  48 00 00 58 */	b lbl_806C4128
lbl_806C40D4:
/* 806C40D4  7F C3 F3 78 */	mr r3, r30
/* 806C40D8  4B FF EE E9 */	bl e_gb_damage__FP10e_gb_class
/* 806C40DC  38 00 00 01 */	li r0, 1
/* 806C40E0  98 1E 05 66 */	stb r0, 0x566(r30)
/* 806C40E4  3B A0 00 01 */	li r29, 1
/* 806C40E8  3B 40 00 00 */	li r26, 0
/* 806C40EC  48 00 00 3C */	b lbl_806C4128
lbl_806C40F0:
/* 806C40F0  7F C3 F3 78 */	mr r3, r30
/* 806C40F4  4B FF F0 A1 */	bl e_gb_end__FP10e_gb_class
/* 806C40F8  3B A0 00 01 */	li r29, 1
/* 806C40FC  38 00 00 01 */	li r0, 1
/* 806C4100  98 1E 05 66 */	stb r0, 0x566(r30)
/* 806C4104  3B 40 00 00 */	li r26, 0
/* 806C4108  48 00 00 20 */	b lbl_806C4128
lbl_806C410C:
/* 806C410C  7F C3 F3 78 */	mr r3, r30
/* 806C4110  4B FF F2 B9 */	bl e_gb_start__FP10e_gb_class
/* 806C4114  3B 60 00 00 */	li r27, 0
/* 806C4118  38 00 00 01 */	li r0, 1
/* 806C411C  98 1E 06 E0 */	stb r0, 0x6e0(r30)
/* 806C4120  98 1E 05 66 */	stb r0, 0x566(r30)
/* 806C4124  3B 40 00 00 */	li r26, 0
lbl_806C4128:
/* 806C4128  7F 40 07 75 */	extsb. r0, r26
/* 806C412C  41 82 00 14 */	beq lbl_806C4140
/* 806C4130  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806C4134  38 80 00 01 */	li r4, 1
/* 806C4138  4B BF DA 44 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 806C413C  48 00 00 10 */	b lbl_806C414C
lbl_806C4140:
/* 806C4140  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806C4144  38 80 00 00 */	li r4, 0
/* 806C4148  4B BF DA 34 */	b setLinkSearch__15Z2CreatureEnemyFb
lbl_806C414C:
/* 806C414C  7F 80 07 74 */	extsb r0, r28
/* 806C4150  2C 00 00 01 */	cmpwi r0, 1
/* 806C4154  40 82 00 60 */	bne lbl_806C41B4
/* 806C4158  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C415C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C4160  80 63 00 00 */	lwz r3, 0(r3)
/* 806C4164  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806C4168  4B 94 82 74 */	b mDoMtx_YrotS__FPA4_fs
/* 806C416C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C4170  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C4174  80 63 00 00 */	lwz r3, 0(r3)
/* 806C4178  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 806C417C  4B 94 82 20 */	b mDoMtx_XrotM__FPA4_fs
/* 806C4180  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C4184  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806C4188  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806C418C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806C4190  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806C4194  38 61 00 48 */	addi r3, r1, 0x48
/* 806C4198  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806C419C  4B BA CD 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C41A0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806C41A4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806C41A8  7C 65 1B 78 */	mr r5, r3
/* 806C41AC  4B C8 2E E4 */	b PSVECAdd
/* 806C41B0  48 00 00 70 */	b lbl_806C4220
lbl_806C41B4:
/* 806C41B4  2C 00 00 02 */	cmpwi r0, 2
/* 806C41B8  40 82 00 68 */	bne lbl_806C4220
/* 806C41BC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C41C0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806C41C4  80 63 00 00 */	lwz r3, 0(r3)
/* 806C41C8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806C41CC  4B 94 82 10 */	b mDoMtx_YrotS__FPA4_fs
/* 806C41D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C41D4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806C41D8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806C41DC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806C41E0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806C41E4  38 61 00 48 */	addi r3, r1, 0x48
/* 806C41E8  38 81 00 3C */	addi r4, r1, 0x3c
/* 806C41EC  4B BA CD 00 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C41F0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 806C41F4  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 806C41F8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806C41FC  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 806C4200  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806C4204  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 806C4208  7C 65 1B 78 */	mr r5, r3
/* 806C420C  4B C8 2E 84 */	b PSVECAdd
/* 806C4210  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806C4214  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 806C4218  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C421C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_806C4220:
/* 806C4220  7F 60 07 75 */	extsb. r0, r27
/* 806C4224  41 82 00 48 */	beq lbl_806C426C
/* 806C4228  A8 1E 06 9A */	lha r0, 0x69a(r30)
/* 806C422C  2C 00 00 05 */	cmpwi r0, 5
/* 806C4230  41 82 00 0C */	beq lbl_806C423C
/* 806C4234  C3 FF 00 94 */	lfs f31, 0x94(r31)
/* 806C4238  48 00 00 08 */	b lbl_806C4240
lbl_806C423C:
/* 806C423C  C3 FF 00 D0 */	lfs f31, 0xd0(r31)
lbl_806C4240:
/* 806C4240  38 7E 0C 88 */	addi r3, r30, 0xc88
/* 806C4244  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806C4248  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806C424C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806C4250  4B 9B 28 5C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806C4254  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806C4258  C0 1E 0D 20 */	lfs f0, 0xd20(r30)
/* 806C425C  EC 1F 00 2A */	fadds f0, f31, f0
/* 806C4260  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C4264  40 80 00 08 */	bge lbl_806C426C
/* 806C4268  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_806C426C:
/* 806C426C  7F A0 07 75 */	extsb. r0, r29
/* 806C4270  41 82 00 10 */	beq lbl_806C4280
/* 806C4274  38 00 00 04 */	li r0, 4
/* 806C4278  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806C427C  48 00 00 18 */	b lbl_806C4294
lbl_806C4280:
/* 806C4280  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806C4284  54 00 00 3E */	slwi r0, r0, 0
/* 806C4288  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806C428C  38 00 00 00 */	li r0, 0
/* 806C4290  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_806C4294:
/* 806C4294  38 61 00 0C */	addi r3, r1, 0xc
/* 806C4298  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806C429C  38 BE 06 D4 */	addi r5, r30, 0x6d4
/* 806C42A0  4B BA 28 94 */	b __mi__4cXyzCFRC3Vec
/* 806C42A4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806C42A8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806C42AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806C42B0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806C42B4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806C42B8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806C42BC  38 61 00 48 */	addi r3, r1, 0x48
/* 806C42C0  4B C8 2E 78 */	b PSVECSquareMag
/* 806C42C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C42C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C42CC  40 81 00 58 */	ble lbl_806C4324
/* 806C42D0  FC 00 08 34 */	frsqrte f0, f1
/* 806C42D4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C42D8  FC 44 00 32 */	fmul f2, f4, f0
/* 806C42DC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C42E0  FC 00 00 32 */	fmul f0, f0, f0
/* 806C42E4  FC 01 00 32 */	fmul f0, f1, f0
/* 806C42E8  FC 03 00 28 */	fsub f0, f3, f0
/* 806C42EC  FC 02 00 32 */	fmul f0, f2, f0
/* 806C42F0  FC 44 00 32 */	fmul f2, f4, f0
/* 806C42F4  FC 00 00 32 */	fmul f0, f0, f0
/* 806C42F8  FC 01 00 32 */	fmul f0, f1, f0
/* 806C42FC  FC 03 00 28 */	fsub f0, f3, f0
/* 806C4300  FC 02 00 32 */	fmul f0, f2, f0
/* 806C4304  FC 44 00 32 */	fmul f2, f4, f0
/* 806C4308  FC 00 00 32 */	fmul f0, f0, f0
/* 806C430C  FC 01 00 32 */	fmul f0, f1, f0
/* 806C4310  FC 03 00 28 */	fsub f0, f3, f0
/* 806C4314  FC 02 00 32 */	fmul f0, f2, f0
/* 806C4318  FC 21 00 32 */	fmul f1, f1, f0
/* 806C431C  FC 20 08 18 */	frsp f1, f1
/* 806C4320  48 00 00 88 */	b lbl_806C43A8
lbl_806C4324:
/* 806C4324  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C4328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C432C  40 80 00 10 */	bge lbl_806C433C
/* 806C4330  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C4334  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806C4338  48 00 00 70 */	b lbl_806C43A8
lbl_806C433C:
/* 806C433C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806C4340  80 81 00 08 */	lwz r4, 8(r1)
/* 806C4344  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C4348  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C434C  7C 03 00 00 */	cmpw r3, r0
/* 806C4350  41 82 00 14 */	beq lbl_806C4364
/* 806C4354  40 80 00 40 */	bge lbl_806C4394
/* 806C4358  2C 03 00 00 */	cmpwi r3, 0
/* 806C435C  41 82 00 20 */	beq lbl_806C437C
/* 806C4360  48 00 00 34 */	b lbl_806C4394
lbl_806C4364:
/* 806C4364  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C4368  41 82 00 0C */	beq lbl_806C4374
/* 806C436C  38 00 00 01 */	li r0, 1
/* 806C4370  48 00 00 28 */	b lbl_806C4398
lbl_806C4374:
/* 806C4374  38 00 00 02 */	li r0, 2
/* 806C4378  48 00 00 20 */	b lbl_806C4398
lbl_806C437C:
/* 806C437C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C4380  41 82 00 0C */	beq lbl_806C438C
/* 806C4384  38 00 00 05 */	li r0, 5
/* 806C4388  48 00 00 10 */	b lbl_806C4398
lbl_806C438C:
/* 806C438C  38 00 00 03 */	li r0, 3
/* 806C4390  48 00 00 08 */	b lbl_806C4398
lbl_806C4394:
/* 806C4394  38 00 00 04 */	li r0, 4
lbl_806C4398:
/* 806C4398  2C 00 00 01 */	cmpwi r0, 1
/* 806C439C  40 82 00 0C */	bne lbl_806C43A8
/* 806C43A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C43A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806C43A8:
/* 806C43A8  C0 5E 09 40 */	lfs f2, 0x940(r30)
/* 806C43AC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806C43B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 806C43B4  EC 02 00 32 */	fmuls f0, f2, f0
/* 806C43B8  D0 1E 09 3C */	stfs f0, 0x93c(r30)
/* 806C43BC  C0 5E 09 3C */	lfs f2, 0x93c(r30)
/* 806C43C0  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 806C43C4  3C 60 80 6C */	lis r3, l_HIO@ha
/* 806C43C8  38 63 79 38 */	addi r3, r3, l_HIO@l
/* 806C43CC  C0 03 00 08 */	lfs f0, 8(r3)
/* 806C43D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 806C43D4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806C43D8  40 81 00 08 */	ble lbl_806C43E0
/* 806C43DC  D0 1E 09 3C */	stfs f0, 0x93c(r30)
lbl_806C43E0:
/* 806C43E0  38 7E 09 40 */	addi r3, r30, 0x940
/* 806C43E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C43E8  FC 40 08 90 */	fmr f2, f1
/* 806C43EC  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 806C43F0  4B BA B6 4C */	b cLib_addCalc2__FPffff
/* 806C43F4  7F C3 F3 78 */	mr r3, r30
/* 806C43F8  4B FF F1 61 */	bl kuki_control1__FP10e_gb_class
/* 806C43FC  7F C3 F3 78 */	mr r3, r30
/* 806C4400  4B FF F5 05 */	bl kuki_control2__FP10e_gb_class
/* 806C4404  7F C3 F3 78 */	mr r3, r30
/* 806C4408  4B FF F6 71 */	bl kuki_control3__FP10e_gb_class
/* 806C440C  38 7E 09 44 */	addi r3, r30, 0x944
/* 806C4410  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C4414  FC 40 08 90 */	fmr f2, f1
/* 806C4418  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 806C441C  4B BA B6 20 */	b cLib_addCalc2__FPffff
/* 806C4420  C0 3E 09 4C */	lfs f1, 0x94c(r30)
/* 806C4424  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806C4428  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C442C  40 81 00 80 */	ble lbl_806C44AC
/* 806C4430  A8 7E 09 48 */	lha r3, 0x948(r30)
/* 806C4434  7C 60 07 35 */	extsh. r0, r3
/* 806C4438  41 82 00 28 */	beq lbl_806C4460
/* 806C443C  A8 1E 09 50 */	lha r0, 0x950(r30)
/* 806C4440  7C 00 1A 14 */	add r0, r0, r3
/* 806C4444  B0 1E 09 50 */	sth r0, 0x950(r30)
/* 806C4448  38 7E 09 52 */	addi r3, r30, 0x952
/* 806C444C  38 80 00 00 */	li r4, 0
/* 806C4450  38 A0 00 01 */	li r5, 1
/* 806C4454  38 C0 00 96 */	li r6, 0x96
/* 806C4458  4B BA C1 B0 */	b cLib_addCalcAngleS2__FPssss
/* 806C445C  48 00 00 30 */	b lbl_806C448C
lbl_806C4460:
/* 806C4460  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806C4464  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806C4468  A8 1E 09 4A */	lha r0, 0x94a(r30)
/* 806C446C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806C4470  7C 63 02 14 */	add r3, r3, r0
/* 806C4474  C0 03 00 04 */	lfs f0, 4(r3)
/* 806C4478  EC 01 00 32 */	fmuls f0, f1, f0
/* 806C447C  FC 00 00 1E */	fctiwz f0, f0
/* 806C4480  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 806C4484  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 806C4488  B0 1E 09 52 */	sth r0, 0x952(r30)
lbl_806C448C:
/* 806C448C  A8 7E 09 4A */	lha r3, 0x94a(r30)
/* 806C4490  38 03 27 10 */	addi r0, r3, 0x2710
/* 806C4494  B0 1E 09 4A */	sth r0, 0x94a(r30)
/* 806C4498  38 7E 09 4C */	addi r3, r30, 0x94c
/* 806C449C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C44A0  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806C44A4  4B BA B5 DC */	b cLib_addCalc0__FPfff
/* 806C44A8  48 00 00 0C */	b lbl_806C44B4
lbl_806C44AC:
/* 806C44AC  38 00 00 00 */	li r0, 0
/* 806C44B0  B0 1E 09 52 */	sth r0, 0x952(r30)
lbl_806C44B4:
/* 806C44B4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 806C44B8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806C44BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806C44C0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806C44C4  7F C3 F3 78 */	mr r3, r30
/* 806C44C8  38 9E 05 C4 */	addi r4, r30, 0x5c4
/* 806C44CC  38 BE 05 38 */	addi r5, r30, 0x538
/* 806C44D0  38 C1 00 30 */	addi r6, r1, 0x30
/* 806C44D4  48 00 2B 59 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 806C44D8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 806C44DC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 806C44E0  39 61 00 80 */	addi r11, r1, 0x80
/* 806C44E4  4B C9 DD 38 */	b _restgpr_26
/* 806C44E8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806C44EC  7C 08 03 A6 */	mtlr r0
/* 806C44F0  38 21 00 90 */	addi r1, r1, 0x90
/* 806C44F4  4E 80 00 20 */	blr 
