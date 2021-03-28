lbl_80B2EBF4:
/* 80B2EBF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2EBF8  7C 08 02 A6 */	mflr r0
/* 80B2EBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2EC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2EC04  93 C1 00 08 */	stw r30, 8(r1)
/* 80B2EC08  7C 7E 1B 78 */	mr r30, r3
/* 80B2EC0C  3C 60 80 B3 */	lis r3, lit_3717@ha
/* 80B2EC10  3B E3 F0 80 */	addi r31, r3, lit_3717@l
/* 80B2EC14  A8 7E 05 A4 */	lha r3, 0x5a4(r30)
/* 80B2EC18  38 03 00 01 */	addi r0, r3, 1
/* 80B2EC1C  B0 1E 05 A4 */	sth r0, 0x5a4(r30)
/* 80B2EC20  38 60 00 00 */	li r3, 0
/* 80B2EC24  38 00 00 02 */	li r0, 2
/* 80B2EC28  7C 09 03 A6 */	mtctr r0
lbl_80B2EC2C:
/* 80B2EC2C  38 A3 05 E8 */	addi r5, r3, 0x5e8
/* 80B2EC30  7C 9E 2A AE */	lhax r4, r30, r5
/* 80B2EC34  2C 04 00 00 */	cmpwi r4, 0
/* 80B2EC38  41 82 00 0C */	beq lbl_80B2EC44
/* 80B2EC3C  38 04 FF FF */	addi r0, r4, -1
/* 80B2EC40  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_80B2EC44:
/* 80B2EC44  38 63 00 02 */	addi r3, r3, 2
/* 80B2EC48  42 00 FF E4 */	bdnz lbl_80B2EC2C
/* 80B2EC4C  7F C3 F3 78 */	mr r3, r30
/* 80B2EC50  4B FF FA 75 */	bl action__FP14npc_worm_class
/* 80B2EC54  88 1E 05 E6 */	lbz r0, 0x5e6(r30)
/* 80B2EC58  28 00 00 00 */	cmplwi r0, 0
/* 80B2EC5C  41 82 00 A4 */	beq lbl_80B2ED00
/* 80B2EC60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2EC64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2EC68  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80B2EC6C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80B2EC70  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80B2EC74  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80B2EC78  EC 63 00 28 */	fsubs f3, f3, f0
/* 80B2EC7C  4B 81 7C 6C */	b PSMTXTrans
/* 80B2EC80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2EC84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2EC88  A8 9E 05 C6 */	lha r4, 0x5c6(r30)
/* 80B2EC8C  4B 4D D7 10 */	b mDoMtx_XrotM__FPA4_fs
/* 80B2EC90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2EC94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2EC98  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 80B2EC9C  4B 4D D8 30 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B2ECA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2ECA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2ECA8  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80B2ECAC  4B 4D D7 88 */	b mDoMtx_YrotM__FPA4_fs
/* 80B2ECB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2ECB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2ECB8  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80B2ECBC  4B 4D D6 E0 */	b mDoMtx_XrotM__FPA4_fs
/* 80B2ECC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80B2ECC4  FC 40 08 90 */	fmr f2, f1
/* 80B2ECC8  C0 7E 05 D0 */	lfs f3, 0x5d0(r30)
/* 80B2ECCC  4B 4D E0 D0 */	b transM__14mDoMtx_stack_cFfff
/* 80B2ECD0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80B2ECD4  FC 40 08 90 */	fmr f2, f1
/* 80B2ECD8  FC 60 08 90 */	fmr f3, f1
/* 80B2ECDC  4B 4D E1 5C */	b scaleM__14mDoMtx_stack_cFfff
/* 80B2ECE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2ECE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2ECE8  80 9E 05 9C */	lwz r4, 0x59c(r30)
/* 80B2ECEC  38 84 00 24 */	addi r4, r4, 0x24
/* 80B2ECF0  4B 81 77 C0 */	b PSMTXCopy
/* 80B2ECF4  80 7E 05 9C */	lwz r3, 0x59c(r30)
/* 80B2ECF8  38 03 00 24 */	addi r0, r3, 0x24
/* 80B2ECFC  90 1E 05 04 */	stw r0, 0x504(r30)
lbl_80B2ED00:
/* 80B2ED00  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 80B2ED04  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B2ED08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2ED0C  40 81 00 A8 */	ble lbl_80B2EDB4
/* 80B2ED10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2ED14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2ED18  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80B2ED1C  C0 5E 05 DC */	lfs f2, 0x5dc(r30)
/* 80B2ED20  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80B2ED24  EC 42 00 28 */	fsubs f2, f2, f0
/* 80B2ED28  C0 7E 05 E0 */	lfs f3, 0x5e0(r30)
/* 80B2ED2C  4B 81 7B BC */	b PSMTXTrans
/* 80B2ED30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2ED34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2ED38  A8 9E 05 C6 */	lha r4, 0x5c6(r30)
/* 80B2ED3C  4B 4D D6 60 */	b mDoMtx_XrotM__FPA4_fs
/* 80B2ED40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2ED44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2ED48  A8 9E 05 C8 */	lha r4, 0x5c8(r30)
/* 80B2ED4C  4B 4D D7 80 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B2ED50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2ED54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2ED58  A8 9E 05 E4 */	lha r4, 0x5e4(r30)
/* 80B2ED5C  4B 4D D6 D8 */	b mDoMtx_YrotM__FPA4_fs
/* 80B2ED60  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80B2ED64  C0 1E 05 D4 */	lfs f0, 0x5d4(r30)
/* 80B2ED68  EC 21 00 32 */	fmuls f1, f1, f0
/* 80B2ED6C  FC 40 08 90 */	fmr f2, f1
/* 80B2ED70  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B2ED74  EC 60 00 72 */	fmuls f3, f0, f1
/* 80B2ED78  4B 4D E0 C0 */	b scaleM__14mDoMtx_stack_cFfff
/* 80B2ED7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2ED80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2ED84  A8 1E 05 E4 */	lha r0, 0x5e4(r30)
/* 80B2ED88  7C 00 00 D0 */	neg r0, r0
/* 80B2ED8C  7C 04 07 34 */	extsh r4, r0
/* 80B2ED90  4B 4D D6 A4 */	b mDoMtx_YrotM__FPA4_fs
/* 80B2ED94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2ED98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2ED9C  80 9E 05 A0 */	lwz r4, 0x5a0(r30)
/* 80B2EDA0  38 84 00 24 */	addi r4, r4, 0x24
/* 80B2EDA4  4B 81 77 0C */	b PSMTXCopy
/* 80B2EDA8  80 7E 05 A0 */	lwz r3, 0x5a0(r30)
/* 80B2EDAC  38 03 00 24 */	addi r0, r3, 0x24
/* 80B2EDB0  90 1E 05 04 */	stw r0, 0x504(r30)
lbl_80B2EDB4:
/* 80B2EDB4  38 60 00 01 */	li r3, 1
/* 80B2EDB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2EDBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B2EDC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2EDC4  7C 08 03 A6 */	mtlr r0
/* 80B2EDC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2EDCC  4E 80 00 20 */	blr 
