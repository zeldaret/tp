lbl_80C67F18:
/* 80C67F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67F1C  7C 08 02 A6 */	mflr r0
/* 80C67F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67F24  48 00 01 81 */	bl CreateHeap__14daObjLv4Gear_cFv
/* 80C67F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67F2C  7C 08 03 A6 */	mtlr r0
/* 80C67F30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67F34  4E 80 00 20 */	blr 
