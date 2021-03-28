lbl_80C1CBC8:
/* 80C1CBC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1CBCC  7C 08 02 A6 */	mflr r0
/* 80C1CBD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1CBD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1CBD8  7C 7F 1B 78 */	mr r31, r3
/* 80C1CBDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1CBE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1CBE4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C1CBE8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C1CBEC  C0 1F 05 BC */	lfs f0, 0x5bc(r31)
/* 80C1CBF0  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C1CBF4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C1CBF8  4B 72 9C F0 */	b PSMTXTrans
/* 80C1CBFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1CC00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1CC04  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C1CC08  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C1CC0C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C1CC10  4B 3E F6 90 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C1CC14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1CC18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1CC1C  A8 9F 05 CC */	lha r4, 0x5cc(r31)
/* 80C1CC20  A8 BF 05 CE */	lha r5, 0x5ce(r31)
/* 80C1CC24  A8 DF 05 D0 */	lha r6, 0x5d0(r31)
/* 80C1CC28  4B 3E F6 78 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C1CC2C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C1CC30  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C1CC34  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C1CC38  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C1CC3C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C1CC40  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C1CC44  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C1CC48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1CC4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1CC50  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C1CC54  38 84 00 24 */	addi r4, r4, 0x24
/* 80C1CC58  4B 72 98 58 */	b PSMTXCopy
/* 80C1CC5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1CC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1CC64  7C 08 03 A6 */	mtlr r0
/* 80C1CC68  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1CC6C  4E 80 00 20 */	blr 
