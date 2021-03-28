lbl_805EBA4C:
/* 805EBA4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EBA50  7C 08 02 A6 */	mflr r0
/* 805EBA54  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EBA58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805EBA5C  7C 7F 1B 78 */	mr r31, r3
/* 805EBA60  3C 60 80 5F */	lis r3, lit_3911@ha
/* 805EBA64  38 63 D0 60 */	addi r3, r3, lit_3911@l
/* 805EBA68  C0 03 01 C8 */	lfs f0, 0x1c8(r3)
/* 805EBA6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 805EBA70  C0 03 01 A0 */	lfs f0, 0x1a0(r3)
/* 805EBA74  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805EBA78  C0 03 00 04 */	lfs f0, 4(r3)
/* 805EBA7C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805EBA80  38 7F 06 70 */	addi r3, r31, 0x670
/* 805EBA84  4B A2 12 E0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 805EBA88  38 7F 06 7C */	addi r3, r31, 0x67c
/* 805EBA8C  4B A2 14 B8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805EBA90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EBA94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805EBA98  80 9F 0E 38 */	lwz r4, 0xe38(r31)
/* 805EBA9C  38 84 00 24 */	addi r4, r4, 0x24
/* 805EBAA0  4B D5 AA 10 */	b PSMTXCopy
/* 805EBAA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805EBAA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EBAAC  7C 08 03 A6 */	mtlr r0
/* 805EBAB0  38 21 00 20 */	addi r1, r1, 0x20
/* 805EBAB4  4E 80 00 20 */	blr 
