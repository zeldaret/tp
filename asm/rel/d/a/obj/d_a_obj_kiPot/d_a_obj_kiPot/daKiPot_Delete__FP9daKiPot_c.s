lbl_80C450A8:
/* 80C450A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C450AC  7C 08 02 A6 */	mflr r0
/* 80C450B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C450B4  4B FF FF AD */	bl Delete__9daKiPot_cFv
/* 80C450B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C450BC  7C 08 03 A6 */	mtlr r0
/* 80C450C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C450C4  4E 80 00 20 */	blr 
