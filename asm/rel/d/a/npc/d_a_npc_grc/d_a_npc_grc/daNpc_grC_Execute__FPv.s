lbl_809CEC1C:
/* 809CEC1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CEC20  7C 08 02 A6 */	mflr r0
/* 809CEC24  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CEC28  4B FF D1 D1 */	bl Execute__11daNpc_grC_cFv
/* 809CEC2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CEC30  7C 08 03 A6 */	mtlr r0
/* 809CEC34  38 21 00 10 */	addi r1, r1, 0x10
/* 809CEC38  4E 80 00 20 */	blr 
