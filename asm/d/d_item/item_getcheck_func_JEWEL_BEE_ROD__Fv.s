lbl_8009A4D0:
/* 8009A4D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A4D4  7C 08 02 A6 */	mflr r0
/* 8009A4D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A4DC  4B FF FB ED */	bl item_getcheck_func_FISHING_ROD_1__Fv
/* 8009A4E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A4E4  7C 08 03 A6 */	mtlr r0
/* 8009A4E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A4EC  4E 80 00 20 */	blr 
