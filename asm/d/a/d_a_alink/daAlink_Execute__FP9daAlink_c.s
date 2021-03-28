lbl_800CAFA8:
/* 800CAFA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CAFAC  7C 08 02 A6 */	mflr r0
/* 800CAFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CAFB4  4B FF D7 4D */	bl execute__9daAlink_cFv
/* 800CAFB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CAFBC  7C 08 03 A6 */	mtlr r0
/* 800CAFC0  38 21 00 10 */	addi r1, r1, 0x10
/* 800CAFC4  4E 80 00 20 */	blr 
