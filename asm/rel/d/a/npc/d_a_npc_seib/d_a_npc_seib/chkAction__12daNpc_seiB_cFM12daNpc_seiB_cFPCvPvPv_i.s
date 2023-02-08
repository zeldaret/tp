lbl_80AC5E08:
/* 80AC5E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5E0C  7C 08 02 A6 */	mflr r0
/* 80AC5E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC5E14  38 63 0E 54 */	addi r3, r3, 0xe54
/* 80AC5E18  4B 89 C2 31 */	bl __ptmf_cmpr
/* 80AC5E1C  7C 60 00 34 */	cntlzw r0, r3
/* 80AC5E20  54 03 D9 7E */	srwi r3, r0, 5
/* 80AC5E24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC5E28  7C 08 03 A6 */	mtlr r0
/* 80AC5E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5E30  4E 80 00 20 */	blr 
