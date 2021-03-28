lbl_80BC86FC:
/* 80BC86FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC8700  7C 08 02 A6 */	mflr r0
/* 80BC8704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC870C  7C 7F 1B 78 */	mr r31, r3
/* 80BC8710  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC8714  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC8718  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BC871C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BC8720  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BC8724  4B 77 E1 C4 */	b PSMTXTrans
/* 80BC8728  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC872C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC8730  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BC8734  4B 44 3D 00 */	b mDoMtx_YrotM__FPA4_fs
/* 80BC8738  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC873C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC8740  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80BC8744  4B 44 3D 88 */	b mDoMtx_ZrotM__FPA4_fs
/* 80BC8748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC874C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC8750  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 80BC8754  4B 77 DD 5C */	b PSMTXCopy
/* 80BC8758  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC875C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC8760  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80BC8764  38 84 00 24 */	addi r4, r4, 0x24
/* 80BC8768  4B 77 DD 48 */	b PSMTXCopy
/* 80BC876C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC8770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC8774  7C 08 03 A6 */	mtlr r0
/* 80BC8778  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC877C  4E 80 00 20 */	blr 
