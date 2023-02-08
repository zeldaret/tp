lbl_80A087BC:
/* 80A087BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A087C0  7C 08 02 A6 */	mflr r0
/* 80A087C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A087C8  4B FF F9 31 */	bl CreateHeap__12daNpcImpal_cFv
/* 80A087CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A087D0  7C 08 03 A6 */	mtlr r0
/* 80A087D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A087D8  4E 80 00 20 */	blr 
