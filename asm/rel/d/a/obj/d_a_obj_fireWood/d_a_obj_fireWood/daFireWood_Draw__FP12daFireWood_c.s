lbl_80BE7EA4:
/* 80BE7EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE7EA8  7C 08 02 A6 */	mflr r0
/* 80BE7EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE7EB0  4B FF FF C5 */	bl Draw__12daFireWood_cFv
/* 80BE7EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE7EB8  7C 08 03 A6 */	mtlr r0
/* 80BE7EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE7EC0  4E 80 00 20 */	blr 
