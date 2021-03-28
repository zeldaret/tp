lbl_80B9CC9C:
/* 80B9CC9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9CCA0  7C 08 02 A6 */	mflr r0
/* 80B9CCA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9CCA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9CCAC  7C 7F 1B 78 */	mr r31, r3
/* 80B9CCB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B9CCB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9CCB8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80B9CCBC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80B9CCC0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80B9CCC4  4B 7A 9C 24 */	b PSMTXTrans
/* 80B9CCC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B9CCCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9CCD0  38 80 00 00 */	li r4, 0
/* 80B9CCD4  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80B9CCD8  38 C0 00 00 */	li r6, 0
/* 80B9CCDC  4B 46 F5 C4 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80B9CCE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B9CCE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9CCE8  A8 9F 07 50 */	lha r4, 0x750(r31)
/* 80B9CCEC  A8 BF 07 52 */	lha r5, 0x752(r31)
/* 80B9CCF0  A8 DF 07 54 */	lha r6, 0x754(r31)
/* 80B9CCF4  4B 46 F5 AC */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80B9CCF8  C0 3F 07 58 */	lfs f1, 0x758(r31)
/* 80B9CCFC  C0 5F 07 5C */	lfs f2, 0x75c(r31)
/* 80B9CD00  C0 7F 07 60 */	lfs f3, 0x760(r31)
/* 80B9CD04  4B 47 00 98 */	b transM__14mDoMtx_stack_cFfff
/* 80B9CD08  88 1F 09 84 */	lbz r0, 0x984(r31)
/* 80B9CD0C  54 00 10 3A */	slwi r0, r0, 2
/* 80B9CD10  7C 7F 02 14 */	add r3, r31, r0
/* 80B9CD14  80 63 05 C0 */	lwz r3, 0x5c0(r3)
/* 80B9CD18  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80B9CD1C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B9CD20  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80B9CD24  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80B9CD28  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80B9CD2C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80B9CD30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B9CD34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9CD38  88 1F 09 84 */	lbz r0, 0x984(r31)
/* 80B9CD3C  54 00 10 3A */	slwi r0, r0, 2
/* 80B9CD40  7C 9F 02 14 */	add r4, r31, r0
/* 80B9CD44  80 84 05 C0 */	lwz r4, 0x5c0(r4)
/* 80B9CD48  38 84 00 24 */	addi r4, r4, 0x24
/* 80B9CD4C  4B 7A 97 64 */	b PSMTXCopy
/* 80B9CD50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B9CD54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B9CD58  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80B9CD5C  4B 7A 97 54 */	b PSMTXCopy
/* 80B9CD60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9CD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9CD68  7C 08 03 A6 */	mtlr r0
/* 80B9CD6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9CD70  4E 80 00 20 */	blr 
