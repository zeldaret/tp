lbl_8045D574:
/* 8045D574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D578  7C 08 02 A6 */	mflr r0
/* 8045D57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D580  48 00 00 15 */	bl CreateHeap__12daDbDoor00_cFv
/* 8045D584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D588  7C 08 03 A6 */	mtlr r0
/* 8045D58C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D590  4E 80 00 20 */	blr 
