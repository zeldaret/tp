lbl_802621AC:
/* 802621AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802621B0  7C 08 02 A6 */	mflr r0
/* 802621B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802621B8  4B FF FF 11 */	bl draw__11dkWpillar_cFv
/* 802621BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802621C0  7C 08 03 A6 */	mtlr r0
/* 802621C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802621C8  4E 80 00 20 */	blr 
