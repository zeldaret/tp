lbl_80D13ABC:
/* 80D13ABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D13AC0  7C 08 02 A6 */	mflr r0
/* 80D13AC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D13AC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D13ACC  7C 7F 1B 78 */	mr r31, r3
/* 80D13AD0  4B 30 52 10 */	b fopAc_IsActor__FPv
/* 80D13AD4  2C 03 00 00 */	cmpwi r3, 0
/* 80D13AD8  41 82 00 68 */	beq lbl_80D13B40
/* 80D13ADC  A8 1F 00 08 */	lha r0, 8(r31)
/* 80D13AE0  2C 00 01 FC */	cmpwi r0, 0x1fc
/* 80D13AE4  40 82 00 5C */	bne lbl_80D13B40
/* 80D13AE8  7F E3 FB 78 */	mr r3, r31
/* 80D13AEC  4B 9D 76 10 */	b isWait__8daE_HZ_cFv
/* 80D13AF0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D13AF4  28 00 00 01 */	cmplwi r0, 1
/* 80D13AF8  40 82 00 48 */	bne lbl_80D13B40
/* 80D13AFC  3C 60 80 D1 */	lis r3, hz_check_pos_x@ha
/* 80D13B00  C0 23 59 10 */	lfs f1, hz_check_pos_x@l(r3)
/* 80D13B04  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D13B08  EC 41 00 28 */	fsubs f2, f1, f0
/* 80D13B0C  3C 60 80 D1 */	lis r3, hz_check_pos_z@ha
/* 80D13B10  C0 23 59 14 */	lfs f1, hz_check_pos_z@l(r3)
/* 80D13B14  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D13B18  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D13B1C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80D13B20  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D13B24  EC 21 00 2A */	fadds f1, f1, f0
/* 80D13B28  3C 60 80 D1 */	lis r3, lit_3917@ha
/* 80D13B2C  C0 03 56 0C */	lfs f0, lit_3917@l(r3)
/* 80D13B30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D13B34  40 80 00 0C */	bge lbl_80D13B40
/* 80D13B38  7F E3 FB 78 */	mr r3, r31
/* 80D13B3C  48 00 00 08 */	b lbl_80D13B44
lbl_80D13B40:
/* 80D13B40  38 60 00 00 */	li r3, 0
lbl_80D13B44:
/* 80D13B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D13B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D13B4C  7C 08 03 A6 */	mtlr r0
/* 80D13B50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D13B54  4E 80 00 20 */	blr 
