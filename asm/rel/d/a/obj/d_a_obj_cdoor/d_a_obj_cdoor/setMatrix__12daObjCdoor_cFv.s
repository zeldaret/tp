lbl_80BC73C0:
/* 80BC73C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC73C4  7C 08 02 A6 */	mflr r0
/* 80BC73C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC73CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC73D0  7C 7F 1B 78 */	mr r31, r3
/* 80BC73D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC73D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC73DC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BC73E0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BC73E4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BC73E8  4B 77 F5 00 */	b PSMTXTrans
/* 80BC73EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC73F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC73F4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BC73F8  4B 44 50 3C */	b mDoMtx_YrotM__FPA4_fs
/* 80BC73FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC7400  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC7404  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BC7408  38 84 00 24 */	addi r4, r4, 0x24
/* 80BC740C  4B 77 F0 A4 */	b PSMTXCopy
/* 80BC7410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC7414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC7418  7C 08 03 A6 */	mtlr r0
/* 80BC741C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC7420  4E 80 00 20 */	blr 
