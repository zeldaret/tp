lbl_80A6EA1C:
/* 80A6EA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6EA20  7C 08 02 A6 */	mflr r0
/* 80A6EA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6EA28  4B FF CB D5 */	bl Delete__11daNpc_Lud_cFv
/* 80A6EA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6EA30  7C 08 03 A6 */	mtlr r0
/* 80A6EA34  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6EA38  4E 80 00 20 */	blr 
