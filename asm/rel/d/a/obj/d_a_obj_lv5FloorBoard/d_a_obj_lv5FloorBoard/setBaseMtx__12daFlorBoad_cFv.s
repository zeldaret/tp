lbl_80C6A6FC:
/* 80C6A6FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A700  7C 08 02 A6 */	mflr r0
/* 80C6A704  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A708  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A70C  7C 7F 1B 78 */	mr r31, r3
/* 80C6A710  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6A714  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6A718  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C6A71C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C6A720  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C6A724  4B 6D C1 C4 */	b PSMTXTrans
/* 80C6A728  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6A72C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6A730  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C6A734  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C6A738  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C6A73C  4B 3A 1B 64 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C6A740  80 7F 07 20 */	lwz r3, 0x720(r31)
/* 80C6A744  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C6A748  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C6A74C  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C6A750  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C6A754  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C6A758  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C6A75C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C6A760  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C6A764  80 9F 07 20 */	lwz r4, 0x720(r31)
/* 80C6A768  38 84 00 24 */	addi r4, r4, 0x24
/* 80C6A76C  4B 6D BD 44 */	b PSMTXCopy
/* 80C6A770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A774  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A778  7C 08 03 A6 */	mtlr r0
/* 80C6A77C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A780  4E 80 00 20 */	blr 
