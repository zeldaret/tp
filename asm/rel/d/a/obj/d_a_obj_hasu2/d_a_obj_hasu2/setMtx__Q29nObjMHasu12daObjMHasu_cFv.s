lbl_80C183D0:
/* 80C183D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C183D4  7C 08 02 A6 */	mflr r0
/* 80C183D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C183DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C183E0  7C 7F 1B 78 */	mr r31, r3
/* 80C183E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C183E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C183EC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C183F0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C183F4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C183F8  4B 72 E4 F1 */	bl PSMTXTrans
/* 80C183FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C18400  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C18404  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C18408  4B 3F 40 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C1840C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C18410  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C18414  38 9F 05 D8 */	addi r4, r31, 0x5d8
/* 80C18418  4B 72 E0 99 */	bl PSMTXCopy
/* 80C1841C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C18420  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C18424  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80C18428  4B 72 E0 89 */	bl PSMTXCopy
/* 80C1842C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C18430  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C18434  7C 08 03 A6 */	mtlr r0
/* 80C18438  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1843C  4E 80 00 20 */	blr 
