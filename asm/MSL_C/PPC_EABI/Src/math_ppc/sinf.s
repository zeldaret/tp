lbl_8036C9E8:
/* 8036C9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036C9EC  7C 08 02 A6 */	mflr r0
/* 8036C9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036C9F4  4B FF FB 9D */	bl sin
/* 8036C9F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036C9FC  FC 20 08 18 */	frsp f1, f1
/* 8036CA00  7C 08 03 A6 */	mtlr r0
/* 8036CA04  38 21 00 10 */	addi r1, r1, 0x10
/* 8036CA08  4E 80 00 20 */	blr 
