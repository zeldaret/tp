lbl_805A9304:
/* 805A9304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A9308  7C 08 02 A6 */	mflr r0
/* 805A930C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A9310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A9314  93 C1 00 08 */	stw r30, 8(r1)
/* 805A9318  7C 7E 1B 78 */	mr r30, r3
/* 805A931C  80 63 05 70 */	lwz r3, 0x570(r3)
/* 805A9320  83 E3 00 04 */	lwz r31, 4(r3)
/* 805A9324  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 805A9328  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805A932C  38 63 00 30 */	addi r3, r3, 0x30
/* 805A9330  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805A9334  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805A9338  4B D9 D1 78 */	b PSMTXCopy
/* 805A933C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805A9340  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805A9344  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805A9348  D0 1E 06 18 */	stfs f0, 0x618(r30)
/* 805A934C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805A9350  D0 1E 06 1C */	stfs f0, 0x61c(r30)
/* 805A9354  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805A9358  D0 1E 06 20 */	stfs f0, 0x620(r30)
/* 805A935C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805A9360  4B A6 3A 04 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805A9364  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 805A9368  4B A6 3B DC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805A936C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805A9370  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 805A9374  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 805A9378  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 805A937C  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 805A9380  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 805A9384  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805A9388  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805A938C  38 9F 00 24 */	addi r4, r31, 0x24
/* 805A9390  4B D9 D1 20 */	b PSMTXCopy
/* 805A9394  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805A9398  4B A6 7E 54 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 805A939C  38 1F 00 24 */	addi r0, r31, 0x24
/* 805A93A0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 805A93A4  C0 1E 06 18 */	lfs f0, 0x618(r30)
/* 805A93A8  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 805A93AC  C0 1E 06 1C */	lfs f0, 0x61c(r30)
/* 805A93B0  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 805A93B4  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 805A93B8  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 805A93BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A93C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A93C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A93C8  7C 08 03 A6 */	mtlr r0
/* 805A93CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A93D0  4E 80 00 20 */	blr 
