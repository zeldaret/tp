lbl_80C2A930:
/* 80C2A930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2A934  7C 08 02 A6 */	mflr r0
/* 80C2A938  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2A93C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2A940  7C 7F 1B 78 */	mr r31, r3
/* 80C2A944  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C2A948  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2A94C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C2A950  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C2A954  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C2A958  4B 71 BF 90 */	b PSMTXTrans
/* 80C2A95C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C2A960  4B 3E 25 E4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C2A964  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C2A968  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2A96C  A8 9F 09 DC */	lha r4, 0x9dc(r31)
/* 80C2A970  4B 3E 1A 2C */	b mDoMtx_XrotM__FPA4_fs
/* 80C2A974  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C2A978  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2A97C  A8 9F 09 E0 */	lha r4, 0x9e0(r31)
/* 80C2A980  4B 3E 1B 4C */	b mDoMtx_ZrotM__FPA4_fs
/* 80C2A984  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80C2A988  4B 3E 24 E8 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80C2A98C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C2A990  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C2A994  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80C2A998  54 00 10 3A */	slwi r0, r0, 2
/* 80C2A99C  7C 9F 02 14 */	add r4, r31, r0
/* 80C2A9A0  80 84 05 74 */	lwz r4, 0x574(r4)
/* 80C2A9A4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C2A9A8  4B 71 BB 08 */	b PSMTXCopy
/* 80C2A9AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2A9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2A9B4  7C 08 03 A6 */	mtlr r0
/* 80C2A9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2A9BC  4E 80 00 20 */	blr 
