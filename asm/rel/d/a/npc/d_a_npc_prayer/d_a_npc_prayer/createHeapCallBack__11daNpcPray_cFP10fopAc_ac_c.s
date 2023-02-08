lbl_80AB3834:
/* 80AB3834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB3838  7C 08 02 A6 */	mflr r0
/* 80AB383C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB3840  4B FF FC 4D */	bl CreateHeap__11daNpcPray_cFv
/* 80AB3844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB3848  7C 08 03 A6 */	mtlr r0
/* 80AB384C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB3850  4E 80 00 20 */	blr 
