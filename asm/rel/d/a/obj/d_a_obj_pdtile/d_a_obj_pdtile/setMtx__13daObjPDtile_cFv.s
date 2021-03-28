lbl_80CAAE80:
/* 80CAAE80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CAAE84  7C 08 02 A6 */	mflr r0
/* 80CAAE88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CAAE8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CAAE90  7C 7F 1B 78 */	mr r31, r3
/* 80CAAE94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAAE98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CAAE9C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CAAEA0  C0 1F 06 20 */	lfs f0, 0x620(r31)
/* 80CAAEA4  EC 21 00 2A */	fadds f1, f1, f0
/* 80CAAEA8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CAAEAC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CAAEB0  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80CAAEB4  EC 63 00 2A */	fadds f3, f3, f0
/* 80CAAEB8  4B 69 BA 30 */	b PSMTXTrans
/* 80CAAEBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAAEC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CAAEC4  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 80CAAEC8  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80CAAECC  A8 DF 04 E0 */	lha r6, 0x4e0(r31)
/* 80CAAED0  4B 36 12 94 */	b mDoMtx_XYZrotM__FPA4_fsss
/* 80CAAED4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAAED8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CAAEDC  38 9F 05 D8 */	addi r4, r31, 0x5d8
/* 80CAAEE0  4B 69 B5 D0 */	b PSMTXCopy
/* 80CAAEE4  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80CAAEE8  2C 00 00 02 */	cmpwi r0, 2
/* 80CAAEEC  41 82 00 20 */	beq lbl_80CAAF0C
/* 80CAAEF0  2C 00 00 04 */	cmpwi r0, 4
/* 80CAAEF4  41 82 00 18 */	beq lbl_80CAAF0C
/* 80CAAEF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAAEFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CAAF00  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80CAAF04  4B 69 B5 AC */	b PSMTXCopy
/* 80CAAF08  48 00 00 74 */	b lbl_80CAAF7C
lbl_80CAAF0C:
/* 80CAAF0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAAF10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CAAF14  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CAAF18  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CAAF1C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CAAF20  4B 69 B9 C8 */	b PSMTXTrans
/* 80CAAF24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAAF28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CAAF2C  38 80 00 00 */	li r4, 0
/* 80CAAF30  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80CAAF34  38 C0 00 00 */	li r6, 0
/* 80CAAF38  4B 36 12 2C */	b mDoMtx_XYZrotM__FPA4_fsss
/* 80CAAF3C  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80CAAF40  2C 00 00 02 */	cmpwi r0, 2
/* 80CAAF44  40 82 00 28 */	bne lbl_80CAAF6C
/* 80CAAF48  3C 60 80 CB */	lis r3, lit_3716@ha
/* 80CAAF4C  C0 23 C5 1C */	lfs f1, lit_3716@l(r3)
/* 80CAAF50  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CAAF54  3C 60 80 CB */	lis r3, lit_3717@ha
/* 80CAAF58  C0 03 C5 20 */	lfs f0, lit_3717@l(r3)
/* 80CAAF5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CAAF60  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CAAF64  38 61 00 08 */	addi r3, r1, 8
/* 80CAAF68  4B 36 1F 08 */	b scaleM__14mDoMtx_stack_cFRC4cXyz
lbl_80CAAF6C:
/* 80CAAF6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CAAF70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CAAF74  38 9F 05 A8 */	addi r4, r31, 0x5a8
/* 80CAAF78  4B 69 B5 38 */	b PSMTXCopy
lbl_80CAAF7C:
/* 80CAAF7C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CAAF80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CAAF84  7C 08 03 A6 */	mtlr r0
/* 80CAAF88  38 21 00 20 */	addi r1, r1, 0x20
/* 80CAAF8C  4E 80 00 20 */	blr 
