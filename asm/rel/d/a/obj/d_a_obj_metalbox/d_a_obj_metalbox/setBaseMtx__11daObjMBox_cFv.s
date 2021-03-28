lbl_80592ED4:
/* 80592ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80592ED8  7C 08 02 A6 */	mflr r0
/* 80592EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80592EE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80592EE4  7C 7F 1B 78 */	mr r31, r3
/* 80592EE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80592EEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80592EF0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80592EF4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80592EF8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80592EFC  4B DB 39 EC */	b PSMTXTrans
/* 80592F00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80592F04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80592F08  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80592F0C  4B A7 95 28 */	b mDoMtx_YrotM__FPA4_fs
/* 80592F10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80592F14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80592F18  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80592F1C  38 84 00 24 */	addi r4, r4, 0x24
/* 80592F20  4B DB 35 90 */	b PSMTXCopy
/* 80592F24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80592F28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80592F2C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80592F30  4B DB 35 80 */	b PSMTXCopy
/* 80592F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80592F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80592F3C  7C 08 03 A6 */	mtlr r0
/* 80592F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80592F44  4E 80 00 20 */	blr 
