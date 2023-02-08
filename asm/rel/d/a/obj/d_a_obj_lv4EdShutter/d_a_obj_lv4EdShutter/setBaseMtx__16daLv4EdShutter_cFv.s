lbl_80C5DE38:
/* 80C5DE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5DE3C  7C 08 02 A6 */	mflr r0
/* 80C5DE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5DE44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5DE48  7C 7F 1B 78 */	mr r31, r3
/* 80C5DE4C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5DE50  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5DE54  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C5DE58  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C5DE5C  C0 1F 05 D0 */	lfs f0, 0x5d0(r31)
/* 80C5DE60  EC 42 00 2A */	fadds f2, f2, f0
/* 80C5DE64  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C5DE68  4B 6E 8A 81 */	bl PSMTXTrans
/* 80C5DE6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5DE70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5DE74  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C5DE78  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C5DE7C  38 C0 00 00 */	li r6, 0
/* 80C5DE80  4B 3A E4 21 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C5DE84  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80C5DE88  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C5DE8C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C5DE90  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C5DE94  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C5DE98  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C5DE9C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C5DEA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C5DEA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C5DEA8  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80C5DEAC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C5DEB0  4B 6E 86 01 */	bl PSMTXCopy
/* 80C5DEB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5DEB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5DEBC  7C 08 03 A6 */	mtlr r0
/* 80C5DEC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5DEC4  4E 80 00 20 */	blr 
