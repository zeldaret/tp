lbl_80BA6A70:
/* 80BA6A70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6A74  7C 08 02 A6 */	mflr r0
/* 80BA6A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6A7C  4B FF F9 21 */	bl Draw__16daObj_AutoMata_cFv
/* 80BA6A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6A84  7C 08 03 A6 */	mtlr r0
/* 80BA6A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6A8C  4E 80 00 20 */	blr 
