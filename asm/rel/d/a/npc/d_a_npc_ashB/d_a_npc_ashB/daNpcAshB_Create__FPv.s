lbl_809609A8:
/* 809609A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809609AC  7C 08 02 A6 */	mflr r0
/* 809609B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809609B4  4B FF D8 71 */	bl Create__11daNpcAshB_cFv
/* 809609B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809609BC  7C 08 03 A6 */	mtlr r0
/* 809609C0  38 21 00 10 */	addi r1, r1, 0x10
/* 809609C4  4E 80 00 20 */	blr 
