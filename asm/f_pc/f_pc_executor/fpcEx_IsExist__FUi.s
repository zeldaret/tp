lbl_8002139C:
/* 8002139C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800213A0  7C 08 02 A6 */	mflr r0
/* 800213A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800213A8  4B FF FF B1 */	bl fpcEx_SearchByID__FUi
/* 800213AC  30 03 FF FF */	addic r0, r3, -1
/* 800213B0  7C 60 19 10 */	subfe r3, r0, r3
/* 800213B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800213B8  7C 08 03 A6 */	mtlr r0
/* 800213BC  38 21 00 10 */	addi r1, r1, 0x10
/* 800213C0  4E 80 00 20 */	blr 
