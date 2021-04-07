lbl_80B90A6C:
/* 80B90A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B90A70  7C 08 02 A6 */	mflr r0
/* 80B90A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B90A78  38 63 0D DC */	addi r3, r3, 0xddc
/* 80B90A7C  4B 7D 15 CD */	bl __ptmf_cmpr
/* 80B90A80  7C 60 00 34 */	cntlzw r0, r3
/* 80B90A84  54 03 D9 7E */	srwi r3, r0, 5
/* 80B90A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B90A8C  7C 08 03 A6 */	mtlr r0
/* 80B90A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80B90A94  4E 80 00 20 */	blr 
