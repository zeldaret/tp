lbl_8036C6E0:
/* 8036C6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036C6E4  7C 08 02 A6 */	mflr r0
/* 8036C6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036C6EC  4B FF CB 89 */	bl __ieee754_acos
/* 8036C6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036C6F4  7C 08 03 A6 */	mtlr r0
/* 8036C6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8036C6FC  4E 80 00 20 */	blr 
