lbl_80D630BC:
/* 80D630BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D630C0  7C 08 02 A6 */	mflr r0
/* 80D630C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D630C8  38 63 05 C4 */	addi r3, r3, 0x5c4
/* 80D630CC  4B 5F EF 7C */	b __ptmf_cmpr
/* 80D630D0  7C 60 00 34 */	cntlzw r0, r3
/* 80D630D4  54 03 D9 7E */	srwi r3, r0, 5
/* 80D630D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D630DC  7C 08 03 A6 */	mtlr r0
/* 80D630E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D630E4  4E 80 00 20 */	blr 
