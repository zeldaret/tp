lbl_80CCED74:
/* 80CCED74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCED78  7C 08 02 A6 */	mflr r0
/* 80CCED7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCED80  4B FF FB 31 */	bl CreateHeap__15daObj_Sekizoa_cFv
/* 80CCED84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCED88  7C 08 03 A6 */	mtlr r0
/* 80CCED8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCED90  4E 80 00 20 */	blr 
