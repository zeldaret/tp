lbl_80BE73B4:
/* 80BE73B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE73B8  7C 08 02 A6 */	mflr r0
/* 80BE73BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE73C0  4B FF FF 65 */	bl draw__13daObjFchain_cFv
/* 80BE73C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE73C8  7C 08 03 A6 */	mtlr r0
/* 80BE73CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE73D0  4E 80 00 20 */	blr 
