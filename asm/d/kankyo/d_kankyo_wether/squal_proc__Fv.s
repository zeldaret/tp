lbl_8005AC30:
/* 8005AC30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8005AC34  7C 08 02 A6 */	mflr r0
/* 8005AC38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005AC3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8005AC40  48 30 75 91 */	bl _savegpr_26
/* 8005AC44  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005AC48  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 8005AC4C  3B 40 00 00 */	li r26, 0
/* 8005AC50  3B E0 00 00 */	li r31, 0
lbl_8005AC54:
/* 8005AC54  7F BE FA 14 */	add r29, r30, r31
/* 8005AC58  3B 7D 08 58 */	addi r27, r29, 0x858
/* 8005AC5C  3B 9D 08 48 */	addi r28, r29, 0x848
/* 8005AC60  88 1D 08 48 */	lbz r0, 0x848(r29)
/* 8005AC64  2C 00 00 01 */	cmpwi r0, 1
/* 8005AC68  41 82 00 0C */	beq lbl_8005AC74
/* 8005AC6C  40 80 00 B0 */	bge lbl_8005AD1C
/* 8005AC70  48 00 00 AC */	b lbl_8005AD1C
lbl_8005AC74:
/* 8005AC74  C0 5B 00 00 */	lfs f2, 0(r27)
/* 8005AC78  C0 3B 00 0C */	lfs f1, 0xc(r27)
/* 8005AC7C  C0 1D 08 50 */	lfs f0, 0x850(r29)
/* 8005AC80  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005AC84  EC 02 00 2A */	fadds f0, f2, f0
/* 8005AC88  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8005AC8C  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8005AC90  C0 3B 00 10 */	lfs f1, 0x10(r27)
/* 8005AC94  C0 1D 08 50 */	lfs f0, 0x850(r29)
/* 8005AC98  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005AC9C  EC 02 00 2A */	fadds f0, f2, f0
/* 8005ACA0  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8005ACA4  C0 5B 00 08 */	lfs f2, 8(r27)
/* 8005ACA8  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 8005ACAC  C0 1D 08 50 */	lfs f0, 0x850(r29)
/* 8005ACB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005ACB4  EC 02 00 2A */	fadds f0, f2, f0
/* 8005ACB8  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8005ACBC  38 7B 00 1C */	addi r3, r27, 0x1c
/* 8005ACC0  C0 22 86 E0 */	lfs f1, lit_4378(r2)
/* 8005ACC4  C0 42 87 A4 */	lfs f2, lit_5630(r2)
/* 8005ACC8  C0 7D 08 54 */	lfs f3, 0x854(r29)
/* 8005ACCC  C0 82 87 9C */	lfs f4, lit_5530(r2)
/* 8005ACD0  48 21 4C AD */	bl cLib_addCalc__FPfffff
/* 8005ACD4  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005ACD8  C0 1B 00 1C */	lfs f0, 0x1c(r27)
/* 8005ACDC  EC 41 00 28 */	fsubs f2, f1, f0
/* 8005ACE0  C0 3D 08 4C */	lfs f1, 0x84c(r29)
/* 8005ACE4  38 7B 00 18 */	addi r3, r27, 0x18
/* 8005ACE8  C0 62 87 68 */	lfs f3, lit_5362(r2)
/* 8005ACEC  EC 02 00 72 */	fmuls f0, f2, f1
/* 8005ACF0  EC 63 00 32 */	fmuls f3, f3, f0
/* 8005ACF4  C0 82 87 20 */	lfs f4, lit_4769(r2)
/* 8005ACF8  48 21 4C 85 */	bl cLib_addCalc__FPfffff
/* 8005ACFC  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 8005AD00  C0 02 87 20 */	lfs f0, lit_4769(r2)
/* 8005AD04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005AD08  40 80 00 14 */	bge lbl_8005AD1C
/* 8005AD0C  7F 63 DB 78 */	mr r3, r27
/* 8005AD10  48 00 01 49 */	bl dKyw_pntwind_cut__FP14WIND_INFLUENCE
/* 8005AD14  38 00 00 00 */	li r0, 0
/* 8005AD18  98 1C 00 00 */	stb r0, 0(r28)
lbl_8005AD1C:
/* 8005AD1C  3B 5A 00 01 */	addi r26, r26, 1
/* 8005AD20  2C 1A 00 05 */	cmpwi r26, 5
/* 8005AD24  3B FF 00 3C */	addi r31, r31, 0x3c
/* 8005AD28  41 80 FF 2C */	blt lbl_8005AC54
/* 8005AD2C  39 61 00 20 */	addi r11, r1, 0x20
/* 8005AD30  48 30 74 ED */	bl _restgpr_26
/* 8005AD34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8005AD38  7C 08 03 A6 */	mtlr r0
/* 8005AD3C  38 21 00 20 */	addi r1, r1, 0x20
/* 8005AD40  4E 80 00 20 */	blr 
