lbl_80BAE68C:
/* 80BAE68C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE690  7C 08 02 A6 */	mflr r0
/* 80BAE694  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAE69C  7C 7F 1B 78 */	mr r31, r3
/* 80BAE6A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE6A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE6A8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BAE6AC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BAE6B0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BAE6B4  4B 79 82 34 */	b PSMTXTrans
/* 80BAE6B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE6BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE6C0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BAE6C4  4B 45 DD 70 */	b mDoMtx_YrotM__FPA4_fs
/* 80BAE6C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE6CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE6D0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BAE6D4  38 84 00 24 */	addi r4, r4, 0x24
/* 80BAE6D8  4B 79 7D D8 */	b PSMTXCopy
/* 80BAE6DC  3C 60 80 BB */	lis r3, lit_3934@ha
/* 80BAE6E0  C0 23 38 24 */	lfs f1, lit_3934@l(r3)
/* 80BAE6E4  FC 40 08 90 */	fmr f2, f1
/* 80BAE6E8  FC 60 08 90 */	fmr f3, f1
/* 80BAE6EC  4B 45 E7 4C */	b scaleM__14mDoMtx_stack_cFfff
/* 80BAE6F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE6F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE6F8  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BAE6FC  4B 79 7D B4 */	b PSMTXCopy
/* 80BAE700  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80BAE704  C0 1F 10 A0 */	lfs f0, 0x10a0(r31)
/* 80BAE708  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BAE70C  C0 1F 10 A4 */	lfs f0, 0x10a4(r31)
/* 80BAE710  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BAE714  C0 1F 10 A8 */	lfs f0, 0x10a8(r31)
/* 80BAE718  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BAE71C  38 7F 0F B8 */	addi r3, r31, 0xfb8
/* 80BAE720  4B 45 E6 44 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BAE724  38 7F 0F C4 */	addi r3, r31, 0xfc4
/* 80BAE728  4B 45 E8 1C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BAE72C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE730  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE734  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80BAE738  38 84 00 24 */	addi r4, r4, 0x24
/* 80BAE73C  4B 79 7D 74 */	b PSMTXCopy
/* 80BAE740  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BAE744  4B 45 E6 20 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BAE748  38 7F 04 B4 */	addi r3, r31, 0x4b4
/* 80BAE74C  4B 45 E7 F8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BAE750  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAE754  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAE758  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 80BAE75C  38 84 00 24 */	addi r4, r4, 0x24
/* 80BAE760  4B 79 7D 50 */	b PSMTXCopy
/* 80BAE764  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAE768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE76C  7C 08 03 A6 */	mtlr r0
/* 80BAE770  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE774  4E 80 00 20 */	blr 
