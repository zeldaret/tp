lbl_80020EA8:
/* 80020EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020EAC  7C 08 02 A6 */	mflr r0
/* 80020EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020EB4  4B FF FC 35 */	bl fpcCtRq_IsCreatingByID__FUi
/* 80020EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020EBC  7C 08 03 A6 */	mtlr r0
/* 80020EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80020EC4  4E 80 00 20 */	blr 
