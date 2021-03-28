lbl_80BFD724:
/* 80BFD724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD728  7C 08 02 A6 */	mflr r0
/* 80BFD72C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD734  7C 7F 1B 78 */	mr r31, r3
/* 80BFD738  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BFD73C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BFD740  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BFD744  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BFD748  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BFD74C  4B 74 91 9C */	b PSMTXTrans
/* 80BFD750  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BFD754  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BFD758  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80BFD75C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BFD760  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BFD764  4B 40 EB 3C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80BFD768  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 80BFD76C  3C 60 80 C0 */	lis r3, lit_3648@ha
/* 80BFD770  C0 43 DF EC */	lfs f2, lit_3648@l(r3)
/* 80BFD774  FC 60 10 90 */	fmr f3, f2
/* 80BFD778  4B 40 F6 24 */	b transM__14mDoMtx_stack_cFfff
/* 80BFD77C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BFD780  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BFD784  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BFD788  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BFD78C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BFD790  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80BFD794  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BFD798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BFD79C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BFD7A0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BFD7A4  38 84 00 24 */	addi r4, r4, 0x24
/* 80BFD7A8  4B 74 8D 08 */	b PSMTXCopy
/* 80BFD7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD7B4  7C 08 03 A6 */	mtlr r0
/* 80BFD7B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD7BC  4E 80 00 20 */	blr 
