lbl_80B50F20:
/* 80B50F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B50F24  7C 08 02 A6 */	mflr r0
/* 80B50F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B50F2C  4B FF CD 29 */	bl Execute__13daNpc_Yelia_cFv
/* 80B50F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B50F34  7C 08 03 A6 */	mtlr r0
/* 80B50F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80B50F3C  4E 80 00 20 */	blr 
