lbl_80CCA848:
/* 80CCA848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCA84C  7C 08 02 A6 */	mflr r0
/* 80CCA850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCA854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCA858  7C 7F 1B 78 */	mr r31, r3
/* 80CCA85C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCA860  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCA864  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CCA868  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CCA86C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CCA870  4B 67 C0 78 */	b PSMTXTrans
/* 80CCA874  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCA878  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCA87C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CCA880  4B 34 1B B4 */	b mDoMtx_YrotM__FPA4_fs
/* 80CCA884  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCA888  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCA88C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CCA890  4B 34 1B 0C */	b mDoMtx_XrotM__FPA4_fs
/* 80CCA894  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCA898  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCA89C  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80CCA8A0  4B 34 1C 2C */	b mDoMtx_ZrotM__FPA4_fs
/* 80CCA8A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CCA8A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CCA8AC  80 9F 06 00 */	lwz r4, 0x600(r31)
/* 80CCA8B0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CCA8B4  4B 67 BB FC */	b PSMTXCopy
/* 80CCA8B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCA8BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCA8C0  7C 08 03 A6 */	mtlr r0
/* 80CCA8C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCA8C8  4E 80 00 20 */	blr 
