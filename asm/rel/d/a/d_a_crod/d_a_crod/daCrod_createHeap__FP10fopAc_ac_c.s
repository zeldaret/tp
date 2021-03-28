lbl_804A2EF8:
/* 804A2EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A2EFC  7C 08 02 A6 */	mflr r0
/* 804A2F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A2F04  4B FF FF 35 */	bl createHeap__8daCrod_cFv
/* 804A2F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A2F0C  7C 08 03 A6 */	mtlr r0
/* 804A2F10  38 21 00 10 */	addi r1, r1, 0x10
/* 804A2F14  4E 80 00 20 */	blr 
