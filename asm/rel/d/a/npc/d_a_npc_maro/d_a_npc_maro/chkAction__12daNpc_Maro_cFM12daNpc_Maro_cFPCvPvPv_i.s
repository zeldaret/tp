lbl_8055DD08:
/* 8055DD08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055DD0C  7C 08 02 A6 */	mflr r0
/* 8055DD10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055DD14  38 63 11 18 */	addi r3, r3, 0x1118
/* 8055DD18  4B E0 43 31 */	bl __ptmf_cmpr
/* 8055DD1C  7C 60 00 34 */	cntlzw r0, r3
/* 8055DD20  54 03 D9 7E */	srwi r3, r0, 5
/* 8055DD24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055DD28  7C 08 03 A6 */	mtlr r0
/* 8055DD2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055DD30  4E 80 00 20 */	blr 
