lbl_80A847A8:
/* 80A847A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A847AC  7C 08 02 A6 */	mflr r0
/* 80A847B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A847B4  4B FF FD F9 */	bl CreateHeap__13daNpc_myna2_cFv
/* 80A847B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A847BC  7C 08 03 A6 */	mtlr r0
/* 80A847C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A847C4  4E 80 00 20 */	blr 
