lbl_80CFD594:
/* 80CFD594  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD598  7C 08 02 A6 */	mflr r0
/* 80CFD59C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD5A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFD5A4  7C 7F 1B 78 */	mr r31, r3
/* 80CFD5A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFD5AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFD5B0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CFD5B4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CFD5B8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CFD5BC  4B 64 93 2C */	b PSMTXTrans
/* 80CFD5C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFD5C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFD5C8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80CFD5CC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80CFD5D0  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80CFD5D4  4B 30 EC CC */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80CFD5D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CFD5DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CFD5E0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CFD5E4  38 84 00 24 */	addi r4, r4, 0x24
/* 80CFD5E8  4B 64 8E C8 */	b PSMTXCopy
/* 80CFD5EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFD5F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFD5F4  7C 08 03 A6 */	mtlr r0
/* 80CFD5F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFD5FC  4E 80 00 20 */	blr 
