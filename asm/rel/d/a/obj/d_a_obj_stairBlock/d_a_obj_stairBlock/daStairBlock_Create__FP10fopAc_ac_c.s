lbl_80CE8CBC:
/* 80CE8CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8CC0  7C 08 02 A6 */	mflr r0
/* 80CE8CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8CC8  4B FF F7 29 */	bl create__14daStairBlock_cFv
/* 80CE8CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8CD0  7C 08 03 A6 */	mtlr r0
/* 80CE8CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8CD8  4E 80 00 20 */	blr 
