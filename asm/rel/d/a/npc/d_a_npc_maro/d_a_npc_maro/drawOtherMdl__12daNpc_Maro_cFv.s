lbl_8055DA78:
/* 8055DA78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055DA7C  7C 08 02 A6 */	mflr r0
/* 8055DA80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055DA84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8055DA88  7C 7F 1B 78 */	mr r31, r3
/* 8055DA8C  88 03 11 31 */	lbz r0, 0x1131(r3)
/* 8055DA90  28 00 00 00 */	cmplwi r0, 0
/* 8055DA94  41 82 00 30 */	beq lbl_8055DAC4
/* 8055DA98  4B C3 AE B9 */	bl itemRotate__13dShopSystem_cFv
/* 8055DA9C  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 8055DAA0  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 8055DAA4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8055DAA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8055DAAC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8055DAB0  7F E3 FB 78 */	mr r3, r31
/* 8055DAB4  38 81 00 08 */	addi r4, r1, 8
/* 8055DAB8  4B C3 AF 75 */	bl itemZoom__13dShopSystem_cFP4cXyz
/* 8055DABC  7F E3 FB 78 */	mr r3, r31
/* 8055DAC0  4B C3 AD B9 */	bl drawCursor__13dShopSystem_cFv
lbl_8055DAC4:
/* 8055DAC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8055DAC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055DACC  7C 08 03 A6 */	mtlr r0
/* 8055DAD0  38 21 00 20 */	addi r1, r1, 0x20
/* 8055DAD4  4E 80 00 20 */	blr 
