lbl_8057D1F8:
/* 8057D1F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057D1FC  7C 08 02 A6 */	mflr r0
/* 8057D200  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057D204  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057D208  7C 7F 1B 78 */	mr r31, r3
/* 8057D20C  3C 60 80 58 */	lis r3, l_HIO@ha
/* 8057D210  38 63 F8 E4 */	addi r3, r3, l_HIO@l
/* 8057D214  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8057D218  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 8057D21C  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8057D220  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 8057D224  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8057D228  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 8057D22C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057D230  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057D234  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8057D238  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8057D23C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8057D240  4B DC 96 A8 */	b PSMTXTrans
/* 8057D244  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057D248  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057D24C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8057D250  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 8057D254  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 8057D258  4B A8 F0 48 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8057D25C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057D260  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057D264  A8 9F 09 3C */	lha r4, 0x93c(r31)
/* 8057D268  A8 BF 09 3E */	lha r5, 0x93e(r31)
/* 8057D26C  A8 DF 09 40 */	lha r6, 0x940(r31)
/* 8057D270  4B A8 F0 30 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 8057D274  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 8057D278  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 8057D27C  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 8057D280  4B A8 FB B8 */	b scaleM__14mDoMtx_stack_cFfff
/* 8057D284  3C 60 80 58 */	lis r3, lit_3660@ha
/* 8057D288  C0 03 F5 80 */	lfs f0, lit_3660@l(r3)
/* 8057D28C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8057D290  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8057D294  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8057D298  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 8057D29C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8057D2A0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8057D2A4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8057D2A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8057D2AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8057D2B0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8057D2B4  38 84 00 24 */	addi r4, r4, 0x24
/* 8057D2B8  4B DC 91 F8 */	b PSMTXCopy
/* 8057D2BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057D2C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057D2C4  7C 08 03 A6 */	mtlr r0
/* 8057D2C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8057D2CC  4E 80 00 20 */	blr 
