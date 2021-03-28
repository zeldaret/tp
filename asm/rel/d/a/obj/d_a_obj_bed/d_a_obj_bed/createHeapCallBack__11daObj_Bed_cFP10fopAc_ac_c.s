lbl_80BADEB8:
/* 80BADEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADEBC  7C 08 02 A6 */	mflr r0
/* 80BADEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADEC4  4B FF FC AD */	bl CreateHeap__11daObj_Bed_cFv
/* 80BADEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADECC  7C 08 03 A6 */	mtlr r0
/* 80BADED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADED4  4E 80 00 20 */	blr 
