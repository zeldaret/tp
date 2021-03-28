lbl_8066F738:
/* 8066F738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066F73C  7C 08 02 A6 */	mflr r0
/* 8066F740  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066F744  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8066F748  7C 7F 1B 78 */	mr r31, r3
/* 8066F74C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8066F750  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8066F754  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8066F758  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8066F75C  C0 1F 05 90 */	lfs f0, 0x590(r31)
/* 8066F760  EC 42 00 2A */	fadds f2, f2, f0
/* 8066F764  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8066F768  4B CD 71 80 */	b PSMTXTrans
/* 8066F76C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8066F770  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8066F774  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8066F778  4B 99 CC BC */	b mDoMtx_YrotM__FPA4_fs
/* 8066F77C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8066F780  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8066F784  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 8066F788  38 84 00 24 */	addi r4, r4, 0x24
/* 8066F78C  4B CD 6D 24 */	b PSMTXCopy
/* 8066F790  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8066F794  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8066F798  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8066F79C  3C 80 80 67 */	lis r4, lit_3755@ha
/* 8066F7A0  C0 44 09 18 */	lfs f2, lit_3755@l(r4)
/* 8066F7A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8066F7A8  EC 42 00 2A */	fadds f2, f2, f0
/* 8066F7AC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8066F7B0  4B CD 71 38 */	b PSMTXTrans
/* 8066F7B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8066F7B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8066F7BC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8066F7C0  4B 99 CC 74 */	b mDoMtx_YrotM__FPA4_fs
/* 8066F7C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8066F7C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8066F7CC  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8066F7D0  38 84 00 24 */	addi r4, r4, 0x24
/* 8066F7D4  4B CD 6C DC */	b PSMTXCopy
/* 8066F7D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8066F7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066F7E0  7C 08 03 A6 */	mtlr r0
/* 8066F7E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8066F7E8  4E 80 00 20 */	blr 
