lbl_809F55D0:
/* 809F55D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F55D4  7C 08 02 A6 */	mflr r0
/* 809F55D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F55DC  38 63 0D D4 */	addi r3, r3, 0xdd4
/* 809F55E0  4B 96 CA 68 */	b __ptmf_cmpr
/* 809F55E4  7C 60 00 34 */	cntlzw r0, r3
/* 809F55E8  54 03 D9 7E */	srwi r3, r0, 5
/* 809F55EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F55F0  7C 08 03 A6 */	mtlr r0
/* 809F55F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809F55F8  4E 80 00 20 */	blr 
