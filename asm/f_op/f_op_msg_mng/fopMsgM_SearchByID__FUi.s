lbl_8001FA24:
/* 8001FA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001FA28  7C 08 02 A6 */	mflr r0
/* 8001FA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001FA30  48 00 19 29 */	bl fpcEx_SearchByID__FUi
/* 8001FA34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001FA38  7C 08 03 A6 */	mtlr r0
/* 8001FA3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8001FA40  4E 80 00 20 */	blr 
