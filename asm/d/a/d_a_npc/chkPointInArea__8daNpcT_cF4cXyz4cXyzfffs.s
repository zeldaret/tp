lbl_8014ACF0:
/* 8014ACF0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8014ACF4  7C 08 02 A6 */	mflr r0
/* 8014ACF8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8014ACFC  7C C7 33 78 */	mr r7, r6
/* 8014AD00  FC C0 18 90 */	fmr f6, f3
/* 8014AD04  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 8014AD08  40 80 00 0C */	bge lbl_8014AD14
/* 8014AD0C  FC C0 10 90 */	fmr f6, f2
/* 8014AD10  FC 40 18 90 */	fmr f2, f3
lbl_8014AD14:
/* 8014AD14  EC 02 30 28 */	fsubs f0, f2, f6
/* 8014AD18  FC 00 02 10 */	fabs f0, f0
/* 8014AD1C  FC A0 00 18 */	frsp f5, f0
/* 8014AD20  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8014AD24  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 8014AD28  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8014AD2C  C0 85 00 00 */	lfs f4, 0(r5)
/* 8014AD30  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8014AD34  C0 05 00 04 */	lfs f0, 4(r5)
/* 8014AD38  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8014AD3C  C0 65 00 08 */	lfs f3, 8(r5)
/* 8014AD40  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8014AD44  EC 40 30 2A */	fadds f2, f0, f6
/* 8014AD48  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8014AD4C  C0 04 00 00 */	lfs f0, 0(r4)
/* 8014AD50  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8014AD54  C0 04 00 04 */	lfs f0, 4(r4)
/* 8014AD58  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8014AD5C  C0 04 00 08 */	lfs f0, 8(r4)
/* 8014AD60  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8014AD64  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8014AD68  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8014AD6C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8014AD70  FC 00 08 18 */	frsp f0, f1
/* 8014AD74  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014AD78  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 8014AD7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014AD80  38 81 00 20 */	addi r4, r1, 0x20
/* 8014AD84  38 A1 00 14 */	addi r5, r1, 0x14
/* 8014AD88  38 C1 00 08 */	addi r6, r1, 8
/* 8014AD8C  48 00 00 15 */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyz4cXyzs
/* 8014AD90  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8014AD94  7C 08 03 A6 */	mtlr r0
/* 8014AD98  38 21 00 50 */	addi r1, r1, 0x50
/* 8014AD9C  4E 80 00 20 */	blr 
