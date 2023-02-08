lbl_80BC3460:
/* 80BC3460  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BC3464  7C 08 02 A6 */	mflr r0
/* 80BC3468  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BC346C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BC3470  7C 7F 1B 78 */	mr r31, r3
/* 80BC3474  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC3478  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC347C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BC3480  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BC3484  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BC3488  4B 78 34 61 */	bl PSMTXTrans
/* 80BC348C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC3490  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC3494  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80BC3498  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BC349C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BC34A0  4B 44 8E 01 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80BC34A4  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80BC34A8  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80BC34AC  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 80BC34B0  4B 44 99 89 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80BC34B4  3C 60 80 BC */	lis r3, lit_3654@ha /* 0x80BC40A0@ha */
/* 80BC34B8  C0 03 40 A0 */	lfs f0, lit_3654@l(r3)  /* 0x80BC40A0@l */
/* 80BC34BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BC34C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BC34C4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BC34C8  88 1F 07 2D */	lbz r0, 0x72d(r31)
/* 80BC34CC  54 00 10 3A */	slwi r0, r0, 2
/* 80BC34D0  7C 7F 02 14 */	add r3, r31, r0
/* 80BC34D4  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 80BC34D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BC34DC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BC34E0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BC34E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC34E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC34EC  88 1F 07 2D */	lbz r0, 0x72d(r31)
/* 80BC34F0  54 00 10 3A */	slwi r0, r0, 2
/* 80BC34F4  7C 9F 02 14 */	add r4, r31, r0
/* 80BC34F8  80 84 05 A8 */	lwz r4, 0x5a8(r4)
/* 80BC34FC  38 84 00 24 */	addi r4, r4, 0x24
/* 80BC3500  4B 78 2F B1 */	bl PSMTXCopy
/* 80BC3504  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BC3508  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BC350C  7C 08 03 A6 */	mtlr r0
/* 80BC3510  38 21 00 20 */	addi r1, r1, 0x20
/* 80BC3514  4E 80 00 20 */	blr 
