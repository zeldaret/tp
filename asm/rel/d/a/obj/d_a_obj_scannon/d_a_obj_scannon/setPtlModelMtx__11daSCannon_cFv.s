lbl_80CC7578:
/* 80CC7578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC757C  7C 08 02 A6 */	mflr r0
/* 80CC7580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC7584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC7588  7C 7F 1B 78 */	mr r31, r3
/* 80CC758C  80 03 05 EC */	lwz r0, 0x5ec(r3)
/* 80CC7590  28 00 00 00 */	cmplwi r0, 0
/* 80CC7594  41 82 00 60 */	beq lbl_80CC75F4
/* 80CC7598  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC759C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC75A0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CC75A4  3C 80 80 CD */	lis r4, lit_4157@ha
/* 80CC75A8  C0 44 91 BC */	lfs f2, lit_4157@l(r4)
/* 80CC75AC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CC75B0  EC 42 00 2A */	fadds f2, f2, f0
/* 80CC75B4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CC75B8  4B 67 F3 30 */	b PSMTXTrans
/* 80CC75BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC75C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC75C4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CC75C8  4B 34 4E 6C */	b mDoMtx_YrotM__FPA4_fs
/* 80CC75CC  3C 60 80 CD */	lis r3, lit_4158@ha
/* 80CC75D0  C0 23 91 C0 */	lfs f1, lit_4158@l(r3)
/* 80CC75D4  FC 40 08 90 */	fmr f2, f1
/* 80CC75D8  FC 60 08 90 */	fmr f3, f1
/* 80CC75DC  4B 34 58 5C */	b scaleM__14mDoMtx_stack_cFfff
/* 80CC75E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC75E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC75E8  80 9F 05 EC */	lwz r4, 0x5ec(r31)
/* 80CC75EC  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC75F0  4B 67 EE C0 */	b PSMTXCopy
lbl_80CC75F4:
/* 80CC75F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC75F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC75FC  7C 08 03 A6 */	mtlr r0
/* 80CC7600  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7604  4E 80 00 20 */	blr 
