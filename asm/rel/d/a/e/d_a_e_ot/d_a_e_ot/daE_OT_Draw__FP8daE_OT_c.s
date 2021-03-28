lbl_8073A434:
/* 8073A434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073A438  7C 08 02 A6 */	mflr r0
/* 8073A43C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073A440  4B FF FE D5 */	bl draw__8daE_OT_cFv
/* 8073A444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073A448  7C 08 03 A6 */	mtlr r0
/* 8073A44C  38 21 00 10 */	addi r1, r1, 0x10
/* 8073A450  4E 80 00 20 */	blr 
