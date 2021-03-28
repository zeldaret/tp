lbl_805ADA0C:
/* 805ADA0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ADA10  7C 08 02 A6 */	mflr r0
/* 805ADA14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ADA18  4B FF FE F5 */	bl CreateHeap__9daL7ODR_cFv
/* 805ADA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ADA20  7C 08 03 A6 */	mtlr r0
/* 805ADA24  38 21 00 10 */	addi r1, r1, 0x10
/* 805ADA28  4E 80 00 20 */	blr 
