lbl_8000CE9C:
/* 8000CE9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CEA0  7C 08 02 A6 */	mflr r0
/* 8000CEA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CEA8  7C 66 1B 78 */	mr r6, r3
/* 8000CEAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8000CEB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8000CEB4  A8 86 00 00 */	lha r4, 0(r6)
/* 8000CEB8  A8 A6 00 02 */	lha r5, 2(r6)
/* 8000CEBC  A8 C6 00 04 */	lha r6, 4(r6)
/* 8000CEC0  4B FF F2 0D */	bl mDoMtx_XYZrotS__FPA4_fsss
/* 8000CEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000CEC8  7C 08 03 A6 */	mtlr r0
/* 8000CECC  38 21 00 10 */	addi r1, r1, 0x10
/* 8000CED0  4E 80 00 20 */	blr 
