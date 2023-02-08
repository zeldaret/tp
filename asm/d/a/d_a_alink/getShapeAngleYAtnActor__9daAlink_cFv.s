lbl_800B3630:
/* 800B3630  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800B3634  7C 08 02 A6 */	mflr r0
/* 800B3638  90 01 00 44 */	stw r0, 0x44(r1)
/* 800B363C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800B3640  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800B3644  7C 7E 1B 78 */	mr r30, r3
/* 800B3648  80 83 27 EC */	lwz r4, 0x27ec(r3)
/* 800B364C  28 04 00 00 */	cmplwi r4, 0
/* 800B3650  41 82 00 C4 */	beq lbl_800B3714
/* 800B3654  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800B3658  28 00 00 CB */	cmplwi r0, 0xcb
/* 800B365C  40 82 00 5C */	bne lbl_800B36B8
/* 800B3660  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800B3664  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800B3668  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800B366C  A8 1E 30 20 */	lha r0, 0x3020(r30)
/* 800B3670  2C 00 00 00 */	cmpwi r0, 0
/* 800B3674  38 00 00 0C */	li r0, 0xc
/* 800B3678  40 82 00 08 */	bne lbl_800B3680
/* 800B367C  38 00 00 07 */	li r0, 7
lbl_800B3680:
/* 800B3680  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800B3684  7C 63 02 14 */	add r3, r3, r0
/* 800B3688  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800B368C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800B3690  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800B3694  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800B3698  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800B369C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800B36A0  38 61 00 20 */	addi r3, r1, 0x20
/* 800B36A4  80 9E 27 EC */	lwz r4, 0x27ec(r30)
/* 800B36A8  38 84 05 38 */	addi r4, r4, 0x538
/* 800B36AC  48 1B D5 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800B36B0  7C 7F 1B 78 */	mr r31, r3
/* 800B36B4  48 00 00 44 */	b lbl_800B36F8
lbl_800B36B8:
/* 800B36B8  38 61 00 08 */	addi r3, r1, 8
/* 800B36BC  38 84 05 38 */	addi r4, r4, 0x538
/* 800B36C0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800B36C4  48 1B 34 71 */	bl __mi__4cXyzCFRC3Vec
/* 800B36C8  C0 01 00 08 */	lfs f0, 8(r1)
/* 800B36CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800B36D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800B36D4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800B36D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800B36DC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800B36E0  7F C3 F3 78 */	mr r3, r30
/* 800B36E4  38 81 00 14 */	addi r4, r1, 0x14
/* 800B36E8  48 02 ED 95 */	bl multVecMagneBootInvMtx__9daAlink_cFP4cXyz
/* 800B36EC  38 61 00 14 */	addi r3, r1, 0x14
/* 800B36F0  48 1B 3A 39 */	bl atan2sX_Z__4cXyzCFv
/* 800B36F4  7C 7F 1B 78 */	mr r31, r3
lbl_800B36F8:
/* 800B36F8  7F C3 F3 78 */	mr r3, r30
/* 800B36FC  48 07 46 6D */	bl checkWolfShapeReverse__9daAlink_cCFv
/* 800B3700  2C 03 00 00 */	cmpwi r3, 0
/* 800B3704  41 82 00 14 */	beq lbl_800B3718
/* 800B3708  3F FF 00 01 */	addis r31, r31, 1
/* 800B370C  3B FF 80 00 */	addi r31, r31, -32768
/* 800B3710  48 00 00 08 */	b lbl_800B3718
lbl_800B3714:
/* 800B3714  AB FE 04 E6 */	lha r31, 0x4e6(r30)
lbl_800B3718:
/* 800B3718  7F E3 FB 78 */	mr r3, r31
/* 800B371C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800B3720  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800B3724  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800B3728  7C 08 03 A6 */	mtlr r0
/* 800B372C  38 21 00 40 */	addi r1, r1, 0x40
/* 800B3730  4E 80 00 20 */	blr 
