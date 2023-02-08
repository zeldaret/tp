lbl_80CE7D8C:
/* 80CE7D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE7D90  7C 08 02 A6 */	mflr r0
/* 80CE7D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7D98  4B FF F0 D1 */	bl create__14daObj_SSItem_cFv
/* 80CE7D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE7DA0  7C 08 03 A6 */	mtlr r0
/* 80CE7DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7DA8  4E 80 00 20 */	blr 
