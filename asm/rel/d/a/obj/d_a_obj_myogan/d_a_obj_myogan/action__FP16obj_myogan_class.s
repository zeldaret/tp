lbl_80C9EC70:
/* 80C9EC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9EC74  7C 08 02 A6 */	mflr r0
/* 80C9EC78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9EC7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9EC80  7C 7F 1B 78 */	mr r31, r3
/* 80C9EC84  A8 03 05 7E */	lha r0, 0x57e(r3)
/* 80C9EC88  2C 00 00 01 */	cmpwi r0, 1
/* 80C9EC8C  41 82 00 40 */	beq lbl_80C9ECCC
/* 80C9EC90  40 80 00 3C */	bge lbl_80C9ECCC
/* 80C9EC94  2C 00 00 00 */	cmpwi r0, 0
/* 80C9EC98  40 80 00 08 */	bge lbl_80C9ECA0
/* 80C9EC9C  48 00 00 30 */	b lbl_80C9ECCC
lbl_80C9ECA0:
/* 80C9ECA0  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80C9ECA4  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80C9ECA8  3C 80 80 CA */	lis r4, l_HIO@ha /* 0x80C9F328@ha */
/* 80C9ECAC  38 84 F3 28 */	addi r4, r4, l_HIO@l /* 0x80C9F328@l */
/* 80C9ECB0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C9ECB4  EC 21 00 2A */	fadds f1, f1, f0
/* 80C9ECB8  3C 80 80 CA */	lis r4, lit_3823@ha /* 0x80C9F290@ha */
/* 80C9ECBC  C0 44 F2 90 */	lfs f2, lit_3823@l(r4)  /* 0x80C9F290@l */
/* 80C9ECC0  3C 80 80 CA */	lis r4, lit_3824@ha /* 0x80C9F294@ha */
/* 80C9ECC4  C0 64 F2 94 */	lfs f3, lit_3824@l(r4)  /* 0x80C9F294@l */
/* 80C9ECC8  4B 5D 0D 75 */	bl cLib_addCalc2__FPffff
lbl_80C9ECCC:
/* 80C9ECCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9ECD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9ECD4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C9ECD8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C9ECDC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C9ECE0  4B 6A 7C 09 */	bl PSMTXTrans
/* 80C9ECE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9ECE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9ECEC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C9ECF0  4B 36 D7 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 80C9ECF4  3C 60 80 CA */	lis r3, l_HIO@ha /* 0x80C9F328@ha */
/* 80C9ECF8  38 63 F3 28 */	addi r3, r3, l_HIO@l /* 0x80C9F328@l */
/* 80C9ECFC  C0 23 00 08 */	lfs f1, 8(r3)
/* 80C9ED00  FC 40 08 90 */	fmr f2, f1
/* 80C9ED04  FC 60 08 90 */	fmr f3, f1
/* 80C9ED08  4B 36 E1 31 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C9ED0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9ED10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9ED14  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80C9ED18  38 84 00 24 */	addi r4, r4, 0x24
/* 80C9ED1C  4B 6A 77 95 */	bl PSMTXCopy
/* 80C9ED20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9ED24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9ED28  38 9F 05 8C */	addi r4, r31, 0x58c
/* 80C9ED2C  4B 6A 77 85 */	bl PSMTXCopy
/* 80C9ED30  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80C9ED34  4B 3D CC 8D */	bl Move__4dBgWFv
/* 80C9ED38  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80C9ED3C  4B 36 E6 ED */	bl play__14mDoExt_baseAnmFv
/* 80C9ED40  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C9ED44  4B 36 E6 E5 */	bl play__14mDoExt_baseAnmFv
/* 80C9ED48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9ED4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9ED50  7C 08 03 A6 */	mtlr r0
/* 80C9ED54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9ED58  4E 80 00 20 */	blr 
