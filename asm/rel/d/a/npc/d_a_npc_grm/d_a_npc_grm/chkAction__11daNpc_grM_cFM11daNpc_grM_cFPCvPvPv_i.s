lbl_809D56A8:
/* 809D56A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D56AC  7C 08 02 A6 */	mflr r0
/* 809D56B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D56B4  38 63 10 CC */	addi r3, r3, 0x10cc
/* 809D56B8  4B 98 C9 91 */	bl __ptmf_cmpr
/* 809D56BC  7C 60 00 34 */	cntlzw r0, r3
/* 809D56C0  54 03 D9 7E */	srwi r3, r0, 5
/* 809D56C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D56C8  7C 08 03 A6 */	mtlr r0
/* 809D56CC  38 21 00 10 */	addi r1, r1, 0x10
/* 809D56D0  4E 80 00 20 */	blr 
