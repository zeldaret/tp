lbl_80680C98:
/* 80680C98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80680C9C  7C 08 02 A6 */	mflr r0
/* 80680CA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80680CA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80680CA8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80680CAC  7C 7E 1B 78 */	mr r30, r3
/* 80680CB0  3C 80 80 68 */	lis r4, lit_3947@ha
/* 80680CB4  3B E4 23 BC */	addi r31, r4, lit_3947@l
/* 80680CB8  38 00 00 3C */	li r0, 0x3c
/* 80680CBC  B0 03 06 AE */	sth r0, 0x6ae(r3)
/* 80680CC0  A8 03 06 74 */	lha r0, 0x674(r3)
/* 80680CC4  2C 00 00 01 */	cmpwi r0, 1
/* 80680CC8  41 82 00 9C */	beq lbl_80680D64
/* 80680CCC  40 80 00 E0 */	bge lbl_80680DAC
/* 80680CD0  2C 00 00 00 */	cmpwi r0, 0
/* 80680CD4  40 80 00 08 */	bge lbl_80680CDC
/* 80680CD8  48 00 00 D4 */	b lbl_80680DAC
lbl_80680CDC:
/* 80680CDC  38 80 00 04 */	li r4, 4
/* 80680CE0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80680CE4  38 A0 00 00 */	li r5, 0
/* 80680CE8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80680CEC  4B FF E0 A5 */	bl anm_init__FP10e_ba_classifUcf
/* 80680CF0  38 00 00 01 */	li r0, 1
/* 80680CF4  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 80680CF8  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80680CFC  4B BE 6C 58 */	b cM_rndF__Ff
/* 80680D00  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80680D04  EC 00 08 2A */	fadds f0, f0, f1
/* 80680D08  FC 00 00 1E */	fctiwz f0, f0
/* 80680D0C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80680D10  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80680D14  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
/* 80680D18  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80680D1C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80680D20  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80680D24  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80680D28  80 63 00 00 */	lwz r3, 0(r3)
/* 80680D2C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80680D30  4B 98 B6 AC */	b mDoMtx_YrotS__FPA4_fs
/* 80680D34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80680D38  D0 01 00 08 */	stfs f0, 8(r1)
/* 80680D3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80680D40  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80680D44  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80680D48  38 61 00 08 */	addi r3, r1, 8
/* 80680D4C  38 9E 06 78 */	addi r4, r30, 0x678
/* 80680D50  4B BF 01 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 80680D54  38 7E 06 78 */	addi r3, r30, 0x678
/* 80680D58  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80680D5C  7C 65 1B 78 */	mr r5, r3
/* 80680D60  4B CC 63 30 */	b PSVECAdd
lbl_80680D64:
/* 80680D64  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80680D68  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80680D6C  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80680D70  4B BE ED 10 */	b cLib_addCalc0__FPfff
/* 80680D74  A8 1E 06 A6 */	lha r0, 0x6a6(r30)
/* 80680D78  2C 00 00 00 */	cmpwi r0, 0
/* 80680D7C  41 82 00 20 */	beq lbl_80680D9C
/* 80680D80  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80680D84  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80680D88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80680D8C  41 80 00 10 */	blt lbl_80680D9C
/* 80680D90  80 1E 07 38 */	lwz r0, 0x738(r30)
/* 80680D94  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80680D98  41 82 00 14 */	beq lbl_80680DAC
lbl_80680D9C:
/* 80680D9C  38 00 00 01 */	li r0, 1
/* 80680DA0  B0 1E 06 72 */	sth r0, 0x672(r30)
/* 80680DA4  38 00 00 00 */	li r0, 0
/* 80680DA8  B0 1E 06 74 */	sth r0, 0x674(r30)
lbl_80680DAC:
/* 80680DAC  7F C3 F3 78 */	mr r3, r30
/* 80680DB0  4B FF E7 95 */	bl fly_move__FP10e_ba_class
/* 80680DB4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80680DB8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80680DBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80680DC0  7C 08 03 A6 */	mtlr r0
/* 80680DC4  38 21 00 30 */	addi r1, r1, 0x30
/* 80680DC8  4E 80 00 20 */	blr 
