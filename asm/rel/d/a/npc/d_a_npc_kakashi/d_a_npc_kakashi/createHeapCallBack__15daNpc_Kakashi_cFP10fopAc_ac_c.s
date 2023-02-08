lbl_8054BB34:
/* 8054BB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054BB38  7C 08 02 A6 */	mflr r0
/* 8054BB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054BB40  4B FF FC 99 */	bl CreateHeap__15daNpc_Kakashi_cFv
/* 8054BB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054BB48  7C 08 03 A6 */	mtlr r0
/* 8054BB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054BB50  4E 80 00 20 */	blr 
