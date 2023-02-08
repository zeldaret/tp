lbl_809FB6CC:
/* 809FB6CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FB6D0  7C 08 02 A6 */	mflr r0
/* 809FB6D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FB6D8  38 63 16 EC */	addi r3, r3, 0x16ec
/* 809FB6DC  4B 96 69 6D */	bl __ptmf_cmpr
/* 809FB6E0  7C 60 00 34 */	cntlzw r0, r3
/* 809FB6E4  54 03 D9 7E */	srwi r3, r0, 5
/* 809FB6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FB6EC  7C 08 03 A6 */	mtlr r0
/* 809FB6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 809FB6F4  4E 80 00 20 */	blr 
