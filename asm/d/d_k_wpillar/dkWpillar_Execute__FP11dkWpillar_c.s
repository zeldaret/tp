lbl_802620A8:
/* 802620A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802620AC  7C 08 02 A6 */	mflr r0
/* 802620B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802620B4  4B FF FF 61 */	bl execute__11dkWpillar_cFv
/* 802620B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802620BC  7C 08 03 A6 */	mtlr r0
/* 802620C0  38 21 00 10 */	addi r1, r1, 0x10
/* 802620C4  4E 80 00 20 */	blr 
