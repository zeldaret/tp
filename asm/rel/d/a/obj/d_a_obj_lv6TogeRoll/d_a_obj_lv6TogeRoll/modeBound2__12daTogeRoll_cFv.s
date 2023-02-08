lbl_80C78BD8:
/* 80C78BD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C78BDC  7C 08 02 A6 */	mflr r0
/* 80C78BE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C78BE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C78BE8  7C 7F 1B 78 */	mr r31, r3
/* 80C78BEC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C78BF0  38 9F 05 B0 */	addi r4, r31, 0x5b0
/* 80C78BF4  3C A0 80 C8 */	lis r5, lit_4110@ha /* 0x80C79AD0@ha */
/* 80C78BF8  C0 25 9A D0 */	lfs f1, lit_4110@l(r5)  /* 0x80C79AD0@l */
/* 80C78BFC  C0 5F 05 D4 */	lfs f2, 0x5d4(r31)
/* 80C78C00  FC 60 08 90 */	fmr f3, f1
/* 80C78C04  4B 5F 6E B5 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C78C08  3C 60 80 C8 */	lis r3, lit_3958@ha /* 0x80C79A90@ha */
/* 80C78C0C  C0 03 9A 90 */	lfs f0, lit_3958@l(r3)  /* 0x80C79A90@l */
/* 80C78C10  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C78C14  40 82 00 0C */	bne lbl_80C78C20
/* 80C78C18  7F E3 FB 78 */	mr r3, r31
/* 80C78C1C  48 00 00 19 */	bl init_modeBoundWait__12daTogeRoll_cFv
lbl_80C78C20:
/* 80C78C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C78C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C78C28  7C 08 03 A6 */	mtlr r0
/* 80C78C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C78C30  4E 80 00 20 */	blr 
