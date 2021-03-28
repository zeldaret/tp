lbl_80C3E340:
/* 80C3E340  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80C3E344  7C 08 02 A6 */	mflr r0
/* 80C3E348  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80C3E34C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80C3E350  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80C3E354  39 61 00 90 */	addi r11, r1, 0x90
/* 80C3E358  4B 72 3E 64 */	b _savegpr_21
/* 80C3E35C  7C 7F 1B 78 */	mr r31, r3
/* 80C3E360  3C 80 80 C4 */	lis r4, lit_1109@ha
/* 80C3E364  3B A4 F2 48 */	addi r29, r4, lit_1109@l
/* 80C3E368  3C 80 80 C4 */	lis r4, lit_3648@ha
/* 80C3E36C  3B C4 F0 58 */	addi r30, r4, lit_3648@l
/* 80C3E370  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C3E374  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C3E378  82 C4 5D AC */	lwz r22, 0x5dac(r4)
/* 80C3E37C  3A E0 00 00 */	li r23, 0
/* 80C3E380  3B 60 00 00 */	li r27, 0
/* 80C3E384  3B 80 00 01 */	li r28, 1
/* 80C3E388  3B 40 00 00 */	li r26, 0
/* 80C3E38C  C3 FE 00 08 */	lfs f31, 8(r30)
/* 80C3E390  A8 03 05 7A */	lha r0, 0x57a(r3)
/* 80C3E394  2C 00 00 02 */	cmpwi r0, 2
/* 80C3E398  41 82 00 5C */	beq lbl_80C3E3F4
/* 80C3E39C  40 80 00 14 */	bge lbl_80C3E3B0
/* 80C3E3A0  2C 00 00 00 */	cmpwi r0, 0
/* 80C3E3A4  41 82 00 18 */	beq lbl_80C3E3BC
/* 80C3E3A8  40 80 00 20 */	bge lbl_80C3E3C8
/* 80C3E3AC  48 00 00 68 */	b lbl_80C3E414
lbl_80C3E3B0:
/* 80C3E3B0  2C 00 00 04 */	cmpwi r0, 4
/* 80C3E3B4  40 80 00 60 */	bge lbl_80C3E414
/* 80C3E3B8  48 00 00 4C */	b lbl_80C3E404
lbl_80C3E3BC:
/* 80C3E3BC  4B FF F6 5D */	bl kbox_ground__FP14obj_kbox_class
/* 80C3E3C0  3B 40 00 01 */	li r26, 1
/* 80C3E3C4  48 00 00 50 */	b lbl_80C3E414
lbl_80C3E3C8:
/* 80C3E3C8  4B FF F6 ED */	bl kbox_carry__FP14obj_kbox_class
/* 80C3E3CC  3A E0 00 01 */	li r23, 1
/* 80C3E3D0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80C3E3D4  C0 16 04 D4 */	lfs f0, 0x4d4(r22)
/* 80C3E3D8  EC 21 00 2A */	fadds f1, f1, f0
/* 80C3E3DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C3E3E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3E3E4  40 80 00 08 */	bge lbl_80C3E3EC
/* 80C3E3E8  C3 FE 00 28 */	lfs f31, 0x28(r30)
lbl_80C3E3EC:
/* 80C3E3EC  3B 80 00 00 */	li r28, 0
/* 80C3E3F0  48 00 00 24 */	b lbl_80C3E414
lbl_80C3E3F4:
/* 80C3E3F4  4B FF FA 49 */	bl kbox_drop__FP14obj_kbox_class
/* 80C3E3F8  7C 7C 1B 78 */	mr r28, r3
/* 80C3E3FC  3B 40 00 02 */	li r26, 2
/* 80C3E400  48 00 00 14 */	b lbl_80C3E414
lbl_80C3E404:
/* 80C3E404  4B FF FB A9 */	bl kbox_float__FP14obj_kbox_class
/* 80C3E408  3A E0 00 01 */	li r23, 1
/* 80C3E40C  3B 60 00 01 */	li r27, 1
/* 80C3E410  3B 80 00 00 */	li r28, 0
lbl_80C3E414:
/* 80C3E414  38 7F 05 90 */	addi r3, r31, 0x590
/* 80C3E418  FC 20 F8 90 */	fmr f1, f31
/* 80C3E41C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 80C3E420  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80C3E424  4B 63 16 18 */	b cLib_addCalc2__FPffff
/* 80C3E428  7E E0 07 75 */	extsb. r0, r23
/* 80C3E42C  40 82 00 7C */	bne lbl_80C3E4A8
/* 80C3E430  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C3E434  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C3E438  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3E43C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C3E440  4B 3C DF 9C */	b mDoMtx_YrotS__FPA4_fs
/* 80C3E444  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C3E448  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C3E44C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C3E450  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80C3E454  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C3E458  38 61 00 48 */	addi r3, r1, 0x48
/* 80C3E45C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C3E460  4B 63 2A 8C */	b MtxPosition__FP4cXyzP4cXyz
/* 80C3E464  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C3E468  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80C3E46C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80C3E470  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80C3E474  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C3E478  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80C3E47C  7C 65 1B 78 */	mr r5, r3
/* 80C3E480  4B 70 8C 10 */	b PSVECAdd
/* 80C3E484  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80C3E488  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80C3E48C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C3E490  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C3E494  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80C3E498  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80C3E49C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3E4A0  40 80 00 08 */	bge lbl_80C3E4A8
/* 80C3E4A4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80C3E4A8:
/* 80C3E4A8  7F 80 07 75 */	extsb. r0, r28
/* 80C3E4AC  41 82 00 38 */	beq lbl_80C3E4E4
/* 80C3E4B0  34 7F 07 D8 */	addic. r3, r31, 0x7d8
/* 80C3E4B4  41 82 00 30 */	beq lbl_80C3E4E4
/* 80C3E4B8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C3E4BC  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 80C3E4C0  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C3E4C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C3E4C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3E4CC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C3E4D0  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80C3E4D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C3E4D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C3E4DC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3E4E0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80C3E4E4:
/* 80C3E4E4  38 7F 06 00 */	addi r3, r31, 0x600
/* 80C3E4E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C3E4EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C3E4F0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C3E4F4  4B 43 85 B8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C3E4F8  7F E3 FB 78 */	mr r3, r31
/* 80C3E4FC  4B FF F6 E9 */	bl water_check__FP14obj_kbox_class
/* 80C3E500  7F 40 07 75 */	extsb. r0, r26
/* 80C3E504  41 82 01 A8 */	beq lbl_80C3E6AC
/* 80C3E508  2C 03 00 00 */	cmpwi r3, 0
/* 80C3E50C  41 82 01 A0 */	beq lbl_80C3E6AC
/* 80C3E510  38 00 00 03 */	li r0, 3
/* 80C3E514  B0 1F 05 7A */	sth r0, 0x57a(r31)
/* 80C3E518  38 00 00 00 */	li r0, 0
/* 80C3E51C  B0 1F 05 7C */	sth r0, 0x57c(r31)
/* 80C3E520  7F 40 07 74 */	extsb r0, r26
/* 80C3E524  2C 00 00 01 */	cmpwi r0, 1
/* 80C3E528  40 82 00 48 */	bne lbl_80C3E570
/* 80C3E52C  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80C3E530  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 80C3E534  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80C3E538  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80C3E53C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C3E540  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C3E544  4B 3C DE 98 */	b mDoMtx_YrotS__FPA4_fs
/* 80C3E548  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C3E54C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C3E550  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80C3E554  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C3E558  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80C3E55C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C3E560  38 61 00 48 */	addi r3, r1, 0x48
/* 80C3E564  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80C3E568  4B 63 29 84 */	b MtxPosition__FP4cXyzP4cXyz
/* 80C3E56C  48 00 00 38 */	b lbl_80C3E5A4
lbl_80C3E570:
/* 80C3E570  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80C3E574  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C3E578  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80C3E57C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C3E580  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 80C3E584  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80C3E588  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3E58C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80C3E590  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 80C3E594  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3E598  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80C3E59C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80C3E5A0  D0 1F 05 94 */	stfs f0, 0x594(r31)
lbl_80C3E5A4:
/* 80C3E5A4  88 1D 00 64 */	lbz r0, 0x64(r29)
/* 80C3E5A8  7C 00 07 75 */	extsb. r0, r0
/* 80C3E5AC  40 82 00 30 */	bne lbl_80C3E5DC
/* 80C3E5B0  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80C3E5B4  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 80C3E5B8  38 7D 00 68 */	addi r3, r29, 0x68
/* 80C3E5BC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C3E5C0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C3E5C4  3C 80 80 C4 */	lis r4, __dt__4cXyzFv@ha
/* 80C3E5C8  38 84 D8 BC */	addi r4, r4, __dt__4cXyzFv@l
/* 80C3E5CC  38 BD 00 58 */	addi r5, r29, 0x58
/* 80C3E5D0  4B FF EF C9 */	bl __register_global_object
/* 80C3E5D4  38 00 00 01 */	li r0, 1
/* 80C3E5D8  98 1D 00 64 */	stb r0, 0x64(r29)
lbl_80C3E5DC:
/* 80C3E5DC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C3E5E0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C3E5E4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C3E5E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C3E5EC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C3E5F0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C3E5F4  C0 1F 05 88 */	lfs f0, 0x588(r31)
/* 80C3E5F8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C3E5FC  3A A0 00 00 */	li r21, 0
/* 80C3E600  3B 40 00 00 */	li r26, 0
/* 80C3E604  3B 20 00 00 */	li r25, 0
/* 80C3E608  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3E60C  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 80C3E610  3C 60 80 C4 */	lis r3, w_eff_id@ha
/* 80C3E614  3B 03 F1 2C */	addi r24, r3, w_eff_id@l
lbl_80C3E618:
/* 80C3E618  80 77 5D 3C */	lwz r3, 0x5d3c(r23)
/* 80C3E61C  38 00 00 FF */	li r0, 0xff
/* 80C3E620  90 01 00 08 */	stw r0, 8(r1)
/* 80C3E624  38 80 00 00 */	li r4, 0
/* 80C3E628  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C3E62C  38 00 FF FF */	li r0, -1
/* 80C3E630  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3E634  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C3E638  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C3E63C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C3E640  3A D9 09 D0 */	addi r22, r25, 0x9d0
/* 80C3E644  7C 9F B0 2E */	lwzx r4, r31, r22
/* 80C3E648  38 A0 00 00 */	li r5, 0
/* 80C3E64C  7C D8 D2 2E */	lhzx r6, r24, r26
/* 80C3E650  38 E1 00 30 */	addi r7, r1, 0x30
/* 80C3E654  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80C3E658  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80C3E65C  39 5D 00 68 */	addi r10, r29, 0x68
/* 80C3E660  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80C3E664  4B 40 EE 68 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C3E668  7C 7F B1 2E */	stwx r3, r31, r22
/* 80C3E66C  3A B5 00 01 */	addi r21, r21, 1
/* 80C3E670  2C 15 00 04 */	cmpwi r21, 4
/* 80C3E674  3B 5A 00 02 */	addi r26, r26, 2
/* 80C3E678  3B 39 00 04 */	addi r25, r25, 4
/* 80C3E67C  41 80 FF 9C */	blt lbl_80C3E618
/* 80C3E680  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80C3E684  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80C3E688  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C3E68C  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80C3E690  38 81 00 20 */	addi r4, r1, 0x20
/* 80C3E694  38 A0 00 00 */	li r5, 0
/* 80C3E698  38 C0 FF FF */	li r6, -1
/* 80C3E69C  81 9F 09 B8 */	lwz r12, 0x9b8(r31)
/* 80C3E6A0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C3E6A4  7D 89 03 A6 */	mtctr r12
/* 80C3E6A8  4E 80 04 21 */	bctrl 
lbl_80C3E6AC:
/* 80C3E6AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E6B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E6B4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C3E6B8  C0 BF 05 AC */	lfs f5, 0x5ac(r31)
/* 80C3E6BC  C0 9F 05 8C */	lfs f4, 0x58c(r31)
/* 80C3E6C0  C0 7F 05 90 */	lfs f3, 0x590(r31)
/* 80C3E6C4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C3E6C8  C0 1F 05 A4 */	lfs f0, 0x5a4(r31)
/* 80C3E6CC  EC 02 00 2A */	fadds f0, f2, f0
/* 80C3E6D0  EC 03 00 2A */	fadds f0, f3, f0
/* 80C3E6D4  EC 04 00 2A */	fadds f0, f4, f0
/* 80C3E6D8  EC 45 00 2A */	fadds f2, f5, f0
/* 80C3E6DC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C3E6E0  4B 70 82 08 */	b PSMTXTrans
/* 80C3E6E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E6E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E6EC  A8 9F 05 B0 */	lha r4, 0x5b0(r31)
/* 80C3E6F0  4B 3C DD 44 */	b mDoMtx_YrotM__FPA4_fs
/* 80C3E6F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E6F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E6FC  A8 9F 05 B2 */	lha r4, 0x5b2(r31)
/* 80C3E700  4B 3C DC 9C */	b mDoMtx_XrotM__FPA4_fs
/* 80C3E704  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E708  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E70C  A8 1F 05 B0 */	lha r0, 0x5b0(r31)
/* 80C3E710  7C 00 00 D0 */	neg r0, r0
/* 80C3E714  7C 04 07 34 */	extsh r4, r0
/* 80C3E718  4B 3C DD 1C */	b mDoMtx_YrotM__FPA4_fs
/* 80C3E71C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E720  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E724  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C3E728  4B 3C DD 0C */	b mDoMtx_YrotM__FPA4_fs
/* 80C3E72C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E730  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E734  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C3E738  4B 3C DC 64 */	b mDoMtx_XrotM__FPA4_fs
/* 80C3E73C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E740  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E744  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80C3E748  4B 3C DD 84 */	b mDoMtx_ZrotM__FPA4_fs
/* 80C3E74C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80C3E750  C0 1F 05 8C */	lfs f0, 0x58c(r31)
/* 80C3E754  FC 40 00 50 */	fneg f2, f0
/* 80C3E758  FC 60 08 90 */	fmr f3, f1
/* 80C3E75C  4B 3C E6 40 */	b transM__14mDoMtx_stack_cFfff
/* 80C3E760  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80C3E764  FC 40 08 90 */	fmr f2, f1
/* 80C3E768  FC 60 08 90 */	fmr f3, f1
/* 80C3E76C  4B 3C E6 CC */	b scaleM__14mDoMtx_stack_cFfff
/* 80C3E770  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E774  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E778  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C3E77C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C3E780  4B 70 7D 30 */	b PSMTXCopy
/* 80C3E784  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80C3E788  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C3E78C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C3E790  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C3E794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E798  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E79C  38 81 00 48 */	addi r4, r1, 0x48
/* 80C3E7A0  38 BF 05 B4 */	addi r5, r31, 0x5b4
/* 80C3E7A4  4B 70 85 C8 */	b PSMTXMultVec
/* 80C3E7A8  C0 5F 05 B4 */	lfs f2, 0x5b4(r31)
/* 80C3E7AC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80C3E7B0  C0 3F 05 B8 */	lfs f1, 0x5b8(r31)
/* 80C3E7B4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C3E7B8  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80C3E7BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C3E7C0  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80C3E7C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3E7C8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C3E7CC  D0 5F 05 38 */	stfs f2, 0x538(r31)
/* 80C3E7D0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C3E7D4  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80C3E7D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C3E7DC  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80C3E7E0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C3E7E4  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80C3E7E8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C3E7EC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80C3E7F0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C3E7F4  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80C3E7F8  38 7F 09 38 */	addi r3, r31, 0x938
/* 80C3E7FC  38 81 00 24 */	addi r4, r1, 0x24
/* 80C3E800  4B 63 0E 48 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C3E804  38 7F 09 38 */	addi r3, r31, 0x938
/* 80C3E808  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80C3E80C  38 9D 00 4C */	addi r4, r29, 0x4c
/* 80C3E810  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C3E814  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C3E818  4B 63 0E F0 */	b SetR__8cM3dGSphFf
/* 80C3E81C  7F 80 07 75 */	extsb. r0, r28
/* 80C3E820  41 82 00 14 */	beq lbl_80C3E834
/* 80C3E824  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 80C3E828  60 00 00 01 */	ori r0, r0, 1
/* 80C3E82C  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80C3E830  48 00 00 10 */	b lbl_80C3E840
lbl_80C3E834:
/* 80C3E834  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 80C3E838  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C3E83C  90 1F 08 40 */	stw r0, 0x840(r31)
lbl_80C3E840:
/* 80C3E840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3E844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3E848  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C3E84C  38 9F 08 14 */	addi r4, r31, 0x814
/* 80C3E850  4B 62 63 58 */	b Set__4cCcSFP8cCcD_Obj
/* 80C3E854  7F 60 07 75 */	extsb. r0, r27
/* 80C3E858  40 82 00 18 */	bne lbl_80C3E870
/* 80C3E85C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80C3E860  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 80C3E864  FC 60 10 90 */	fmr f3, f2
/* 80C3E868  4B 3C E5 34 */	b transM__14mDoMtx_stack_cFfff
/* 80C3E86C  48 00 00 24 */	b lbl_80C3E890
lbl_80C3E870:
/* 80C3E870  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C3E874  FC 40 08 90 */	fmr f2, f1
/* 80C3E878  FC 60 08 90 */	fmr f3, f1
/* 80C3E87C  4B 3C E5 BC */	b scaleM__14mDoMtx_stack_cFfff
/* 80C3E880  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80C3E884  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80C3E888  FC 60 08 90 */	fmr f3, f1
/* 80C3E88C  4B 3C E5 10 */	b transM__14mDoMtx_stack_cFfff
lbl_80C3E890:
/* 80C3E890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C3E894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C3E898  38 9F 09 74 */	addi r4, r31, 0x974
/* 80C3E89C  4B 70 7C 14 */	b PSMTXCopy
/* 80C3E8A0  80 7F 09 A4 */	lwz r3, 0x9a4(r31)
/* 80C3E8A4  4B 43 D1 1C */	b Move__4dBgWFv
/* 80C3E8A8  A8 1F 05 A0 */	lha r0, 0x5a0(r31)
/* 80C3E8AC  2C 00 00 00 */	cmpwi r0, 0
/* 80C3E8B0  40 82 00 18 */	bne lbl_80C3E8C8
/* 80C3E8B4  38 7F 05 B2 */	addi r3, r31, 0x5b2
/* 80C3E8B8  38 80 00 00 */	li r4, 0
/* 80C3E8BC  38 A0 00 04 */	li r5, 4
/* 80C3E8C0  38 C0 08 00 */	li r6, 0x800
/* 80C3E8C4  4B 63 1D 44 */	b cLib_addCalcAngleS2__FPssss
lbl_80C3E8C8:
/* 80C3E8C8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80C3E8CC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80C3E8D0  39 61 00 90 */	addi r11, r1, 0x90
/* 80C3E8D4  4B 72 39 34 */	b _restgpr_21
/* 80C3E8D8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80C3E8DC  7C 08 03 A6 */	mtlr r0
/* 80C3E8E0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80C3E8E4  4E 80 00 20 */	blr 
