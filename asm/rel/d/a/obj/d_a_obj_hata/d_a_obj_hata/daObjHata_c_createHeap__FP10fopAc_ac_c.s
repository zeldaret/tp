lbl_80C18BB8:
/* 80C18BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C18BBC  7C 08 02 A6 */	mflr r0
/* 80C18BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C18BC4  48 00 02 3D */	bl createHeap__11daObjHata_cFv
/* 80C18BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18BCC  7C 08 03 A6 */	mtlr r0
/* 80C18BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18BD4  4E 80 00 20 */	blr 
