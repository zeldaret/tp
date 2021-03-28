lbl_80C0F5A4:
/* 80C0F5A4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C0F5A8  7C 08 02 A6 */	mflr r0
/* 80C0F5AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C0F5B0  7C C7 33 78 */	mr r7, r6
/* 80C0F5B4  FC C0 18 90 */	fmr f6, f3
/* 80C0F5B8  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 80C0F5BC  40 80 00 0C */	bge lbl_80C0F5C8
/* 80C0F5C0  FC C0 10 90 */	fmr f6, f2
/* 80C0F5C4  FC 40 18 90 */	fmr f2, f3
lbl_80C0F5C8:
/* 80C0F5C8  EC 02 30 28 */	fsubs f0, f2, f6
/* 80C0F5CC  FC 00 02 10 */	fabs f0, f0
/* 80C0F5D0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C0F5D4  FC 40 00 18 */	frsp f2, f0
/* 80C0F5D8  3C C0 80 C1 */	lis r6, lit_5568@ha
/* 80C0F5DC  C0 06 FC A0 */	lfs f0, lit_5568@l(r6)
/* 80C0F5E0  EC A2 00 32 */	fmuls f5, f2, f0
/* 80C0F5E4  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 80C0F5E8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C0F5EC  C0 85 00 00 */	lfs f4, 0(r5)
/* 80C0F5F0  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 80C0F5F4  C0 05 00 04 */	lfs f0, 4(r5)
/* 80C0F5F8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C0F5FC  C0 65 00 08 */	lfs f3, 8(r5)
/* 80C0F600  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80C0F604  EC 00 30 2A */	fadds f0, f0, f6
/* 80C0F608  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C0F60C  EC 40 28 2A */	fadds f2, f0, f5
/* 80C0F610  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80C0F614  C0 04 00 00 */	lfs f0, 0(r4)
/* 80C0F618  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C0F61C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C0F620  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C0F624  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C0F628  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C0F62C  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80C0F630  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80C0F634  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 80C0F638  FC 00 08 18 */	frsp f0, f1
/* 80C0F63C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C0F640  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 80C0F644  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C0F648  38 81 00 20 */	addi r4, r1, 0x20
/* 80C0F64C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80C0F650  38 C1 00 08 */	addi r6, r1, 8
/* 80C0F654  48 00 00 15 */	bl chkPointInArea__11daObj_GrA_cF4cXyz4cXyz4cXyzs
/* 80C0F658  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C0F65C  7C 08 03 A6 */	mtlr r0
/* 80C0F660  38 21 00 50 */	addi r1, r1, 0x50
/* 80C0F664  4E 80 00 20 */	blr 
