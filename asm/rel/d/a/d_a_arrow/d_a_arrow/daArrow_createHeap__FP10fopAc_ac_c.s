lbl_80499D6C:
/* 80499D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80499D70  7C 08 02 A6 */	mflr r0
/* 80499D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80499D78  4B FF FE F5 */	bl createHeap__9daArrow_cFv
/* 80499D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80499D80  7C 08 03 A6 */	mtlr r0
/* 80499D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80499D88  4E 80 00 20 */	blr 
