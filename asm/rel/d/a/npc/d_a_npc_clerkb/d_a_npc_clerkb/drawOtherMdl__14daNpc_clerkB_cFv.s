lbl_80997B58:
/* 80997B58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80997B5C  7C 08 02 A6 */	mflr r0
/* 80997B60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80997B64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80997B68  7C 7F 1B 78 */	mr r31, r3
/* 80997B6C  88 03 11 11 */	lbz r0, 0x1111(r3)
/* 80997B70  28 00 00 00 */	cmplwi r0, 0
/* 80997B74  41 82 00 30 */	beq lbl_80997BA4
/* 80997B78  4B 80 0D D8 */	b itemRotate__13dShopSystem_cFv
/* 80997B7C  3C 60 80 9A */	lis r3, lit_4152@ha
/* 80997B80  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)
/* 80997B84  D0 01 00 08 */	stfs f0, 8(r1)
/* 80997B88  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80997B8C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80997B90  7F E3 FB 78 */	mr r3, r31
/* 80997B94  38 81 00 08 */	addi r4, r1, 8
/* 80997B98  4B 80 0E 94 */	b itemZoom__13dShopSystem_cFP4cXyz
/* 80997B9C  7F E3 FB 78 */	mr r3, r31
/* 80997BA0  4B 80 0C D8 */	b drawCursor__13dShopSystem_cFv
lbl_80997BA4:
/* 80997BA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80997BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80997BAC  7C 08 03 A6 */	mtlr r0
/* 80997BB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80997BB4  4E 80 00 20 */	blr 
