lbl_80D213D8:
/* 80D213D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D213DC  7C 08 02 A6 */	mflr r0
/* 80D213E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D213E4  48 00 01 1D */	bl CreateHeap__11daObjVGnd_cFv
/* 80D213E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D213EC  7C 08 03 A6 */	mtlr r0
/* 80D213F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D213F4  4E 80 00 20 */	blr 
