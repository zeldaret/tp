lbl_8045E1C8:
/* 8045E1C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045E1CC  7C 08 02 A6 */	mflr r0
/* 8045E1D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045E1D4  4B FF F8 DD */	bl demoProc__12daDbDoor00_cFv
/* 8045E1D8  38 60 00 01 */	li r3, 1
/* 8045E1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045E1E0  7C 08 03 A6 */	mtlr r0
/* 8045E1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8045E1E8  4E 80 00 20 */	blr 
