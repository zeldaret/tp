lbl_808200A0:
/* 808200A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808200A4  7C 08 02 A6 */	mflr r0
/* 808200A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 808200AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808200B0  93 C1 00 08 */	stw r30, 8(r1)
/* 808200B4  7C 9E 23 78 */	mr r30, r4
/* 808200B8  3C 80 80 82 */	lis r4, lit_3791@ha
/* 808200BC  3B E4 18 AC */	addi r31, r4, lit_3791@l
/* 808200C0  80 63 05 BC */	lwz r3, 0x5bc(r3)
/* 808200C4  80 63 00 04 */	lwz r3, 4(r3)
/* 808200C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 808200CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 808200D0  38 63 03 00 */	addi r3, r3, 0x300
/* 808200D4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 808200D8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 808200DC  4B B2 63 D4 */	b PSMTXCopy
/* 808200E0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 808200E4  C0 5F 01 BC */	lfs f2, 0x1bc(r31)
/* 808200E8  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 808200EC  4B 7E CC B0 */	b transM__14mDoMtx_stack_cFfff
/* 808200F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 808200F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 808200F8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 808200FC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80820100  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80820104  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80820108  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8082010C  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80820110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80820114  83 C1 00 08 */	lwz r30, 8(r1)
/* 80820118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082011C  7C 08 03 A6 */	mtlr r0
/* 80820120  38 21 00 10 */	addi r1, r1, 0x10
/* 80820124  4E 80 00 20 */	blr 
