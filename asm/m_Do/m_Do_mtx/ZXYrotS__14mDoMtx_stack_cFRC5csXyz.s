lbl_8000CF0C:
/* 8000CF0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CF10  7C 08 02 A6 */	mflr r0
/* 8000CF14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CF18  7C 66 1B 78 */	mr r6, r3
/* 8000CF1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8000CF20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8000CF24  A8 86 00 00 */	lha r4, 0(r6)
/* 8000CF28  A8 A6 00 02 */	lha r5, 2(r6)
/* 8000CF2C  A8 C6 00 04 */	lha r6, 4(r6)
/* 8000CF30  4B FF F2 D9 */	bl mDoMtx_ZXYrotS__FPA4_fsss
/* 8000CF34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000CF38  7C 08 03 A6 */	mtlr r0
/* 8000CF3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8000CF40  4E 80 00 20 */	blr 
