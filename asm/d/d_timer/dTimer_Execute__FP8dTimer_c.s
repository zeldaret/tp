lbl_80260F24:
/* 80260F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80260F28  7C 08 02 A6 */	mflr r0
/* 80260F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80260F30  4B FF BF D5 */	bl _execute__8dTimer_cFv
/* 80260F34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80260F38  7C 08 03 A6 */	mtlr r0
/* 80260F3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80260F40  4E 80 00 20 */	blr 
