lbl_8065D29C:
/* 8065D29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8065D2A0  7C 08 02 A6 */	mflr r0
/* 8065D2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065D2A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065D2AC  7C 7F 1B 78 */	mr r31, r3
/* 8065D2B0  38 80 00 0E */	li r4, 0xe
/* 8065D2B4  38 A0 00 00 */	li r5, 0
/* 8065D2B8  3C C0 80 66 */	lis r6, lit_3998@ha
/* 8065D2BC  C0 26 2D C8 */	lfs f1, lit_3998@l(r6)
/* 8065D2C0  3C C0 80 66 */	lis r6, lit_3989@ha
/* 8065D2C4  C0 46 2D B8 */	lfs f2, lit_3989@l(r6)
/* 8065D2C8  4B FF B4 69 */	bl setBck__7daCow_cFiUcff
/* 8065D2CC  C0 1F 0C 7C */	lfs f0, 0xc7c(r31)
/* 8065D2D0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8065D2D4  38 00 00 05 */	li r0, 5
/* 8065D2D8  98 1F 0C 9F */	stb r0, 0xc9f(r31)
/* 8065D2DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065D2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8065D2E4  7C 08 03 A6 */	mtlr r0
/* 8065D2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8065D2EC  4E 80 00 20 */	blr 
