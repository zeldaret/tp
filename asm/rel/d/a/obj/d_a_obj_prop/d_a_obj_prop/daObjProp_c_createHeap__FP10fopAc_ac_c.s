lbl_80CB51D8:
/* 80CB51D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB51DC  7C 08 02 A6 */	mflr r0
/* 80CB51E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB51E4  48 00 00 D1 */	bl createHeap__11daObjProp_cFv
/* 80CB51E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB51EC  7C 08 03 A6 */	mtlr r0
/* 80CB51F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB51F4  4E 80 00 20 */	blr 
