lbl_8000CF7C:
/* 8000CF7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8000CF80  7C 08 02 A6 */	mflr r0
/* 8000CF84  90 01 00 44 */	stw r0, 0x44(r1)
/* 8000CF88  7C 64 1B 78 */	mr r4, r3
/* 8000CF8C  38 61 00 08 */	addi r3, r1, 8
/* 8000CF90  48 33 9A 59 */	bl PSMTXQuat
/* 8000CF94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8000CF98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8000CF9C  38 81 00 08 */	addi r4, r1, 8
/* 8000CFA0  7C 65 1B 78 */	mr r5, r3
/* 8000CFA4  48 33 95 41 */	bl PSMTXConcat
/* 8000CFA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8000CFAC  7C 08 03 A6 */	mtlr r0
/* 8000CFB0  38 21 00 40 */	addi r1, r1, 0x40
/* 8000CFB4  4E 80 00 20 */	blr 
