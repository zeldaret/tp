lbl_805EB980:
/* 805EB980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EB984  7C 08 02 A6 */	mflr r0
/* 805EB988  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EB98C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EB990  7C 7F 1B 78 */	mr r31, r3
/* 805EB994  80 63 0E 30 */	lwz r3, 0xe30(r3)
/* 805EB998  80 63 00 04 */	lwz r3, 4(r3)
/* 805EB99C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805EB9A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EB9A4  38 63 02 10 */	addi r3, r3, 0x210
/* 805EB9A8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805EB9AC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805EB9B0  4B D5 AB 00 */	b PSMTXCopy
/* 805EB9B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EB9B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805EB9BC  80 9F 0E 34 */	lwz r4, 0xe34(r31)
/* 805EB9C0  38 84 00 24 */	addi r4, r4, 0x24
/* 805EB9C4  4B D5 AA EC */	b PSMTXCopy
/* 805EB9C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EB9CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EB9D0  7C 08 03 A6 */	mtlr r0
/* 805EB9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805EB9D8  4E 80 00 20 */	blr 
