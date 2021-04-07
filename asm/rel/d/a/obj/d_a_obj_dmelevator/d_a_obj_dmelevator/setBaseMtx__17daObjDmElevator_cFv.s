lbl_80BDDD90:
/* 80BDDD90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDDD94  7C 08 02 A6 */	mflr r0
/* 80BDDD98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDDD9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDDDA0  7C 7F 1B 78 */	mr r31, r3
/* 80BDDDA4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BDDDA8  4B 42 EF BD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BDDDAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDDB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDDB4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BDDDB8  4B 42 E6 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 80BDDDBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDDC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDDC4  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80BDDDC8  38 84 00 24 */	addi r4, r4, 0x24
/* 80BDDDCC  4B 76 86 E5 */	bl PSMTXCopy
/* 80BDDDD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDDD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDDD8  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BDDDDC  4B 76 86 D5 */	bl PSMTXCopy
/* 80BDDDE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDDE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDDE8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BDDDEC  4B 42 E5 F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80BDDDF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDDF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDDF8  3C 80 80 BE */	lis r4, l_swOffset@ha /* 0x80BDF870@ha */
/* 80BDDDFC  38 84 F8 70 */	addi r4, r4, l_swOffset@l /* 0x80BDF870@l */
/* 80BDDE00  38 A1 00 08 */	addi r5, r1, 8
/* 80BDDE04  4B 76 8F 69 */	bl PSMTXMultVec
/* 80BDDE08  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BDDE0C  4B 42 EF 59 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BDDE10  38 61 00 08 */	addi r3, r1, 8
/* 80BDDE14  4B 42 EF C1 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80BDDE18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDE1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDE20  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BDDE24  4B 42 E6 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BDDE28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDE2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDE30  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80BDDE34  38 84 00 24 */	addi r4, r4, 0x24
/* 80BDDE38  4B 76 86 79 */	bl PSMTXCopy
/* 80BDDE3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDE40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDE44  38 9F 05 EC */	addi r4, r31, 0x5ec
/* 80BDDE48  4B 76 86 69 */	bl PSMTXCopy
/* 80BDDE4C  C0 5F 06 38 */	lfs f2, 0x638(r31)
/* 80BDDE50  3C 60 80 BE */	lis r3, lit_3821@ha /* 0x80BDF888@ha */
/* 80BDDE54  C0 03 F8 88 */	lfs f0, lit_3821@l(r3)  /* 0x80BDF888@l */
/* 80BDDE58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BDDE5C  40 80 00 08 */	bge lbl_80BDDE64
/* 80BDDE60  FC 40 00 90 */	fmr f2, f0
lbl_80BDDE64:
/* 80BDDE64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDE68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDE6C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BDDE70  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80BDDE74  EC 40 10 2A */	fadds f2, f0, f2
/* 80BDDE78  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BDDE7C  4B 76 8A 6D */	bl PSMTXTrans
/* 80BDDE80  38 61 00 08 */	addi r3, r1, 8
/* 80BDDE84  4B 42 EF 51 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80BDDE88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDE8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDE90  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BDDE94  4B 42 E5 A1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BDDE98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDE9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDEA0  38 9F 05 EC */	addi r4, r31, 0x5ec
/* 80BDDEA4  4B 76 86 0D */	bl PSMTXCopy
/* 80BDDEA8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BDDEAC  4B 42 EE B9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BDDEB0  38 61 00 08 */	addi r3, r1, 8
/* 80BDDEB4  4B 42 EF 21 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80BDDEB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDEBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDEC0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BDDEC4  4B 42 E5 71 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BDDEC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BDDECC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BDDED0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BDDED4  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 80BDDED8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BDDEDC  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 80BDDEE0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BDDEE4  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 80BDDEE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDDEEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDDEF0  7C 08 03 A6 */	mtlr r0
/* 80BDDEF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDDEF8  4E 80 00 20 */	blr 
