lbl_80993B7C:
/* 80993B7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80993B80  7C 08 02 A6 */	mflr r0
/* 80993B84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80993B88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80993B8C  7C 7F 1B 78 */	mr r31, r3
/* 80993B90  88 03 10 EF */	lbz r0, 0x10ef(r3)
/* 80993B94  28 00 00 00 */	cmplwi r0, 0
/* 80993B98  41 82 00 30 */	beq lbl_80993BC8
/* 80993B9C  4B 80 4D B4 */	b itemRotate__13dShopSystem_cFv
/* 80993BA0  3C 60 80 99 */	lis r3, lit_4123@ha
/* 80993BA4  C0 03 59 20 */	lfs f0, lit_4123@l(r3)
/* 80993BA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80993BAC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80993BB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80993BB4  7F E3 FB 78 */	mr r3, r31
/* 80993BB8  38 81 00 08 */	addi r4, r1, 8
/* 80993BBC  4B 80 4E 70 */	b itemZoom__13dShopSystem_cFP4cXyz
/* 80993BC0  7F E3 FB 78 */	mr r3, r31
/* 80993BC4  4B 80 4C B4 */	b drawCursor__13dShopSystem_cFv
lbl_80993BC8:
/* 80993BC8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80993BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80993BD0  7C 08 03 A6 */	mtlr r0
/* 80993BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80993BD8  4E 80 00 20 */	blr 
