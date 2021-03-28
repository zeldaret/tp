lbl_8000CF44:
/* 8000CF44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CF48  7C 08 02 A6 */	mflr r0
/* 8000CF4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CF50  7C 66 1B 78 */	mr r6, r3
/* 8000CF54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8000CF58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8000CF5C  A8 86 00 00 */	lha r4, 0(r6)
/* 8000CF60  A8 A6 00 02 */	lha r5, 2(r6)
/* 8000CF64  A8 C6 00 04 */	lha r6, 4(r6)
/* 8000CF68  4B FF F3 39 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 8000CF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000CF70  7C 08 03 A6 */	mtlr r0
/* 8000CF74  38 21 00 10 */	addi r1, r1, 0x10
/* 8000CF78  4E 80 00 20 */	blr 
