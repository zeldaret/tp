lbl_80C604D8:
/* 80C604D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C604DC  7C 08 02 A6 */	mflr r0
/* 80C604E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C604E4  3C 60 80 C6 */	lis r3, lit_3655@ha /* 0x80C6081C@ha */
/* 80C604E8  C0 23 08 1C */	lfs f1, lit_3655@l(r3)  /* 0x80C6081C@l */
/* 80C604EC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C604F0  3C 60 80 C6 */	lis r3, lit_3772@ha /* 0x80C60824@ha */
/* 80C604F4  C0 03 08 24 */	lfs f0, lit_3772@l(r3)  /* 0x80C60824@l */
/* 80C604F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C604FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C60500  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C60504  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C60508  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C6050C  3C 80 80 C6 */	lis r4, l_HIO@ha /* 0x80C609C4@ha */
/* 80C60510  38 84 09 C4 */	addi r4, r4, l_HIO@l /* 0x80C609C4@l */
/* 80C60514  88 84 00 24 */	lbz r4, 0x24(r4)
/* 80C60518  38 A0 00 0F */	li r5, 0xf
/* 80C6051C  38 C1 00 08 */	addi r6, r1, 8
/* 80C60520  4B 40 F5 05 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C60524  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C60528  7C 08 03 A6 */	mtlr r0
/* 80C6052C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C60530  4E 80 00 20 */	blr 
