lbl_80B15650:
/* 80B15650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B15654  7C 08 02 A6 */	mflr r0
/* 80B15658  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1565C  4B FF F8 75 */	bl CreateHeap__10daNpcTks_cFv
/* 80B15660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B15664  7C 08 03 A6 */	mtlr r0
/* 80B15668  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1566C  4E 80 00 20 */	blr 
