lbl_804FCB1C:
/* 804FCB1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FCB20  7C 08 02 A6 */	mflr r0
/* 804FCB24  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FCB28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804FCB2C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804FCB30  7C 7E 1B 78 */	mr r30, r3
/* 804FCB34  3C 80 80 50 */	lis r4, lit_3788@ha
/* 804FCB38  3B E4 0B 04 */	addi r31, r4, lit_3788@l
/* 804FCB3C  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 804FCB40  2C 00 00 01 */	cmpwi r0, 1
/* 804FCB44  41 82 00 64 */	beq lbl_804FCBA8
/* 804FCB48  40 80 01 3C */	bge lbl_804FCC84
/* 804FCB4C  2C 00 00 00 */	cmpwi r0, 0
/* 804FCB50  40 80 00 08 */	bge lbl_804FCB58
/* 804FCB54  48 00 01 30 */	b lbl_804FCC84
lbl_804FCB58:
/* 804FCB58  38 80 00 05 */	li r4, 5
/* 804FCB5C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804FCB60  38 A0 00 00 */	li r5, 0
/* 804FCB64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FCB68  4B FF F2 51 */	bl anm_init__FP10e_hb_classifUcf
/* 804FCB6C  7F C3 F3 78 */	mr r3, r30
/* 804FCB70  38 80 00 13 */	li r4, 0x13
/* 804FCB74  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804FCB78  38 A0 00 02 */	li r5, 2
/* 804FCB7C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FCB80  4B FF F2 E5 */	bl leaf_anm_init__FP10e_hb_classifUcf
/* 804FCB84  38 00 00 01 */	li r0, 1
/* 804FCB88  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FCB8C  38 00 00 1E */	li r0, 0x1e
/* 804FCB90  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 804FCB94  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FCB98  D0 1E 06 90 */	stfs f0, 0x690(r30)
/* 804FCB9C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 804FCBA0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 804FCBA4  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_804FCBA8:
/* 804FCBA8  A8 9E 06 68 */	lha r4, 0x668(r30)
/* 804FCBAC  1C 04 04 B0 */	mulli r0, r4, 0x4b0
/* 804FCBB0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FCBB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804FCBB8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804FCBBC  7C 23 04 2E */	lfsx f1, r3, r0
/* 804FCBC0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 804FCBC4  EC 20 00 72 */	fmuls f1, f0, f1
/* 804FCBC8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804FCBCC  1C 04 05 DC */	mulli r0, r4, 0x5dc
/* 804FCBD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804FCBD4  7C 63 02 14 */	add r3, r3, r0
/* 804FCBD8  C0 43 00 04 */	lfs f2, 4(r3)
/* 804FCBDC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804FCBE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804FCBE4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804FCBE8  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804FCBEC  EC 20 08 2A */	fadds f1, f0, f1
/* 804FCBF0  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FCBF4  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 804FCBF8  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FCBFC  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FCC00  4B D7 2E 3C */	b cLib_addCalc2__FPffff
/* 804FCC04  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 804FCC08  C0 3E 04 B0 */	lfs f1, 0x4b0(r30)
/* 804FCC0C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804FCC10  EC 21 00 2A */	fadds f1, f1, f0
/* 804FCC14  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 804FCC18  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 804FCC1C  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FCC20  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FCC24  4B D7 2E 18 */	b cLib_addCalc2__FPffff
/* 804FCC28  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 804FCC2C  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 804FCC30  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804FCC34  EC 21 00 28 */	fsubs f1, f1, f0
/* 804FCC38  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 804FCC3C  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 804FCC40  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 804FCC44  EC 63 00 32 */	fmuls f3, f3, f0
/* 804FCC48  4B D7 2D F4 */	b cLib_addCalc2__FPffff
/* 804FCC4C  38 7E 06 90 */	addi r3, r30, 0x690
/* 804FCC50  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804FCC54  FC 40 08 90 */	fmr f2, f1
/* 804FCC58  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 804FCC5C  4B D7 2D E0 */	b cLib_addCalc2__FPffff
/* 804FCC60  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 804FCC64  2C 00 00 00 */	cmpwi r0, 0
/* 804FCC68  40 82 00 1C */	bne lbl_804FCC84
/* 804FCC6C  38 00 00 03 */	li r0, 3
/* 804FCC70  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 804FCC74  38 00 00 00 */	li r0, 0
/* 804FCC78  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 804FCC7C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804FCC80  D0 1E 08 4C */	stfs f0, 0x84c(r30)
lbl_804FCC84:
/* 804FCC84  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 804FCC88  38 80 40 00 */	li r4, 0x4000
/* 804FCC8C  38 A0 00 04 */	li r5, 4
/* 804FCC90  38 C0 04 00 */	li r6, 0x400
/* 804FCC94  4B D7 39 74 */	b cLib_addCalcAngleS2__FPssss
/* 804FCC98  38 7E 08 48 */	addi r3, r30, 0x848
/* 804FCC9C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 804FCCA0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FCCA4  C0 7F 00 60 */	lfs f3, 0x60(r31)
/* 804FCCA8  4B D7 2D 94 */	b cLib_addCalc2__FPffff
/* 804FCCAC  38 7E 06 94 */	addi r3, r30, 0x694
/* 804FCCB0  3C 80 80 50 */	lis r4, l_HIO@ha
/* 804FCCB4  38 84 0E 70 */	addi r4, r4, l_HIO@l
/* 804FCCB8  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 804FCCBC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804FCCC0  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 804FCCC4  4B D7 2D 78 */	b cLib_addCalc2__FPffff
/* 804FCCC8  38 00 00 01 */	li r0, 1
/* 804FCCCC  98 1E 0B 0C */	stb r0, 0xb0c(r30)
/* 804FCCD0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804FCCD4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804FCCD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FCCDC  7C 08 03 A6 */	mtlr r0
/* 804FCCE0  38 21 00 20 */	addi r1, r1, 0x20
/* 804FCCE4  4E 80 00 20 */	blr 
