lbl_80BBAA64:
/* 80BBAA64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBAA68  7C 08 02 A6 */	mflr r0
/* 80BBAA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBAA70  4B FF FF 89 */	bl createHeap__12daObjBombf_cFv
/* 80BBAA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBAA78  7C 08 03 A6 */	mtlr r0
/* 80BBAA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBAA80  4E 80 00 20 */	blr 
