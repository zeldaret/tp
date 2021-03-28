lbl_80BA6480:
/* 80BA6480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6484  7C 08 02 A6 */	mflr r0
/* 80BA6488  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA648C  4B FF FA FD */	bl CreateHeap__16daObj_AutoMata_cFv
/* 80BA6490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6494  7C 08 03 A6 */	mtlr r0
/* 80BA6498  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA649C  4E 80 00 20 */	blr 
