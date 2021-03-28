lbl_80C5EBE4:
/* 80C5EBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5EBE8  7C 08 02 A6 */	mflr r0
/* 80C5EBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5EBF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5EBF4  7C 7F 1B 78 */	mr r31, r3
/* 80C5EBF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5EBFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5EC00  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C5EC04  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C5EC08  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C5EC0C  4B 6E 7C DC */	b PSMTXTrans
/* 80C5EC10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5EC14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5EC18  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C5EC1C  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C5EC20  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C5EC24  4B 3A D6 7C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C5EC28  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 80C5EC2C  3C 60 80 C6 */	lis r3, lit_3646@ha
/* 80C5EC30  C0 43 F3 F8 */	lfs f2, lit_3646@l(r3)
/* 80C5EC34  FC 60 10 90 */	fmr f3, f2
/* 80C5EC38  4B 3A E1 64 */	b transM__14mDoMtx_stack_cFfff
/* 80C5EC3C  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C5EC40  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C5EC44  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C5EC48  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C5EC4C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C5EC50  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C5EC54  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C5EC58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C5EC5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C5EC60  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C5EC64  38 84 00 24 */	addi r4, r4, 0x24
/* 80C5EC68  4B 6E 78 48 */	b PSMTXCopy
/* 80C5EC6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5EC70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5EC74  7C 08 03 A6 */	mtlr r0
/* 80C5EC78  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5EC7C  4E 80 00 20 */	blr 
