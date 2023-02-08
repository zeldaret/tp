lbl_80CF02F0:
/* 80CF02F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF02F4  7C 08 02 A6 */	mflr r0
/* 80CF02F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF02FC  4B FF FF 89 */	bl CreateHeap__14daObj_Suisya_cFv
/* 80CF0300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF0304  7C 08 03 A6 */	mtlr r0
/* 80CF0308  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF030C  4E 80 00 20 */	blr 
