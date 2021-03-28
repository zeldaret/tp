lbl_805CA6C0:
/* 805CA6C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CA6C4  7C 08 02 A6 */	mflr r0
/* 805CA6C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CA6CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CA6D0  7C 7F 1B 78 */	mr r31, r3
/* 805CA6D4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805CA6D8  4B A4 26 8C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805CA6DC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805CA6E0  4B A4 28 64 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805CA6E4  3C 60 80 5D */	lis r3, lit_5006@ha
/* 805CA6E8  C0 23 AE B4 */	lfs f1, lit_5006@l(r3)
/* 805CA6EC  FC 40 08 90 */	fmr f2, f1
/* 805CA6F0  FC 60 08 90 */	fmr f3, f1
/* 805CA6F4  4B A4 27 44 */	b scaleM__14mDoMtx_stack_cFfff
/* 805CA6F8  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 805CA6FC  80 83 00 04 */	lwz r4, 4(r3)
/* 805CA700  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805CA704  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805CA708  38 84 00 24 */	addi r4, r4, 0x24
/* 805CA70C  4B D7 BD A4 */	b PSMTXCopy
/* 805CA710  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 805CA714  28 00 00 00 */	cmplwi r0, 0
/* 805CA718  40 82 00 4C */	bne lbl_805CA764
/* 805CA71C  38 C0 00 00 */	li r6, 0
/* 805CA720  38 80 00 00 */	li r4, 0
/* 805CA724  48 00 00 24 */	b lbl_805CA748
lbl_805CA728:
/* 805CA728  54 C0 04 3F */	clrlwi. r0, r6, 0x10
/* 805CA72C  41 82 00 18 */	beq lbl_805CA744
/* 805CA730  80 65 00 04 */	lwz r3, 4(r5)
/* 805CA734  80 63 00 28 */	lwz r3, 0x28(r3)
/* 805CA738  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 805CA73C  7C 63 00 2E */	lwzx r3, r3, r0
/* 805CA740  90 83 00 04 */	stw r4, 4(r3)
lbl_805CA744:
/* 805CA744  38 C6 00 01 */	addi r6, r6, 1
lbl_805CA748:
/* 805CA748  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 805CA74C  80 A3 00 04 */	lwz r5, 4(r3)
/* 805CA750  80 65 00 04 */	lwz r3, 4(r5)
/* 805CA754  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 805CA758  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 805CA75C  7C 00 18 40 */	cmplw r0, r3
/* 805CA760  41 80 FF C8 */	blt lbl_805CA728
lbl_805CA764:
/* 805CA764  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 805CA768  4B A4 6A 84 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 805CA76C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CA770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CA774  7C 08 03 A6 */	mtlr r0
/* 805CA778  38 21 00 10 */	addi r1, r1, 0x10
/* 805CA77C  4E 80 00 20 */	blr 
