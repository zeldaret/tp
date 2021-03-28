lbl_80C3BA8C:
/* 80C3BA8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3BA90  7C 08 02 A6 */	mflr r0
/* 80C3BA94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3BA98  4B FF F4 31 */	bl Execute__10daObjKAT_cFv
/* 80C3BA9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3BAA0  7C 08 03 A6 */	mtlr r0
/* 80C3BAA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3BAA8  4E 80 00 20 */	blr 
