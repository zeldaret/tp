lbl_80AEB634:
/* 80AEB634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEB638  7C 08 02 A6 */	mflr r0
/* 80AEB63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEB640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEB644  7C 7F 1B 78 */	mr r31, r3
/* 80AEB648  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AEB64C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AEB650  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80AEB654  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80AEB658  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80AEB65C  4B 85 B2 8C */	b PSMTXTrans
/* 80AEB660  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AEB664  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AEB668  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80AEB66C  4B 52 0D C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80AEB670  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AEB674  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AEB678  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80AEB67C  38 84 00 24 */	addi r4, r4, 0x24
/* 80AEB680  4B 85 AE 30 */	b PSMTXCopy
/* 80AEB684  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AEB688  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80AEB68C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AEB690  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80AEB694  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AEB698  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80AEB69C  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80AEB6A0  3C 60 80 AF */	lis r3, lit_4181@ha
/* 80AEB6A4  C0 03 BC 44 */	lfs f0, lit_4181@l(r3)
/* 80AEB6A8  EC 01 00 2A */	fadds f0, f1, f0
/* 80AEB6AC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80AEB6B0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80AEB6B4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 80AEB6B8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80AEB6BC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 80AEB6C0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80AEB6C4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 80AEB6C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEB6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEB6D0  7C 08 03 A6 */	mtlr r0
/* 80AEB6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEB6D8  4E 80 00 20 */	blr 
