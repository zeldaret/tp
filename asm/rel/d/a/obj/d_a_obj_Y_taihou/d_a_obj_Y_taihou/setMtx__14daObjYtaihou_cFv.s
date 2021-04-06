lbl_80BA0084:
/* 80BA0084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA0088  7C 08 02 A6 */	mflr r0
/* 80BA008C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA0090  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BA0094  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BA0098  7C 7E 1B 78 */	mr r30, r3
/* 80BA009C  3C 60 80 BA */	lis r3, lit_3695@ha /* 0x80BA1154@ha */
/* 80BA00A0  3B E3 11 54 */	addi r31, r3, lit_3695@l /* 0x80BA1154@l */
/* 80BA00A4  A8 9E 04 B8 */	lha r4, 0x4b8(r30)
/* 80BA00A8  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80BA00AC  A8 7E 04 CA */	lha r3, 0x4ca(r30)
/* 80BA00B0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80BA00B4  7C 03 00 50 */	subf r0, r3, r0
/* 80BA00B8  7C 00 07 34 */	extsh r0, r0
/* 80BA00BC  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 80BA00C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BA00C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BA00C8  3C 00 43 30 */	lis r0, 0x4330
/* 80BA00CC  90 01 00 08 */	stw r0, 8(r1)
/* 80BA00D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BA00D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BA00D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BA00DC  FC 00 00 1E */	fctiwz f0, f0
/* 80BA00E0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BA00E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA00E8  7C 04 02 14 */	add r0, r4, r0
/* 80BA00EC  B0 1E 04 B8 */	sth r0, 0x4b8(r30)
/* 80BA00F0  3C 60 80 BA */	lis r3, data_80BA135C@ha /* 0x80BA135C@ha */
/* 80BA00F4  38 83 13 5C */	addi r4, r3, data_80BA135C@l /* 0x80BA135C@l */
/* 80BA00F8  88 04 00 00 */	lbz r0, 0(r4)
/* 80BA00FC  7C 00 07 75 */	extsb. r0, r0
/* 80BA0100  40 82 00 28 */	bne lbl_80BA0128
/* 80BA0104  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BA0108  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BA010C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BA0110  C0 03 0C CC */	lfs f0, 0xccc(r3)
/* 80BA0114  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BA0118  3C 60 80 BA */	lis r3, l_wheelMinR@ha /* 0x80BA1358@ha */
/* 80BA011C  D0 03 13 58 */	stfs f0, l_wheelMinR@l(r3)  /* 0x80BA1358@l */
/* 80BA0120  38 00 00 01 */	li r0, 1
/* 80BA0124  98 04 00 00 */	stb r0, 0(r4)
lbl_80BA0128:
/* 80BA0128  A8 9E 04 B8 */	lha r4, 0x4b8(r30)
/* 80BA012C  38 60 19 99 */	li r3, 0x1999
/* 80BA0130  7C 04 1B D6 */	divw r0, r4, r3
/* 80BA0134  7C 00 19 D6 */	mullw r0, r0, r3
/* 80BA0138  7C 60 20 50 */	subf r3, r0, r4
/* 80BA013C  4B 7C 4F 95 */	bl abs
/* 80BA0140  38 03 F3 34 */	addi r0, r3, -3276
/* 80BA0144  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80BA0148  3C 60 80 BA */	lis r3, l_wheelMinR@ha /* 0x80BA1358@ha */
/* 80BA014C  C0 23 13 58 */	lfs f1, l_wheelMinR@l(r3)  /* 0x80BA1358@l */
/* 80BA0150  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BA0154  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BA0158  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BA015C  7C 63 02 14 */	add r3, r3, r0
/* 80BA0160  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BA0164  EC 01 00 24 */	fdivs f0, f1, f0
/* 80BA0168  EC 62 00 28 */	fsubs f3, f2, f0
/* 80BA016C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80BA0170  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80BA0174  EC 01 00 2A */	fadds f0, f1, f0
/* 80BA0178  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80BA017C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80BA0180  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BA0184  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BA0188  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BA018C  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 80BA0190  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80BA0194  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80BA0198  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BA019C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80BA01A0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80BA01A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA01A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA01AC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BA01B0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BA01B4  EC 40 18 28 */	fsubs f2, f0, f3
/* 80BA01B8  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80BA01BC  4B 7A 67 2D */	bl PSMTXTrans
/* 80BA01C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA01C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA01C8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80BA01CC  4B 46 C2 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BA01D0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BA01D4  FC 40 08 90 */	fmr f2, f1
/* 80BA01D8  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80BA01DC  4B 46 CB C1 */	bl transM__14mDoMtx_stack_cFfff
/* 80BA01E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BA01E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BA01E8  38 9E 05 B8 */	addi r4, r30, 0x5b8
/* 80BA01EC  4B 7A 62 C5 */	bl PSMTXCopy
/* 80BA01F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BA01F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BA01F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA01FC  7C 08 03 A6 */	mtlr r0
/* 80BA0200  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA0204  4E 80 00 20 */	blr 
