lbl_80C16738:
/* 80C16738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1673C  7C 08 02 A6 */	mflr r0
/* 80C16740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C16744  48 00 03 55 */	bl createHeap__14daObjHBarrel_cFv
/* 80C16748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1674C  7C 08 03 A6 */	mtlr r0
/* 80C16750  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16754  4E 80 00 20 */	blr 
