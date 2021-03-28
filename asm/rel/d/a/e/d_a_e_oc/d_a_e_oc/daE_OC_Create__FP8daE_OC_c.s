lbl_807355C8:
/* 807355C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807355CC  7C 08 02 A6 */	mflr r0
/* 807355D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807355D4  4B FF F7 D5 */	bl create__8daE_OC_cFv
/* 807355D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807355DC  7C 08 03 A6 */	mtlr r0
/* 807355E0  38 21 00 10 */	addi r1, r1, 0x10
/* 807355E4  4E 80 00 20 */	blr 
