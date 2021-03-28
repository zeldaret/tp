lbl_80C6AFF0:
/* 80C6AFF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6AFF4  7C 08 02 A6 */	mflr r0
/* 80C6AFF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6AFFC  4B FF F7 F5 */	bl create__12daFlorBoad_cFv
/* 80C6B000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6B004  7C 08 03 A6 */	mtlr r0
/* 80C6B008  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6B00C  4E 80 00 20 */	blr 
