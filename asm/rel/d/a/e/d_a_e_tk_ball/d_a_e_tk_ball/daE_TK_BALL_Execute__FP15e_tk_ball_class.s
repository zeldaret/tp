lbl_807BCF84:
/* 807BCF84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BCF88  7C 08 02 A6 */	mflr r0
/* 807BCF8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BCF90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BCF94  7C 7F 1B 78 */	mr r31, r3
/* 807BCF98  88 03 08 C8 */	lbz r0, 0x8c8(r3)
/* 807BCF9C  28 00 00 00 */	cmplwi r0, 0
/* 807BCFA0  41 82 00 0C */	beq lbl_807BCFAC
/* 807BCFA4  38 60 00 01 */	li r3, 1
/* 807BCFA8  48 00 01 04 */	b lbl_807BD0AC
lbl_807BCFAC:
/* 807BCFAC  A8 7F 05 DC */	lha r3, 0x5dc(r31)
/* 807BCFB0  38 03 00 01 */	addi r0, r3, 1
/* 807BCFB4  B0 1F 05 DC */	sth r0, 0x5dc(r31)
/* 807BCFB8  38 60 00 00 */	li r3, 0
/* 807BCFBC  38 00 00 02 */	li r0, 2
/* 807BCFC0  7C 09 03 A6 */	mtctr r0
lbl_807BCFC4:
/* 807BCFC4  38 A3 05 E2 */	addi r5, r3, 0x5e2
/* 807BCFC8  7C 9F 2A AE */	lhax r4, r31, r5
/* 807BCFCC  2C 04 00 00 */	cmpwi r4, 0
/* 807BCFD0  41 82 00 0C */	beq lbl_807BCFDC
/* 807BCFD4  38 04 FF FF */	addi r0, r4, -1
/* 807BCFD8  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807BCFDC:
/* 807BCFDC  38 63 00 02 */	addi r3, r3, 2
/* 807BCFE0  42 00 FF E4 */	bdnz lbl_807BCFC4
/* 807BCFE4  A8 7F 05 E6 */	lha r3, 0x5e6(r31)
/* 807BCFE8  2C 03 00 00 */	cmpwi r3, 0
/* 807BCFEC  41 82 00 0C */	beq lbl_807BCFF8
/* 807BCFF0  38 03 FF FF */	addi r0, r3, -1
/* 807BCFF4  B0 1F 05 E6 */	sth r0, 0x5e6(r31)
lbl_807BCFF8:
/* 807BCFF8  7F E3 FB 78 */	mr r3, r31
/* 807BCFFC  4B FF FB 99 */	bl action__FP15e_tk_ball_class
/* 807BD000  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 807BD004  38 03 10 00 */	addi r0, r3, 0x1000
/* 807BD008  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 807BD00C  A8 7F 04 E4 */	lha r3, 0x4e4(r31)
/* 807BD010  38 03 0E 00 */	addi r0, r3, 0xe00
/* 807BD014  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 807BD018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD01C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD020  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807BD024  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807BD028  C0 1F 05 F8 */	lfs f0, 0x5f8(r31)
/* 807BD02C  EC 42 00 2A */	fadds f2, f2, f0
/* 807BD030  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 807BD034  4B B8 98 B5 */	bl PSMTXTrans
/* 807BD038  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD03C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD040  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807BD044  4B 84 F3 F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 807BD048  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD04C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD050  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 807BD054  4B 84 F3 49 */	bl mDoMtx_XrotM__FPA4_fs
/* 807BD058  3C 60 80 7C */	lis r3, lit_3763@ha /* 0x807BD580@ha */
/* 807BD05C  C0 23 D5 80 */	lfs f1, lit_3763@l(r3)  /* 0x807BD580@l */
/* 807BD060  FC 40 08 90 */	fmr f2, f1
/* 807BD064  FC 60 08 90 */	fmr f3, f1
/* 807BD068  4B 84 FD D1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 807BD06C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BD070  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BD074  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 807BD078  38 84 00 24 */	addi r4, r4, 0x24
/* 807BD07C  4B B8 94 35 */	bl PSMTXCopy
/* 807BD080  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807BD084  7C 03 07 74 */	extsb r3, r0
/* 807BD088  4B 86 FF E5 */	bl dComIfGp_getReverb__Fi
/* 807BD08C  7C 65 1B 78 */	mr r5, r3
/* 807BD090  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807BD094  38 80 00 00 */	li r4, 0
/* 807BD098  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 807BD09C  81 8C 00 08 */	lwz r12, 8(r12)
/* 807BD0A0  7D 89 03 A6 */	mtctr r12
/* 807BD0A4  4E 80 04 21 */	bctrl 
/* 807BD0A8  38 60 00 01 */	li r3, 1
lbl_807BD0AC:
/* 807BD0AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BD0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD0B4  7C 08 03 A6 */	mtlr r0
/* 807BD0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD0BC  4E 80 00 20 */	blr 
