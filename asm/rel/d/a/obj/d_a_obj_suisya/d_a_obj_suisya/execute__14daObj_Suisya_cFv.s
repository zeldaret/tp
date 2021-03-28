lbl_80CF0168:
/* 80CF0168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CF016C  7C 08 02 A6 */	mflr r0
/* 80CF0170  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CF0174  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CF0178  7C 7F 1B 78 */	mr r31, r3
/* 80CF017C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C1@ha */
/* 80CF0180  38 03 00 C1 */	addi r0, r3, 0x00C1 /* 0x000800C1@l */
/* 80CF0184  90 01 00 08 */	stw r0, 8(r1)
/* 80CF0188  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CF018C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CF0190  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF0194  38 81 00 08 */	addi r4, r1, 8
/* 80CF0198  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CF019C  38 C0 00 00 */	li r6, 0
/* 80CF01A0  38 E0 00 00 */	li r7, 0
/* 80CF01A4  3D 00 80 CF */	lis r8, lit_3665@ha
/* 80CF01A8  C0 28 05 2C */	lfs f1, lit_3665@l(r8)
/* 80CF01AC  FC 40 08 90 */	fmr f2, f1
/* 80CF01B0  3D 00 80 CF */	lis r8, lit_3682@ha
/* 80CF01B4  C0 68 05 30 */	lfs f3, lit_3682@l(r8)
/* 80CF01B8  FC 80 18 90 */	fmr f4, f3
/* 80CF01BC  39 00 00 00 */	li r8, 0
/* 80CF01C0  4B 5B C3 4C */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CF01C4  A8 7F 04 E4 */	lha r3, 0x4e4(r31)
/* 80CF01C8  38 03 00 19 */	addi r0, r3, 0x19
/* 80CF01CC  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80CF01D0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CF01D4  4B 31 CB 90 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CF01D8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80CF01DC  4B 31 CD 68 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CF01E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CF01E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CF01E8  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80CF01EC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CF01F0  4B 65 62 C0 */	b PSMTXCopy
/* 80CF01F4  38 60 00 01 */	li r3, 1
/* 80CF01F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CF01FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CF0200  7C 08 03 A6 */	mtlr r0
/* 80CF0204  38 21 00 20 */	addi r1, r1, 0x20
/* 80CF0208  4E 80 00 20 */	blr 
