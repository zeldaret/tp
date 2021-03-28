lbl_80CE5DB0:
/* 80CE5DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE5DB4  7C 08 02 A6 */	mflr r0
/* 80CE5DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE5DBC  38 63 0A F0 */	addi r3, r3, 0xaf0
/* 80CE5DC0  4B 67 C2 88 */	b __ptmf_cmpr
/* 80CE5DC4  7C 60 00 34 */	cntlzw r0, r3
/* 80CE5DC8  54 03 D9 7E */	srwi r3, r0, 5
/* 80CE5DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE5DD0  7C 08 03 A6 */	mtlr r0
/* 80CE5DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE5DD8  4E 80 00 20 */	blr 
