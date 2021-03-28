lbl_80D679A8:
/* 80D679A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D679AC  7C 08 02 A6 */	mflr r0
/* 80D679B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D679B4  4B FF F3 29 */	bl create__9daTitle_cFv
/* 80D679B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D679BC  7C 08 03 A6 */	mtlr r0
/* 80D679C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D679C4  4E 80 00 20 */	blr 
