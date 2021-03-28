lbl_8001EE10:
/* 8001EE10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001EE14  7C 08 02 A6 */	mflr r0
/* 8001EE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001EE1C  48 00 03 01 */	bl fopScnRq_Handler__Fv
/* 8001EE20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001EE24  7C 08 03 A6 */	mtlr r0
/* 8001EE28  38 21 00 10 */	addi r1, r1, 0x10
/* 8001EE2C  4E 80 00 20 */	blr 
