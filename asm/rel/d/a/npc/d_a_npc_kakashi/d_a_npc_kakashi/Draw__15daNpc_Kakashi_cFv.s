lbl_8054B994:
/* 8054B994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B998  7C 08 02 A6 */	mflr r0
/* 8054B99C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B9A0  38 80 00 00 */	li r4, 0
/* 8054B9A4  38 A0 00 00 */	li r5, 0
/* 8054B9A8  C0 23 0D E8 */	lfs f1, 0xde8(r3)
/* 8054B9AC  38 C0 00 00 */	li r6, 0
/* 8054B9B0  3C E0 80 55 */	lis r7, lit_4416@ha /* 0x8054EB80@ha */
/* 8054B9B4  C0 47 EB 80 */	lfs f2, lit_4416@l(r7)  /* 0x8054EB80@l */
/* 8054B9B8  38 E0 00 00 */	li r7, 0
/* 8054B9BC  39 00 00 00 */	li r8, 0
/* 8054B9C0  39 20 00 00 */	li r9, 0
/* 8054B9C4  4B BF CE A9 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 8054B9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B9CC  7C 08 03 A6 */	mtlr r0
/* 8054B9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B9D4  4E 80 00 20 */	blr 
