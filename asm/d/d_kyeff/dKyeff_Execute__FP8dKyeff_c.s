lbl_801ADDB4:
/* 801ADDB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADDB8  7C 08 02 A6 */	mflr r0
/* 801ADDBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADDC0  4B FF FF 9D */	bl execute__8dKyeff_cFv
/* 801ADDC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADDC8  7C 08 03 A6 */	mtlr r0
/* 801ADDCC  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADDD0  4E 80 00 20 */	blr 
