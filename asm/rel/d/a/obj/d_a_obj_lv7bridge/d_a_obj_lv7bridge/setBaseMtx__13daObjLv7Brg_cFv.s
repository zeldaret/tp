lbl_80C864B4:
/* 80C864B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C864B8  7C 08 02 A6 */	mflr r0
/* 80C864BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C864C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C864C4  7C 7F 1B 78 */	mr r31, r3
/* 80C864C8  C0 03 0A 78 */	lfs f0, 0xa78(r3)
/* 80C864CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C864D0  3C 60 80 C8 */	lis r3, lit_3697@ha
/* 80C864D4  C0 23 79 CC */	lfs f1, lit_3697@l(r3)
/* 80C864D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C864DC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C864E0  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 80C864E4  28 00 00 01 */	cmplwi r0, 1
/* 80C864E8  40 82 00 14 */	bne lbl_80C864FC
/* 80C864EC  FC 00 00 50 */	fneg f0, f0
/* 80C864F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C864F4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C864F8  D0 21 00 10 */	stfs f1, 0x10(r1)
lbl_80C864FC:
/* 80C864FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C86500  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C86504  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C86508  4B 38 5E D4 */	b mDoMtx_YrotS__FPA4_fs
/* 80C8650C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C86510  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C86514  38 81 00 08 */	addi r4, r1, 8
/* 80C86518  7C 85 23 78 */	mr r5, r4
/* 80C8651C  4B 6C 08 50 */	b PSMTXMultVec
/* 80C86520  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C86524  4B 38 68 40 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C86528  38 61 00 08 */	addi r3, r1, 8
/* 80C8652C  4B 38 68 A8 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80C86530  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C86534  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C86538  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C8653C  4B 38 5E F8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C86540  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C86544  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C86548  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80C8654C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C86550  4B 6B FF 60 */	b PSMTXCopy
/* 80C86554  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C86558  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C8655C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C86560  4B 6B FF 50 */	b PSMTXCopy
/* 80C86564  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 80C86568  28 00 00 01 */	cmplwi r0, 1
/* 80C8656C  40 82 00 38 */	bne lbl_80C865A4
/* 80C86570  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C86574  4B 38 67 F0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C86578  38 61 00 08 */	addi r3, r1, 8
/* 80C8657C  4B 38 68 58 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80C86580  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C86584  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C86588  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C8658C  4B 38 5E A8 */	b mDoMtx_YrotM__FPA4_fs
/* 80C86590  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C86594  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C86598  80 9F 0A 84 */	lwz r4, 0xa84(r31)
/* 80C8659C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C865A0  4B 6B FF 10 */	b PSMTXCopy
lbl_80C865A4:
/* 80C865A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C865A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C865AC  7C 08 03 A6 */	mtlr r0
/* 80C865B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C865B4  4E 80 00 20 */	blr 
