lbl_80579748:
/* 80579748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057974C  7C 08 02 A6 */	mflr r0
/* 80579750  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80579758  7C 7F 1B 78 */	mr r31, r3
/* 8057975C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80579760  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80579764  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80579768  3C 80 80 58 */	lis r4, lit_3715@ha
/* 8057976C  C0 44 B4 30 */	lfs f2, lit_3715@l(r4)
/* 80579770  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80579774  EC 42 00 2A */	fadds f2, f2, f0
/* 80579778  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8057977C  4B DC D1 6C */	b PSMTXTrans
/* 80579780  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80579784  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80579788  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8057978C  4B A9 2C A8 */	b mDoMtx_YrotM__FPA4_fs
/* 80579790  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80579794  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80579798  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8057979C  38 84 00 24 */	addi r4, r4, 0x24
/* 805797A0  4B DC CD 10 */	b PSMTXCopy
/* 805797A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805797A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805797AC  7C 08 03 A6 */	mtlr r0
/* 805797B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805797B4  4E 80 00 20 */	blr 
