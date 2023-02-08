lbl_80BBBE50:
/* 80BBBE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBBE54  7C 08 02 A6 */	mflr r0
/* 80BBBE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBBE5C  4B FF F9 15 */	bl CreateHeap__15daObj_BouMato_cFv
/* 80BBBE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBBE64  7C 08 03 A6 */	mtlr r0
/* 80BBBE68  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBBE6C  4E 80 00 20 */	blr 
