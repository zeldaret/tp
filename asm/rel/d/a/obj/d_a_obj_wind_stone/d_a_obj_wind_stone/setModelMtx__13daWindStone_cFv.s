lbl_80D3811C:
/* 80D3811C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38120  7C 08 02 A6 */	mflr r0
/* 80D38124  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3812C  7C 7F 1B 78 */	mr r31, r3
/* 80D38130  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D38134  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D38138  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D3813C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D38140  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D38144  4B 60 E7 A5 */	bl PSMTXTrans
/* 80D38148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3814C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D38150  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D38154  4B 2D 42 E1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D38158  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3815C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D38160  80 9F 05 84 */	lwz r4, 0x584(r31)
/* 80D38164  38 84 00 24 */	addi r4, r4, 0x24
/* 80D38168  4B 60 E3 49 */	bl PSMTXCopy
/* 80D3816C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D38170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D38174  7C 08 03 A6 */	mtlr r0
/* 80D38178  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3817C  4E 80 00 20 */	blr 
