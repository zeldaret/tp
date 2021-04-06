lbl_80B767C4:
/* 80B767C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B767C8  7C 08 02 A6 */	mflr r0
/* 80B767CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B767D0  38 63 0F 90 */	addi r3, r3, 0xf90
/* 80B767D4  4B 7E B8 75 */	bl __ptmf_cmpr
/* 80B767D8  7C 60 00 34 */	cntlzw r0, r3
/* 80B767DC  54 03 D9 7E */	srwi r3, r0, 5
/* 80B767E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B767E4  7C 08 03 A6 */	mtlr r0
/* 80B767E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B767EC  4E 80 00 20 */	blr 
