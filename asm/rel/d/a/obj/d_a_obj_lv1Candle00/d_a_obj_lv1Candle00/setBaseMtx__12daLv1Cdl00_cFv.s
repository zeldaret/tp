lbl_80C55D80:
/* 80C55D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C55D84  7C 08 02 A6 */	mflr r0
/* 80C55D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C55D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C55D90  7C 7F 1B 78 */	mr r31, r3
/* 80C55D94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C55D98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C55D9C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C55DA0  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C55DA4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C55DA8  4B 6F 0B 41 */	bl PSMTXTrans
/* 80C55DAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C55DB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C55DB4  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80C55DB8  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80C55DBC  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80C55DC0  4B 3B 64 E1 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80C55DC4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80C55DC8  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C55DCC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C55DD0  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C55DD4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C55DD8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C55DDC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C55DE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C55DE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C55DE8  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C55DEC  38 84 00 24 */	addi r4, r4, 0x24
/* 80C55DF0  4B 6F 06 C1 */	bl PSMTXCopy
/* 80C55DF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C55DF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C55DFC  7C 08 03 A6 */	mtlr r0
/* 80C55E00  38 21 00 10 */	addi r1, r1, 0x10
/* 80C55E04  4E 80 00 20 */	blr 
