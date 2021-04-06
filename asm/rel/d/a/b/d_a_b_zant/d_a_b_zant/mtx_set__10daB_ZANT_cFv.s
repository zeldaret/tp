lbl_8064CB1C:
/* 8064CB1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8064CB20  7C 08 02 A6 */	mflr r0
/* 8064CB24  90 01 00 34 */	stw r0, 0x34(r1)
/* 8064CB28  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8064CB2C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8064CB30  7C 7F 1B 78 */	mr r31, r3
/* 8064CB34  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8064CB38  4B 9C 02 2D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8064CB3C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8064CB40  4B 9C 04 05 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8064CB44  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x8064F604@ha */
/* 8064CB48  38 63 F6 04 */	addi r3, r3, l_HIO@l /* 0x8064F604@l */
/* 8064CB4C  C0 43 00 08 */	lfs f2, 8(r3)
/* 8064CB50  C0 1F 06 C0 */	lfs f0, 0x6c0(r31)
/* 8064CB54  EC 22 00 32 */	fmuls f1, f2, f0
/* 8064CB58  C0 1F 06 C4 */	lfs f0, 0x6c4(r31)
/* 8064CB5C  EC 42 00 32 */	fmuls f2, f2, f0
/* 8064CB60  FC 60 08 90 */	fmr f3, f1
/* 8064CB64  4B 9C 02 D5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8064CB68  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064CB6C  83 C3 00 04 */	lwz r30, 4(r3)
/* 8064CB70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064CB74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064CB78  38 9E 00 24 */	addi r4, r30, 0x24
/* 8064CB7C  4B CF 99 35 */	bl PSMTXCopy
/* 8064CB80  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064CB84  4B 9C 46 69 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8064CB88  88 1F 07 10 */	lbz r0, 0x710(r31)
/* 8064CB8C  28 00 00 00 */	cmplwi r0, 0
/* 8064CB90  41 82 00 7C */	beq lbl_8064CC0C
/* 8064CB94  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8064CB98  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064CB9C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8064CBA0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064CBA4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064CBA8  4B CF 99 09 */	bl PSMTXCopy
/* 8064CBAC  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 8064CBB0  FC 40 08 90 */	fmr f2, f1
/* 8064CBB4  FC 60 08 90 */	fmr f3, f1
/* 8064CBB8  4B 9C 02 81 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8064CBBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064CBC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064CBC4  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 8064CBC8  38 84 00 24 */	addi r4, r4, 0x24
/* 8064CBCC  4B CF 98 E5 */	bl PSMTXCopy
/* 8064CBD0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8064CBD4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064CBD8  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 8064CBDC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064CBE0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064CBE4  4B CF 98 CD */	bl PSMTXCopy
/* 8064CBE8  C0 3F 06 D0 */	lfs f1, 0x6d0(r31)
/* 8064CBEC  FC 40 08 90 */	fmr f2, f1
/* 8064CBF0  FC 60 08 90 */	fmr f3, f1
/* 8064CBF4  4B 9C 02 45 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8064CBF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064CBFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064CC00  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 8064CC04  38 84 00 24 */	addi r4, r4, 0x24
/* 8064CC08  4B CF 98 A9 */	bl PSMTXCopy
lbl_8064CC0C:
/* 8064CC0C  88 1F 05 E8 */	lbz r0, 0x5e8(r31)
/* 8064CC10  28 00 00 00 */	cmplwi r0, 0
/* 8064CC14  41 82 00 E0 */	beq lbl_8064CCF4
/* 8064CC18  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x8064F604@ha */
/* 8064CC1C  38 63 F6 04 */	addi r3, r3, l_HIO@l /* 0x8064F604@l */
/* 8064CC20  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8064CC24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8064CC28  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8064CC2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8064CC30  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8064CC34  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8064CC38  38 61 00 08 */	addi r3, r1, 8
/* 8064CC3C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8064CC40  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 8064CC44  38 C1 00 14 */	addi r6, r1, 0x14
/* 8064CC48  4B C2 41 79 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8064CC4C  38 61 00 08 */	addi r3, r1, 8
/* 8064CC50  4B 9C 01 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8064CC54  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 8064CC58  4B 9C 02 ED */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 8064CC5C  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x8064F604@ha */
/* 8064CC60  38 63 F6 04 */	addi r3, r3, l_HIO@l /* 0x8064F604@l */
/* 8064CC64  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 8064CC68  FC 40 08 90 */	fmr f2, f1
/* 8064CC6C  FC 60 08 90 */	fmr f3, f1
/* 8064CC70  4B 9C 01 C9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8064CC74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064CC78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064CC7C  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 8064CC80  38 84 00 24 */	addi r4, r4, 0x24
/* 8064CC84  4B CF 98 2D */	bl PSMTXCopy
/* 8064CC88  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8064CC8C  4B 9C 07 9D */	bl play__14mDoExt_baseAnmFv
/* 8064CC90  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8064CC94  4B 9C 07 95 */	bl play__14mDoExt_baseAnmFv
/* 8064CC98  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 8064CC9C  4B 9C 07 8D */	bl play__14mDoExt_baseAnmFv
/* 8064CCA0  88 1F 05 E9 */	lbz r0, 0x5e9(r31)
/* 8064CCA4  28 00 00 00 */	cmplwi r0, 0
/* 8064CCA8  41 82 00 4C */	beq lbl_8064CCF4
/* 8064CCAC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8064CCB0  38 63 00 24 */	addi r3, r3, 0x24
/* 8064CCB4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064CCB8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064CCBC  4B CF 97 F5 */	bl PSMTXCopy
/* 8064CCC0  C0 3F 05 EC */	lfs f1, 0x5ec(r31)
/* 8064CCC4  FC 40 08 90 */	fmr f2, f1
/* 8064CCC8  FC 60 08 90 */	fmr f3, f1
/* 8064CCCC  4B 9C 01 6D */	bl scaleM__14mDoMtx_stack_cFfff
/* 8064CCD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064CCD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064CCD8  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 8064CCDC  38 84 00 24 */	addi r4, r4, 0x24
/* 8064CCE0  4B CF 97 D1 */	bl PSMTXCopy
/* 8064CCE4  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 8064CCE8  4B 9C 07 41 */	bl play__14mDoExt_baseAnmFv
/* 8064CCEC  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 8064CCF0  4B 9C 07 39 */	bl play__14mDoExt_baseAnmFv
lbl_8064CCF4:
/* 8064CCF4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8064CCF8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8064CCFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8064CD00  7C 08 03 A6 */	mtlr r0
/* 8064CD04  38 21 00 30 */	addi r1, r1, 0x30
/* 8064CD08  4E 80 00 20 */	blr 
