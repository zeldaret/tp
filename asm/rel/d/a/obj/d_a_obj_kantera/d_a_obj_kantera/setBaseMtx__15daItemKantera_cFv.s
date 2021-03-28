lbl_80C389F8:
/* 80C389F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C389FC  7C 08 02 A6 */	mflr r0
/* 80C38A00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38A04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C38A08  7C 7F 1B 78 */	mr r31, r3
/* 80C38A0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C38A10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C38A14  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C38A18  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C38A1C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C38A20  4B 70 DE C8 */	b PSMTXTrans
/* 80C38A24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C38A28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C38A2C  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80C38A30  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80C38A34  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80C38A38  4B 3D 38 68 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80C38A3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C38A40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C38A44  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C38A48  38 84 00 24 */	addi r4, r4, 0x24
/* 80C38A4C  4B 70 DA 64 */	b PSMTXCopy
/* 80C38A50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C38A54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C38A58  7C 08 03 A6 */	mtlr r0
/* 80C38A5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C38A60  4E 80 00 20 */	blr 
