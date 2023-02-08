lbl_80670CF0:
/* 80670CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670CF4  7C 08 02 A6 */	mflr r0
/* 80670CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80670CFC  48 00 00 15 */	bl CreateHeap__11daBdoorL5_cFv
/* 80670D00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670D04  7C 08 03 A6 */	mtlr r0
/* 80670D08  38 21 00 10 */	addi r1, r1, 0x10
/* 80670D0C  4E 80 00 20 */	blr 
