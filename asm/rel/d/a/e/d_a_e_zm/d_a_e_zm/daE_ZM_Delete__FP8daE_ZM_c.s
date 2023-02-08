lbl_80831F2C:
/* 80831F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80831F30  7C 08 02 A6 */	mflr r0
/* 80831F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80831F38  4B FF FF 65 */	bl _delete__8daE_ZM_cFv
/* 80831F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80831F40  7C 08 03 A6 */	mtlr r0
/* 80831F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80831F48  4E 80 00 20 */	blr 
