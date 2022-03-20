lbl_8036C9C4:
/* 8036C9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036C9C8  7C 08 02 A6 */	mflr r0
/* 8036C9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036C9D0  4B FF FC 99 */	bl tan
/* 8036C9D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036C9D8  FC 20 08 18 */	frsp f1, f1
/* 8036C9DC  7C 08 03 A6 */	mtlr r0
/* 8036C9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8036C9E4  4E 80 00 20 */	blr 
