lbl_80BE7F04:
/* 80BE7F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE7F08  7C 08 02 A6 */	mflr r0
/* 80BE7F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE7F10  4B FF F7 F9 */	bl create__12daFireWood_cFv
/* 80BE7F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7F18  7C 08 03 A6 */	mtlr r0
/* 80BE7F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE7F20  4E 80 00 20 */	blr 
