lbl_80BF8584:
/* 80BF8584  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF8588  7C 08 02 A6 */	mflr r0
/* 80BF858C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF8590  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BF8594  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BF8598  7C 7E 1B 78 */	mr r30, r3
/* 80BF859C  3C 60 80 C0 */	lis r3, l_dzb@ha
/* 80BF85A0  3B E3 8F E8 */	addi r31, r3, l_dzb@l
/* 80BF85A4  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80BF85A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BF85AC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80BF85B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BF85B4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BF85B8  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80BF85BC  4B 41 49 50 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80BF85C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BF85C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BF85C8  38 81 00 08 */	addi r4, r1, 8
/* 80BF85CC  7C 85 23 78 */	mr r5, r4
/* 80BF85D0  4B 74 E7 9C */	b PSMTXMultVec
/* 80BF85D4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF85D8  D0 1E 07 94 */	stfs f0, 0x794(r30)
/* 80BF85DC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80BF85E0  D0 1E 07 98 */	stfs f0, 0x798(r30)
/* 80BF85E4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BF85E8  D0 1E 07 9C */	stfs f0, 0x79c(r30)
/* 80BF85EC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80BF85F0  D0 1E 07 A0 */	stfs f0, 0x7a0(r30)
/* 80BF85F4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BF85F8  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
/* 80BF85FC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80BF8600  D0 1E 07 A8 */	stfs f0, 0x7a8(r30)
/* 80BF8604  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80BF8608  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 80BF860C  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80BF8610  D0 1E 07 B4 */	stfs f0, 0x7b4(r30)
/* 80BF8614  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BF8618  D0 1E 07 B0 */	stfs f0, 0x7b0(r30)
/* 80BF861C  38 7E 07 94 */	addi r3, r30, 0x794
/* 80BF8620  4B 46 27 DC */	b dKyw_pntwind_set__FP14WIND_INFLUENCE
/* 80BF8624  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BF8628  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BF862C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF8630  7C 08 03 A6 */	mtlr r0
/* 80BF8634  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF8638  4E 80 00 20 */	blr 
