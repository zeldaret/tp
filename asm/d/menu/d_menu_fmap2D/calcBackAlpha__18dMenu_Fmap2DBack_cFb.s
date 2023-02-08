lbl_801D4928:
/* 801D4928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D492C  7C 08 02 A6 */	mflr r0
/* 801D4930  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D4934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D4938  7C 7F 1B 78 */	mr r31, r3
/* 801D493C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801D4940  41 82 00 4C */	beq lbl_801D498C
/* 801D4944  C0 22 A7 D4 */	lfs f1, lit_3971(r2)
/* 801D4948  C0 1F 11 E4 */	lfs f0, 0x11e4(r31)
/* 801D494C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D4950  41 82 00 7C */	beq lbl_801D49CC
/* 801D4954  38 7F 11 E4 */	addi r3, r31, 0x11e4
/* 801D4958  C0 42 A8 18 */	lfs f2, lit_5433(r2)
/* 801D495C  C0 62 A7 E8 */	lfs f3, lit_4202(r2)
/* 801D4960  48 09 B0 DD */	bl cLib_addCalc2__FPffff
/* 801D4964  C0 1F 11 E4 */	lfs f0, 0x11e4(r31)
/* 801D4968  C0 22 A7 D4 */	lfs f1, lit_3971(r2)
/* 801D496C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801D4970  FC 00 02 10 */	fabs f0, f0
/* 801D4974  FC 40 00 18 */	frsp f2, f0
/* 801D4978  C0 02 A8 1C */	lfs f0, lit_5434(r2)
/* 801D497C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801D4980  40 80 00 4C */	bge lbl_801D49CC
/* 801D4984  D0 3F 11 E4 */	stfs f1, 0x11e4(r31)
/* 801D4988  48 00 00 44 */	b lbl_801D49CC
lbl_801D498C:
/* 801D498C  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D4990  C0 1F 11 E4 */	lfs f0, 0x11e4(r31)
/* 801D4994  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D4998  41 82 00 34 */	beq lbl_801D49CC
/* 801D499C  38 7F 11 E4 */	addi r3, r31, 0x11e4
/* 801D49A0  C0 42 A8 18 */	lfs f2, lit_5433(r2)
/* 801D49A4  C0 62 A7 E8 */	lfs f3, lit_4202(r2)
/* 801D49A8  48 09 B0 95 */	bl cLib_addCalc2__FPffff
/* 801D49AC  C0 1F 11 E4 */	lfs f0, 0x11e4(r31)
/* 801D49B0  FC 00 02 10 */	fabs f0, f0
/* 801D49B4  FC 20 00 18 */	frsp f1, f0
/* 801D49B8  C0 02 A8 1C */	lfs f0, lit_5434(r2)
/* 801D49BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801D49C0  40 80 00 0C */	bge lbl_801D49CC
/* 801D49C4  C0 02 A7 D0 */	lfs f0, lit_3970(r2)
/* 801D49C8  D0 1F 11 E4 */	stfs f0, 0x11e4(r31)
lbl_801D49CC:
/* 801D49CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D49D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D49D4  7C 08 03 A6 */	mtlr r0
/* 801D49D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801D49DC  4E 80 00 20 */	blr 
