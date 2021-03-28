lbl_80D2D488:
/* 80D2D488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2D48C  7C 08 02 A6 */	mflr r0
/* 80D2D490  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2D494  48 00 01 2D */	bl actionUpFirstInit__12daWtPillar_cFv
/* 80D2D498  38 60 00 01 */	li r3, 1
/* 80D2D49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2D4A0  7C 08 03 A6 */	mtlr r0
/* 80D2D4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2D4A8  4E 80 00 20 */	blr 
