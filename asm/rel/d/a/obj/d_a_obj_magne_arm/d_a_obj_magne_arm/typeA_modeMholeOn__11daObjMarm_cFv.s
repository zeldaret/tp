lbl_80590C48:
/* 80590C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590C4C  7C 08 02 A6 */	mflr r0
/* 80590C50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590C54  48 00 00 1D */	bl init_typeA_modeRotate__11daObjMarm_cFv
/* 80590C58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590C5C  7C 08 03 A6 */	mtlr r0
/* 80590C60  38 21 00 10 */	addi r1, r1, 0x10
/* 80590C64  4E 80 00 20 */	blr 
