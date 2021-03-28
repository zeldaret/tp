lbl_8045EBA0:
/* 8045EBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045EBA4  7C 08 02 A6 */	mflr r0
/* 8045EBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045EBAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045EBB0  93 C1 00 08 */	stw r30, 8(r1)
/* 8045EBB4  7C 7E 1B 78 */	mr r30, r3
/* 8045EBB8  3C 60 80 46 */	lis r3, lit_3876@ha
/* 8045EBBC  3B E3 06 68 */	addi r31, r3, lit_3876@l
/* 8045EBC0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045EBC4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045EBC8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8045EBCC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8045EBD0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 8045EBD4  4B EE 7D 14 */	b PSMTXTrans
/* 8045EBD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045EBDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045EBE0  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8045EBE4  4B BA D8 50 */	b mDoMtx_YrotM__FPA4_fs
/* 8045EBE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8045EBEC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8045EBF0  FC 60 10 90 */	fmr f3, f2
/* 8045EBF4  4B BA E1 A8 */	b transM__14mDoMtx_stack_cFfff
/* 8045EBF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045EBFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045EC00  A8 9E 06 12 */	lha r4, 0x612(r30)
/* 8045EC04  4B BA D8 30 */	b mDoMtx_YrotM__FPA4_fs
/* 8045EC08  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8045EC0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8045EC10  FC 60 10 90 */	fmr f3, f2
/* 8045EC14  4B BA E1 88 */	b transM__14mDoMtx_stack_cFfff
/* 8045EC18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8045EC1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8045EC20  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 8045EC24  38 84 00 24 */	addi r4, r4, 0x24
/* 8045EC28  4B EE 78 88 */	b PSMTXCopy
/* 8045EC2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045EC30  83 C1 00 08 */	lwz r30, 8(r1)
/* 8045EC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045EC38  7C 08 03 A6 */	mtlr r0
/* 8045EC3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8045EC40  4E 80 00 20 */	blr 
