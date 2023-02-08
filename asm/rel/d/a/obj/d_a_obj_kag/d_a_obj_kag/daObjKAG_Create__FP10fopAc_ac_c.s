lbl_80C2E75C:
/* 80C2E75C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2E760  7C 08 02 A6 */	mflr r0
/* 80C2E764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2E768  48 00 21 89 */	bl create__10daObjKAG_cFv
/* 80C2E76C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2E770  7C 08 03 A6 */	mtlr r0
/* 80C2E774  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2E778  4E 80 00 20 */	blr 
