lbl_80C78B7C:
/* 80C78B7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C78B80  7C 08 02 A6 */	mflr r0
/* 80C78B84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C78B88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C78B8C  7C 7F 1B 78 */	mr r31, r3
/* 80C78B90  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C78B94  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80C78B98  3C A0 80 C8 */	lis r5, lit_4110@ha
/* 80C78B9C  C0 25 9A D0 */	lfs f1, lit_4110@l(r5)
/* 80C78BA0  C0 5F 05 D4 */	lfs f2, 0x5d4(r31)
/* 80C78BA4  FC 60 08 90 */	fmr f3, f1
/* 80C78BA8  4B 5F 6F 10 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C78BAC  3C 60 80 C8 */	lis r3, lit_3958@ha
/* 80C78BB0  C0 03 9A 90 */	lfs f0, lit_3958@l(r3)
/* 80C78BB4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C78BB8  40 82 00 0C */	bne lbl_80C78BC4
/* 80C78BBC  7F E3 FB 78 */	mr r3, r31
/* 80C78BC0  48 00 00 75 */	bl init_modeBoundWait__12daTogeRoll_cFv
lbl_80C78BC4:
/* 80C78BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C78BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C78BCC  7C 08 03 A6 */	mtlr r0
/* 80C78BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C78BD4  4E 80 00 20 */	blr 
