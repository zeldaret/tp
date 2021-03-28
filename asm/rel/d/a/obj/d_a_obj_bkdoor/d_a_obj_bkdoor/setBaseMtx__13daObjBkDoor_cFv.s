lbl_80578D88:
/* 80578D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80578D8C  7C 08 02 A6 */	mflr r0
/* 80578D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80578D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80578D98  7C 7F 1B 78 */	mr r31, r3
/* 80578D9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80578DA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80578DA4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80578DA8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80578DAC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80578DB0  4B DC DB 38 */	b PSMTXTrans
/* 80578DB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80578DB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80578DBC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80578DC0  4B A9 36 74 */	b mDoMtx_YrotM__FPA4_fs
/* 80578DC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80578DC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80578DCC  A8 9F 05 AC */	lha r4, 0x5ac(r31)
/* 80578DD0  A8 BF 05 AE */	lha r5, 0x5ae(r31)
/* 80578DD4  A8 DF 05 B0 */	lha r6, 0x5b0(r31)
/* 80578DD8  4B A9 34 C8 */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80578DDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80578DE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80578DE4  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80578DE8  38 84 00 24 */	addi r4, r4, 0x24
/* 80578DEC  4B DC D6 C4 */	b PSMTXCopy
/* 80578DF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80578DF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80578DF8  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80578DFC  4B DC D6 B4 */	b PSMTXCopy
/* 80578E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80578E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80578E08  7C 08 03 A6 */	mtlr r0
/* 80578E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80578E10  4E 80 00 20 */	blr 
