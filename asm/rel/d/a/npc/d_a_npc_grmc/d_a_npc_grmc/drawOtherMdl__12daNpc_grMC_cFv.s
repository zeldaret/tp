lbl_809D87A8:
/* 809D87A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D87AC  7C 08 02 A6 */	mflr r0
/* 809D87B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D87B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D87B8  7C 7F 1B 78 */	mr r31, r3
/* 809D87BC  88 03 10 DD */	lbz r0, 0x10dd(r3)
/* 809D87C0  28 00 00 00 */	cmplwi r0, 0
/* 809D87C4  41 82 00 30 */	beq lbl_809D87F4
/* 809D87C8  4B 7C 01 88 */	b itemRotate__13dShopSystem_cFv
/* 809D87CC  3C 60 80 9E */	lis r3, lit_4008@ha
/* 809D87D0  C0 03 9E 18 */	lfs f0, lit_4008@l(r3)
/* 809D87D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 809D87D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809D87DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809D87E0  7F E3 FB 78 */	mr r3, r31
/* 809D87E4  38 81 00 08 */	addi r4, r1, 8
/* 809D87E8  4B 7C 02 44 */	b itemZoom__13dShopSystem_cFP4cXyz
/* 809D87EC  7F E3 FB 78 */	mr r3, r31
/* 809D87F0  4B 7C 00 88 */	b drawCursor__13dShopSystem_cFv
lbl_809D87F4:
/* 809D87F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D87F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D87FC  7C 08 03 A6 */	mtlr r0
/* 809D8800  38 21 00 20 */	addi r1, r1, 0x20
/* 809D8804  4E 80 00 20 */	blr 
