lbl_80BBC23C:
/* 80BBC23C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC240  7C 08 02 A6 */	mflr r0
/* 80BBC244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBC24C  7C 7F 1B 78 */	mr r31, r3
/* 80BBC250  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BBC254  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BBC258  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BBC25C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BBC260  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BBC264  4B 78 A6 84 */	b PSMTXTrans
/* 80BBC268  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BBC26C  4B 45 0C D8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BBC270  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BBC274  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BBC278  A8 9F 0A 04 */	lha r4, 0xa04(r31)
/* 80BBC27C  4B 45 01 20 */	b mDoMtx_XrotM__FPA4_fs
/* 80BBC280  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BBC284  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BBC288  A8 9F 0A 08 */	lha r4, 0xa08(r31)
/* 80BBC28C  4B 45 02 40 */	b mDoMtx_ZrotM__FPA4_fs
/* 80BBC290  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80BBC294  4B 45 0B DC */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80BBC298  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BBC29C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BBC2A0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80BBC2A4  38 84 00 24 */	addi r4, r4, 0x24
/* 80BBC2A8  4B 78 A2 08 */	b PSMTXCopy
/* 80BBC2AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBC2B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC2B4  7C 08 03 A6 */	mtlr r0
/* 80BBC2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC2BC  4E 80 00 20 */	blr 
