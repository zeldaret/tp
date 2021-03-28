lbl_80651DA4:
/* 80651DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80651DA8  7C 08 02 A6 */	mflr r0
/* 80651DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80651DB0  4B FF FF 6D */	bl _delete__11daB_ZANTZ_cFv
/* 80651DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80651DB8  7C 08 03 A6 */	mtlr r0
/* 80651DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80651DC0  4E 80 00 20 */	blr 
