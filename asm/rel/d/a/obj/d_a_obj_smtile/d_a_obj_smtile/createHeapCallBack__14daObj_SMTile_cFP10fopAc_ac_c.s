lbl_80CDDB28:
/* 80CDDB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDDB2C  7C 08 02 A6 */	mflr r0
/* 80CDDB30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDDB34  4B FF FA 99 */	bl CreateHeap__14daObj_SMTile_cFv
/* 80CDDB38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDDB3C  7C 08 03 A6 */	mtlr r0
/* 80CDDB40  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDDB44  4E 80 00 20 */	blr 
