lbl_80BC65CC:
/* 80BC65CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC65D0  7C 08 02 A6 */	mflr r0
/* 80BC65D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC65D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC65DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC65E0  7C 7E 1B 78 */	mr r30, r3
/* 80BC65E4  7C 9F 23 78 */	mr r31, r4
/* 80BC65E8  3C 60 80 BC */	lis r3, l_chainOffset@ha
/* 80BC65EC  C4 03 6C 9C */	lfsu f0, l_chainOffset@l(r3)
/* 80BC65F0  D0 04 00 00 */	stfs f0, 0(r4)
/* 80BC65F4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BC65F8  D0 04 00 04 */	stfs f0, 4(r4)
/* 80BC65FC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BC6600  D0 04 00 08 */	stfs f0, 8(r4)
/* 80BC6604  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BC6608  4B 44 67 5C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC660C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC6610  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC6614  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BC6618  4B 44 5E 1C */	b mDoMtx_YrotM__FPA4_fs
/* 80BC661C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC6620  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC6624  7F E4 FB 78 */	mr r4, r31
/* 80BC6628  7F E5 FB 78 */	mr r5, r31
/* 80BC662C  4B 78 07 40 */	b PSMTXMultVec
/* 80BC6630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC6634  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC6638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC663C  7C 08 03 A6 */	mtlr r0
/* 80BC6640  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC6644  4E 80 00 20 */	blr 
