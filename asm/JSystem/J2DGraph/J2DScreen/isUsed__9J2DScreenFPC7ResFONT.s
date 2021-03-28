lbl_802F9620:
/* 802F9620  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F9624  7C 08 02 A6 */	mflr r0
/* 802F9628  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F962C  4B FF DE 8D */	bl isUsed__7J2DPaneFPC7ResFONT
/* 802F9630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F9634  7C 08 03 A6 */	mtlr r0
/* 802F9638  38 21 00 10 */	addi r1, r1, 0x10
/* 802F963C  4E 80 00 20 */	blr 
