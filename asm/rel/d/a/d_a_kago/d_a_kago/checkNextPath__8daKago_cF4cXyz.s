lbl_8084B088:
/* 8084B088  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8084B08C  7C 08 02 A6 */	mflr r0
/* 8084B090  90 01 00 24 */	stw r0, 0x24(r1)
/* 8084B094  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8084B098  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8084B09C  7C 7E 1B 78 */	mr r30, r3
/* 8084B0A0  7C 9F 23 78 */	mr r31, r4
/* 8084B0A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084B0A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084B0AC  A8 1E 07 14 */	lha r0, 0x714(r30)
/* 8084B0B0  7C 00 00 D0 */	neg r0, r0
/* 8084B0B4  7C 04 07 34 */	extsh r4, r0
/* 8084B0B8  4B 7C 13 24 */	b mDoMtx_YrotS__FPA4_fs
/* 8084B0BC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8084B0C0  FC 20 00 50 */	fneg f1, f0
/* 8084B0C4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8084B0C8  FC 40 00 50 */	fneg f2, f0
/* 8084B0CC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8084B0D0  FC 60 00 50 */	fneg f3, f0
/* 8084B0D4  4B 7C 1C C8 */	b transM__14mDoMtx_stack_cFfff
/* 8084B0D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084B0DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084B0E0  7F E4 FB 78 */	mr r4, r31
/* 8084B0E4  38 A1 00 08 */	addi r5, r1, 8
/* 8084B0E8  4B AF BC 84 */	b PSMTXMultVec
/* 8084B0EC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8084B0F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8084B0F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8084B0F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8084B0FC  7C 08 03 A6 */	mtlr r0
/* 8084B100  38 21 00 20 */	addi r1, r1, 0x20
/* 8084B104  4E 80 00 20 */	blr 
