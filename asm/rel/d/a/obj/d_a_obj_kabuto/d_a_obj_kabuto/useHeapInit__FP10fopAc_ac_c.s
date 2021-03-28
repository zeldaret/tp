lbl_80C2AF68:
/* 80C2AF68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2AF6C  7C 08 02 A6 */	mflr r0
/* 80C2AF70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2AF74  48 00 00 15 */	bl CreateHeap__13daObjKABUTO_cFv
/* 80C2AF78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2AF7C  7C 08 03 A6 */	mtlr r0
/* 80C2AF80  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2AF84  4E 80 00 20 */	blr 
